/*
 * Copyright (C) by Argonne National Laboratory
 *     See COPYRIGHT in top-level directory
 */

#ifndef MPIR_CCLCOMM_H_INCLUDED
#define MPIR_CCLCOMM_H_INCLUDED

#ifdef ENABLE_CCLCOMM

#ifdef ENABLE_NCCL
#include <nccl.h>
#endif

#ifdef ENABLE_UCC
#include <ucc/api/ucc.h>
#endif

#ifdef ENABLE_NCCL
typedef struct MPIR_NCCLcomm {
    ncclUniqueId id;
    ncclComm_t ncclcomm;
    cudaStream_t stream;
} MPIR_NCCLcomm;
#endif /*ENABLE_NCCL */

#ifdef ENABLE_UCC

typedef struct {
    MPI_Comm comm;
    int rank;
} MPIR_UCC_oob_ctx_t;

typedef struct MPIR_UCCcomm {
    ucc_team_h ucc_team;              
    MPIR_UCC_oob_ctx_t oob_ctx;       
    bool initialized; 
} MPIR_UCCcomm;
#endif /* Enable UCC*/

typedef struct MPIR_CCLcomm {
    MPIR_OBJECT_HEADER;
    MPIR_Comm *comm;
#ifdef ENABLE_NCCL
    MPIR_NCCLcomm *ncclcomm;
#endif                          /*ENABLE_NCCL */
#ifdef ENABLE_UCC
    MPIR_UCCcomm *uccComm;
#endif                          /*ENABLE_UCC*/
} MPIR_CCLcomm;

int MPIR_CCL_check_both_gpu_bufs(const void *sendbuf, void *recvbuf);
int MPIR_CCLcomm_init(MPIR_Comm * comm);
int MPIR_CCLcomm_free(MPIR_Comm * comm);

#ifdef ENABLE_NCCL
int MPIR_NCCL_check_requirements_red_op(const void *sendbuf, void *recvbuf, MPI_Datatype datatype,
                                        MPI_Op op);
int MPIR_NCCL_Allreduce(const void *sendbuf, void *recvbuf, MPI_Aint count, MPI_Datatype datatype,
                        MPI_Op op, MPIR_Comm * comm_ptr, MPIR_Errflag_t errflag);
int MPIR_NCCLcomm_free(MPIR_Comm * comm);
#endif /*ENABLE_NCCL */

#ifdef ENABLE_UCC
int MPIR_UCC_check_requirements_red_op(const void *sendbuf, void *recvbuf, MPI_Datatype datatype,
                                        MPI_Op op);
int MPIR_UCC_Allreduce(const void *sendbuf, void *recvbuf, MPI_Aint count, MPI_Datatype datatype,
                        MPI_Op op, MPIR_Comm * comm_ptr, MPIR_Errflag_t errflag);
int MPIR_UCCcomm_free(MPIR_Comm * comm);
#endif /*ENABLE_UCC*/

#endif /* ENABLE_CCLCOMM */

#endif /* MPIR_CCLCOMM_H_INCLUDED */
