/*
 * Copyright (C) by Argonne National Laboratory
 *     See COPYRIGHT in top-level directory
*/

#include "mpiimpl.h"
#ifdef ENABLE_UCC

#define UCC_CHECK(status)                                                \
    do {                                                                 \
        ucc_status_t ucc_status = status;                                \
        if ((ucc_status != UCC_OK)) {                                    \
            fprintf(stderr, "UCC error at %s:%d\n", __FILE__, __LINE__); \
            exit(1);                                                     \
        }                                                                \
    } while (0)

typedef struct {
    bool initialized;
    ucc_lib_h ucc_lib;
    ucc_context_h ucc_context;
    ucc_lib_config_h lib_config;
    ucc_context_config_h ctx_config;
} MPIR_UCC_global_state_t;

static MPIR_UCC_global_state_t MPIR_UCC_global = {
    .initialized = false
};

ucc_status_t oob_allgather(void *sbuf, void *rbuf, size_t msglen,
                           void *coll_ctx, void **req)
{
   MPIR_UCC_oob_ctx_t *ctx = (MPIR_UCC_oob_ctx_t *)coll_ctx;
   MPI_Request *mpi_req = NULL;
   int mpi_errno = MPIR_Iallgather_impl(sbuf, msglen, MPI_BYTE,
                  rbuf, msglen, MPI_BYTE,
                  ctx->comm, &mpi_req);
   if (mpi_errno != MPI_SUCCESS || !mpi_req) {
      return UCC_ERR_NO_RESOURCE;
   }
   *req = (void *)mpi_req;
   return UCC_OK;
}

ucc_status_t oob_test(void *req)
{
    int completed;
    int mpi_errno = MPIR_Test_impl((MPI_Request *)req, &completed, MPI_STATUS_IGNORE);
    return (mpi_errno == MPI_SUCCESS && completed) ? UCC_OK : UCC_INPROGRESS;
}

ucc_status_t oob_free(void *req)
{
    MPIR_Request_free((MPIR_Request *)req);
    return UCC_OK;
}

static int MPIR_UCCcomm_init(MPIR_Comm *comm_ptr, int rank)
{
    int mpi_errno = MPI_SUCCESS;
    ucc_status_t ucc_status;

    int comm_size = comm_ptr->local_size;

    /* One-time global UCC setup */
    if (!MPIR_UCC_global.initialized) {
        UCC_CHECK(ucc_lib_config_read(NULL, NULL, &MPIR_UCC_global.lib_config));

        ucc_lib_params_t lib_params = {
            .mask = UCC_LIB_PARAM_FIELD_THREAD_MODE,
            .thread_mode = UCC_THREAD_SINGLE
        };

        UCC_CHECK(ucc_init(&lib_params, MPIR_UCC_global.lib_config, &MPIR_UCC_global.ucc_lib));
        ucc_lib_config_release(MPIR_UCC_global.lib_config);

        UCC_CHECK(ucc_context_config_read(MPIR_UCC_global.ucc_lib, NULL, &MPIR_UCC_global.ctx_config));

        ucc_context_params_t ctx_params = {
            .mask = UCC_CONTEXT_PARAM_FIELD_TYPE,
            .type = UCC_CONTEXT_EXCLUSIVE
        };

        UCC_CHECK(ucc_context_create(MPIR_UCC_global.ucc_lib,
                                     &ctx_params,
                                     MPIR_UCC_global.ctx_config,
                                     &MPIR_UCC_global.ucc_context));
        ucc_context_config_release(MPIR_UCC_global.ctx_config);
        MPIR_UCC_global.initialized = true;
    }

    /* Allocate per-communicator structure */
    MPIR_UCCcomm *ucccomm = MPL_malloc(sizeof(MPIR_UCCcomm), MPL_MEM_OTHER);
    MPIR_ERR_CHKANDJUMP(!ucccomm, mpi_errno, MPI_ERR_OTHER, "**nomem");

    /* Setup out-of-band context (OOB) */
    ucccomm->oob_ctx.comm = comm_ptr->handle;
    ucccomm->oob_ctx.rank = rank; 

    ucc_context_oob_coll_t oob = {
        .allgather = oob_allgather,
        .req_test  = oob_test,
        .req_free  = oob_free,
        .coll_info = &ucccomm->oob_ctx,
        .n_oob_eps = comm_size,
        .oob_ep    = rank
    };

    /* Team creation */
    ucc_team_params_t team_params = {
        .mask = UCC_TEAM_PARAM_FIELD_EP | UCC_TEAM_PARAM_FIELD_EP_RANGE | UCC_TEAM_PARAM_FIELD_OOB,
        .ep = rank,
        .ep_range = UCC_COLLECTIVE_EP_RANGE_CONTIG,
        .oob = oob
    };

    ucc_context_h contexts[] = { MPIR_UCC_global.ucc_context };
    UCC_CHECK(ucc_team_create_post(contexts, 1, &team_params, &ucccomm->ucc_team));

    while (ucc_team_create_test(ucccomm->ucc_team) == UCC_INPROGRESS) {
        UCC_CHECK(ucc_context_progress(MPIR_UCC_global.ucc_context));
    }

    ucccomm->initialized = true;
    comm_ptr->cclcomm->uccComm = ucccomm;

fn_exit:
    return mpi_errno;

fn_fail:
    // You may want to free ucccomm or handle failure more gracefully
    return mpi_errno;
}

static int MPIR_UCC_check_init_and_init(MPIR_Comm * comm_ptr, int rank)
{
    int mpi_errno = MPI_SUCCESS;

    if (!comm_ptr->cclcomm) {
        mpi_errno = MPIR_CCLcomm_init(comm_ptr);
        MPIR_ERR_CHECK(mpi_errno);
    }

    if (!comm_ptr->cclcomm->ucccomm) {
        mpi_errno = MPIR_UCCcomm_init(comm_ptr, comm_ptr->rank);
        MPIR_ERR_CHECK(mpi_errno);
    }

  fn_exit:
    return mpi_errno;
  fn_fail:
    goto fn_exit;
}

static int MPIR_UCC_red_op_is_supported(MPI_Op op)
{
    switch (op) {
        case MPI_SUM:
        case MPI_PROD:
        case MPI_MIN:
        case MPI_MAX:
        case MPI_LAND:
        case MPI_LOR:
        case MPI_LXOR:
        case MPI_BAND:
        case MPI_BOR:
        case MPI_BXOR:
        case MPI_MAXLOC:
        case MPI_MINLOC:
            return 1;
        default:
            return 0;
    }
}

static int MPIR_UCC_get_red_op(MPI_Op op, ucc_reduction_op_t * redOp)
{
    int mpi_errno = MPI_SUCCESS;

    switch (op) {
        case MPI_SUM:
            *redOp = UCC_OP_SUM;
            break;
        case MPI_PROD:
            *redOp = UCC_OP_PROD;
            break;
        case MPI_MIN:
            *redOp = UCC_OP_MIN;
            break;
        case MPI_MAX:
            *redOp = UCC_OP_MAX;
            break;
        case MPI_LAND:
            *redOp = UCC_OP_LAND;
            break;
        case MPI_LOR:
            *redOp = UCC_OP_LOR;
            break;
        case MPI_LXOR:
            *redOp = UCC_OP_LXOR;
            break;
        case MPI_BAND:
            *redOp = UCC_OP_BAND;
            break;
        case MPI_BOR:
            *redOp = UCC_OP_BXOR;
            break;
        case MPI_BXOR:
            *redOp = UCC_OP_BXOR;
            break;
        case MPI_MAXLOC:
            *redOp = UCC_OP_MAXLOC;
            break;
        case MPI_MINLOC:
            *redOp = UCC_OP_MINLOC;
            break;
        default:
            goto fn_fail;
    }

  fn_exit:
    return mpi_errno;
  fn_fail:
    mpi_errno = MPI_ERR_ARG;
    goto fn_exit;
}

static int MPIR_UCC_datatype_is_supported(MPI_Datatype dtype)
{
    switch (MPIR_DATATYPE_GET_RAW_INTERNAL(dtype)) {
        case MPIR_INT8:
        case MPIR_UINT8:
        case MPIR_INT32:
        case MPIR_UINT32:
        case MPIR_INT64:
        case MPIR_UINT64:
        case MPIR_FLOAT16:
        case MPIR_FLOAT32:
        case MPIR_FLOAT64:
            return 1;
        default:
            return 0;
    }
}

static int MPIR_UCC_get_datatype(MPI_Datatype dtype, ucc_datatype_t * ucc_dtype)
{
    int mpi_errno = MPI_SUCCESS;

    switch (MPIR_DATATYPE_GET_RAW_INTERNAL(dtype)) {
            // Ignoring ncclChar b/c MPICH treats MPI_CHAR as MPIR_INT8 internally
        case MPIR_INT8:
            *ucc_dtype = UCC_DT_INT8;
            break;
        case MPIR_UINT8:
            *ucc_dtype = UCC_DT_UINT8;
            break;
        case MPIR_INT32:
            *ucc_dtype = UCC_DT_INT32;
            break;
        case MPIR_UINT32:
            *ucc_dtype = UCC_DT_UINT32;
            break;
        case MPIR_INT64:
            *ucc_dtype = UCC_DT_INT64;
            break;
        case MPIR_UINT64:
            *ucc_dtype = UCC_DT_UINT64;
            break;
        case MPIR_FLOAT16:
            *ucc_dtype = UCC_DT_FLOAT16;
        case MPIR_FLOAT32:
            *ucc_dtype = UCC_DT_FLOAT32;
            break;
        case MPIR_FLOAT64:
            *ucc_dtype = UCC_DT_FLOAT64;
            break;
        default:
            goto fn_fail;
    }

  fn_exit:
    return mpi_errno;
  fn_fail:
    mpi_errno = MPI_ERR_ARG;
    goto fn_exit;
}

#endif /*ENABLE UCC*/