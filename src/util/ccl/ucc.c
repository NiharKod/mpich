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

    // Allocate per-communicator structure
    MPIR_UCCcomm *ucccomm = MPL_malloc(sizeof(MPIR_UCCcomm), MPL_MEM_OTHER);
    MPIR_ERR_CHKANDJUMP(!ucccomm, mpi_errno, MPI_ERR_OTHER, "**nomem");

    // Setup out-of-band context (OOB)
    ucccomm->oob_ctx.comm = comm_ptr->handle;
    ucccomm->oob_ctx.rank = comm_ptr->rank;

    ucc_context_oob_coll_t oob = {
        .allgather = oob_allgather,
        .req_test  = oob_test,
        .req_free  = oob_free,
        .coll_info = &ucccomm->oob_ctx,
        .n_oob_eps = comm_size,
        .oob_ep    = rank
    };

    // Team creation
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

#endif /*ENABLE UCC*/