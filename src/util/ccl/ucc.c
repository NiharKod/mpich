/*
 * Copyright (C) by Argonne National Laboratory
 *     See COPYRIGHT in top-level directory
*/

#include "mpiimpl.h"
#ifdef ENABLE_UCC

ucc_status_t oob_allgather(void *sbuf, void *rbuf, size_t msglen,
                           void *coll_ctx, void **req)
{
    oob_ctx_t *ctx = (oob_ctx_t *)coll_ctx;
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

static int MPIR_UCCcomm_init(MPIR_comm *comm_ptr, int rank)
{
    int mpi_errno = MPI_SUCCESS;
    int comm_size = comm_ptr->local_size;
    ucc_status_t ucc_status; 
   
    MPIR_UCCcomm *ucccomm;
    ucccomm = MPL_malloc(sizeof(MPIR_UCCcomm), MPL_MEM_OTHER);
    MPIR_ERR_CHKANDJUMP(!ucccomm, mpi_errno, MPI_ERR_OTHER, "**nomem");
 
}

#endif /*ENABLE UCC*/