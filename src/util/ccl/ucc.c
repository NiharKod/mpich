#include "mpiimpl.h"
#ifdef ENABLE_UCC

#define UCC_CHECK_OR_JUMP(status, mpi_errno)   \
    do {                                       \
        if ((status) != UCC_OK) {              \
            mpi_errno = MPI_ERR_OTHER;         \
            goto fn_fail;                      \
        }                                      \
    } while (0)

static ucc_lib_h g_ucc_lib = NULL;
static ucc_lib_config_h g_lib_config = NULL;
static int g_ucc_init_count = 0;

/* Initialize the UCC library exactly once */
static int init_global_ucc_lib(void)
{
    int mpi_errno = MPI_SUCCESS;
    if (g_ucc_lib == NULL) {
        UCC_CHECK_OR_JUMP(ucc_lib_config_read(NULL, NULL, &g_lib_config), mpi_errno);
        ucc_lib_params_t lib_params = {
            .mask        = UCC_LIB_PARAM_FIELD_THREAD_MODE,
            .thread_mode = UCC_THREAD_SINGLE
        };
        UCC_CHECK_OR_JUMP(ucc_init(&lib_params, g_lib_config, &g_ucc_lib), mpi_errno);
    }
    g_ucc_init_count++;
fn_exit:
    return mpi_errno;
fn_fail:
    goto fn_exit;
}

/* Release the UCC library when the last user frees it */
static void cleanup_global_ucc_lib(void)
{
    g_ucc_init_count--;
    if (g_ucc_init_count == 0 && g_ucc_lib) {
        ucc_finalize(g_ucc_lib);
        g_ucc_lib = NULL;
        if (g_lib_config) {
            ucc_lib_config_release(g_lib_config);
            g_lib_config = NULL;
        }
    }
}

static ucc_status_t oob_allgather(void *sbuf, void *rbuf, size_t msglen,
                                  void *coll_ctx, void **req)
{
    MPIR_UCC_oob_ctx_t *ctx = (MPIR_UCC_oob_ctx_t *)coll_ctx;
    MPIR_Request *mpi_req = NULL;

    int mpi_errno = MPIR_Iallgather(sbuf, msglen, MPIR_UINT8,
                                     rbuf, msglen, MPIR_UINT8,
                                     ctx->comm, &mpi_req);
    if (mpi_errno != MPI_SUCCESS || !mpi_req) {
        return UCC_ERR_NO_RESOURCE;
    }
    *req = (void *)mpi_req;
    return UCC_OK;
}

static ucc_status_t oob_test(void *req)
{
    int completed = 0;
    int mpi_errno = MPIR_Test((MPIR_Request *)req, &completed, MPI_STATUS_IGNORE);
    return completed ? UCC_OK : UCC_INPROGRESS;
}

static ucc_status_t oob_free(void *req)
{
    if (req) MPIR_Request_free((MPIR_Request *)req);
    return UCC_OK;
}

static int MPIR_UCCcomm_init(MPIR_Comm *comm_ptr, int rank)
{
    int mpi_errno = MPI_SUCCESS;
    MPIR_UCCcomm *ucccomm = MPL_calloc(1, sizeof(*ucccomm), MPL_MEM_OTHER);
    MPIR_ERR_CHKANDJUMP(!ucccomm, mpi_errno, MPI_ERR_OTHER, "**nomem");

    ucccomm->oob_ctx.comm = comm_ptr;
    ucccomm->oob_ctx.rank = rank;
    ucccomm->initialized   = false;

    /* one-time library init */
    mpi_errno = init_global_ucc_lib();
    MPIR_ERR_CHECK(mpi_errno);

    /* create context config */
    ucc_context_config_h ctx_config = NULL;
    UCC_CHECK_OR_JUMP(ucc_context_config_read(g_ucc_lib, NULL, &ctx_config), mpi_errno);

    ucc_context_oob_coll_t oob = {
        .allgather = oob_allgather,
        .req_test  = oob_test,
        .req_free  = oob_free,
        .coll_info = &ucccomm->oob_ctx,
        .n_oob_eps = comm_ptr->remote_size,
        .oob_ep    = rank
    };
    ucc_context_params_t ctx_params = {
        .mask = UCC_CONTEXT_PARAM_FIELD_TYPE | UCC_CONTEXT_PARAM_FIELD_OOB,
        .type = UCC_CONTEXT_EXCLUSIVE,
        .oob  = oob
    };
    ucc_context_h ctx;
    UCC_CHECK_OR_JUMP(ucc_context_create(g_ucc_lib, &ctx_params, ctx_config, &ctx), mpi_errno);
    ucc_context_config_release(ctx_config);

    /* team creation */
    ucc_team_h   team;
    {
        ucc_team_params_t team_params = {
            .mask     = UCC_TEAM_PARAM_FIELD_EP |
                        UCC_TEAM_PARAM_FIELD_EP_RANGE |
                        UCC_TEAM_PARAM_FIELD_OOB,
            .ep       = rank,
            .ep_range = UCC_COLLECTIVE_EP_RANGE_CONTIG,
            .oob      = oob
        };
        ucc_status_t status;
        UCC_CHECK_OR_JUMP(
            ucc_team_create_post((ucc_context_h[]){ctx}, 1, &team_params, &team),
            mpi_errno);
        while ((status = ucc_team_create_test(team)) == UCC_INPROGRESS) {
            UCC_CHECK_OR_JUMP(ucc_context_progress(ctx), mpi_errno);
        }
        if (status != UCC_OK) {
            mpi_errno = MPI_ERR_OTHER;
            goto fn_fail;
        }
    }

    /* stash handles */
    ucccomm->ucc_lib = g_ucc_lib;
    ucccomm->ucc_context = ctx;
    ucccomm->ucc_team = team;
    ucccomm->initialized = true;
    comm_ptr->cclcomm->ucccomm = ucccomm;

fn_exit:
    return mpi_errno;
fn_fail:
    if (ucccomm) {
        if (ucccomm->ucc_team)    ucc_team_destroy(ucccomm->ucc_team);
        if (ucccomm->ucc_context) ucc_context_destroy(ucccomm->ucc_context);
        MPL_free(ucccomm);
        cleanup_global_ucc_lib();
    }
    goto fn_exit;
}

int MPIR_UCCcomm_free(MPIR_Comm *comm_ptr)
{
    int mpi_errno = MPI_SUCCESS;
    MPIR_UCCcomm *ucccomm = comm_ptr->cclcomm->ucccomm;
    if (!ucccomm) return MPI_SUCCESS;

    if (ucccomm->ucc_team)    ucc_team_destroy(ucccomm->ucc_team);
    if (ucccomm->ucc_context) ucc_context_destroy(ucccomm->ucc_context);

    /* balance init_global_ucc_lib() */
    cleanup_global_ucc_lib();

    MPL_free(ucccomm);
    comm_ptr->cclcomm->ucccomm = NULL;
    return mpi_errno;
}

int MPIR_UCC_check_init_and_init(MPIR_Comm *comm_ptr, int rank)
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
        case MPI_SUM: case MPI_PROD: case MPI_MIN: case MPI_MAX:
        case MPI_LAND: case MPI_LOR: case MPI_LXOR:
        case MPI_BAND: case MPI_BOR: case MPI_BXOR:
        case MPI_MAXLOC: case MPI_MINLOC:
            return 1;
        default:
            return 0;
    }
}

static int MPIR_UCC_get_red_op(MPI_Op op, ucc_reduction_op_t *redOp)
{
    int mpi_errno = MPI_SUCCESS;
    switch (op) {
        case MPI_SUM:    *redOp = UCC_OP_SUM; break;
        case MPI_PROD:   *redOp = UCC_OP_PROD; break;
        case MPI_MIN:    *redOp = UCC_OP_MIN; break;
        case MPI_MAX:    *redOp = UCC_OP_MAX; break;
        case MPI_LAND:   *redOp = UCC_OP_LAND; break;
        case MPI_LOR:    *redOp = UCC_OP_LOR; break;
        case MPI_LXOR:   *redOp = UCC_OP_LXOR; break;
        case MPI_BAND:   *redOp = UCC_OP_BAND; break;
        case MPI_BOR:    *redOp = UCC_OP_BOR; break;
        case MPI_BXOR:   *redOp = UCC_OP_BXOR; break;
        case MPI_MAXLOC: *redOp = UCC_OP_MAXLOC; break;
        case MPI_MINLOC: *redOp = UCC_OP_MINLOC; break;
        default: mpi_errno = MPI_ERR_ARG;
    }
    return mpi_errno;
}

static int MPIR_UCC_datatype_is_supported(MPI_Datatype dtype)
{
    switch (MPIR_DATATYPE_GET_RAW_INTERNAL(dtype)) {
        case MPIR_INT8: case MPIR_UINT8:
        case MPIR_INT32: case MPIR_UINT32:
        case MPIR_INT64: case MPIR_UINT64:
        case MPIR_FLOAT16: case MPIR_FLOAT32: case MPIR_FLOAT64:
            return 1;
        default:
            return 0;
    }
}

static int MPIR_UCC_get_datatype(MPI_Datatype dtype, ucc_datatype_t *ucc_dtype)
{
    int mpi_errno = MPI_SUCCESS;
    switch (MPIR_DATATYPE_GET_RAW_INTERNAL(dtype)) {
        case MPIR_INT8:    *ucc_dtype = UCC_DT_INT8; break;
        case MPIR_UINT8:   *ucc_dtype = UCC_DT_UINT8; break;
        case MPIR_INT32:   *ucc_dtype = UCC_DT_INT32; break;
        case MPIR_UINT32:  *ucc_dtype = UCC_DT_UINT32; break;
        case MPIR_INT64:   *ucc_dtype = UCC_DT_INT64; break;
        case MPIR_UINT64:  *ucc_dtype = UCC_DT_UINT64; break;
        case MPIR_FLOAT16: *ucc_dtype = UCC_DT_FLOAT16; break;
        case MPIR_FLOAT32: *ucc_dtype = UCC_DT_FLOAT32; break;
        case MPIR_FLOAT64: *ucc_dtype = UCC_DT_FLOAT64; break;
        default: mpi_errno = MPI_ERR_ARG;
    }
    return mpi_errno;
}

int MPIR_UCC_check_requirements_red_op(const void *sendbuf, void *recvbuf,
                                       MPI_Datatype datatype, MPI_Op op)
{
    return MPIR_UCC_red_op_is_supported(op) &&
           MPIR_UCC_datatype_is_supported(datatype) &&
           MPIR_CCL_check_both_gpu_bufs(sendbuf, recvbuf);
}

int MPIR_UCC_Allreduce(const void *sendbuf, void *recvbuf, MPI_Aint count,
                       MPI_Datatype datatype, MPI_Op op,
                       MPIR_Comm *comm_ptr, MPIR_Errflag_t errflag)
{
    int mpi_errno = MPI_SUCCESS;
    ucc_coll_req_h req = NULL;
    ucc_reduction_op_t uccOp;
    ucc_datatype_t    uccDatatype;

    mpi_errno = MPIR_UCC_get_red_op(op, &uccOp);
    MPIR_ERR_CHECK(mpi_errno);
    mpi_errno = MPIR_UCC_get_datatype(datatype, &uccDatatype);
    MPIR_ERR_CHECK(mpi_errno);

    mpi_errno = MPIR_UCC_check_init_and_init(comm_ptr, comm_ptr->rank);
    MPIR_ERR_CHECK(mpi_errno);
    MPIR_UCCcomm *ucccomm = comm_ptr->cclcomm->ucccomm;

    ucc_coll_args_t args = {
        .mask      = UCC_COLL_ARGS_FIELD_FLAGS,
        .coll_type = UCC_COLL_TYPE_ALLREDUCE,
        .src.info  = { .buffer = (void*)sendbuf, .count = count,
                       .datatype = uccDatatype, .mem_type = UCC_MEMORY_TYPE_UNKNOWN },
        .dst.info  = { .buffer = (void*)recvbuf, .count = count,
                       .datatype = uccDatatype, .mem_type = UCC_MEMORY_TYPE_UNKNOWN },
        .op        = uccOp,
        .flags     = UCC_COLL_ARGS_FLAG_CONTIG_SRC_BUFFER |
                     UCC_COLL_ARGS_FLAG_CONTIG_DST_BUFFER
    };
    UCC_CHECK_OR_JUMP(ucc_collective_init(&args, &req, ucccomm->ucc_team), mpi_errno);
    UCC_CHECK_OR_JUMP(ucc_collective_post(req), mpi_errno);

    ucc_status_t status;
    while ((status = ucc_collective_test(req)) == UCC_INPROGRESS) {
        UCC_CHECK_OR_JUMP(ucc_context_progress(ucccomm->ucc_context), mpi_errno);
    }
    if (status != UCC_OK) {
        mpi_errno = MPI_ERR_OTHER;
        goto fn_fail;
    }
    UCC_CHECK_OR_JUMP(ucc_collective_finalize(req), mpi_errno);

fn_exit:
    return mpi_errno;
fn_fail:
    if (req) ucc_collective_finalize(req);
    goto fn_exit;
}

#endif /* ENABLE_UCC */
