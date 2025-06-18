/*
 * Copyright (C) by Argonne National Laboratory
 *     See COPYRIGHT in top-level directory
 */

#include "mpiimpl.h"

#ifdef ENABLE_CCLCOMM

int MPIR_CCLcomm_init(MPIR_Comm * comm)
{
    int mpi_errno = MPI_SUCCESS;
    MPIR_CCLcomm *cclcomm;
    cclcomm = MPL_malloc(sizeof(MPIR_CCLcomm), MPL_MEM_OTHER);
    MPIR_ERR_CHKANDJUMP(!cclcomm, mpi_errno, MPI_ERR_OTHER, "**nomem");

    cclcomm->comm = comm;
    comm->cclcomm = cclcomm;

#ifdef ENABLE_NCCL
    cclcomm->ncclcomm = 0;      // Initialize the ncclcomm to 0
#endif /* ENABLE_NCCL */

#ifdef ENABLE_UCC
    cclcomm->ucccomm = 0;
#endif /* ENABLE_UCC */

  fn_exit:
    return mpi_errno;
  fn_fail:
    goto fn_exit;
}

int MPIR_CCLcomm_free(MPIR_Comm * comm_ptr)
{
    int mpi_errno = MPI_SUCCESS;

    MPIR_Assert(comm_ptr->cclcomm);

#ifdef ENABLE_NCCL
    if (comm_ptr->cclcomm->ncclcomm) {
        mpi_errno = MPIR_NCCLcomm_free(comm_ptr);
        if (mpi_errno != MPL_SUCCESS) {
            goto fn_fail;
        }
    }
#endif /* ENABLE_NCCL */

#ifdef ENABLE_UCC
    if (comm_ptr->cclcomm->ucccomm) {
        mpi_errno = MPIR_UCCcomm_free(comm_ptr);
        if (mpi_errno != MPL_SUCCESS) {
            goto fn_fail;
        }
    }
#endif /* ENABLE_UCC */

    MPL_free(comm_ptr->cclcomm);
    comm_ptr->cclcomm = NULL;

  fn_exit:
    return mpi_errno;
  fn_fail:
    goto fn_exit;
}

void MPIR_CCL_finalize(void)
{
#ifdef ENABLE_UCC
    /* only once, at end of run */
    if (MPIR_Process.comm_world->cclcomm->ucccomm) {
        MPIR_UCCcomm_free(MPIR_Process.comm_world);
    }
#endif
}

#endif /* ENABLE_CCLCOMM */
