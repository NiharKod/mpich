!
! Copyright (C) by Argonne National Laboratory
!     See COPYRIGHT in top-level directory
!

! -- THIS FILE IS AUTO-GENERATED -- 

MODULE pmpi_base
    IMPLICIT NONE
    INTERFACE PMPI_Abi_get_fortran_info
        SUBROUTINE PMPI_Abi_get_fortran_info(info, ierror)
            IMPLICIT NONE
            INTEGER :: info
            INTEGER :: ierror
        END SUBROUTINE PMPI_Abi_get_fortran_info
    END INTERFACE
    
    INTERFACE PMPI_Abi_get_info
        SUBROUTINE PMPI_Abi_get_info(info, ierror)
            IMPLICIT NONE
            INTEGER :: info
            INTEGER :: ierror
        END SUBROUTINE PMPI_Abi_get_info
    END INTERFACE
    
    INTERFACE PMPI_Abi_get_version
        SUBROUTINE PMPI_Abi_get_version(abi_major, abi_minor, ierror)
            IMPLICIT NONE
            INTEGER :: abi_major
            INTEGER :: abi_minor
            INTEGER :: ierror
        END SUBROUTINE PMPI_Abi_get_version
    END INTERFACE
    
    INTERFACE PMPI_Comm_create_keyval
        SUBROUTINE PMPI_Comm_create_keyval(comm_copy_attr_fn, comm_delete_attr_fn, comm_keyval, extra_state, &
                                           ierror)
            USE MPI_CONSTANTS, ONLY: MPI_ADDRESS_KIND
            IMPLICIT NONE
            EXTERNAL :: comm_copy_attr_fn
            EXTERNAL :: comm_delete_attr_fn
            INTEGER :: comm_keyval
            INTEGER(KIND=MPI_ADDRESS_KIND) :: extra_state
            INTEGER :: ierror
        END SUBROUTINE PMPI_Comm_create_keyval
    END INTERFACE
    
    INTERFACE PMPI_Comm_delete_attr
        SUBROUTINE PMPI_Comm_delete_attr(comm, comm_keyval, ierror)
            IMPLICIT NONE
            INTEGER :: comm
            INTEGER :: comm_keyval
            INTEGER :: ierror
        END SUBROUTINE PMPI_Comm_delete_attr
    END INTERFACE
    
    INTERFACE PMPI_Comm_free_keyval
        SUBROUTINE PMPI_Comm_free_keyval(comm_keyval, ierror)
            IMPLICIT NONE
            INTEGER :: comm_keyval
            INTEGER :: ierror
        END SUBROUTINE PMPI_Comm_free_keyval
    END INTERFACE
    
    INTERFACE PMPI_Comm_get_attr
        SUBROUTINE PMPI_Comm_get_attr(comm, comm_keyval, attribute_val, flag, ierror)
            USE MPI_CONSTANTS, ONLY: MPI_ADDRESS_KIND
            IMPLICIT NONE
            INTEGER :: comm
            INTEGER :: comm_keyval
            INTEGER(KIND=MPI_ADDRESS_KIND) :: attribute_val
            LOGICAL :: flag
            INTEGER :: ierror
        END SUBROUTINE PMPI_Comm_get_attr
    END INTERFACE
    
    INTERFACE PMPI_Comm_set_attr
        SUBROUTINE PMPI_Comm_set_attr(comm, comm_keyval, attribute_val, ierror)
            USE MPI_CONSTANTS, ONLY: MPI_ADDRESS_KIND
            IMPLICIT NONE
            INTEGER :: comm
            INTEGER :: comm_keyval
            INTEGER(KIND=MPI_ADDRESS_KIND) :: attribute_val
            INTEGER :: ierror
        END SUBROUTINE PMPI_Comm_set_attr
    END INTERFACE
    
    INTERFACE PMPI_Keyval_create
        SUBROUTINE PMPI_Keyval_create(copy_fn, delete_fn, keyval, extra_state, ierror)
            IMPLICIT NONE
            EXTERNAL :: copy_fn
            EXTERNAL :: delete_fn
            INTEGER :: keyval
            INTEGER :: extra_state
            INTEGER :: ierror
        END SUBROUTINE PMPI_Keyval_create
    END INTERFACE
    
    INTERFACE PMPI_Keyval_free
        SUBROUTINE PMPI_Keyval_free(keyval, ierror)
            IMPLICIT NONE
            INTEGER :: keyval
            INTEGER :: ierror
        END SUBROUTINE PMPI_Keyval_free
    END INTERFACE
    
    INTERFACE PMPI_Type_create_keyval
        SUBROUTINE PMPI_Type_create_keyval(type_copy_attr_fn, type_delete_attr_fn, type_keyval, extra_state, &
                                           ierror)
            USE MPI_CONSTANTS, ONLY: MPI_ADDRESS_KIND
            IMPLICIT NONE
            EXTERNAL :: type_copy_attr_fn
            EXTERNAL :: type_delete_attr_fn
            INTEGER :: type_keyval
            INTEGER(KIND=MPI_ADDRESS_KIND) :: extra_state
            INTEGER :: ierror
        END SUBROUTINE PMPI_Type_create_keyval
    END INTERFACE
    
    INTERFACE PMPI_Type_delete_attr
        SUBROUTINE PMPI_Type_delete_attr(datatype, type_keyval, ierror)
            IMPLICIT NONE
            INTEGER :: datatype
            INTEGER :: type_keyval
            INTEGER :: ierror
        END SUBROUTINE PMPI_Type_delete_attr
    END INTERFACE
    
    INTERFACE PMPI_Type_free_keyval
        SUBROUTINE PMPI_Type_free_keyval(type_keyval, ierror)
            IMPLICIT NONE
            INTEGER :: type_keyval
            INTEGER :: ierror
        END SUBROUTINE PMPI_Type_free_keyval
    END INTERFACE
    
    INTERFACE PMPI_Type_get_attr
        SUBROUTINE PMPI_Type_get_attr(datatype, type_keyval, attribute_val, flag, ierror)
            USE MPI_CONSTANTS, ONLY: MPI_ADDRESS_KIND
            IMPLICIT NONE
            INTEGER :: datatype
            INTEGER :: type_keyval
            INTEGER(KIND=MPI_ADDRESS_KIND) :: attribute_val
            LOGICAL :: flag
            INTEGER :: ierror
        END SUBROUTINE PMPI_Type_get_attr
    END INTERFACE
    
    INTERFACE PMPI_Type_set_attr
        SUBROUTINE PMPI_Type_set_attr(datatype, type_keyval, attribute_val, ierror)
            USE MPI_CONSTANTS, ONLY: MPI_ADDRESS_KIND
            IMPLICIT NONE
            INTEGER :: datatype
            INTEGER :: type_keyval
            INTEGER(KIND=MPI_ADDRESS_KIND) :: attribute_val
            INTEGER :: ierror
        END SUBROUTINE PMPI_Type_set_attr
    END INTERFACE
    
    INTERFACE PMPI_Win_create_keyval
        SUBROUTINE PMPI_Win_create_keyval(win_copy_attr_fn, win_delete_attr_fn, win_keyval, extra_state, &
                                          ierror)
            USE MPI_CONSTANTS, ONLY: MPI_ADDRESS_KIND
            IMPLICIT NONE
            EXTERNAL :: win_copy_attr_fn
            EXTERNAL :: win_delete_attr_fn
            INTEGER :: win_keyval
            INTEGER(KIND=MPI_ADDRESS_KIND) :: extra_state
            INTEGER :: ierror
        END SUBROUTINE PMPI_Win_create_keyval
    END INTERFACE
    
    INTERFACE PMPI_Win_delete_attr
        SUBROUTINE PMPI_Win_delete_attr(win, win_keyval, ierror)
            IMPLICIT NONE
            INTEGER :: win
            INTEGER :: win_keyval
            INTEGER :: ierror
        END SUBROUTINE PMPI_Win_delete_attr
    END INTERFACE
    
    INTERFACE PMPI_Win_free_keyval
        SUBROUTINE PMPI_Win_free_keyval(win_keyval, ierror)
            IMPLICIT NONE
            INTEGER :: win_keyval
            INTEGER :: ierror
        END SUBROUTINE PMPI_Win_free_keyval
    END INTERFACE
    
    INTERFACE PMPI_Win_get_attr
        SUBROUTINE PMPI_Win_get_attr(win, win_keyval, attribute_val, flag, ierror)
            USE MPI_CONSTANTS, ONLY: MPI_ADDRESS_KIND
            IMPLICIT NONE
            INTEGER :: win
            INTEGER :: win_keyval
            INTEGER(KIND=MPI_ADDRESS_KIND) :: attribute_val
            LOGICAL :: flag
            INTEGER :: ierror
        END SUBROUTINE PMPI_Win_get_attr
    END INTERFACE
    
    INTERFACE PMPI_Win_set_attr
        SUBROUTINE PMPI_Win_set_attr(win, win_keyval, attribute_val, ierror)
            USE MPI_CONSTANTS, ONLY: MPI_ADDRESS_KIND
            IMPLICIT NONE
            INTEGER :: win
            INTEGER :: win_keyval
            INTEGER(KIND=MPI_ADDRESS_KIND) :: attribute_val
            INTEGER :: ierror
        END SUBROUTINE PMPI_Win_set_attr
    END INTERFACE
    
    INTERFACE PMPIX_Op_create_x
        SUBROUTINE PMPIX_Op_create_x(user_fn_x, destructor_fn, commute, extra_state, op, ierror)
            USE MPI_CONSTANTS, ONLY: MPI_ADDRESS_KIND
            IMPLICIT NONE
            EXTERNAL :: user_fn_x
            EXTERNAL :: destructor_fn
            LOGICAL :: commute
            INTEGER(KIND=MPI_ADDRESS_KIND) :: extra_state
            INTEGER :: op
            INTEGER :: ierror
        END SUBROUTINE PMPIX_Op_create_x
    END INTERFACE
    
    INTERFACE PMPIX_Comm_create_errhandler_x
        SUBROUTINE PMPIX_Comm_create_errhandler_x(comm_errhandler_fn_x, destructor_fn, extra_state, &
                                                  errhandler, ierror)
            USE MPI_CONSTANTS, ONLY: MPI_ADDRESS_KIND
            IMPLICIT NONE
            EXTERNAL :: comm_errhandler_fn_x
            EXTERNAL :: destructor_fn
            INTEGER(KIND=MPI_ADDRESS_KIND) :: extra_state
            INTEGER :: errhandler
            INTEGER :: ierror
        END SUBROUTINE PMPIX_Comm_create_errhandler_x
    END INTERFACE
    
    INTERFACE PMPIX_Win_create_errhandler_x
        SUBROUTINE PMPIX_Win_create_errhandler_x(comm_errhandler_fn_x, destructor_fn, extra_state, &
                                                 errhandler, ierror)
            USE MPI_CONSTANTS, ONLY: MPI_ADDRESS_KIND
            IMPLICIT NONE
            EXTERNAL :: comm_errhandler_fn_x
            EXTERNAL :: destructor_fn
            INTEGER(KIND=MPI_ADDRESS_KIND) :: extra_state
            INTEGER :: errhandler
            INTEGER :: ierror
        END SUBROUTINE PMPIX_Win_create_errhandler_x
    END INTERFACE
    
    INTERFACE PMPIX_File_create_errhandler_x
        SUBROUTINE PMPIX_File_create_errhandler_x(comm_errhandler_fn_x, destructor_fn, extra_state, &
                                                  errhandler, ierror)
            USE MPI_CONSTANTS, ONLY: MPI_ADDRESS_KIND
            IMPLICIT NONE
            EXTERNAL :: comm_errhandler_fn_x
            EXTERNAL :: destructor_fn
            INTEGER(KIND=MPI_ADDRESS_KIND) :: extra_state
            INTEGER :: errhandler
            INTEGER :: ierror
        END SUBROUTINE PMPIX_File_create_errhandler_x
    END INTERFACE
    
    INTERFACE PMPIX_Session_create_errhandler_x
        SUBROUTINE PMPIX_Session_create_errhandler_x(comm_errhandler_fn_x, destructor_fn, extra_state, &
                                                     errhandler, ierror)
            USE MPI_CONSTANTS, ONLY: MPI_ADDRESS_KIND
            IMPLICIT NONE
            EXTERNAL :: comm_errhandler_fn_x
            EXTERNAL :: destructor_fn
            INTEGER(KIND=MPI_ADDRESS_KIND) :: extra_state
            INTEGER :: errhandler
            INTEGER :: ierror
        END SUBROUTINE PMPIX_Session_create_errhandler_x
    END INTERFACE
    
    INTERFACE PMPI_Allgather
        SUBROUTINE PMPI_Allgather(sendbuf, sendcount, sendtype, recvbuf, recvcount, recvtype, comm, ierror)
            IMPLICIT NONE
            !GCC$ ATTRIBUTES NO_ARG_CHECK :: sendbuf, recvbuf
            REAL :: sendbuf
            INTEGER :: sendcount
            INTEGER :: sendtype
            REAL :: recvbuf
            INTEGER :: recvcount
            INTEGER :: recvtype
            INTEGER :: comm
            INTEGER :: ierror
        END SUBROUTINE PMPI_Allgather
    END INTERFACE
    
    INTERFACE PMPI_Allgather_init
        SUBROUTINE PMPI_Allgather_init(sendbuf, sendcount, sendtype, recvbuf, recvcount, recvtype, comm, &
                                       info, request, ierror)
            IMPLICIT NONE
            !GCC$ ATTRIBUTES NO_ARG_CHECK :: sendbuf, recvbuf
            REAL :: sendbuf
            INTEGER :: sendcount
            INTEGER :: sendtype
            REAL :: recvbuf
            INTEGER :: recvcount
            INTEGER :: recvtype
            INTEGER :: comm
            INTEGER :: info
            INTEGER :: request
            INTEGER :: ierror
        END SUBROUTINE PMPI_Allgather_init
    END INTERFACE
    
    INTERFACE PMPI_Allgatherv
        SUBROUTINE PMPI_Allgatherv(sendbuf, sendcount, sendtype, recvbuf, recvcounts, displs, recvtype, &
                                   comm, ierror)
            IMPLICIT NONE
            !GCC$ ATTRIBUTES NO_ARG_CHECK :: sendbuf, recvbuf
            REAL :: sendbuf
            INTEGER :: sendcount
            INTEGER :: sendtype
            REAL :: recvbuf
            INTEGER :: recvcounts(*)
            INTEGER :: displs(*)
            INTEGER :: recvtype
            INTEGER :: comm
            INTEGER :: ierror
        END SUBROUTINE PMPI_Allgatherv
    END INTERFACE
    
    INTERFACE PMPI_Allgatherv_init
        SUBROUTINE PMPI_Allgatherv_init(sendbuf, sendcount, sendtype, recvbuf, recvcounts, displs, recvtype, &
                                        comm, info, request, ierror)
            IMPLICIT NONE
            !GCC$ ATTRIBUTES NO_ARG_CHECK :: sendbuf, recvbuf
            REAL :: sendbuf
            INTEGER :: sendcount
            INTEGER :: sendtype
            REAL :: recvbuf
            INTEGER :: recvcounts(*)
            INTEGER :: displs(*)
            INTEGER :: recvtype
            INTEGER :: comm
            INTEGER :: info
            INTEGER :: request
            INTEGER :: ierror
        END SUBROUTINE PMPI_Allgatherv_init
    END INTERFACE
    
    INTERFACE PMPI_Allreduce
        SUBROUTINE PMPI_Allreduce(sendbuf, recvbuf, count, datatype, op, comm, ierror)
            IMPLICIT NONE
            !GCC$ ATTRIBUTES NO_ARG_CHECK :: sendbuf, recvbuf
            REAL :: sendbuf
            REAL :: recvbuf
            INTEGER :: count
            INTEGER :: datatype
            INTEGER :: op
            INTEGER :: comm
            INTEGER :: ierror
        END SUBROUTINE PMPI_Allreduce
    END INTERFACE
    
    INTERFACE PMPI_Allreduce_init
        SUBROUTINE PMPI_Allreduce_init(sendbuf, recvbuf, count, datatype, op, comm, info, request, ierror)
            IMPLICIT NONE
            !GCC$ ATTRIBUTES NO_ARG_CHECK :: sendbuf, recvbuf
            REAL :: sendbuf
            REAL :: recvbuf
            INTEGER :: count
            INTEGER :: datatype
            INTEGER :: op
            INTEGER :: comm
            INTEGER :: info
            INTEGER :: request
            INTEGER :: ierror
        END SUBROUTINE PMPI_Allreduce_init
    END INTERFACE
    
    INTERFACE PMPI_Alltoall
        SUBROUTINE PMPI_Alltoall(sendbuf, sendcount, sendtype, recvbuf, recvcount, recvtype, comm, ierror)
            IMPLICIT NONE
            !GCC$ ATTRIBUTES NO_ARG_CHECK :: sendbuf, recvbuf
            REAL :: sendbuf
            INTEGER :: sendcount
            INTEGER :: sendtype
            REAL :: recvbuf
            INTEGER :: recvcount
            INTEGER :: recvtype
            INTEGER :: comm
            INTEGER :: ierror
        END SUBROUTINE PMPI_Alltoall
    END INTERFACE
    
    INTERFACE PMPI_Alltoall_init
        SUBROUTINE PMPI_Alltoall_init(sendbuf, sendcount, sendtype, recvbuf, recvcount, recvtype, comm, &
                                      info, request, ierror)
            IMPLICIT NONE
            !GCC$ ATTRIBUTES NO_ARG_CHECK :: sendbuf, recvbuf
            REAL :: sendbuf
            INTEGER :: sendcount
            INTEGER :: sendtype
            REAL :: recvbuf
            INTEGER :: recvcount
            INTEGER :: recvtype
            INTEGER :: comm
            INTEGER :: info
            INTEGER :: request
            INTEGER :: ierror
        END SUBROUTINE PMPI_Alltoall_init
    END INTERFACE
    
    INTERFACE PMPI_Alltoallv
        SUBROUTINE PMPI_Alltoallv(sendbuf, sendcounts, sdispls, sendtype, recvbuf, recvcounts, rdispls, &
                                  recvtype, comm, ierror)
            IMPLICIT NONE
            !GCC$ ATTRIBUTES NO_ARG_CHECK :: sendbuf, recvbuf
            REAL :: sendbuf
            INTEGER :: sendcounts(*)
            INTEGER :: sdispls(*)
            INTEGER :: sendtype
            REAL :: recvbuf
            INTEGER :: recvcounts(*)
            INTEGER :: rdispls(*)
            INTEGER :: recvtype
            INTEGER :: comm
            INTEGER :: ierror
        END SUBROUTINE PMPI_Alltoallv
    END INTERFACE
    
    INTERFACE PMPI_Alltoallv_init
        SUBROUTINE PMPI_Alltoallv_init(sendbuf, sendcounts, sdispls, sendtype, recvbuf, recvcounts, rdispls, &
                                       recvtype, comm, info, request, ierror)
            IMPLICIT NONE
            !GCC$ ATTRIBUTES NO_ARG_CHECK :: sendbuf, recvbuf
            REAL :: sendbuf
            INTEGER :: sendcounts(*)
            INTEGER :: sdispls(*)
            INTEGER :: sendtype
            REAL :: recvbuf
            INTEGER :: recvcounts(*)
            INTEGER :: rdispls(*)
            INTEGER :: recvtype
            INTEGER :: comm
            INTEGER :: info
            INTEGER :: request
            INTEGER :: ierror
        END SUBROUTINE PMPI_Alltoallv_init
    END INTERFACE
    
    INTERFACE PMPI_Alltoallw
        SUBROUTINE PMPI_Alltoallw(sendbuf, sendcounts, sdispls, sendtypes, recvbuf, recvcounts, rdispls, &
                                  recvtypes, comm, ierror)
            IMPLICIT NONE
            !GCC$ ATTRIBUTES NO_ARG_CHECK :: sendbuf, recvbuf
            REAL :: sendbuf
            INTEGER :: sendcounts(*)
            INTEGER :: sdispls(*)
            INTEGER :: sendtypes(*)
            REAL :: recvbuf
            INTEGER :: recvcounts(*)
            INTEGER :: rdispls(*)
            INTEGER :: recvtypes(*)
            INTEGER :: comm
            INTEGER :: ierror
        END SUBROUTINE PMPI_Alltoallw
    END INTERFACE
    
    INTERFACE PMPI_Alltoallw_init
        SUBROUTINE PMPI_Alltoallw_init(sendbuf, sendcounts, sdispls, sendtypes, recvbuf, recvcounts, &
                                       rdispls, recvtypes, comm, info, request, ierror)
            IMPLICIT NONE
            !GCC$ ATTRIBUTES NO_ARG_CHECK :: sendbuf, recvbuf
            REAL :: sendbuf
            INTEGER :: sendcounts(*)
            INTEGER :: sdispls(*)
            INTEGER :: sendtypes(*)
            REAL :: recvbuf
            INTEGER :: recvcounts(*)
            INTEGER :: rdispls(*)
            INTEGER :: recvtypes(*)
            INTEGER :: comm
            INTEGER :: info
            INTEGER :: request
            INTEGER :: ierror
        END SUBROUTINE PMPI_Alltoallw_init
    END INTERFACE
    
    INTERFACE PMPI_Barrier
        SUBROUTINE PMPI_Barrier(comm, ierror)
            IMPLICIT NONE
            INTEGER :: comm
            INTEGER :: ierror
        END SUBROUTINE PMPI_Barrier
    END INTERFACE
    
    INTERFACE PMPI_Barrier_init
        SUBROUTINE PMPI_Barrier_init(comm, info, request, ierror)
            IMPLICIT NONE
            INTEGER :: comm
            INTEGER :: info
            INTEGER :: request
            INTEGER :: ierror
        END SUBROUTINE PMPI_Barrier_init
    END INTERFACE
    
    INTERFACE PMPI_Bcast
        SUBROUTINE PMPI_Bcast(buffer, count, datatype, root, comm, ierror)
            IMPLICIT NONE
            !GCC$ ATTRIBUTES NO_ARG_CHECK :: buffer
            REAL :: buffer
            INTEGER :: count
            INTEGER :: datatype
            INTEGER :: root
            INTEGER :: comm
            INTEGER :: ierror
        END SUBROUTINE PMPI_Bcast
    END INTERFACE
    
    INTERFACE PMPI_Bcast_init
        SUBROUTINE PMPI_Bcast_init(buffer, count, datatype, root, comm, info, request, ierror)
            IMPLICIT NONE
            !GCC$ ATTRIBUTES NO_ARG_CHECK :: buffer
            REAL :: buffer
            INTEGER :: count
            INTEGER :: datatype
            INTEGER :: root
            INTEGER :: comm
            INTEGER :: info
            INTEGER :: request
            INTEGER :: ierror
        END SUBROUTINE PMPI_Bcast_init
    END INTERFACE
    
    INTERFACE PMPI_Exscan
        SUBROUTINE PMPI_Exscan(sendbuf, recvbuf, count, datatype, op, comm, ierror)
            IMPLICIT NONE
            !GCC$ ATTRIBUTES NO_ARG_CHECK :: sendbuf, recvbuf
            REAL :: sendbuf
            REAL :: recvbuf
            INTEGER :: count
            INTEGER :: datatype
            INTEGER :: op
            INTEGER :: comm
            INTEGER :: ierror
        END SUBROUTINE PMPI_Exscan
    END INTERFACE
    
    INTERFACE PMPI_Exscan_init
        SUBROUTINE PMPI_Exscan_init(sendbuf, recvbuf, count, datatype, op, comm, info, request, ierror)
            IMPLICIT NONE
            !GCC$ ATTRIBUTES NO_ARG_CHECK :: sendbuf, recvbuf
            REAL :: sendbuf
            REAL :: recvbuf
            INTEGER :: count
            INTEGER :: datatype
            INTEGER :: op
            INTEGER :: comm
            INTEGER :: info
            INTEGER :: request
            INTEGER :: ierror
        END SUBROUTINE PMPI_Exscan_init
    END INTERFACE
    
    INTERFACE PMPI_Gather
        SUBROUTINE PMPI_Gather(sendbuf, sendcount, sendtype, recvbuf, recvcount, recvtype, root, comm, &
                               ierror)
            IMPLICIT NONE
            !GCC$ ATTRIBUTES NO_ARG_CHECK :: sendbuf, recvbuf
            REAL :: sendbuf
            INTEGER :: sendcount
            INTEGER :: sendtype
            REAL :: recvbuf
            INTEGER :: recvcount
            INTEGER :: recvtype
            INTEGER :: root
            INTEGER :: comm
            INTEGER :: ierror
        END SUBROUTINE PMPI_Gather
    END INTERFACE
    
    INTERFACE PMPI_Gather_init
        SUBROUTINE PMPI_Gather_init(sendbuf, sendcount, sendtype, recvbuf, recvcount, recvtype, root, comm, &
                                    info, request, ierror)
            IMPLICIT NONE
            !GCC$ ATTRIBUTES NO_ARG_CHECK :: sendbuf, recvbuf
            REAL :: sendbuf
            INTEGER :: sendcount
            INTEGER :: sendtype
            REAL :: recvbuf
            INTEGER :: recvcount
            INTEGER :: recvtype
            INTEGER :: root
            INTEGER :: comm
            INTEGER :: info
            INTEGER :: request
            INTEGER :: ierror
        END SUBROUTINE PMPI_Gather_init
    END INTERFACE
    
    INTERFACE PMPI_Gatherv
        SUBROUTINE PMPI_Gatherv(sendbuf, sendcount, sendtype, recvbuf, recvcounts, displs, recvtype, root, &
                                comm, ierror)
            IMPLICIT NONE
            !GCC$ ATTRIBUTES NO_ARG_CHECK :: sendbuf, recvbuf
            REAL :: sendbuf
            INTEGER :: sendcount
            INTEGER :: sendtype
            REAL :: recvbuf
            INTEGER :: recvcounts(*)
            INTEGER :: displs(*)
            INTEGER :: recvtype
            INTEGER :: root
            INTEGER :: comm
            INTEGER :: ierror
        END SUBROUTINE PMPI_Gatherv
    END INTERFACE
    
    INTERFACE PMPI_Gatherv_init
        SUBROUTINE PMPI_Gatherv_init(sendbuf, sendcount, sendtype, recvbuf, recvcounts, displs, recvtype, &
                                     root, comm, info, request, ierror)
            IMPLICIT NONE
            !GCC$ ATTRIBUTES NO_ARG_CHECK :: sendbuf, recvbuf
            REAL :: sendbuf
            INTEGER :: sendcount
            INTEGER :: sendtype
            REAL :: recvbuf
            INTEGER :: recvcounts(*)
            INTEGER :: displs(*)
            INTEGER :: recvtype
            INTEGER :: root
            INTEGER :: comm
            INTEGER :: info
            INTEGER :: request
            INTEGER :: ierror
        END SUBROUTINE PMPI_Gatherv_init
    END INTERFACE
    
    INTERFACE PMPI_Iallgather
        SUBROUTINE PMPI_Iallgather(sendbuf, sendcount, sendtype, recvbuf, recvcount, recvtype, comm, &
                                   request, ierror)
            IMPLICIT NONE
            !GCC$ ATTRIBUTES NO_ARG_CHECK :: sendbuf, recvbuf
            REAL :: sendbuf
            INTEGER :: sendcount
            INTEGER :: sendtype
            REAL :: recvbuf
            INTEGER :: recvcount
            INTEGER :: recvtype
            INTEGER :: comm
            INTEGER :: request
            INTEGER :: ierror
        END SUBROUTINE PMPI_Iallgather
    END INTERFACE
    
    INTERFACE PMPI_Iallgatherv
        SUBROUTINE PMPI_Iallgatherv(sendbuf, sendcount, sendtype, recvbuf, recvcounts, displs, recvtype, &
                                    comm, request, ierror)
            IMPLICIT NONE
            !GCC$ ATTRIBUTES NO_ARG_CHECK :: sendbuf, recvbuf
            REAL :: sendbuf
            INTEGER :: sendcount
            INTEGER :: sendtype
            REAL :: recvbuf
            INTEGER :: recvcounts(*)
            INTEGER :: displs(*)
            INTEGER :: recvtype
            INTEGER :: comm
            INTEGER :: request
            INTEGER :: ierror
        END SUBROUTINE PMPI_Iallgatherv
    END INTERFACE
    
    INTERFACE PMPI_Iallreduce
        SUBROUTINE PMPI_Iallreduce(sendbuf, recvbuf, count, datatype, op, comm, request, ierror)
            IMPLICIT NONE
            !GCC$ ATTRIBUTES NO_ARG_CHECK :: sendbuf, recvbuf
            REAL :: sendbuf
            REAL :: recvbuf
            INTEGER :: count
            INTEGER :: datatype
            INTEGER :: op
            INTEGER :: comm
            INTEGER :: request
            INTEGER :: ierror
        END SUBROUTINE PMPI_Iallreduce
    END INTERFACE
    
    INTERFACE PMPI_Ialltoall
        SUBROUTINE PMPI_Ialltoall(sendbuf, sendcount, sendtype, recvbuf, recvcount, recvtype, comm, request, &
                                  ierror)
            IMPLICIT NONE
            !GCC$ ATTRIBUTES NO_ARG_CHECK :: sendbuf, recvbuf
            REAL :: sendbuf
            INTEGER :: sendcount
            INTEGER :: sendtype
            REAL :: recvbuf
            INTEGER :: recvcount
            INTEGER :: recvtype
            INTEGER :: comm
            INTEGER :: request
            INTEGER :: ierror
        END SUBROUTINE PMPI_Ialltoall
    END INTERFACE
    
    INTERFACE PMPI_Ialltoallv
        SUBROUTINE PMPI_Ialltoallv(sendbuf, sendcounts, sdispls, sendtype, recvbuf, recvcounts, rdispls, &
                                   recvtype, comm, request, ierror)
            IMPLICIT NONE
            !GCC$ ATTRIBUTES NO_ARG_CHECK :: sendbuf, recvbuf
            REAL :: sendbuf
            INTEGER :: sendcounts(*)
            INTEGER :: sdispls(*)
            INTEGER :: sendtype
            REAL :: recvbuf
            INTEGER :: recvcounts(*)
            INTEGER :: rdispls(*)
            INTEGER :: recvtype
            INTEGER :: comm
            INTEGER :: request
            INTEGER :: ierror
        END SUBROUTINE PMPI_Ialltoallv
    END INTERFACE
    
    INTERFACE PMPI_Ialltoallw
        SUBROUTINE PMPI_Ialltoallw(sendbuf, sendcounts, sdispls, sendtypes, recvbuf, recvcounts, rdispls, &
                                   recvtypes, comm, request, ierror)
            IMPLICIT NONE
            !GCC$ ATTRIBUTES NO_ARG_CHECK :: sendbuf, recvbuf
            REAL :: sendbuf
            INTEGER :: sendcounts(*)
            INTEGER :: sdispls(*)
            INTEGER :: sendtypes(*)
            REAL :: recvbuf
            INTEGER :: recvcounts(*)
            INTEGER :: rdispls(*)
            INTEGER :: recvtypes(*)
            INTEGER :: comm
            INTEGER :: request
            INTEGER :: ierror
        END SUBROUTINE PMPI_Ialltoallw
    END INTERFACE
    
    INTERFACE PMPI_Ibarrier
        SUBROUTINE PMPI_Ibarrier(comm, request, ierror)
            IMPLICIT NONE
            INTEGER :: comm
            INTEGER :: request
            INTEGER :: ierror
        END SUBROUTINE PMPI_Ibarrier
    END INTERFACE
    
    INTERFACE PMPI_Ibcast
        SUBROUTINE PMPI_Ibcast(buffer, count, datatype, root, comm, request, ierror)
            IMPLICIT NONE
            !GCC$ ATTRIBUTES NO_ARG_CHECK :: buffer
            REAL :: buffer
            INTEGER :: count
            INTEGER :: datatype
            INTEGER :: root
            INTEGER :: comm
            INTEGER :: request
            INTEGER :: ierror
        END SUBROUTINE PMPI_Ibcast
    END INTERFACE
    
    INTERFACE PMPI_Iexscan
        SUBROUTINE PMPI_Iexscan(sendbuf, recvbuf, count, datatype, op, comm, request, ierror)
            IMPLICIT NONE
            !GCC$ ATTRIBUTES NO_ARG_CHECK :: sendbuf, recvbuf
            REAL :: sendbuf
            REAL :: recvbuf
            INTEGER :: count
            INTEGER :: datatype
            INTEGER :: op
            INTEGER :: comm
            INTEGER :: request
            INTEGER :: ierror
        END SUBROUTINE PMPI_Iexscan
    END INTERFACE
    
    INTERFACE PMPI_Igather
        SUBROUTINE PMPI_Igather(sendbuf, sendcount, sendtype, recvbuf, recvcount, recvtype, root, comm, &
                                request, ierror)
            IMPLICIT NONE
            !GCC$ ATTRIBUTES NO_ARG_CHECK :: sendbuf, recvbuf
            REAL :: sendbuf
            INTEGER :: sendcount
            INTEGER :: sendtype
            REAL :: recvbuf
            INTEGER :: recvcount
            INTEGER :: recvtype
            INTEGER :: root
            INTEGER :: comm
            INTEGER :: request
            INTEGER :: ierror
        END SUBROUTINE PMPI_Igather
    END INTERFACE
    
    INTERFACE PMPI_Igatherv
        SUBROUTINE PMPI_Igatherv(sendbuf, sendcount, sendtype, recvbuf, recvcounts, displs, recvtype, root, &
                                 comm, request, ierror)
            IMPLICIT NONE
            !GCC$ ATTRIBUTES NO_ARG_CHECK :: sendbuf, recvbuf
            REAL :: sendbuf
            INTEGER :: sendcount
            INTEGER :: sendtype
            REAL :: recvbuf
            INTEGER :: recvcounts(*)
            INTEGER :: displs(*)
            INTEGER :: recvtype
            INTEGER :: root
            INTEGER :: comm
            INTEGER :: request
            INTEGER :: ierror
        END SUBROUTINE PMPI_Igatherv
    END INTERFACE
    
    INTERFACE PMPI_Ineighbor_allgather
        SUBROUTINE PMPI_Ineighbor_allgather(sendbuf, sendcount, sendtype, recvbuf, recvcount, recvtype, &
                                            comm, request, ierror)
            IMPLICIT NONE
            !GCC$ ATTRIBUTES NO_ARG_CHECK :: sendbuf, recvbuf
            REAL :: sendbuf
            INTEGER :: sendcount
            INTEGER :: sendtype
            REAL :: recvbuf
            INTEGER :: recvcount
            INTEGER :: recvtype
            INTEGER :: comm
            INTEGER :: request
            INTEGER :: ierror
        END SUBROUTINE PMPI_Ineighbor_allgather
    END INTERFACE
    
    INTERFACE PMPI_Ineighbor_allgatherv
        SUBROUTINE PMPI_Ineighbor_allgatherv(sendbuf, sendcount, sendtype, recvbuf, recvcounts, displs, &
                                             recvtype, comm, request, ierror)
            IMPLICIT NONE
            !GCC$ ATTRIBUTES NO_ARG_CHECK :: sendbuf, recvbuf
            REAL :: sendbuf
            INTEGER :: sendcount
            INTEGER :: sendtype
            REAL :: recvbuf
            INTEGER :: recvcounts(*)
            INTEGER :: displs(*)
            INTEGER :: recvtype
            INTEGER :: comm
            INTEGER :: request
            INTEGER :: ierror
        END SUBROUTINE PMPI_Ineighbor_allgatherv
    END INTERFACE
    
    INTERFACE PMPI_Ineighbor_alltoall
        SUBROUTINE PMPI_Ineighbor_alltoall(sendbuf, sendcount, sendtype, recvbuf, recvcount, recvtype, comm, &
                                           request, ierror)
            IMPLICIT NONE
            !GCC$ ATTRIBUTES NO_ARG_CHECK :: sendbuf, recvbuf
            REAL :: sendbuf
            INTEGER :: sendcount
            INTEGER :: sendtype
            REAL :: recvbuf
            INTEGER :: recvcount
            INTEGER :: recvtype
            INTEGER :: comm
            INTEGER :: request
            INTEGER :: ierror
        END SUBROUTINE PMPI_Ineighbor_alltoall
    END INTERFACE
    
    INTERFACE PMPI_Ineighbor_alltoallv
        SUBROUTINE PMPI_Ineighbor_alltoallv(sendbuf, sendcounts, sdispls, sendtype, recvbuf, recvcounts, &
                                            rdispls, recvtype, comm, request, ierror)
            IMPLICIT NONE
            !GCC$ ATTRIBUTES NO_ARG_CHECK :: sendbuf, recvbuf
            REAL :: sendbuf
            INTEGER :: sendcounts(*)
            INTEGER :: sdispls(*)
            INTEGER :: sendtype
            REAL :: recvbuf
            INTEGER :: recvcounts(*)
            INTEGER :: rdispls(*)
            INTEGER :: recvtype
            INTEGER :: comm
            INTEGER :: request
            INTEGER :: ierror
        END SUBROUTINE PMPI_Ineighbor_alltoallv
    END INTERFACE
    
    INTERFACE PMPI_Ineighbor_alltoallw
        SUBROUTINE PMPI_Ineighbor_alltoallw(sendbuf, sendcounts, sdispls, sendtypes, recvbuf, recvcounts, &
                                            rdispls, recvtypes, comm, request, ierror)
            USE MPI_CONSTANTS, ONLY: MPI_ADDRESS_KIND
            IMPLICIT NONE
            !GCC$ ATTRIBUTES NO_ARG_CHECK :: sendbuf, recvbuf
            REAL :: sendbuf
            INTEGER :: sendcounts(*)
            INTEGER(KIND=MPI_ADDRESS_KIND) :: sdispls(*)
            INTEGER :: sendtypes(*)
            REAL :: recvbuf
            INTEGER :: recvcounts(*)
            INTEGER(KIND=MPI_ADDRESS_KIND) :: rdispls(*)
            INTEGER :: recvtypes(*)
            INTEGER :: comm
            INTEGER :: request
            INTEGER :: ierror
        END SUBROUTINE PMPI_Ineighbor_alltoallw
    END INTERFACE
    
    INTERFACE PMPI_Ireduce
        SUBROUTINE PMPI_Ireduce(sendbuf, recvbuf, count, datatype, op, root, comm, request, ierror)
            IMPLICIT NONE
            !GCC$ ATTRIBUTES NO_ARG_CHECK :: sendbuf, recvbuf
            REAL :: sendbuf
            REAL :: recvbuf
            INTEGER :: count
            INTEGER :: datatype
            INTEGER :: op
            INTEGER :: root
            INTEGER :: comm
            INTEGER :: request
            INTEGER :: ierror
        END SUBROUTINE PMPI_Ireduce
    END INTERFACE
    
    INTERFACE PMPI_Ireduce_scatter
        SUBROUTINE PMPI_Ireduce_scatter(sendbuf, recvbuf, recvcounts, datatype, op, comm, request, ierror)
            IMPLICIT NONE
            !GCC$ ATTRIBUTES NO_ARG_CHECK :: sendbuf, recvbuf
            REAL :: sendbuf
            REAL :: recvbuf
            INTEGER :: recvcounts(*)
            INTEGER :: datatype
            INTEGER :: op
            INTEGER :: comm
            INTEGER :: request
            INTEGER :: ierror
        END SUBROUTINE PMPI_Ireduce_scatter
    END INTERFACE
    
    INTERFACE PMPI_Ireduce_scatter_block
        SUBROUTINE PMPI_Ireduce_scatter_block(sendbuf, recvbuf, recvcount, datatype, op, comm, request, &
                                              ierror)
            IMPLICIT NONE
            !GCC$ ATTRIBUTES NO_ARG_CHECK :: sendbuf, recvbuf
            REAL :: sendbuf
            REAL :: recvbuf
            INTEGER :: recvcount
            INTEGER :: datatype
            INTEGER :: op
            INTEGER :: comm
            INTEGER :: request
            INTEGER :: ierror
        END SUBROUTINE PMPI_Ireduce_scatter_block
    END INTERFACE
    
    INTERFACE PMPI_Iscan
        SUBROUTINE PMPI_Iscan(sendbuf, recvbuf, count, datatype, op, comm, request, ierror)
            IMPLICIT NONE
            !GCC$ ATTRIBUTES NO_ARG_CHECK :: sendbuf, recvbuf
            REAL :: sendbuf
            REAL :: recvbuf
            INTEGER :: count
            INTEGER :: datatype
            INTEGER :: op
            INTEGER :: comm
            INTEGER :: request
            INTEGER :: ierror
        END SUBROUTINE PMPI_Iscan
    END INTERFACE
    
    INTERFACE PMPI_Iscatter
        SUBROUTINE PMPI_Iscatter(sendbuf, sendcount, sendtype, recvbuf, recvcount, recvtype, root, comm, &
                                 request, ierror)
            IMPLICIT NONE
            !GCC$ ATTRIBUTES NO_ARG_CHECK :: sendbuf, recvbuf
            REAL :: sendbuf
            INTEGER :: sendcount
            INTEGER :: sendtype
            REAL :: recvbuf
            INTEGER :: recvcount
            INTEGER :: recvtype
            INTEGER :: root
            INTEGER :: comm
            INTEGER :: request
            INTEGER :: ierror
        END SUBROUTINE PMPI_Iscatter
    END INTERFACE
    
    INTERFACE PMPI_Iscatterv
        SUBROUTINE PMPI_Iscatterv(sendbuf, sendcounts, displs, sendtype, recvbuf, recvcount, recvtype, root, &
                                  comm, request, ierror)
            IMPLICIT NONE
            !GCC$ ATTRIBUTES NO_ARG_CHECK :: sendbuf, recvbuf
            REAL :: sendbuf
            INTEGER :: sendcounts(*)
            INTEGER :: displs(*)
            INTEGER :: sendtype
            REAL :: recvbuf
            INTEGER :: recvcount
            INTEGER :: recvtype
            INTEGER :: root
            INTEGER :: comm
            INTEGER :: request
            INTEGER :: ierror
        END SUBROUTINE PMPI_Iscatterv
    END INTERFACE
    
    INTERFACE PMPI_Neighbor_allgather
        SUBROUTINE PMPI_Neighbor_allgather(sendbuf, sendcount, sendtype, recvbuf, recvcount, recvtype, comm, &
                                           ierror)
            IMPLICIT NONE
            !GCC$ ATTRIBUTES NO_ARG_CHECK :: sendbuf, recvbuf
            REAL :: sendbuf
            INTEGER :: sendcount
            INTEGER :: sendtype
            REAL :: recvbuf
            INTEGER :: recvcount
            INTEGER :: recvtype
            INTEGER :: comm
            INTEGER :: ierror
        END SUBROUTINE PMPI_Neighbor_allgather
    END INTERFACE
    
    INTERFACE PMPI_Neighbor_allgather_init
        SUBROUTINE PMPI_Neighbor_allgather_init(sendbuf, sendcount, sendtype, recvbuf, recvcount, recvtype, &
                                                comm, info, request, ierror)
            IMPLICIT NONE
            !GCC$ ATTRIBUTES NO_ARG_CHECK :: sendbuf, recvbuf
            REAL :: sendbuf
            INTEGER :: sendcount
            INTEGER :: sendtype
            REAL :: recvbuf
            INTEGER :: recvcount
            INTEGER :: recvtype
            INTEGER :: comm
            INTEGER :: info
            INTEGER :: request
            INTEGER :: ierror
        END SUBROUTINE PMPI_Neighbor_allgather_init
    END INTERFACE
    
    INTERFACE PMPI_Neighbor_allgatherv
        SUBROUTINE PMPI_Neighbor_allgatherv(sendbuf, sendcount, sendtype, recvbuf, recvcounts, displs, &
                                            recvtype, comm, ierror)
            IMPLICIT NONE
            !GCC$ ATTRIBUTES NO_ARG_CHECK :: sendbuf, recvbuf
            REAL :: sendbuf
            INTEGER :: sendcount
            INTEGER :: sendtype
            REAL :: recvbuf
            INTEGER :: recvcounts(*)
            INTEGER :: displs(*)
            INTEGER :: recvtype
            INTEGER :: comm
            INTEGER :: ierror
        END SUBROUTINE PMPI_Neighbor_allgatherv
    END INTERFACE
    
    INTERFACE PMPI_Neighbor_allgatherv_init
        SUBROUTINE PMPI_Neighbor_allgatherv_init(sendbuf, sendcount, sendtype, recvbuf, recvcounts, displs, &
                                                 recvtype, comm, info, request, ierror)
            IMPLICIT NONE
            !GCC$ ATTRIBUTES NO_ARG_CHECK :: sendbuf, recvbuf
            REAL :: sendbuf
            INTEGER :: sendcount
            INTEGER :: sendtype
            REAL :: recvbuf
            INTEGER :: recvcounts(*)
            INTEGER :: displs(*)
            INTEGER :: recvtype
            INTEGER :: comm
            INTEGER :: info
            INTEGER :: request
            INTEGER :: ierror
        END SUBROUTINE PMPI_Neighbor_allgatherv_init
    END INTERFACE
    
    INTERFACE PMPI_Neighbor_alltoall
        SUBROUTINE PMPI_Neighbor_alltoall(sendbuf, sendcount, sendtype, recvbuf, recvcount, recvtype, comm, &
                                          ierror)
            IMPLICIT NONE
            !GCC$ ATTRIBUTES NO_ARG_CHECK :: sendbuf, recvbuf
            REAL :: sendbuf
            INTEGER :: sendcount
            INTEGER :: sendtype
            REAL :: recvbuf
            INTEGER :: recvcount
            INTEGER :: recvtype
            INTEGER :: comm
            INTEGER :: ierror
        END SUBROUTINE PMPI_Neighbor_alltoall
    END INTERFACE
    
    INTERFACE PMPI_Neighbor_alltoall_init
        SUBROUTINE PMPI_Neighbor_alltoall_init(sendbuf, sendcount, sendtype, recvbuf, recvcount, recvtype, &
                                               comm, info, request, ierror)
            IMPLICIT NONE
            !GCC$ ATTRIBUTES NO_ARG_CHECK :: sendbuf, recvbuf
            REAL :: sendbuf
            INTEGER :: sendcount
            INTEGER :: sendtype
            REAL :: recvbuf
            INTEGER :: recvcount
            INTEGER :: recvtype
            INTEGER :: comm
            INTEGER :: info
            INTEGER :: request
            INTEGER :: ierror
        END SUBROUTINE PMPI_Neighbor_alltoall_init
    END INTERFACE
    
    INTERFACE PMPI_Neighbor_alltoallv
        SUBROUTINE PMPI_Neighbor_alltoallv(sendbuf, sendcounts, sdispls, sendtype, recvbuf, recvcounts, &
                                           rdispls, recvtype, comm, ierror)
            IMPLICIT NONE
            !GCC$ ATTRIBUTES NO_ARG_CHECK :: sendbuf, recvbuf
            REAL :: sendbuf
            INTEGER :: sendcounts(*)
            INTEGER :: sdispls(*)
            INTEGER :: sendtype
            REAL :: recvbuf
            INTEGER :: recvcounts(*)
            INTEGER :: rdispls(*)
            INTEGER :: recvtype
            INTEGER :: comm
            INTEGER :: ierror
        END SUBROUTINE PMPI_Neighbor_alltoallv
    END INTERFACE
    
    INTERFACE PMPI_Neighbor_alltoallv_init
        SUBROUTINE PMPI_Neighbor_alltoallv_init(sendbuf, sendcounts, sdispls, sendtype, recvbuf, recvcounts, &
                                                rdispls, recvtype, comm, info, request, ierror)
            IMPLICIT NONE
            !GCC$ ATTRIBUTES NO_ARG_CHECK :: sendbuf, recvbuf
            REAL :: sendbuf
            INTEGER :: sendcounts(*)
            INTEGER :: sdispls(*)
            INTEGER :: sendtype
            REAL :: recvbuf
            INTEGER :: recvcounts(*)
            INTEGER :: rdispls(*)
            INTEGER :: recvtype
            INTEGER :: comm
            INTEGER :: info
            INTEGER :: request
            INTEGER :: ierror
        END SUBROUTINE PMPI_Neighbor_alltoallv_init
    END INTERFACE
    
    INTERFACE PMPI_Neighbor_alltoallw
        SUBROUTINE PMPI_Neighbor_alltoallw(sendbuf, sendcounts, sdispls, sendtypes, recvbuf, recvcounts, &
                                           rdispls, recvtypes, comm, ierror)
            USE MPI_CONSTANTS, ONLY: MPI_ADDRESS_KIND
            IMPLICIT NONE
            !GCC$ ATTRIBUTES NO_ARG_CHECK :: sendbuf, recvbuf
            REAL :: sendbuf
            INTEGER :: sendcounts(*)
            INTEGER(KIND=MPI_ADDRESS_KIND) :: sdispls(*)
            INTEGER :: sendtypes(*)
            REAL :: recvbuf
            INTEGER :: recvcounts(*)
            INTEGER(KIND=MPI_ADDRESS_KIND) :: rdispls(*)
            INTEGER :: recvtypes(*)
            INTEGER :: comm
            INTEGER :: ierror
        END SUBROUTINE PMPI_Neighbor_alltoallw
    END INTERFACE
    
    INTERFACE PMPI_Neighbor_alltoallw_init
        SUBROUTINE PMPI_Neighbor_alltoallw_init(sendbuf, sendcounts, sdispls, sendtypes, recvbuf, &
                                                recvcounts, rdispls, recvtypes, comm, info, request, &
                                                ierror)
            USE MPI_CONSTANTS, ONLY: MPI_ADDRESS_KIND
            IMPLICIT NONE
            !GCC$ ATTRIBUTES NO_ARG_CHECK :: sendbuf, recvbuf
            REAL :: sendbuf
            INTEGER :: sendcounts(*)
            INTEGER(KIND=MPI_ADDRESS_KIND) :: sdispls(*)
            INTEGER :: sendtypes(*)
            REAL :: recvbuf
            INTEGER :: recvcounts(*)
            INTEGER(KIND=MPI_ADDRESS_KIND) :: rdispls(*)
            INTEGER :: recvtypes(*)
            INTEGER :: comm
            INTEGER :: info
            INTEGER :: request
            INTEGER :: ierror
        END SUBROUTINE PMPI_Neighbor_alltoallw_init
    END INTERFACE
    
    INTERFACE PMPI_Reduce
        SUBROUTINE PMPI_Reduce(sendbuf, recvbuf, count, datatype, op, root, comm, ierror)
            IMPLICIT NONE
            !GCC$ ATTRIBUTES NO_ARG_CHECK :: sendbuf, recvbuf
            REAL :: sendbuf
            REAL :: recvbuf
            INTEGER :: count
            INTEGER :: datatype
            INTEGER :: op
            INTEGER :: root
            INTEGER :: comm
            INTEGER :: ierror
        END SUBROUTINE PMPI_Reduce
    END INTERFACE
    
    INTERFACE PMPI_Reduce_init
        SUBROUTINE PMPI_Reduce_init(sendbuf, recvbuf, count, datatype, op, root, comm, info, request, &
                                    ierror)
            IMPLICIT NONE
            !GCC$ ATTRIBUTES NO_ARG_CHECK :: sendbuf, recvbuf
            REAL :: sendbuf
            REAL :: recvbuf
            INTEGER :: count
            INTEGER :: datatype
            INTEGER :: op
            INTEGER :: root
            INTEGER :: comm
            INTEGER :: info
            INTEGER :: request
            INTEGER :: ierror
        END SUBROUTINE PMPI_Reduce_init
    END INTERFACE
    
    INTERFACE PMPI_Reduce_local
        SUBROUTINE PMPI_Reduce_local(inbuf, inoutbuf, count, datatype, op, ierror)
            IMPLICIT NONE
            !GCC$ ATTRIBUTES NO_ARG_CHECK :: inbuf, inoutbuf
            REAL :: inbuf
            REAL :: inoutbuf
            INTEGER :: count
            INTEGER :: datatype
            INTEGER :: op
            INTEGER :: ierror
        END SUBROUTINE PMPI_Reduce_local
    END INTERFACE
    
    INTERFACE PMPI_Reduce_scatter
        SUBROUTINE PMPI_Reduce_scatter(sendbuf, recvbuf, recvcounts, datatype, op, comm, ierror)
            IMPLICIT NONE
            !GCC$ ATTRIBUTES NO_ARG_CHECK :: sendbuf, recvbuf
            REAL :: sendbuf
            REAL :: recvbuf
            INTEGER :: recvcounts(*)
            INTEGER :: datatype
            INTEGER :: op
            INTEGER :: comm
            INTEGER :: ierror
        END SUBROUTINE PMPI_Reduce_scatter
    END INTERFACE
    
    INTERFACE PMPI_Reduce_scatter_block
        SUBROUTINE PMPI_Reduce_scatter_block(sendbuf, recvbuf, recvcount, datatype, op, comm, ierror)
            IMPLICIT NONE
            !GCC$ ATTRIBUTES NO_ARG_CHECK :: sendbuf, recvbuf
            REAL :: sendbuf
            REAL :: recvbuf
            INTEGER :: recvcount
            INTEGER :: datatype
            INTEGER :: op
            INTEGER :: comm
            INTEGER :: ierror
        END SUBROUTINE PMPI_Reduce_scatter_block
    END INTERFACE
    
    INTERFACE PMPI_Reduce_scatter_block_init
        SUBROUTINE PMPI_Reduce_scatter_block_init(sendbuf, recvbuf, recvcount, datatype, op, comm, info, &
                                                  request, ierror)
            IMPLICIT NONE
            !GCC$ ATTRIBUTES NO_ARG_CHECK :: sendbuf, recvbuf
            REAL :: sendbuf
            REAL :: recvbuf
            INTEGER :: recvcount
            INTEGER :: datatype
            INTEGER :: op
            INTEGER :: comm
            INTEGER :: info
            INTEGER :: request
            INTEGER :: ierror
        END SUBROUTINE PMPI_Reduce_scatter_block_init
    END INTERFACE
    
    INTERFACE PMPI_Reduce_scatter_init
        SUBROUTINE PMPI_Reduce_scatter_init(sendbuf, recvbuf, recvcounts, datatype, op, comm, info, request, &
                                            ierror)
            IMPLICIT NONE
            !GCC$ ATTRIBUTES NO_ARG_CHECK :: sendbuf, recvbuf
            REAL :: sendbuf
            REAL :: recvbuf
            INTEGER :: recvcounts(*)
            INTEGER :: datatype
            INTEGER :: op
            INTEGER :: comm
            INTEGER :: info
            INTEGER :: request
            INTEGER :: ierror
        END SUBROUTINE PMPI_Reduce_scatter_init
    END INTERFACE
    
    INTERFACE PMPI_Scan
        SUBROUTINE PMPI_Scan(sendbuf, recvbuf, count, datatype, op, comm, ierror)
            IMPLICIT NONE
            !GCC$ ATTRIBUTES NO_ARG_CHECK :: sendbuf, recvbuf
            REAL :: sendbuf
            REAL :: recvbuf
            INTEGER :: count
            INTEGER :: datatype
            INTEGER :: op
            INTEGER :: comm
            INTEGER :: ierror
        END SUBROUTINE PMPI_Scan
    END INTERFACE
    
    INTERFACE PMPI_Scan_init
        SUBROUTINE PMPI_Scan_init(sendbuf, recvbuf, count, datatype, op, comm, info, request, ierror)
            IMPLICIT NONE
            !GCC$ ATTRIBUTES NO_ARG_CHECK :: sendbuf, recvbuf
            REAL :: sendbuf
            REAL :: recvbuf
            INTEGER :: count
            INTEGER :: datatype
            INTEGER :: op
            INTEGER :: comm
            INTEGER :: info
            INTEGER :: request
            INTEGER :: ierror
        END SUBROUTINE PMPI_Scan_init
    END INTERFACE
    
    INTERFACE PMPI_Scatter
        SUBROUTINE PMPI_Scatter(sendbuf, sendcount, sendtype, recvbuf, recvcount, recvtype, root, comm, &
                                ierror)
            IMPLICIT NONE
            !GCC$ ATTRIBUTES NO_ARG_CHECK :: sendbuf, recvbuf
            REAL :: sendbuf
            INTEGER :: sendcount
            INTEGER :: sendtype
            REAL :: recvbuf
            INTEGER :: recvcount
            INTEGER :: recvtype
            INTEGER :: root
            INTEGER :: comm
            INTEGER :: ierror
        END SUBROUTINE PMPI_Scatter
    END INTERFACE
    
    INTERFACE PMPI_Scatter_init
        SUBROUTINE PMPI_Scatter_init(sendbuf, sendcount, sendtype, recvbuf, recvcount, recvtype, root, comm, &
                                     info, request, ierror)
            IMPLICIT NONE
            !GCC$ ATTRIBUTES NO_ARG_CHECK :: sendbuf, recvbuf
            REAL :: sendbuf
            INTEGER :: sendcount
            INTEGER :: sendtype
            REAL :: recvbuf
            INTEGER :: recvcount
            INTEGER :: recvtype
            INTEGER :: root
            INTEGER :: comm
            INTEGER :: info
            INTEGER :: request
            INTEGER :: ierror
        END SUBROUTINE PMPI_Scatter_init
    END INTERFACE
    
    INTERFACE PMPI_Scatterv
        SUBROUTINE PMPI_Scatterv(sendbuf, sendcounts, displs, sendtype, recvbuf, recvcount, recvtype, root, &
                                 comm, ierror)
            IMPLICIT NONE
            !GCC$ ATTRIBUTES NO_ARG_CHECK :: sendbuf, recvbuf
            REAL :: sendbuf
            INTEGER :: sendcounts(*)
            INTEGER :: displs(*)
            INTEGER :: sendtype
            REAL :: recvbuf
            INTEGER :: recvcount
            INTEGER :: recvtype
            INTEGER :: root
            INTEGER :: comm
            INTEGER :: ierror
        END SUBROUTINE PMPI_Scatterv
    END INTERFACE
    
    INTERFACE PMPI_Scatterv_init
        SUBROUTINE PMPI_Scatterv_init(sendbuf, sendcounts, displs, sendtype, recvbuf, recvcount, recvtype, &
                                      root, comm, info, request, ierror)
            IMPLICIT NONE
            !GCC$ ATTRIBUTES NO_ARG_CHECK :: sendbuf, recvbuf
            REAL :: sendbuf
            INTEGER :: sendcounts(*)
            INTEGER :: displs(*)
            INTEGER :: sendtype
            REAL :: recvbuf
            INTEGER :: recvcount
            INTEGER :: recvtype
            INTEGER :: root
            INTEGER :: comm
            INTEGER :: info
            INTEGER :: request
            INTEGER :: ierror
        END SUBROUTINE PMPI_Scatterv_init
    END INTERFACE
    
    INTERFACE PMPI_Comm_compare
        SUBROUTINE PMPI_Comm_compare(comm1, comm2, result, ierror)
            IMPLICIT NONE
            INTEGER :: comm1
            INTEGER :: comm2
            INTEGER :: result
            INTEGER :: ierror
        END SUBROUTINE PMPI_Comm_compare
    END INTERFACE
    
    INTERFACE PMPI_Comm_create
        SUBROUTINE PMPI_Comm_create(comm, group, newcomm, ierror)
            IMPLICIT NONE
            INTEGER :: comm
            INTEGER :: group
            INTEGER :: newcomm
            INTEGER :: ierror
        END SUBROUTINE PMPI_Comm_create
    END INTERFACE
    
    INTERFACE PMPI_Comm_create_group
        SUBROUTINE PMPI_Comm_create_group(comm, group, tag, newcomm, ierror)
            IMPLICIT NONE
            INTEGER :: comm
            INTEGER :: group
            INTEGER :: tag
            INTEGER :: newcomm
            INTEGER :: ierror
        END SUBROUTINE PMPI_Comm_create_group
    END INTERFACE
    
    INTERFACE PMPI_Comm_dup
        SUBROUTINE PMPI_Comm_dup(comm, newcomm, ierror)
            IMPLICIT NONE
            INTEGER :: comm
            INTEGER :: newcomm
            INTEGER :: ierror
        END SUBROUTINE PMPI_Comm_dup
    END INTERFACE
    
    INTERFACE PMPI_Comm_dup_with_info
        SUBROUTINE PMPI_Comm_dup_with_info(comm, info, newcomm, ierror)
            IMPLICIT NONE
            INTEGER :: comm
            INTEGER :: info
            INTEGER :: newcomm
            INTEGER :: ierror
        END SUBROUTINE PMPI_Comm_dup_with_info
    END INTERFACE
    
    INTERFACE PMPI_Comm_free
        SUBROUTINE PMPI_Comm_free(comm, ierror)
            IMPLICIT NONE
            INTEGER :: comm
            INTEGER :: ierror
        END SUBROUTINE PMPI_Comm_free
    END INTERFACE
    
    INTERFACE PMPI_Comm_get_info
        SUBROUTINE PMPI_Comm_get_info(comm, info_used, ierror)
            IMPLICIT NONE
            INTEGER :: comm
            INTEGER :: info_used
            INTEGER :: ierror
        END SUBROUTINE PMPI_Comm_get_info
    END INTERFACE
    
    INTERFACE PMPI_Comm_get_name
        SUBROUTINE PMPI_Comm_get_name(comm, comm_name, resultlen, ierror)
            IMPLICIT NONE
            INTEGER :: comm
            CHARACTER*(*) :: comm_name
            INTEGER :: resultlen
            INTEGER :: ierror
        END SUBROUTINE PMPI_Comm_get_name
    END INTERFACE
    
    INTERFACE PMPI_Comm_group
        SUBROUTINE PMPI_Comm_group(comm, group, ierror)
            IMPLICIT NONE
            INTEGER :: comm
            INTEGER :: group
            INTEGER :: ierror
        END SUBROUTINE PMPI_Comm_group
    END INTERFACE
    
    INTERFACE PMPI_Comm_idup
        SUBROUTINE PMPI_Comm_idup(comm, newcomm, request, ierror)
            IMPLICIT NONE
            INTEGER :: comm
            INTEGER :: newcomm
            INTEGER :: request
            INTEGER :: ierror
        END SUBROUTINE PMPI_Comm_idup
    END INTERFACE
    
    INTERFACE PMPI_Comm_idup_with_info
        SUBROUTINE PMPI_Comm_idup_with_info(comm, info, newcomm, request, ierror)
            IMPLICIT NONE
            INTEGER :: comm
            INTEGER :: info
            INTEGER :: newcomm
            INTEGER :: request
            INTEGER :: ierror
        END SUBROUTINE PMPI_Comm_idup_with_info
    END INTERFACE
    
    INTERFACE PMPI_Comm_rank
        SUBROUTINE PMPI_Comm_rank(comm, rank, ierror)
            IMPLICIT NONE
            INTEGER :: comm
            INTEGER :: rank
            INTEGER :: ierror
        END SUBROUTINE PMPI_Comm_rank
    END INTERFACE
    
    INTERFACE PMPI_Comm_remote_group
        SUBROUTINE PMPI_Comm_remote_group(comm, group, ierror)
            IMPLICIT NONE
            INTEGER :: comm
            INTEGER :: group
            INTEGER :: ierror
        END SUBROUTINE PMPI_Comm_remote_group
    END INTERFACE
    
    INTERFACE PMPI_Comm_remote_size
        SUBROUTINE PMPI_Comm_remote_size(comm, size, ierror)
            IMPLICIT NONE
            INTEGER :: comm
            INTEGER :: size
            INTEGER :: ierror
        END SUBROUTINE PMPI_Comm_remote_size
    END INTERFACE
    
    INTERFACE PMPI_Comm_set_info
        SUBROUTINE PMPI_Comm_set_info(comm, info, ierror)
            IMPLICIT NONE
            INTEGER :: comm
            INTEGER :: info
            INTEGER :: ierror
        END SUBROUTINE PMPI_Comm_set_info
    END INTERFACE
    
    INTERFACE PMPI_Comm_set_name
        SUBROUTINE PMPI_Comm_set_name(comm, comm_name, ierror)
            IMPLICIT NONE
            INTEGER :: comm
            CHARACTER*(*) :: comm_name
            INTEGER :: ierror
        END SUBROUTINE PMPI_Comm_set_name
    END INTERFACE
    
    INTERFACE PMPI_Comm_size
        SUBROUTINE PMPI_Comm_size(comm, size, ierror)
            IMPLICIT NONE
            INTEGER :: comm
            INTEGER :: size
            INTEGER :: ierror
        END SUBROUTINE PMPI_Comm_size
    END INTERFACE
    
    INTERFACE PMPI_Comm_split
        SUBROUTINE PMPI_Comm_split(comm, color, key, newcomm, ierror)
            IMPLICIT NONE
            INTEGER :: comm
            INTEGER :: color
            INTEGER :: key
            INTEGER :: newcomm
            INTEGER :: ierror
        END SUBROUTINE PMPI_Comm_split
    END INTERFACE
    
    INTERFACE PMPI_Comm_split_type
        SUBROUTINE PMPI_Comm_split_type(comm, split_type, key, info, newcomm, ierror)
            IMPLICIT NONE
            INTEGER :: comm
            INTEGER :: split_type
            INTEGER :: key
            INTEGER :: info
            INTEGER :: newcomm
            INTEGER :: ierror
        END SUBROUTINE PMPI_Comm_split_type
    END INTERFACE
    
    INTERFACE PMPI_Comm_test_inter
        SUBROUTINE PMPI_Comm_test_inter(comm, flag, ierror)
            IMPLICIT NONE
            INTEGER :: comm
            LOGICAL :: flag
            INTEGER :: ierror
        END SUBROUTINE PMPI_Comm_test_inter
    END INTERFACE
    
    INTERFACE PMPI_Intercomm_create
        SUBROUTINE PMPI_Intercomm_create(local_comm, local_leader, peer_comm, remote_leader, tag, &
                                         newintercomm, ierror)
            IMPLICIT NONE
            INTEGER :: local_comm
            INTEGER :: local_leader
            INTEGER :: peer_comm
            INTEGER :: remote_leader
            INTEGER :: tag
            INTEGER :: newintercomm
            INTEGER :: ierror
        END SUBROUTINE PMPI_Intercomm_create
    END INTERFACE
    
    INTERFACE PMPI_Intercomm_create_from_groups
        SUBROUTINE PMPI_Intercomm_create_from_groups(local_group, local_leader, remote_group, remote_leader, &
                                                     stringtag, info, errhandler, newintercomm, ierror)
            IMPLICIT NONE
            INTEGER :: local_group
            INTEGER :: local_leader
            INTEGER :: remote_group
            INTEGER :: remote_leader
            CHARACTER*(*) :: stringtag
            INTEGER :: info
            INTEGER :: errhandler
            INTEGER :: newintercomm
            INTEGER :: ierror
        END SUBROUTINE PMPI_Intercomm_create_from_groups
    END INTERFACE
    
    INTERFACE PMPI_Intercomm_merge
        SUBROUTINE PMPI_Intercomm_merge(intercomm, high, newintracomm, ierror)
            IMPLICIT NONE
            INTEGER :: intercomm
            LOGICAL :: high
            INTEGER :: newintracomm
            INTEGER :: ierror
        END SUBROUTINE PMPI_Intercomm_merge
    END INTERFACE
    
    INTERFACE PMPIX_Comm_test_threadcomm
        SUBROUTINE PMPIX_Comm_test_threadcomm(comm, flag, ierror)
            IMPLICIT NONE
            INTEGER :: comm
            LOGICAL :: flag
            INTEGER :: ierror
        END SUBROUTINE PMPIX_Comm_test_threadcomm
    END INTERFACE
    
    INTERFACE PMPIX_Comm_revoke
        SUBROUTINE PMPIX_Comm_revoke(comm, ierror)
            IMPLICIT NONE
            INTEGER :: comm
            INTEGER :: ierror
        END SUBROUTINE PMPIX_Comm_revoke
    END INTERFACE
    
    INTERFACE PMPIX_Comm_shrink
        SUBROUTINE PMPIX_Comm_shrink(comm, newcomm, ierror)
            IMPLICIT NONE
            INTEGER :: comm
            INTEGER :: newcomm
            INTEGER :: ierror
        END SUBROUTINE PMPIX_Comm_shrink
    END INTERFACE
    
    INTERFACE PMPIX_Comm_failure_ack
        SUBROUTINE PMPIX_Comm_failure_ack(comm, ierror)
            IMPLICIT NONE
            INTEGER :: comm
            INTEGER :: ierror
        END SUBROUTINE PMPIX_Comm_failure_ack
    END INTERFACE
    
    INTERFACE PMPIX_Comm_failure_get_acked
        SUBROUTINE PMPIX_Comm_failure_get_acked(comm, failedgrp, ierror)
            IMPLICIT NONE
            INTEGER :: comm
            INTEGER :: failedgrp
            INTEGER :: ierror
        END SUBROUTINE PMPIX_Comm_failure_get_acked
    END INTERFACE
    
    INTERFACE PMPIX_Comm_agree
        SUBROUTINE PMPIX_Comm_agree(comm, flag, ierror)
            IMPLICIT NONE
            INTEGER :: comm
            LOGICAL :: flag
            INTEGER :: ierror
        END SUBROUTINE PMPIX_Comm_agree
    END INTERFACE
    
    INTERFACE PMPIX_Comm_get_failed
        SUBROUTINE PMPIX_Comm_get_failed(comm, failedgrp, ierror)
            IMPLICIT NONE
            INTEGER :: comm
            INTEGER :: failedgrp
            INTEGER :: ierror
        END SUBROUTINE PMPIX_Comm_get_failed
    END INTERFACE
    
    INTERFACE PMPI_Get_address
        SUBROUTINE PMPI_Get_address(location, address, ierror)
            USE MPI_CONSTANTS, ONLY: MPI_ADDRESS_KIND
            IMPLICIT NONE
            !GCC$ ATTRIBUTES NO_ARG_CHECK :: location
            REAL :: location
            INTEGER(KIND=MPI_ADDRESS_KIND) :: address
            INTEGER :: ierror
        END SUBROUTINE PMPI_Get_address
    END INTERFACE
    
    INTERFACE PMPI_Get_count
        SUBROUTINE PMPI_Get_count(status, datatype, count, ierror)
            USE MPI_CONSTANTS, ONLY: MPI_STATUS_SIZE
            IMPLICIT NONE
            INTEGER :: status(MPI_STATUS_SIZE)
            INTEGER :: datatype
            INTEGER :: count
            INTEGER :: ierror
        END SUBROUTINE PMPI_Get_count
    END INTERFACE
    
    INTERFACE PMPI_Get_elements
        SUBROUTINE PMPI_Get_elements(status, datatype, count, ierror)
            USE MPI_CONSTANTS, ONLY: MPI_STATUS_SIZE
            IMPLICIT NONE
            INTEGER :: status(MPI_STATUS_SIZE)
            INTEGER :: datatype
            INTEGER :: count
            INTEGER :: ierror
        END SUBROUTINE PMPI_Get_elements
    END INTERFACE
    
    INTERFACE PMPI_Get_elements_x
        SUBROUTINE PMPI_Get_elements_x(status, datatype, count, ierror)
            USE MPI_CONSTANTS, ONLY: MPI_STATUS_SIZE, MPI_COUNT_KIND
            IMPLICIT NONE
            INTEGER :: status(MPI_STATUS_SIZE)
            INTEGER :: datatype
            INTEGER(KIND=MPI_COUNT_KIND) :: count
            INTEGER :: ierror
        END SUBROUTINE PMPI_Get_elements_x
    END INTERFACE
    
    INTERFACE PMPI_Pack
        SUBROUTINE PMPI_Pack(inbuf, incount, datatype, outbuf, outsize, position, comm, ierror)
            IMPLICIT NONE
            !GCC$ ATTRIBUTES NO_ARG_CHECK :: inbuf, outbuf
            REAL :: inbuf
            INTEGER :: incount
            INTEGER :: datatype
            REAL :: outbuf
            INTEGER :: outsize
            INTEGER :: position
            INTEGER :: comm
            INTEGER :: ierror
        END SUBROUTINE PMPI_Pack
    END INTERFACE
    
    INTERFACE PMPI_Pack_external
        SUBROUTINE PMPI_Pack_external(datarep, inbuf, incount, datatype, outbuf, outsize, position, ierror)
            USE MPI_CONSTANTS, ONLY: MPI_ADDRESS_KIND
            IMPLICIT NONE
            !GCC$ ATTRIBUTES NO_ARG_CHECK :: inbuf, outbuf
            CHARACTER*(*) :: datarep
            REAL :: inbuf
            INTEGER :: incount
            INTEGER :: datatype
            REAL :: outbuf
            INTEGER(KIND=MPI_ADDRESS_KIND) :: outsize
            INTEGER(KIND=MPI_ADDRESS_KIND) :: position
            INTEGER :: ierror
        END SUBROUTINE PMPI_Pack_external
    END INTERFACE
    
    INTERFACE PMPI_Pack_external_size
        SUBROUTINE PMPI_Pack_external_size(datarep, incount, datatype, size, ierror)
            USE MPI_CONSTANTS, ONLY: MPI_ADDRESS_KIND
            IMPLICIT NONE
            CHARACTER*(*) :: datarep
            INTEGER :: incount
            INTEGER :: datatype
            INTEGER(KIND=MPI_ADDRESS_KIND) :: size
            INTEGER :: ierror
        END SUBROUTINE PMPI_Pack_external_size
    END INTERFACE
    
    INTERFACE PMPI_Pack_size
        SUBROUTINE PMPI_Pack_size(incount, datatype, comm, size, ierror)
            IMPLICIT NONE
            INTEGER :: incount
            INTEGER :: datatype
            INTEGER :: comm
            INTEGER :: size
            INTEGER :: ierror
        END SUBROUTINE PMPI_Pack_size
    END INTERFACE
    
    INTERFACE PMPI_Status_set_elements
        SUBROUTINE PMPI_Status_set_elements(status, datatype, count, ierror)
            USE MPI_CONSTANTS, ONLY: MPI_STATUS_SIZE
            IMPLICIT NONE
            INTEGER :: status(MPI_STATUS_SIZE)
            INTEGER :: datatype
            INTEGER :: count
            INTEGER :: ierror
        END SUBROUTINE PMPI_Status_set_elements
    END INTERFACE
    
    INTERFACE PMPI_Status_set_elements_x
        SUBROUTINE PMPI_Status_set_elements_x(status, datatype, count, ierror)
            USE MPI_CONSTANTS, ONLY: MPI_STATUS_SIZE, MPI_COUNT_KIND
            IMPLICIT NONE
            INTEGER :: status(MPI_STATUS_SIZE)
            INTEGER :: datatype
            INTEGER(KIND=MPI_COUNT_KIND) :: count
            INTEGER :: ierror
        END SUBROUTINE PMPI_Status_set_elements_x
    END INTERFACE
    
    INTERFACE PMPI_Type_commit
        SUBROUTINE PMPI_Type_commit(datatype, ierror)
            IMPLICIT NONE
            INTEGER :: datatype
            INTEGER :: ierror
        END SUBROUTINE PMPI_Type_commit
    END INTERFACE
    
    INTERFACE PMPI_Type_contiguous
        SUBROUTINE PMPI_Type_contiguous(count, oldtype, newtype, ierror)
            IMPLICIT NONE
            INTEGER :: count
            INTEGER :: oldtype
            INTEGER :: newtype
            INTEGER :: ierror
        END SUBROUTINE PMPI_Type_contiguous
    END INTERFACE
    
    INTERFACE PMPI_Type_create_darray
        SUBROUTINE PMPI_Type_create_darray(size, rank, ndims, array_of_gsizes, array_of_distribs, &
                                           array_of_dargs, array_of_psizes, order, oldtype, newtype, &
                                           ierror)
            IMPLICIT NONE
            INTEGER :: size
            INTEGER :: rank
            INTEGER :: ndims
            INTEGER :: array_of_gsizes(ndims)
            INTEGER :: array_of_distribs(ndims)
            INTEGER :: array_of_dargs(ndims)
            INTEGER :: array_of_psizes(ndims)
            INTEGER :: order
            INTEGER :: oldtype
            INTEGER :: newtype
            INTEGER :: ierror
        END SUBROUTINE PMPI_Type_create_darray
    END INTERFACE
    
    INTERFACE PMPI_Type_create_f90_complex
        SUBROUTINE PMPI_Type_create_f90_complex(p, r, newtype, ierror)
            IMPLICIT NONE
            INTEGER :: p
            INTEGER :: r
            INTEGER :: newtype
            INTEGER :: ierror
        END SUBROUTINE PMPI_Type_create_f90_complex
    END INTERFACE
    
    INTERFACE PMPI_Type_create_f90_integer
        SUBROUTINE PMPI_Type_create_f90_integer(r, newtype, ierror)
            IMPLICIT NONE
            INTEGER :: r
            INTEGER :: newtype
            INTEGER :: ierror
        END SUBROUTINE PMPI_Type_create_f90_integer
    END INTERFACE
    
    INTERFACE PMPI_Type_create_f90_real
        SUBROUTINE PMPI_Type_create_f90_real(p, r, newtype, ierror)
            IMPLICIT NONE
            INTEGER :: p
            INTEGER :: r
            INTEGER :: newtype
            INTEGER :: ierror
        END SUBROUTINE PMPI_Type_create_f90_real
    END INTERFACE
    
    INTERFACE PMPI_Type_create_hindexed
        SUBROUTINE PMPI_Type_create_hindexed(count, array_of_blocklengths, array_of_displacements, oldtype, &
                                             newtype, ierror)
            USE MPI_CONSTANTS, ONLY: MPI_ADDRESS_KIND
            IMPLICIT NONE
            INTEGER :: count
            INTEGER :: array_of_blocklengths(count)
            INTEGER(KIND=MPI_ADDRESS_KIND) :: array_of_displacements(count)
            INTEGER :: oldtype
            INTEGER :: newtype
            INTEGER :: ierror
        END SUBROUTINE PMPI_Type_create_hindexed
    END INTERFACE
    
    INTERFACE PMPI_Type_create_hindexed_block
        SUBROUTINE PMPI_Type_create_hindexed_block(count, blocklength, array_of_displacements, oldtype, &
                                                   newtype, ierror)
            USE MPI_CONSTANTS, ONLY: MPI_ADDRESS_KIND
            IMPLICIT NONE
            INTEGER :: count
            INTEGER :: blocklength
            INTEGER(KIND=MPI_ADDRESS_KIND) :: array_of_displacements(count)
            INTEGER :: oldtype
            INTEGER :: newtype
            INTEGER :: ierror
        END SUBROUTINE PMPI_Type_create_hindexed_block
    END INTERFACE
    
    INTERFACE PMPI_Type_create_hvector
        SUBROUTINE PMPI_Type_create_hvector(count, blocklength, stride, oldtype, newtype, ierror)
            USE MPI_CONSTANTS, ONLY: MPI_ADDRESS_KIND
            IMPLICIT NONE
            INTEGER :: count
            INTEGER :: blocklength
            INTEGER(KIND=MPI_ADDRESS_KIND) :: stride
            INTEGER :: oldtype
            INTEGER :: newtype
            INTEGER :: ierror
        END SUBROUTINE PMPI_Type_create_hvector
    END INTERFACE
    
    INTERFACE PMPI_Type_create_indexed_block
        SUBROUTINE PMPI_Type_create_indexed_block(count, blocklength, array_of_displacements, oldtype, &
                                                  newtype, ierror)
            IMPLICIT NONE
            INTEGER :: count
            INTEGER :: blocklength
            INTEGER :: array_of_displacements(count)
            INTEGER :: oldtype
            INTEGER :: newtype
            INTEGER :: ierror
        END SUBROUTINE PMPI_Type_create_indexed_block
    END INTERFACE
    
    INTERFACE PMPI_Type_create_resized
        SUBROUTINE PMPI_Type_create_resized(oldtype, lb, extent, newtype, ierror)
            USE MPI_CONSTANTS, ONLY: MPI_ADDRESS_KIND
            IMPLICIT NONE
            INTEGER :: oldtype
            INTEGER(KIND=MPI_ADDRESS_KIND) :: lb
            INTEGER(KIND=MPI_ADDRESS_KIND) :: extent
            INTEGER :: newtype
            INTEGER :: ierror
        END SUBROUTINE PMPI_Type_create_resized
    END INTERFACE
    
    INTERFACE PMPI_Type_create_struct
        SUBROUTINE PMPI_Type_create_struct(count, array_of_blocklengths, array_of_displacements, &
                                           array_of_types, newtype, ierror)
            USE MPI_CONSTANTS, ONLY: MPI_ADDRESS_KIND
            IMPLICIT NONE
            INTEGER :: count
            INTEGER :: array_of_blocklengths(count)
            INTEGER(KIND=MPI_ADDRESS_KIND) :: array_of_displacements(count)
            INTEGER :: array_of_types(count)
            INTEGER :: newtype
            INTEGER :: ierror
        END SUBROUTINE PMPI_Type_create_struct
    END INTERFACE
    
    INTERFACE PMPI_Type_create_subarray
        SUBROUTINE PMPI_Type_create_subarray(ndims, array_of_sizes, array_of_subsizes, array_of_starts, &
                                             order, oldtype, newtype, ierror)
            IMPLICIT NONE
            INTEGER :: ndims
            INTEGER :: array_of_sizes(ndims)
            INTEGER :: array_of_subsizes(ndims)
            INTEGER :: array_of_starts(ndims)
            INTEGER :: order
            INTEGER :: oldtype
            INTEGER :: newtype
            INTEGER :: ierror
        END SUBROUTINE PMPI_Type_create_subarray
    END INTERFACE
    
    INTERFACE PMPI_Type_dup
        SUBROUTINE PMPI_Type_dup(oldtype, newtype, ierror)
            IMPLICIT NONE
            INTEGER :: oldtype
            INTEGER :: newtype
            INTEGER :: ierror
        END SUBROUTINE PMPI_Type_dup
    END INTERFACE
    
    INTERFACE PMPI_Type_free
        SUBROUTINE PMPI_Type_free(datatype, ierror)
            IMPLICIT NONE
            INTEGER :: datatype
            INTEGER :: ierror
        END SUBROUTINE PMPI_Type_free
    END INTERFACE
    
    INTERFACE PMPI_Type_get_contents
        SUBROUTINE PMPI_Type_get_contents(datatype, max_integers, max_addresses, max_datatypes, &
                                          array_of_integers, array_of_addresses, array_of_datatypes, &
                                          ierror)
            USE MPI_CONSTANTS, ONLY: MPI_ADDRESS_KIND
            IMPLICIT NONE
            INTEGER :: datatype
            INTEGER :: max_integers
            INTEGER :: max_addresses
            INTEGER :: max_datatypes
            INTEGER :: array_of_integers(max_integers)
            INTEGER(KIND=MPI_ADDRESS_KIND) :: array_of_addresses(max_addresses)
            INTEGER :: array_of_datatypes(max_datatypes)
            INTEGER :: ierror
        END SUBROUTINE PMPI_Type_get_contents
    END INTERFACE
    
    INTERFACE PMPI_Type_get_envelope
        SUBROUTINE PMPI_Type_get_envelope(datatype, num_integers, num_addresses, num_datatypes, combiner, &
                                          ierror)
            IMPLICIT NONE
            INTEGER :: datatype
            INTEGER :: num_integers
            INTEGER :: num_addresses
            INTEGER :: num_datatypes
            INTEGER :: combiner
            INTEGER :: ierror
        END SUBROUTINE PMPI_Type_get_envelope
    END INTERFACE
    
    INTERFACE PMPI_Type_get_extent
        SUBROUTINE PMPI_Type_get_extent(datatype, lb, extent, ierror)
            USE MPI_CONSTANTS, ONLY: MPI_ADDRESS_KIND
            IMPLICIT NONE
            INTEGER :: datatype
            INTEGER(KIND=MPI_ADDRESS_KIND) :: lb
            INTEGER(KIND=MPI_ADDRESS_KIND) :: extent
            INTEGER :: ierror
        END SUBROUTINE PMPI_Type_get_extent
    END INTERFACE
    
    INTERFACE PMPI_Type_get_extent_x
        SUBROUTINE PMPI_Type_get_extent_x(datatype, lb, extent, ierror)
            USE MPI_CONSTANTS, ONLY: MPI_COUNT_KIND
            IMPLICIT NONE
            INTEGER :: datatype
            INTEGER(KIND=MPI_COUNT_KIND) :: lb
            INTEGER(KIND=MPI_COUNT_KIND) :: extent
            INTEGER :: ierror
        END SUBROUTINE PMPI_Type_get_extent_x
    END INTERFACE
    
    INTERFACE PMPI_Type_get_name
        SUBROUTINE PMPI_Type_get_name(datatype, type_name, resultlen, ierror)
            IMPLICIT NONE
            INTEGER :: datatype
            CHARACTER*(*) :: type_name
            INTEGER :: resultlen
            INTEGER :: ierror
        END SUBROUTINE PMPI_Type_get_name
    END INTERFACE
    
    INTERFACE PMPI_Type_get_true_extent
        SUBROUTINE PMPI_Type_get_true_extent(datatype, true_lb, true_extent, ierror)
            USE MPI_CONSTANTS, ONLY: MPI_ADDRESS_KIND
            IMPLICIT NONE
            INTEGER :: datatype
            INTEGER(KIND=MPI_ADDRESS_KIND) :: true_lb
            INTEGER(KIND=MPI_ADDRESS_KIND) :: true_extent
            INTEGER :: ierror
        END SUBROUTINE PMPI_Type_get_true_extent
    END INTERFACE
    
    INTERFACE PMPI_Type_get_true_extent_x
        SUBROUTINE PMPI_Type_get_true_extent_x(datatype, true_lb, true_extent, ierror)
            USE MPI_CONSTANTS, ONLY: MPI_COUNT_KIND
            IMPLICIT NONE
            INTEGER :: datatype
            INTEGER(KIND=MPI_COUNT_KIND) :: true_lb
            INTEGER(KIND=MPI_COUNT_KIND) :: true_extent
            INTEGER :: ierror
        END SUBROUTINE PMPI_Type_get_true_extent_x
    END INTERFACE
    
    INTERFACE PMPI_Type_get_value_index
        SUBROUTINE PMPI_Type_get_value_index(value_type, index_type, pair_type, ierror)
            IMPLICIT NONE
            INTEGER :: value_type
            INTEGER :: index_type
            INTEGER :: pair_type
            INTEGER :: ierror
        END SUBROUTINE PMPI_Type_get_value_index
    END INTERFACE
    
    INTERFACE PMPI_Type_indexed
        SUBROUTINE PMPI_Type_indexed(count, array_of_blocklengths, array_of_displacements, oldtype, newtype, &
                                     ierror)
            IMPLICIT NONE
            INTEGER :: count
            INTEGER :: array_of_blocklengths(count)
            INTEGER :: array_of_displacements(count)
            INTEGER :: oldtype
            INTEGER :: newtype
            INTEGER :: ierror
        END SUBROUTINE PMPI_Type_indexed
    END INTERFACE
    
    INTERFACE PMPI_Type_match_size
        SUBROUTINE PMPI_Type_match_size(typeclass, size, datatype, ierror)
            IMPLICIT NONE
            INTEGER :: typeclass
            INTEGER :: size
            INTEGER :: datatype
            INTEGER :: ierror
        END SUBROUTINE PMPI_Type_match_size
    END INTERFACE
    
    INTERFACE PMPI_Type_set_name
        SUBROUTINE PMPI_Type_set_name(datatype, type_name, ierror)
            IMPLICIT NONE
            INTEGER :: datatype
            CHARACTER*(*) :: type_name
            INTEGER :: ierror
        END SUBROUTINE PMPI_Type_set_name
    END INTERFACE
    
    INTERFACE PMPI_Type_size
        SUBROUTINE PMPI_Type_size(datatype, size, ierror)
            IMPLICIT NONE
            INTEGER :: datatype
            INTEGER :: size
            INTEGER :: ierror
        END SUBROUTINE PMPI_Type_size
    END INTERFACE
    
    INTERFACE PMPI_Type_size_x
        SUBROUTINE PMPI_Type_size_x(datatype, size, ierror)
            USE MPI_CONSTANTS, ONLY: MPI_COUNT_KIND
            IMPLICIT NONE
            INTEGER :: datatype
            INTEGER(KIND=MPI_COUNT_KIND) :: size
            INTEGER :: ierror
        END SUBROUTINE PMPI_Type_size_x
    END INTERFACE
    
    INTERFACE PMPI_Type_vector
        SUBROUTINE PMPI_Type_vector(count, blocklength, stride, oldtype, newtype, ierror)
            IMPLICIT NONE
            INTEGER :: count
            INTEGER :: blocklength
            INTEGER :: stride
            INTEGER :: oldtype
            INTEGER :: newtype
            INTEGER :: ierror
        END SUBROUTINE PMPI_Type_vector
    END INTERFACE
    
    INTERFACE PMPI_Unpack
        SUBROUTINE PMPI_Unpack(inbuf, insize, position, outbuf, outcount, datatype, comm, ierror)
            IMPLICIT NONE
            !GCC$ ATTRIBUTES NO_ARG_CHECK :: inbuf, outbuf
            REAL :: inbuf
            INTEGER :: insize
            INTEGER :: position
            REAL :: outbuf
            INTEGER :: outcount
            INTEGER :: datatype
            INTEGER :: comm
            INTEGER :: ierror
        END SUBROUTINE PMPI_Unpack
    END INTERFACE
    
    INTERFACE PMPI_Unpack_external
        SUBROUTINE PMPI_Unpack_external(datarep, inbuf, insize, position, outbuf, outcount, datatype, &
                                        ierror)
            USE MPI_CONSTANTS, ONLY: MPI_ADDRESS_KIND
            IMPLICIT NONE
            !GCC$ ATTRIBUTES NO_ARG_CHECK :: inbuf, outbuf
            CHARACTER*(*) :: datarep
            REAL :: inbuf
            INTEGER(KIND=MPI_ADDRESS_KIND) :: insize
            INTEGER(KIND=MPI_ADDRESS_KIND) :: position
            REAL :: outbuf
            INTEGER :: outcount
            INTEGER :: datatype
            INTEGER :: ierror
        END SUBROUTINE PMPI_Unpack_external
    END INTERFACE
    
    INTERFACE PMPI_Address
        SUBROUTINE PMPI_Address(location, address, ierror)
            USE MPI_CONSTANTS, ONLY: MPI_ADDRESS_KIND
            IMPLICIT NONE
            !GCC$ ATTRIBUTES NO_ARG_CHECK :: location
            REAL :: location
            INTEGER(KIND=MPI_ADDRESS_KIND) :: address
            INTEGER :: ierror
        END SUBROUTINE PMPI_Address
    END INTERFACE
    
    INTERFACE PMPI_Type_extent
        SUBROUTINE PMPI_Type_extent(datatype, extent, ierror)
            IMPLICIT NONE
            INTEGER :: datatype
            INTEGER :: extent
            INTEGER :: ierror
        END SUBROUTINE PMPI_Type_extent
    END INTERFACE
    
    INTERFACE PMPI_Type_lb
        SUBROUTINE PMPI_Type_lb(datatype, displacement, ierror)
            IMPLICIT NONE
            INTEGER :: datatype
            INTEGER :: displacement
            INTEGER :: ierror
        END SUBROUTINE PMPI_Type_lb
    END INTERFACE
    
    INTERFACE PMPI_Type_ub
        SUBROUTINE PMPI_Type_ub(datatype, displacement, ierror)
            IMPLICIT NONE
            INTEGER :: datatype
            INTEGER :: displacement
            INTEGER :: ierror
        END SUBROUTINE PMPI_Type_ub
    END INTERFACE
    
    INTERFACE PMPI_Type_hindexed
        SUBROUTINE PMPI_Type_hindexed(count, array_of_blocklengths, array_of_displacements, oldtype, &
                                      newtype, ierror)
            IMPLICIT NONE
            INTEGER :: count
            INTEGER :: array_of_blocklengths(count)
            INTEGER :: array_of_displacements(count)
            INTEGER :: oldtype
            INTEGER :: newtype
            INTEGER :: ierror
        END SUBROUTINE PMPI_Type_hindexed
    END INTERFACE
    
    INTERFACE PMPI_Type_hvector
        SUBROUTINE PMPI_Type_hvector(count, blocklength, stride, oldtype, newtype, ierror)
            IMPLICIT NONE
            INTEGER :: count
            INTEGER :: blocklength
            INTEGER :: stride
            INTEGER :: oldtype
            INTEGER :: newtype
            INTEGER :: ierror
        END SUBROUTINE PMPI_Type_hvector
    END INTERFACE
    
    INTERFACE PMPI_Type_struct
        SUBROUTINE PMPI_Type_struct(count, array_of_blocklengths, array_of_displacements, array_of_types, &
                                    newtype, ierror)
            IMPLICIT NONE
            INTEGER :: count
            INTEGER :: array_of_blocklengths(count)
            INTEGER :: array_of_displacements(count)
            INTEGER :: array_of_types(count)
            INTEGER :: newtype
            INTEGER :: ierror
        END SUBROUTINE PMPI_Type_struct
    END INTERFACE
    
    INTERFACE PMPI_Add_error_class
        SUBROUTINE PMPI_Add_error_class(errorclass, ierror)
            IMPLICIT NONE
            INTEGER :: errorclass
            INTEGER :: ierror
        END SUBROUTINE PMPI_Add_error_class
    END INTERFACE
    
    INTERFACE PMPI_Add_error_code
        SUBROUTINE PMPI_Add_error_code(errorclass, errorcode, ierror)
            IMPLICIT NONE
            INTEGER :: errorclass
            INTEGER :: errorcode
            INTEGER :: ierror
        END SUBROUTINE PMPI_Add_error_code
    END INTERFACE
    
    INTERFACE PMPI_Add_error_string
        SUBROUTINE PMPI_Add_error_string(errorcode, string, ierror)
            IMPLICIT NONE
            INTEGER :: errorcode
            CHARACTER*(*) :: string
            INTEGER :: ierror
        END SUBROUTINE PMPI_Add_error_string
    END INTERFACE
    
    INTERFACE PMPI_Comm_call_errhandler
        SUBROUTINE PMPI_Comm_call_errhandler(comm, errorcode, ierror)
            IMPLICIT NONE
            INTEGER :: comm
            INTEGER :: errorcode
            INTEGER :: ierror
        END SUBROUTINE PMPI_Comm_call_errhandler
    END INTERFACE
    
    INTERFACE PMPI_Comm_create_errhandler
        SUBROUTINE PMPI_Comm_create_errhandler(comm_errhandler_fn, errhandler, ierror)
            IMPLICIT NONE
            EXTERNAL :: comm_errhandler_fn
            INTEGER :: errhandler
            INTEGER :: ierror
        END SUBROUTINE PMPI_Comm_create_errhandler
    END INTERFACE
    
    INTERFACE PMPI_Comm_get_errhandler
        SUBROUTINE PMPI_Comm_get_errhandler(comm, errhandler, ierror)
            IMPLICIT NONE
            INTEGER :: comm
            INTEGER :: errhandler
            INTEGER :: ierror
        END SUBROUTINE PMPI_Comm_get_errhandler
    END INTERFACE
    
    INTERFACE PMPI_Comm_set_errhandler
        SUBROUTINE PMPI_Comm_set_errhandler(comm, errhandler, ierror)
            IMPLICIT NONE
            INTEGER :: comm
            INTEGER :: errhandler
            INTEGER :: ierror
        END SUBROUTINE PMPI_Comm_set_errhandler
    END INTERFACE
    
    INTERFACE PMPI_Errhandler_free
        SUBROUTINE PMPI_Errhandler_free(errhandler, ierror)
            IMPLICIT NONE
            INTEGER :: errhandler
            INTEGER :: ierror
        END SUBROUTINE PMPI_Errhandler_free
    END INTERFACE
    
    INTERFACE PMPI_Error_class
        SUBROUTINE PMPI_Error_class(errorcode, errorclass, ierror)
            IMPLICIT NONE
            INTEGER :: errorcode
            INTEGER :: errorclass
            INTEGER :: ierror
        END SUBROUTINE PMPI_Error_class
    END INTERFACE
    
    INTERFACE PMPI_Error_string
        SUBROUTINE PMPI_Error_string(errorcode, string, resultlen, ierror)
            IMPLICIT NONE
            INTEGER :: errorcode
            CHARACTER*(*) :: string
            INTEGER :: resultlen
            INTEGER :: ierror
        END SUBROUTINE PMPI_Error_string
    END INTERFACE
    
    INTERFACE PMPI_File_call_errhandler
        SUBROUTINE PMPI_File_call_errhandler(fh, errorcode, ierror)
            IMPLICIT NONE
            INTEGER :: fh
            INTEGER :: errorcode
            INTEGER :: ierror
        END SUBROUTINE PMPI_File_call_errhandler
    END INTERFACE
    
    INTERFACE PMPI_File_create_errhandler
        SUBROUTINE PMPI_File_create_errhandler(file_errhandler_fn, errhandler, ierror)
            IMPLICIT NONE
            EXTERNAL :: file_errhandler_fn
            INTEGER :: errhandler
            INTEGER :: ierror
        END SUBROUTINE PMPI_File_create_errhandler
    END INTERFACE
    
    INTERFACE PMPI_File_get_errhandler
        SUBROUTINE PMPI_File_get_errhandler(file, errhandler, ierror)
            IMPLICIT NONE
            INTEGER :: file
            INTEGER :: errhandler
            INTEGER :: ierror
        END SUBROUTINE PMPI_File_get_errhandler
    END INTERFACE
    
    INTERFACE PMPI_File_set_errhandler
        SUBROUTINE PMPI_File_set_errhandler(file, errhandler, ierror)
            IMPLICIT NONE
            INTEGER :: file
            INTEGER :: errhandler
            INTEGER :: ierror
        END SUBROUTINE PMPI_File_set_errhandler
    END INTERFACE
    
    INTERFACE PMPI_Remove_error_class
        SUBROUTINE PMPI_Remove_error_class(errorclass, ierror)
            IMPLICIT NONE
            INTEGER :: errorclass
            INTEGER :: ierror
        END SUBROUTINE PMPI_Remove_error_class
    END INTERFACE
    
    INTERFACE PMPI_Remove_error_code
        SUBROUTINE PMPI_Remove_error_code(errorcode, ierror)
            IMPLICIT NONE
            INTEGER :: errorcode
            INTEGER :: ierror
        END SUBROUTINE PMPI_Remove_error_code
    END INTERFACE
    
    INTERFACE PMPI_Remove_error_string
        SUBROUTINE PMPI_Remove_error_string(errorcode, ierror)
            IMPLICIT NONE
            INTEGER :: errorcode
            INTEGER :: ierror
        END SUBROUTINE PMPI_Remove_error_string
    END INTERFACE
    
    INTERFACE PMPI_Session_call_errhandler
        SUBROUTINE PMPI_Session_call_errhandler(session, errorcode, ierror)
            IMPLICIT NONE
            INTEGER :: session
            INTEGER :: errorcode
            INTEGER :: ierror
        END SUBROUTINE PMPI_Session_call_errhandler
    END INTERFACE
    
    INTERFACE PMPI_Session_create_errhandler
        SUBROUTINE PMPI_Session_create_errhandler(session_errhandler_fn, errhandler, ierror)
            IMPLICIT NONE
            EXTERNAL :: session_errhandler_fn
            INTEGER :: errhandler
            INTEGER :: ierror
        END SUBROUTINE PMPI_Session_create_errhandler
    END INTERFACE
    
    INTERFACE PMPI_Session_get_errhandler
        SUBROUTINE PMPI_Session_get_errhandler(session, errhandler, ierror)
            IMPLICIT NONE
            INTEGER :: session
            INTEGER :: errhandler
            INTEGER :: ierror
        END SUBROUTINE PMPI_Session_get_errhandler
    END INTERFACE
    
    INTERFACE PMPI_Session_set_errhandler
        SUBROUTINE PMPI_Session_set_errhandler(session, errhandler, ierror)
            IMPLICIT NONE
            INTEGER :: session
            INTEGER :: errhandler
            INTEGER :: ierror
        END SUBROUTINE PMPI_Session_set_errhandler
    END INTERFACE
    
    INTERFACE PMPI_Win_call_errhandler
        SUBROUTINE PMPI_Win_call_errhandler(win, errorcode, ierror)
            IMPLICIT NONE
            INTEGER :: win
            INTEGER :: errorcode
            INTEGER :: ierror
        END SUBROUTINE PMPI_Win_call_errhandler
    END INTERFACE
    
    INTERFACE PMPI_Win_create_errhandler
        SUBROUTINE PMPI_Win_create_errhandler(win_errhandler_fn, errhandler, ierror)
            IMPLICIT NONE
            EXTERNAL :: win_errhandler_fn
            INTEGER :: errhandler
            INTEGER :: ierror
        END SUBROUTINE PMPI_Win_create_errhandler
    END INTERFACE
    
    INTERFACE PMPI_Win_get_errhandler
        SUBROUTINE PMPI_Win_get_errhandler(win, errhandler, ierror)
            IMPLICIT NONE
            INTEGER :: win
            INTEGER :: errhandler
            INTEGER :: ierror
        END SUBROUTINE PMPI_Win_get_errhandler
    END INTERFACE
    
    INTERFACE PMPI_Win_set_errhandler
        SUBROUTINE PMPI_Win_set_errhandler(win, errhandler, ierror)
            IMPLICIT NONE
            INTEGER :: win
            INTEGER :: errhandler
            INTEGER :: ierror
        END SUBROUTINE PMPI_Win_set_errhandler
    END INTERFACE
    
    INTERFACE PMPI_Errhandler_create
        SUBROUTINE PMPI_Errhandler_create(comm_errhandler_fn, errhandler, ierror)
            IMPLICIT NONE
            EXTERNAL :: comm_errhandler_fn
            INTEGER :: errhandler
            INTEGER :: ierror
        END SUBROUTINE PMPI_Errhandler_create
    END INTERFACE
    
    INTERFACE PMPI_Errhandler_get
        SUBROUTINE PMPI_Errhandler_get(comm, errhandler, ierror)
            IMPLICIT NONE
            INTEGER :: comm
            INTEGER :: errhandler
            INTEGER :: ierror
        END SUBROUTINE PMPI_Errhandler_get
    END INTERFACE
    
    INTERFACE PMPI_Errhandler_set
        SUBROUTINE PMPI_Errhandler_set(comm, errhandler, ierror)
            IMPLICIT NONE
            INTEGER :: comm
            INTEGER :: errhandler
            INTEGER :: ierror
        END SUBROUTINE PMPI_Errhandler_set
    END INTERFACE
    
    INTERFACE PMPI_Group_compare
        SUBROUTINE PMPI_Group_compare(group1, group2, result, ierror)
            IMPLICIT NONE
            INTEGER :: group1
            INTEGER :: group2
            INTEGER :: result
            INTEGER :: ierror
        END SUBROUTINE PMPI_Group_compare
    END INTERFACE
    
    INTERFACE PMPI_Group_difference
        SUBROUTINE PMPI_Group_difference(group1, group2, newgroup, ierror)
            IMPLICIT NONE
            INTEGER :: group1
            INTEGER :: group2
            INTEGER :: newgroup
            INTEGER :: ierror
        END SUBROUTINE PMPI_Group_difference
    END INTERFACE
    
    INTERFACE PMPI_Group_excl
        SUBROUTINE PMPI_Group_excl(group, n, ranks, newgroup, ierror)
            IMPLICIT NONE
            INTEGER :: group
            INTEGER :: n
            INTEGER :: ranks(n)
            INTEGER :: newgroup
            INTEGER :: ierror
        END SUBROUTINE PMPI_Group_excl
    END INTERFACE
    
    INTERFACE PMPI_Group_free
        SUBROUTINE PMPI_Group_free(group, ierror)
            IMPLICIT NONE
            INTEGER :: group
            INTEGER :: ierror
        END SUBROUTINE PMPI_Group_free
    END INTERFACE
    
    INTERFACE PMPI_Group_incl
        SUBROUTINE PMPI_Group_incl(group, n, ranks, newgroup, ierror)
            IMPLICIT NONE
            INTEGER :: group
            INTEGER :: n
            INTEGER :: ranks(n)
            INTEGER :: newgroup
            INTEGER :: ierror
        END SUBROUTINE PMPI_Group_incl
    END INTERFACE
    
    INTERFACE PMPI_Group_intersection
        SUBROUTINE PMPI_Group_intersection(group1, group2, newgroup, ierror)
            IMPLICIT NONE
            INTEGER :: group1
            INTEGER :: group2
            INTEGER :: newgroup
            INTEGER :: ierror
        END SUBROUTINE PMPI_Group_intersection
    END INTERFACE
    
    INTERFACE PMPI_Group_range_excl
        SUBROUTINE PMPI_Group_range_excl(group, n, ranges, newgroup, ierror)
            IMPLICIT NONE
            INTEGER :: group
            INTEGER :: n
            INTEGER :: ranges(3, *)
            INTEGER :: newgroup
            INTEGER :: ierror
        END SUBROUTINE PMPI_Group_range_excl
    END INTERFACE
    
    INTERFACE PMPI_Group_range_incl
        SUBROUTINE PMPI_Group_range_incl(group, n, ranges, newgroup, ierror)
            IMPLICIT NONE
            INTEGER :: group
            INTEGER :: n
            INTEGER :: ranges(3, *)
            INTEGER :: newgroup
            INTEGER :: ierror
        END SUBROUTINE PMPI_Group_range_incl
    END INTERFACE
    
    INTERFACE PMPI_Group_rank
        SUBROUTINE PMPI_Group_rank(group, rank, ierror)
            IMPLICIT NONE
            INTEGER :: group
            INTEGER :: rank
            INTEGER :: ierror
        END SUBROUTINE PMPI_Group_rank
    END INTERFACE
    
    INTERFACE PMPI_Group_size
        SUBROUTINE PMPI_Group_size(group, size, ierror)
            IMPLICIT NONE
            INTEGER :: group
            INTEGER :: size
            INTEGER :: ierror
        END SUBROUTINE PMPI_Group_size
    END INTERFACE
    
    INTERFACE PMPI_Group_translate_ranks
        SUBROUTINE PMPI_Group_translate_ranks(group1, n, ranks1, group2, ranks2, ierror)
            IMPLICIT NONE
            INTEGER :: group1
            INTEGER :: n
            INTEGER :: ranks1(n)
            INTEGER :: group2
            INTEGER :: ranks2(n)
            INTEGER :: ierror
        END SUBROUTINE PMPI_Group_translate_ranks
    END INTERFACE
    
    INTERFACE PMPI_Group_union
        SUBROUTINE PMPI_Group_union(group1, group2, newgroup, ierror)
            IMPLICIT NONE
            INTEGER :: group1
            INTEGER :: group2
            INTEGER :: newgroup
            INTEGER :: ierror
        END SUBROUTINE PMPI_Group_union
    END INTERFACE
    
    INTERFACE PMPI_Info_create
        SUBROUTINE PMPI_Info_create(info, ierror)
            IMPLICIT NONE
            INTEGER :: info
            INTEGER :: ierror
        END SUBROUTINE PMPI_Info_create
    END INTERFACE
    
    INTERFACE PMPI_Info_create_env
        SUBROUTINE PMPI_Info_create_env(info, ierror)
            IMPLICIT NONE
            INTEGER :: info
            INTEGER :: ierror
        END SUBROUTINE PMPI_Info_create_env
    END INTERFACE
    
    INTERFACE PMPI_Info_delete
        SUBROUTINE PMPI_Info_delete(info, key, ierror)
            IMPLICIT NONE
            INTEGER :: info
            CHARACTER*(*) :: key
            INTEGER :: ierror
        END SUBROUTINE PMPI_Info_delete
    END INTERFACE
    
    INTERFACE PMPI_Info_dup
        SUBROUTINE PMPI_Info_dup(info, newinfo, ierror)
            IMPLICIT NONE
            INTEGER :: info
            INTEGER :: newinfo
            INTEGER :: ierror
        END SUBROUTINE PMPI_Info_dup
    END INTERFACE
    
    INTERFACE PMPI_Info_free
        SUBROUTINE PMPI_Info_free(info, ierror)
            IMPLICIT NONE
            INTEGER :: info
            INTEGER :: ierror
        END SUBROUTINE PMPI_Info_free
    END INTERFACE
    
    INTERFACE PMPI_Info_get
        SUBROUTINE PMPI_Info_get(info, key, valuelen, value, flag, ierror)
            IMPLICIT NONE
            INTEGER :: info
            CHARACTER*(*) :: key
            INTEGER :: valuelen
            CHARACTER*(*) :: value
            LOGICAL :: flag
            INTEGER :: ierror
        END SUBROUTINE PMPI_Info_get
    END INTERFACE
    
    INTERFACE PMPI_Info_get_nkeys
        SUBROUTINE PMPI_Info_get_nkeys(info, nkeys, ierror)
            IMPLICIT NONE
            INTEGER :: info
            INTEGER :: nkeys
            INTEGER :: ierror
        END SUBROUTINE PMPI_Info_get_nkeys
    END INTERFACE
    
    INTERFACE PMPI_Info_get_nthkey
        SUBROUTINE PMPI_Info_get_nthkey(info, n, key, ierror)
            IMPLICIT NONE
            INTEGER :: info
            INTEGER :: n
            CHARACTER*(*) :: key
            INTEGER :: ierror
        END SUBROUTINE PMPI_Info_get_nthkey
    END INTERFACE
    
    INTERFACE PMPI_Info_get_string
        SUBROUTINE PMPI_Info_get_string(info, key, buflen, value, flag, ierror)
            IMPLICIT NONE
            INTEGER :: info
            CHARACTER*(*) :: key
            INTEGER :: buflen
            CHARACTER*(*) :: value
            LOGICAL :: flag
            INTEGER :: ierror
        END SUBROUTINE PMPI_Info_get_string
    END INTERFACE
    
    INTERFACE PMPI_Info_get_valuelen
        SUBROUTINE PMPI_Info_get_valuelen(info, key, valuelen, flag, ierror)
            IMPLICIT NONE
            INTEGER :: info
            CHARACTER*(*) :: key
            INTEGER :: valuelen
            LOGICAL :: flag
            INTEGER :: ierror
        END SUBROUTINE PMPI_Info_get_valuelen
    END INTERFACE
    
    INTERFACE PMPI_Info_set
        SUBROUTINE PMPI_Info_set(info, key, value, ierror)
            IMPLICIT NONE
            INTEGER :: info
            CHARACTER*(*) :: key
            CHARACTER*(*) :: value
            INTEGER :: ierror
        END SUBROUTINE PMPI_Info_set
    END INTERFACE
    
    INTERFACE PMPIX_Info_set_hex
        SUBROUTINE PMPIX_Info_set_hex(info, key, value, value_size, ierror)
            IMPLICIT NONE
            !GCC$ ATTRIBUTES NO_ARG_CHECK :: value
            INTEGER :: info
            CHARACTER*(*) :: key
            REAL :: value
            INTEGER :: value_size
            INTEGER :: ierror
        END SUBROUTINE PMPIX_Info_set_hex
    END INTERFACE
    
    INTERFACE PMPI_Abort
        SUBROUTINE PMPI_Abort(comm, errorcode, ierror)
            IMPLICIT NONE
            INTEGER :: comm
            INTEGER :: errorcode
            INTEGER :: ierror
        END SUBROUTINE PMPI_Abort
    END INTERFACE
    
    INTERFACE PMPI_Comm_create_from_group
        SUBROUTINE PMPI_Comm_create_from_group(group, stringtag, info, errhandler, newcomm, ierror)
            IMPLICIT NONE
            INTEGER :: group
            CHARACTER*(*) :: stringtag
            INTEGER :: info
            INTEGER :: errhandler
            INTEGER :: newcomm
            INTEGER :: ierror
        END SUBROUTINE PMPI_Comm_create_from_group
    END INTERFACE
    
    INTERFACE PMPI_Finalize
        SUBROUTINE PMPI_Finalize(ierror)
            IMPLICIT NONE
            INTEGER :: ierror
        END SUBROUTINE PMPI_Finalize
    END INTERFACE
    
    INTERFACE PMPI_Finalized
        SUBROUTINE PMPI_Finalized(flag, ierror)
            IMPLICIT NONE
            LOGICAL :: flag
            INTEGER :: ierror
        END SUBROUTINE PMPI_Finalized
    END INTERFACE
    
    INTERFACE PMPI_Group_from_session_pset
        SUBROUTINE PMPI_Group_from_session_pset(session, pset_name, newgroup, ierror)
            IMPLICIT NONE
            INTEGER :: session
            CHARACTER*(*) :: pset_name
            INTEGER :: newgroup
            INTEGER :: ierror
        END SUBROUTINE PMPI_Group_from_session_pset
    END INTERFACE
    
    INTERFACE PMPI_Init
        SUBROUTINE PMPI_Init(ierror)
            IMPLICIT NONE
            INTEGER :: ierror
        END SUBROUTINE PMPI_Init
    END INTERFACE
    
    INTERFACE PMPI_Init_thread
        SUBROUTINE PMPI_Init_thread(required, provided, ierror)
            IMPLICIT NONE
            INTEGER :: required
            INTEGER :: provided
            INTEGER :: ierror
        END SUBROUTINE PMPI_Init_thread
    END INTERFACE
    
    INTERFACE PMPI_Initialized
        SUBROUTINE PMPI_Initialized(flag, ierror)
            IMPLICIT NONE
            LOGICAL :: flag
            INTEGER :: ierror
        END SUBROUTINE PMPI_Initialized
    END INTERFACE
    
    INTERFACE PMPI_Is_thread_main
        SUBROUTINE PMPI_Is_thread_main(flag, ierror)
            IMPLICIT NONE
            LOGICAL :: flag
            INTEGER :: ierror
        END SUBROUTINE PMPI_Is_thread_main
    END INTERFACE
    
    INTERFACE PMPI_Query_thread
        SUBROUTINE PMPI_Query_thread(provided, ierror)
            IMPLICIT NONE
            INTEGER :: provided
            INTEGER :: ierror
        END SUBROUTINE PMPI_Query_thread
    END INTERFACE
    
    INTERFACE PMPI_Session_finalize
        SUBROUTINE PMPI_Session_finalize(session, ierror)
            IMPLICIT NONE
            INTEGER :: session
            INTEGER :: ierror
        END SUBROUTINE PMPI_Session_finalize
    END INTERFACE
    
    INTERFACE PMPI_Session_get_info
        SUBROUTINE PMPI_Session_get_info(session, info_used, ierror)
            IMPLICIT NONE
            INTEGER :: session
            INTEGER :: info_used
            INTEGER :: ierror
        END SUBROUTINE PMPI_Session_get_info
    END INTERFACE
    
    INTERFACE PMPI_Session_get_nth_pset
        SUBROUTINE PMPI_Session_get_nth_pset(session, info, n, pset_len, pset_name, ierror)
            IMPLICIT NONE
            INTEGER :: session
            INTEGER :: info
            INTEGER :: n
            INTEGER :: pset_len
            CHARACTER*(*) :: pset_name
            INTEGER :: ierror
        END SUBROUTINE PMPI_Session_get_nth_pset
    END INTERFACE
    
    INTERFACE PMPI_Session_get_num_psets
        SUBROUTINE PMPI_Session_get_num_psets(session, info, npset_names, ierror)
            IMPLICIT NONE
            INTEGER :: session
            INTEGER :: info
            INTEGER :: npset_names
            INTEGER :: ierror
        END SUBROUTINE PMPI_Session_get_num_psets
    END INTERFACE
    
    INTERFACE PMPI_Session_get_pset_info
        SUBROUTINE PMPI_Session_get_pset_info(session, pset_name, info, ierror)
            IMPLICIT NONE
            INTEGER :: session
            CHARACTER*(*) :: pset_name
            INTEGER :: info
            INTEGER :: ierror
        END SUBROUTINE PMPI_Session_get_pset_info
    END INTERFACE
    
    INTERFACE PMPI_Session_init
        SUBROUTINE PMPI_Session_init(info, errhandler, session, ierror)
            IMPLICIT NONE
            INTEGER :: info
            INTEGER :: errhandler
            INTEGER :: session
            INTEGER :: ierror
        END SUBROUTINE PMPI_Session_init
    END INTERFACE
    
    INTERFACE PMPI_File_close
        SUBROUTINE PMPI_File_close(fh, ierror)
            IMPLICIT NONE
            INTEGER :: fh
            INTEGER :: ierror
        END SUBROUTINE PMPI_File_close
    END INTERFACE
    
    INTERFACE PMPI_File_delete
        SUBROUTINE PMPI_File_delete(filename, info, ierror)
            IMPLICIT NONE
            CHARACTER*(*) :: filename
            INTEGER :: info
            INTEGER :: ierror
        END SUBROUTINE PMPI_File_delete
    END INTERFACE
    
    INTERFACE PMPI_File_get_amode
        SUBROUTINE PMPI_File_get_amode(fh, amode, ierror)
            IMPLICIT NONE
            INTEGER :: fh
            INTEGER :: amode
            INTEGER :: ierror
        END SUBROUTINE PMPI_File_get_amode
    END INTERFACE
    
    INTERFACE PMPI_File_get_atomicity
        SUBROUTINE PMPI_File_get_atomicity(fh, flag, ierror)
            IMPLICIT NONE
            INTEGER :: fh
            LOGICAL :: flag
            INTEGER :: ierror
        END SUBROUTINE PMPI_File_get_atomicity
    END INTERFACE
    
    INTERFACE PMPI_File_get_byte_offset
        SUBROUTINE PMPI_File_get_byte_offset(fh, offset, disp, ierror)
            USE MPI_CONSTANTS, ONLY: MPI_OFFSET_KIND
            IMPLICIT NONE
            INTEGER :: fh
            INTEGER(KIND=MPI_OFFSET_KIND) :: offset
            INTEGER(KIND=MPI_OFFSET_KIND) :: disp
            INTEGER :: ierror
        END SUBROUTINE PMPI_File_get_byte_offset
    END INTERFACE
    
    INTERFACE PMPI_File_get_group
        SUBROUTINE PMPI_File_get_group(fh, group, ierror)
            IMPLICIT NONE
            INTEGER :: fh
            INTEGER :: group
            INTEGER :: ierror
        END SUBROUTINE PMPI_File_get_group
    END INTERFACE
    
    INTERFACE PMPI_File_get_info
        SUBROUTINE PMPI_File_get_info(fh, info_used, ierror)
            IMPLICIT NONE
            INTEGER :: fh
            INTEGER :: info_used
            INTEGER :: ierror
        END SUBROUTINE PMPI_File_get_info
    END INTERFACE
    
    INTERFACE PMPI_File_get_position
        SUBROUTINE PMPI_File_get_position(fh, offset, ierror)
            USE MPI_CONSTANTS, ONLY: MPI_OFFSET_KIND
            IMPLICIT NONE
            INTEGER :: fh
            INTEGER(KIND=MPI_OFFSET_KIND) :: offset
            INTEGER :: ierror
        END SUBROUTINE PMPI_File_get_position
    END INTERFACE
    
    INTERFACE PMPI_File_get_position_shared
        SUBROUTINE PMPI_File_get_position_shared(fh, offset, ierror)
            USE MPI_CONSTANTS, ONLY: MPI_OFFSET_KIND
            IMPLICIT NONE
            INTEGER :: fh
            INTEGER(KIND=MPI_OFFSET_KIND) :: offset
            INTEGER :: ierror
        END SUBROUTINE PMPI_File_get_position_shared
    END INTERFACE
    
    INTERFACE PMPI_File_get_size
        SUBROUTINE PMPI_File_get_size(fh, size, ierror)
            USE MPI_CONSTANTS, ONLY: MPI_OFFSET_KIND
            IMPLICIT NONE
            INTEGER :: fh
            INTEGER(KIND=MPI_OFFSET_KIND) :: size
            INTEGER :: ierror
        END SUBROUTINE PMPI_File_get_size
    END INTERFACE
    
    INTERFACE PMPI_File_get_type_extent
        SUBROUTINE PMPI_File_get_type_extent(fh, datatype, extent, ierror)
            USE MPI_CONSTANTS, ONLY: MPI_ADDRESS_KIND
            IMPLICIT NONE
            INTEGER :: fh
            INTEGER :: datatype
            INTEGER(KIND=MPI_ADDRESS_KIND) :: extent
            INTEGER :: ierror
        END SUBROUTINE PMPI_File_get_type_extent
    END INTERFACE
    
    INTERFACE PMPI_File_get_view
        SUBROUTINE PMPI_File_get_view(fh, disp, etype, filetype, datarep, ierror)
            USE MPI_CONSTANTS, ONLY: MPI_OFFSET_KIND
            IMPLICIT NONE
            INTEGER :: fh
            INTEGER(KIND=MPI_OFFSET_KIND) :: disp
            INTEGER :: etype
            INTEGER :: filetype
            CHARACTER*(*) :: datarep
            INTEGER :: ierror
        END SUBROUTINE PMPI_File_get_view
    END INTERFACE
    
    INTERFACE PMPI_File_iread
        SUBROUTINE PMPI_File_iread(fh, buf, count, datatype, request, ierror)
            IMPLICIT NONE
            !GCC$ ATTRIBUTES NO_ARG_CHECK :: buf
            INTEGER :: fh
            REAL :: buf
            INTEGER :: count
            INTEGER :: datatype
            INTEGER :: request
            INTEGER :: ierror
        END SUBROUTINE PMPI_File_iread
    END INTERFACE
    
    INTERFACE PMPI_File_iread_all
        SUBROUTINE PMPI_File_iread_all(fh, buf, count, datatype, request, ierror)
            IMPLICIT NONE
            !GCC$ ATTRIBUTES NO_ARG_CHECK :: buf
            INTEGER :: fh
            REAL :: buf
            INTEGER :: count
            INTEGER :: datatype
            INTEGER :: request
            INTEGER :: ierror
        END SUBROUTINE PMPI_File_iread_all
    END INTERFACE
    
    INTERFACE PMPI_File_iread_at
        SUBROUTINE PMPI_File_iread_at(fh, offset, buf, count, datatype, request, ierror)
            USE MPI_CONSTANTS, ONLY: MPI_OFFSET_KIND
            IMPLICIT NONE
            !GCC$ ATTRIBUTES NO_ARG_CHECK :: buf
            INTEGER :: fh
            INTEGER(KIND=MPI_OFFSET_KIND) :: offset
            REAL :: buf
            INTEGER :: count
            INTEGER :: datatype
            INTEGER :: request
            INTEGER :: ierror
        END SUBROUTINE PMPI_File_iread_at
    END INTERFACE
    
    INTERFACE PMPI_File_iread_at_all
        SUBROUTINE PMPI_File_iread_at_all(fh, offset, buf, count, datatype, request, ierror)
            USE MPI_CONSTANTS, ONLY: MPI_OFFSET_KIND
            IMPLICIT NONE
            !GCC$ ATTRIBUTES NO_ARG_CHECK :: buf
            INTEGER :: fh
            INTEGER(KIND=MPI_OFFSET_KIND) :: offset
            REAL :: buf
            INTEGER :: count
            INTEGER :: datatype
            INTEGER :: request
            INTEGER :: ierror
        END SUBROUTINE PMPI_File_iread_at_all
    END INTERFACE
    
    INTERFACE PMPI_File_iread_shared
        SUBROUTINE PMPI_File_iread_shared(fh, buf, count, datatype, request, ierror)
            IMPLICIT NONE
            !GCC$ ATTRIBUTES NO_ARG_CHECK :: buf
            INTEGER :: fh
            REAL :: buf
            INTEGER :: count
            INTEGER :: datatype
            INTEGER :: request
            INTEGER :: ierror
        END SUBROUTINE PMPI_File_iread_shared
    END INTERFACE
    
    INTERFACE PMPI_File_iwrite
        SUBROUTINE PMPI_File_iwrite(fh, buf, count, datatype, request, ierror)
            IMPLICIT NONE
            !GCC$ ATTRIBUTES NO_ARG_CHECK :: buf
            INTEGER :: fh
            REAL :: buf
            INTEGER :: count
            INTEGER :: datatype
            INTEGER :: request
            INTEGER :: ierror
        END SUBROUTINE PMPI_File_iwrite
    END INTERFACE
    
    INTERFACE PMPI_File_iwrite_all
        SUBROUTINE PMPI_File_iwrite_all(fh, buf, count, datatype, request, ierror)
            IMPLICIT NONE
            !GCC$ ATTRIBUTES NO_ARG_CHECK :: buf
            INTEGER :: fh
            REAL :: buf
            INTEGER :: count
            INTEGER :: datatype
            INTEGER :: request
            INTEGER :: ierror
        END SUBROUTINE PMPI_File_iwrite_all
    END INTERFACE
    
    INTERFACE PMPI_File_iwrite_at
        SUBROUTINE PMPI_File_iwrite_at(fh, offset, buf, count, datatype, request, ierror)
            USE MPI_CONSTANTS, ONLY: MPI_OFFSET_KIND
            IMPLICIT NONE
            !GCC$ ATTRIBUTES NO_ARG_CHECK :: buf
            INTEGER :: fh
            INTEGER(KIND=MPI_OFFSET_KIND) :: offset
            REAL :: buf
            INTEGER :: count
            INTEGER :: datatype
            INTEGER :: request
            INTEGER :: ierror
        END SUBROUTINE PMPI_File_iwrite_at
    END INTERFACE
    
    INTERFACE PMPI_File_iwrite_at_all
        SUBROUTINE PMPI_File_iwrite_at_all(fh, offset, buf, count, datatype, request, ierror)
            USE MPI_CONSTANTS, ONLY: MPI_OFFSET_KIND
            IMPLICIT NONE
            !GCC$ ATTRIBUTES NO_ARG_CHECK :: buf
            INTEGER :: fh
            INTEGER(KIND=MPI_OFFSET_KIND) :: offset
            REAL :: buf
            INTEGER :: count
            INTEGER :: datatype
            INTEGER :: request
            INTEGER :: ierror
        END SUBROUTINE PMPI_File_iwrite_at_all
    END INTERFACE
    
    INTERFACE PMPI_File_iwrite_shared
        SUBROUTINE PMPI_File_iwrite_shared(fh, buf, count, datatype, request, ierror)
            IMPLICIT NONE
            !GCC$ ATTRIBUTES NO_ARG_CHECK :: buf
            INTEGER :: fh
            REAL :: buf
            INTEGER :: count
            INTEGER :: datatype
            INTEGER :: request
            INTEGER :: ierror
        END SUBROUTINE PMPI_File_iwrite_shared
    END INTERFACE
    
    INTERFACE PMPI_File_open
        SUBROUTINE PMPI_File_open(comm, filename, amode, info, fh, ierror)
            IMPLICIT NONE
            INTEGER :: comm
            CHARACTER*(*) :: filename
            INTEGER :: amode
            INTEGER :: info
            INTEGER :: fh
            INTEGER :: ierror
        END SUBROUTINE PMPI_File_open
    END INTERFACE
    
    INTERFACE PMPI_File_preallocate
        SUBROUTINE PMPI_File_preallocate(fh, size, ierror)
            USE MPI_CONSTANTS, ONLY: MPI_OFFSET_KIND
            IMPLICIT NONE
            INTEGER :: fh
            INTEGER(KIND=MPI_OFFSET_KIND) :: size
            INTEGER :: ierror
        END SUBROUTINE PMPI_File_preallocate
    END INTERFACE
    
    INTERFACE PMPI_File_read
        SUBROUTINE PMPI_File_read(fh, buf, count, datatype, status, ierror)
            USE MPI_CONSTANTS, ONLY: MPI_STATUS_SIZE
            IMPLICIT NONE
            !GCC$ ATTRIBUTES NO_ARG_CHECK :: buf
            INTEGER :: fh
            REAL :: buf
            INTEGER :: count
            INTEGER :: datatype
            INTEGER :: status(MPI_STATUS_SIZE)
            INTEGER :: ierror
        END SUBROUTINE PMPI_File_read
    END INTERFACE
    
    INTERFACE PMPI_File_read_all
        SUBROUTINE PMPI_File_read_all(fh, buf, count, datatype, status, ierror)
            USE MPI_CONSTANTS, ONLY: MPI_STATUS_SIZE
            IMPLICIT NONE
            !GCC$ ATTRIBUTES NO_ARG_CHECK :: buf
            INTEGER :: fh
            REAL :: buf
            INTEGER :: count
            INTEGER :: datatype
            INTEGER :: status(MPI_STATUS_SIZE)
            INTEGER :: ierror
        END SUBROUTINE PMPI_File_read_all
    END INTERFACE
    
    INTERFACE PMPI_File_read_all_begin
        SUBROUTINE PMPI_File_read_all_begin(fh, buf, count, datatype, ierror)
            IMPLICIT NONE
            !GCC$ ATTRIBUTES NO_ARG_CHECK :: buf
            INTEGER :: fh
            REAL :: buf
            INTEGER :: count
            INTEGER :: datatype
            INTEGER :: ierror
        END SUBROUTINE PMPI_File_read_all_begin
    END INTERFACE
    
    INTERFACE PMPI_File_read_all_end
        SUBROUTINE PMPI_File_read_all_end(fh, buf, status, ierror)
            USE MPI_CONSTANTS, ONLY: MPI_STATUS_SIZE
            IMPLICIT NONE
            !GCC$ ATTRIBUTES NO_ARG_CHECK :: buf
            INTEGER :: fh
            REAL :: buf
            INTEGER :: status(MPI_STATUS_SIZE)
            INTEGER :: ierror
        END SUBROUTINE PMPI_File_read_all_end
    END INTERFACE
    
    INTERFACE PMPI_File_read_at
        SUBROUTINE PMPI_File_read_at(fh, offset, buf, count, datatype, status, ierror)
            USE MPI_CONSTANTS, ONLY: MPI_OFFSET_KIND, MPI_STATUS_SIZE
            IMPLICIT NONE
            !GCC$ ATTRIBUTES NO_ARG_CHECK :: buf
            INTEGER :: fh
            INTEGER(KIND=MPI_OFFSET_KIND) :: offset
            REAL :: buf
            INTEGER :: count
            INTEGER :: datatype
            INTEGER :: status(MPI_STATUS_SIZE)
            INTEGER :: ierror
        END SUBROUTINE PMPI_File_read_at
    END INTERFACE
    
    INTERFACE PMPI_File_read_at_all
        SUBROUTINE PMPI_File_read_at_all(fh, offset, buf, count, datatype, status, ierror)
            USE MPI_CONSTANTS, ONLY: MPI_OFFSET_KIND, MPI_STATUS_SIZE
            IMPLICIT NONE
            !GCC$ ATTRIBUTES NO_ARG_CHECK :: buf
            INTEGER :: fh
            INTEGER(KIND=MPI_OFFSET_KIND) :: offset
            REAL :: buf
            INTEGER :: count
            INTEGER :: datatype
            INTEGER :: status(MPI_STATUS_SIZE)
            INTEGER :: ierror
        END SUBROUTINE PMPI_File_read_at_all
    END INTERFACE
    
    INTERFACE PMPI_File_read_at_all_begin
        SUBROUTINE PMPI_File_read_at_all_begin(fh, offset, buf, count, datatype, ierror)
            USE MPI_CONSTANTS, ONLY: MPI_OFFSET_KIND
            IMPLICIT NONE
            !GCC$ ATTRIBUTES NO_ARG_CHECK :: buf
            INTEGER :: fh
            INTEGER(KIND=MPI_OFFSET_KIND) :: offset
            REAL :: buf
            INTEGER :: count
            INTEGER :: datatype
            INTEGER :: ierror
        END SUBROUTINE PMPI_File_read_at_all_begin
    END INTERFACE
    
    INTERFACE PMPI_File_read_at_all_end
        SUBROUTINE PMPI_File_read_at_all_end(fh, buf, status, ierror)
            USE MPI_CONSTANTS, ONLY: MPI_STATUS_SIZE
            IMPLICIT NONE
            !GCC$ ATTRIBUTES NO_ARG_CHECK :: buf
            INTEGER :: fh
            REAL :: buf
            INTEGER :: status(MPI_STATUS_SIZE)
            INTEGER :: ierror
        END SUBROUTINE PMPI_File_read_at_all_end
    END INTERFACE
    
    INTERFACE PMPI_File_read_ordered
        SUBROUTINE PMPI_File_read_ordered(fh, buf, count, datatype, status, ierror)
            USE MPI_CONSTANTS, ONLY: MPI_STATUS_SIZE
            IMPLICIT NONE
            !GCC$ ATTRIBUTES NO_ARG_CHECK :: buf
            INTEGER :: fh
            REAL :: buf
            INTEGER :: count
            INTEGER :: datatype
            INTEGER :: status(MPI_STATUS_SIZE)
            INTEGER :: ierror
        END SUBROUTINE PMPI_File_read_ordered
    END INTERFACE
    
    INTERFACE PMPI_File_read_ordered_begin
        SUBROUTINE PMPI_File_read_ordered_begin(fh, buf, count, datatype, ierror)
            IMPLICIT NONE
            !GCC$ ATTRIBUTES NO_ARG_CHECK :: buf
            INTEGER :: fh
            REAL :: buf
            INTEGER :: count
            INTEGER :: datatype
            INTEGER :: ierror
        END SUBROUTINE PMPI_File_read_ordered_begin
    END INTERFACE
    
    INTERFACE PMPI_File_read_ordered_end
        SUBROUTINE PMPI_File_read_ordered_end(fh, buf, status, ierror)
            USE MPI_CONSTANTS, ONLY: MPI_STATUS_SIZE
            IMPLICIT NONE
            !GCC$ ATTRIBUTES NO_ARG_CHECK :: buf
            INTEGER :: fh
            REAL :: buf
            INTEGER :: status(MPI_STATUS_SIZE)
            INTEGER :: ierror
        END SUBROUTINE PMPI_File_read_ordered_end
    END INTERFACE
    
    INTERFACE PMPI_File_read_shared
        SUBROUTINE PMPI_File_read_shared(fh, buf, count, datatype, status, ierror)
            USE MPI_CONSTANTS, ONLY: MPI_STATUS_SIZE
            IMPLICIT NONE
            !GCC$ ATTRIBUTES NO_ARG_CHECK :: buf
            INTEGER :: fh
            REAL :: buf
            INTEGER :: count
            INTEGER :: datatype
            INTEGER :: status(MPI_STATUS_SIZE)
            INTEGER :: ierror
        END SUBROUTINE PMPI_File_read_shared
    END INTERFACE
    
    INTERFACE PMPI_File_seek
        SUBROUTINE PMPI_File_seek(fh, offset, whence, ierror)
            USE MPI_CONSTANTS, ONLY: MPI_OFFSET_KIND
            IMPLICIT NONE
            INTEGER :: fh
            INTEGER(KIND=MPI_OFFSET_KIND) :: offset
            INTEGER :: whence
            INTEGER :: ierror
        END SUBROUTINE PMPI_File_seek
    END INTERFACE
    
    INTERFACE PMPI_File_seek_shared
        SUBROUTINE PMPI_File_seek_shared(fh, offset, whence, ierror)
            USE MPI_CONSTANTS, ONLY: MPI_OFFSET_KIND
            IMPLICIT NONE
            INTEGER :: fh
            INTEGER(KIND=MPI_OFFSET_KIND) :: offset
            INTEGER :: whence
            INTEGER :: ierror
        END SUBROUTINE PMPI_File_seek_shared
    END INTERFACE
    
    INTERFACE PMPI_File_set_atomicity
        SUBROUTINE PMPI_File_set_atomicity(fh, flag, ierror)
            IMPLICIT NONE
            INTEGER :: fh
            LOGICAL :: flag
            INTEGER :: ierror
        END SUBROUTINE PMPI_File_set_atomicity
    END INTERFACE
    
    INTERFACE PMPI_File_set_info
        SUBROUTINE PMPI_File_set_info(fh, info, ierror)
            IMPLICIT NONE
            INTEGER :: fh
            INTEGER :: info
            INTEGER :: ierror
        END SUBROUTINE PMPI_File_set_info
    END INTERFACE
    
    INTERFACE PMPI_File_set_size
        SUBROUTINE PMPI_File_set_size(fh, size, ierror)
            USE MPI_CONSTANTS, ONLY: MPI_OFFSET_KIND
            IMPLICIT NONE
            INTEGER :: fh
            INTEGER(KIND=MPI_OFFSET_KIND) :: size
            INTEGER :: ierror
        END SUBROUTINE PMPI_File_set_size
    END INTERFACE
    
    INTERFACE PMPI_File_set_view
        SUBROUTINE PMPI_File_set_view(fh, disp, etype, filetype, datarep, info, ierror)
            USE MPI_CONSTANTS, ONLY: MPI_OFFSET_KIND
            IMPLICIT NONE
            INTEGER :: fh
            INTEGER(KIND=MPI_OFFSET_KIND) :: disp
            INTEGER :: etype
            INTEGER :: filetype
            CHARACTER*(*) :: datarep
            INTEGER :: info
            INTEGER :: ierror
        END SUBROUTINE PMPI_File_set_view
    END INTERFACE
    
    INTERFACE PMPI_File_sync
        SUBROUTINE PMPI_File_sync(fh, ierror)
            IMPLICIT NONE
            INTEGER :: fh
            INTEGER :: ierror
        END SUBROUTINE PMPI_File_sync
    END INTERFACE
    
    INTERFACE PMPI_File_write
        SUBROUTINE PMPI_File_write(fh, buf, count, datatype, status, ierror)
            USE MPI_CONSTANTS, ONLY: MPI_STATUS_SIZE
            IMPLICIT NONE
            !GCC$ ATTRIBUTES NO_ARG_CHECK :: buf
            INTEGER :: fh
            REAL :: buf
            INTEGER :: count
            INTEGER :: datatype
            INTEGER :: status(MPI_STATUS_SIZE)
            INTEGER :: ierror
        END SUBROUTINE PMPI_File_write
    END INTERFACE
    
    INTERFACE PMPI_File_write_all
        SUBROUTINE PMPI_File_write_all(fh, buf, count, datatype, status, ierror)
            USE MPI_CONSTANTS, ONLY: MPI_STATUS_SIZE
            IMPLICIT NONE
            !GCC$ ATTRIBUTES NO_ARG_CHECK :: buf
            INTEGER :: fh
            REAL :: buf
            INTEGER :: count
            INTEGER :: datatype
            INTEGER :: status(MPI_STATUS_SIZE)
            INTEGER :: ierror
        END SUBROUTINE PMPI_File_write_all
    END INTERFACE
    
    INTERFACE PMPI_File_write_all_begin
        SUBROUTINE PMPI_File_write_all_begin(fh, buf, count, datatype, ierror)
            IMPLICIT NONE
            !GCC$ ATTRIBUTES NO_ARG_CHECK :: buf
            INTEGER :: fh
            REAL :: buf
            INTEGER :: count
            INTEGER :: datatype
            INTEGER :: ierror
        END SUBROUTINE PMPI_File_write_all_begin
    END INTERFACE
    
    INTERFACE PMPI_File_write_all_end
        SUBROUTINE PMPI_File_write_all_end(fh, buf, status, ierror)
            USE MPI_CONSTANTS, ONLY: MPI_STATUS_SIZE
            IMPLICIT NONE
            !GCC$ ATTRIBUTES NO_ARG_CHECK :: buf
            INTEGER :: fh
            REAL :: buf
            INTEGER :: status(MPI_STATUS_SIZE)
            INTEGER :: ierror
        END SUBROUTINE PMPI_File_write_all_end
    END INTERFACE
    
    INTERFACE PMPI_File_write_at
        SUBROUTINE PMPI_File_write_at(fh, offset, buf, count, datatype, status, ierror)
            USE MPI_CONSTANTS, ONLY: MPI_OFFSET_KIND, MPI_STATUS_SIZE
            IMPLICIT NONE
            !GCC$ ATTRIBUTES NO_ARG_CHECK :: buf
            INTEGER :: fh
            INTEGER(KIND=MPI_OFFSET_KIND) :: offset
            REAL :: buf
            INTEGER :: count
            INTEGER :: datatype
            INTEGER :: status(MPI_STATUS_SIZE)
            INTEGER :: ierror
        END SUBROUTINE PMPI_File_write_at
    END INTERFACE
    
    INTERFACE PMPI_File_write_at_all
        SUBROUTINE PMPI_File_write_at_all(fh, offset, buf, count, datatype, status, ierror)
            USE MPI_CONSTANTS, ONLY: MPI_OFFSET_KIND, MPI_STATUS_SIZE
            IMPLICIT NONE
            !GCC$ ATTRIBUTES NO_ARG_CHECK :: buf
            INTEGER :: fh
            INTEGER(KIND=MPI_OFFSET_KIND) :: offset
            REAL :: buf
            INTEGER :: count
            INTEGER :: datatype
            INTEGER :: status(MPI_STATUS_SIZE)
            INTEGER :: ierror
        END SUBROUTINE PMPI_File_write_at_all
    END INTERFACE
    
    INTERFACE PMPI_File_write_at_all_begin
        SUBROUTINE PMPI_File_write_at_all_begin(fh, offset, buf, count, datatype, ierror)
            USE MPI_CONSTANTS, ONLY: MPI_OFFSET_KIND
            IMPLICIT NONE
            !GCC$ ATTRIBUTES NO_ARG_CHECK :: buf
            INTEGER :: fh
            INTEGER(KIND=MPI_OFFSET_KIND) :: offset
            REAL :: buf
            INTEGER :: count
            INTEGER :: datatype
            INTEGER :: ierror
        END SUBROUTINE PMPI_File_write_at_all_begin
    END INTERFACE
    
    INTERFACE PMPI_File_write_at_all_end
        SUBROUTINE PMPI_File_write_at_all_end(fh, buf, status, ierror)
            USE MPI_CONSTANTS, ONLY: MPI_STATUS_SIZE
            IMPLICIT NONE
            !GCC$ ATTRIBUTES NO_ARG_CHECK :: buf
            INTEGER :: fh
            REAL :: buf
            INTEGER :: status(MPI_STATUS_SIZE)
            INTEGER :: ierror
        END SUBROUTINE PMPI_File_write_at_all_end
    END INTERFACE
    
    INTERFACE PMPI_File_write_ordered
        SUBROUTINE PMPI_File_write_ordered(fh, buf, count, datatype, status, ierror)
            USE MPI_CONSTANTS, ONLY: MPI_STATUS_SIZE
            IMPLICIT NONE
            !GCC$ ATTRIBUTES NO_ARG_CHECK :: buf
            INTEGER :: fh
            REAL :: buf
            INTEGER :: count
            INTEGER :: datatype
            INTEGER :: status(MPI_STATUS_SIZE)
            INTEGER :: ierror
        END SUBROUTINE PMPI_File_write_ordered
    END INTERFACE
    
    INTERFACE PMPI_File_write_ordered_begin
        SUBROUTINE PMPI_File_write_ordered_begin(fh, buf, count, datatype, ierror)
            IMPLICIT NONE
            !GCC$ ATTRIBUTES NO_ARG_CHECK :: buf
            INTEGER :: fh
            REAL :: buf
            INTEGER :: count
            INTEGER :: datatype
            INTEGER :: ierror
        END SUBROUTINE PMPI_File_write_ordered_begin
    END INTERFACE
    
    INTERFACE PMPI_File_write_ordered_end
        SUBROUTINE PMPI_File_write_ordered_end(fh, buf, status, ierror)
            USE MPI_CONSTANTS, ONLY: MPI_STATUS_SIZE
            IMPLICIT NONE
            !GCC$ ATTRIBUTES NO_ARG_CHECK :: buf
            INTEGER :: fh
            REAL :: buf
            INTEGER :: status(MPI_STATUS_SIZE)
            INTEGER :: ierror
        END SUBROUTINE PMPI_File_write_ordered_end
    END INTERFACE
    
    INTERFACE PMPI_File_write_shared
        SUBROUTINE PMPI_File_write_shared(fh, buf, count, datatype, status, ierror)
            USE MPI_CONSTANTS, ONLY: MPI_STATUS_SIZE
            IMPLICIT NONE
            !GCC$ ATTRIBUTES NO_ARG_CHECK :: buf
            INTEGER :: fh
            REAL :: buf
            INTEGER :: count
            INTEGER :: datatype
            INTEGER :: status(MPI_STATUS_SIZE)
            INTEGER :: ierror
        END SUBROUTINE PMPI_File_write_shared
    END INTERFACE
    
    INTERFACE PMPI_Register_datarep
        SUBROUTINE PMPI_Register_datarep(datarep, read_conversion_fn, write_conversion_fn, &
                                         dtype_file_extent_fn, extra_state, ierror)
            USE MPI_CONSTANTS, ONLY: MPI_ADDRESS_KIND
            IMPLICIT NONE
            CHARACTER*(*) :: datarep
            EXTERNAL :: read_conversion_fn
            EXTERNAL :: write_conversion_fn
            EXTERNAL :: dtype_file_extent_fn
            INTEGER(KIND=MPI_ADDRESS_KIND) :: extra_state
            INTEGER :: ierror
        END SUBROUTINE PMPI_Register_datarep
    END INTERFACE
    
    INTERFACE PMPI_Aint_add
        FUNCTION PMPI_Aint_add(base, disp) result(res)
            USE MPI_CONSTANTS, ONLY: MPI_ADDRESS_KIND
            IMPLICIT NONE
            INTEGER(KIND=MPI_ADDRESS_KIND) :: base
            INTEGER(KIND=MPI_ADDRESS_KIND) :: disp
            INTEGER(KIND=MPI_ADDRESS_KIND) :: res
        END FUNCTION PMPI_Aint_add
    END INTERFACE
    
    INTERFACE PMPI_Aint_diff
        FUNCTION PMPI_Aint_diff(addr1, addr2) result(res)
            USE MPI_CONSTANTS, ONLY: MPI_ADDRESS_KIND
            IMPLICIT NONE
            INTEGER(KIND=MPI_ADDRESS_KIND) :: addr1
            INTEGER(KIND=MPI_ADDRESS_KIND) :: addr2
            INTEGER(KIND=MPI_ADDRESS_KIND) :: res
        END FUNCTION PMPI_Aint_diff
    END INTERFACE
    
    INTERFACE PMPI_Get_library_version
        SUBROUTINE PMPI_Get_library_version(version, resultlen, ierror)
            IMPLICIT NONE
            CHARACTER*(*) :: version
            INTEGER :: resultlen
            INTEGER :: ierror
        END SUBROUTINE PMPI_Get_library_version
    END INTERFACE
    
    INTERFACE PMPI_Get_processor_name
        SUBROUTINE PMPI_Get_processor_name(name, resultlen, ierror)
            IMPLICIT NONE
            CHARACTER*(*) :: name
            INTEGER :: resultlen
            INTEGER :: ierror
        END SUBROUTINE PMPI_Get_processor_name
    END INTERFACE
    
    INTERFACE PMPI_Get_version
        SUBROUTINE PMPI_Get_version(version, subversion, ierror)
            IMPLICIT NONE
            INTEGER :: version
            INTEGER :: subversion
            INTEGER :: ierror
        END SUBROUTINE PMPI_Get_version
    END INTERFACE
    
    INTERFACE PMPIX_GPU_query_support
        SUBROUTINE PMPIX_GPU_query_support(gpu_type, is_supported, ierror)
            IMPLICIT NONE
            INTEGER :: gpu_type
            LOGICAL :: is_supported
            INTEGER :: ierror
        END SUBROUTINE PMPIX_GPU_query_support
    END INTERFACE
    
    INTERFACE PMPIX_Query_cuda_support
        SUBROUTINE PMPIX_Query_cuda_support(ierror)
            IMPLICIT NONE
            INTEGER :: ierror
        END SUBROUTINE PMPIX_Query_cuda_support
    END INTERFACE
    
    INTERFACE PMPIX_Query_ze_support
        SUBROUTINE PMPIX_Query_ze_support(ierror)
            IMPLICIT NONE
            INTEGER :: ierror
        END SUBROUTINE PMPIX_Query_ze_support
    END INTERFACE
    
    INTERFACE PMPIX_Query_hip_support
        SUBROUTINE PMPIX_Query_hip_support(ierror)
            IMPLICIT NONE
            INTEGER :: ierror
        END SUBROUTINE PMPIX_Query_hip_support
    END INTERFACE
    
    INTERFACE PMPI_Op_commutative
        SUBROUTINE PMPI_Op_commutative(op, commute, ierror)
            IMPLICIT NONE
            INTEGER :: op
            LOGICAL :: commute
            INTEGER :: ierror
        END SUBROUTINE PMPI_Op_commutative
    END INTERFACE
    
    INTERFACE PMPI_Op_create
        SUBROUTINE PMPI_Op_create(user_fn, commute, op, ierror)
            IMPLICIT NONE
            EXTERNAL :: user_fn
            LOGICAL :: commute
            INTEGER :: op
            INTEGER :: ierror
        END SUBROUTINE PMPI_Op_create
    END INTERFACE
    
    INTERFACE PMPI_Op_free
        SUBROUTINE PMPI_Op_free(op, ierror)
            IMPLICIT NONE
            INTEGER :: op
            INTEGER :: ierror
        END SUBROUTINE PMPI_Op_free
    END INTERFACE
    
    INTERFACE PMPI_Parrived
        SUBROUTINE PMPI_Parrived(request, partition, flag, ierror)
            IMPLICIT NONE
            INTEGER :: request
            INTEGER :: partition
            LOGICAL :: flag
            INTEGER :: ierror
        END SUBROUTINE PMPI_Parrived
    END INTERFACE
    
    INTERFACE PMPI_Pready
        SUBROUTINE PMPI_Pready(partition, request, ierror)
            IMPLICIT NONE
            INTEGER :: partition
            INTEGER :: request
            INTEGER :: ierror
        END SUBROUTINE PMPI_Pready
    END INTERFACE
    
    INTERFACE PMPI_Pready_list
        SUBROUTINE PMPI_Pready_list(length, array_of_partitions, request, ierror)
            IMPLICIT NONE
            INTEGER :: length
            INTEGER :: array_of_partitions(length)
            INTEGER :: request
            INTEGER :: ierror
        END SUBROUTINE PMPI_Pready_list
    END INTERFACE
    
    INTERFACE PMPI_Pready_range
        SUBROUTINE PMPI_Pready_range(partition_low, partition_high, request, ierror)
            IMPLICIT NONE
            INTEGER :: partition_low
            INTEGER :: partition_high
            INTEGER :: request
            INTEGER :: ierror
        END SUBROUTINE PMPI_Pready_range
    END INTERFACE
    
    INTERFACE PMPI_Precv_init
        SUBROUTINE PMPI_Precv_init(buf, partitions, count, datatype, dest, tag, comm, info, request, &
                                   ierror)
            USE MPI_CONSTANTS, ONLY: MPI_COUNT_KIND
            IMPLICIT NONE
            !GCC$ ATTRIBUTES NO_ARG_CHECK :: buf
            REAL :: buf
            INTEGER :: partitions
            INTEGER(KIND=MPI_COUNT_KIND) :: count
            INTEGER :: datatype
            INTEGER :: dest
            INTEGER :: tag
            INTEGER :: comm
            INTEGER :: info
            INTEGER :: request
            INTEGER :: ierror
        END SUBROUTINE PMPI_Precv_init
    END INTERFACE
    
    INTERFACE PMPI_Psend_init
        SUBROUTINE PMPI_Psend_init(buf, partitions, count, datatype, dest, tag, comm, info, request, &
                                   ierror)
            USE MPI_CONSTANTS, ONLY: MPI_COUNT_KIND
            IMPLICIT NONE
            !GCC$ ATTRIBUTES NO_ARG_CHECK :: buf
            REAL :: buf
            INTEGER :: partitions
            INTEGER(KIND=MPI_COUNT_KIND) :: count
            INTEGER :: datatype
            INTEGER :: dest
            INTEGER :: tag
            INTEGER :: comm
            INTEGER :: info
            INTEGER :: request
            INTEGER :: ierror
        END SUBROUTINE PMPI_Psend_init
    END INTERFACE
    
    INTERFACE PMPI_Bsend
        SUBROUTINE PMPI_Bsend(buf, count, datatype, dest, tag, comm, ierror)
            IMPLICIT NONE
            !GCC$ ATTRIBUTES NO_ARG_CHECK :: buf
            REAL :: buf
            INTEGER :: count
            INTEGER :: datatype
            INTEGER :: dest
            INTEGER :: tag
            INTEGER :: comm
            INTEGER :: ierror
        END SUBROUTINE PMPI_Bsend
    END INTERFACE
    
    INTERFACE PMPI_Bsend_init
        SUBROUTINE PMPI_Bsend_init(buf, count, datatype, dest, tag, comm, request, ierror)
            IMPLICIT NONE
            !GCC$ ATTRIBUTES NO_ARG_CHECK :: buf
            REAL :: buf
            INTEGER :: count
            INTEGER :: datatype
            INTEGER :: dest
            INTEGER :: tag
            INTEGER :: comm
            INTEGER :: request
            INTEGER :: ierror
        END SUBROUTINE PMPI_Bsend_init
    END INTERFACE
    
    INTERFACE PMPI_Buffer_attach
        SUBROUTINE PMPI_Buffer_attach(buffer, size, ierror)
            IMPLICIT NONE
            !GCC$ ATTRIBUTES NO_ARG_CHECK :: buffer
            REAL :: buffer
            INTEGER :: size
            INTEGER :: ierror
        END SUBROUTINE PMPI_Buffer_attach
    END INTERFACE
    
    INTERFACE PMPI_Buffer_detach
        SUBROUTINE PMPI_Buffer_detach(buffer_addr, size, ierror)
            IMPLICIT NONE
            !GCC$ ATTRIBUTES NO_ARG_CHECK :: buffer_addr
            REAL :: buffer_addr
            INTEGER :: size
            INTEGER :: ierror
        END SUBROUTINE PMPI_Buffer_detach
    END INTERFACE
    
    INTERFACE PMPI_Buffer_flush
        SUBROUTINE PMPI_Buffer_flush(ierror)
            IMPLICIT NONE
            INTEGER :: ierror
        END SUBROUTINE PMPI_Buffer_flush
    END INTERFACE
    
    INTERFACE PMPI_Buffer_iflush
        SUBROUTINE PMPI_Buffer_iflush(request, ierror)
            IMPLICIT NONE
            INTEGER :: request
            INTEGER :: ierror
        END SUBROUTINE PMPI_Buffer_iflush
    END INTERFACE
    
    INTERFACE PMPI_Comm_attach_buffer
        SUBROUTINE PMPI_Comm_attach_buffer(comm, buffer, size, ierror)
            IMPLICIT NONE
            !GCC$ ATTRIBUTES NO_ARG_CHECK :: buffer
            INTEGER :: comm
            REAL :: buffer
            INTEGER :: size
            INTEGER :: ierror
        END SUBROUTINE PMPI_Comm_attach_buffer
    END INTERFACE
    
    INTERFACE PMPI_Comm_detach_buffer
        SUBROUTINE PMPI_Comm_detach_buffer(comm, buffer_addr, size, ierror)
            IMPLICIT NONE
            !GCC$ ATTRIBUTES NO_ARG_CHECK :: buffer_addr
            INTEGER :: comm
            REAL :: buffer_addr
            INTEGER :: size
            INTEGER :: ierror
        END SUBROUTINE PMPI_Comm_detach_buffer
    END INTERFACE
    
    INTERFACE PMPI_Comm_flush_buffer
        SUBROUTINE PMPI_Comm_flush_buffer(comm, ierror)
            IMPLICIT NONE
            INTEGER :: comm
            INTEGER :: ierror
        END SUBROUTINE PMPI_Comm_flush_buffer
    END INTERFACE
    
    INTERFACE PMPI_Comm_iflush_buffer
        SUBROUTINE PMPI_Comm_iflush_buffer(comm, request, ierror)
            IMPLICIT NONE
            INTEGER :: comm
            INTEGER :: request
            INTEGER :: ierror
        END SUBROUTINE PMPI_Comm_iflush_buffer
    END INTERFACE
    
    INTERFACE PMPI_Ibsend
        SUBROUTINE PMPI_Ibsend(buf, count, datatype, dest, tag, comm, request, ierror)
            IMPLICIT NONE
            !GCC$ ATTRIBUTES NO_ARG_CHECK :: buf
            REAL :: buf
            INTEGER :: count
            INTEGER :: datatype
            INTEGER :: dest
            INTEGER :: tag
            INTEGER :: comm
            INTEGER :: request
            INTEGER :: ierror
        END SUBROUTINE PMPI_Ibsend
    END INTERFACE
    
    INTERFACE PMPI_Improbe
        SUBROUTINE PMPI_Improbe(source, tag, comm, flag, message, status, ierror)
            USE MPI_CONSTANTS, ONLY: MPI_STATUS_SIZE
            IMPLICIT NONE
            INTEGER :: source
            INTEGER :: tag
            INTEGER :: comm
            LOGICAL :: flag
            INTEGER :: message
            INTEGER :: status(MPI_STATUS_SIZE)
            INTEGER :: ierror
        END SUBROUTINE PMPI_Improbe
    END INTERFACE
    
    INTERFACE PMPI_Imrecv
        SUBROUTINE PMPI_Imrecv(buf, count, datatype, message, request, ierror)
            IMPLICIT NONE
            !GCC$ ATTRIBUTES NO_ARG_CHECK :: buf
            REAL :: buf
            INTEGER :: count
            INTEGER :: datatype
            INTEGER :: message
            INTEGER :: request
            INTEGER :: ierror
        END SUBROUTINE PMPI_Imrecv
    END INTERFACE
    
    INTERFACE PMPI_Iprobe
        SUBROUTINE PMPI_Iprobe(source, tag, comm, flag, status, ierror)
            USE MPI_CONSTANTS, ONLY: MPI_STATUS_SIZE
            IMPLICIT NONE
            INTEGER :: source
            INTEGER :: tag
            INTEGER :: comm
            LOGICAL :: flag
            INTEGER :: status(MPI_STATUS_SIZE)
            INTEGER :: ierror
        END SUBROUTINE PMPI_Iprobe
    END INTERFACE
    
    INTERFACE PMPI_Irecv
        SUBROUTINE PMPI_Irecv(buf, count, datatype, source, tag, comm, request, ierror)
            IMPLICIT NONE
            !GCC$ ATTRIBUTES NO_ARG_CHECK :: buf
            REAL :: buf
            INTEGER :: count
            INTEGER :: datatype
            INTEGER :: source
            INTEGER :: tag
            INTEGER :: comm
            INTEGER :: request
            INTEGER :: ierror
        END SUBROUTINE PMPI_Irecv
    END INTERFACE
    
    INTERFACE PMPI_Irsend
        SUBROUTINE PMPI_Irsend(buf, count, datatype, dest, tag, comm, request, ierror)
            IMPLICIT NONE
            !GCC$ ATTRIBUTES NO_ARG_CHECK :: buf
            REAL :: buf
            INTEGER :: count
            INTEGER :: datatype
            INTEGER :: dest
            INTEGER :: tag
            INTEGER :: comm
            INTEGER :: request
            INTEGER :: ierror
        END SUBROUTINE PMPI_Irsend
    END INTERFACE
    
    INTERFACE PMPI_Isend
        SUBROUTINE PMPI_Isend(buf, count, datatype, dest, tag, comm, request, ierror)
            IMPLICIT NONE
            !GCC$ ATTRIBUTES NO_ARG_CHECK :: buf
            REAL :: buf
            INTEGER :: count
            INTEGER :: datatype
            INTEGER :: dest
            INTEGER :: tag
            INTEGER :: comm
            INTEGER :: request
            INTEGER :: ierror
        END SUBROUTINE PMPI_Isend
    END INTERFACE
    
    INTERFACE PMPI_Isendrecv
        SUBROUTINE PMPI_Isendrecv(sendbuf, sendcount, sendtype, dest, sendtag, recvbuf, recvcount, recvtype, &
                                  source, recvtag, comm, request, ierror)
            IMPLICIT NONE
            !GCC$ ATTRIBUTES NO_ARG_CHECK :: sendbuf, recvbuf
            REAL :: sendbuf
            INTEGER :: sendcount
            INTEGER :: sendtype
            INTEGER :: dest
            INTEGER :: sendtag
            REAL :: recvbuf
            INTEGER :: recvcount
            INTEGER :: recvtype
            INTEGER :: source
            INTEGER :: recvtag
            INTEGER :: comm
            INTEGER :: request
            INTEGER :: ierror
        END SUBROUTINE PMPI_Isendrecv
    END INTERFACE
    
    INTERFACE PMPI_Isendrecv_replace
        SUBROUTINE PMPI_Isendrecv_replace(buf, count, datatype, dest, sendtag, source, recvtag, comm, &
                                          request, ierror)
            IMPLICIT NONE
            !GCC$ ATTRIBUTES NO_ARG_CHECK :: buf
            REAL :: buf
            INTEGER :: count
            INTEGER :: datatype
            INTEGER :: dest
            INTEGER :: sendtag
            INTEGER :: source
            INTEGER :: recvtag
            INTEGER :: comm
            INTEGER :: request
            INTEGER :: ierror
        END SUBROUTINE PMPI_Isendrecv_replace
    END INTERFACE
    
    INTERFACE PMPI_Issend
        SUBROUTINE PMPI_Issend(buf, count, datatype, dest, tag, comm, request, ierror)
            IMPLICIT NONE
            !GCC$ ATTRIBUTES NO_ARG_CHECK :: buf
            REAL :: buf
            INTEGER :: count
            INTEGER :: datatype
            INTEGER :: dest
            INTEGER :: tag
            INTEGER :: comm
            INTEGER :: request
            INTEGER :: ierror
        END SUBROUTINE PMPI_Issend
    END INTERFACE
    
    INTERFACE PMPI_Mprobe
        SUBROUTINE PMPI_Mprobe(source, tag, comm, message, status, ierror)
            USE MPI_CONSTANTS, ONLY: MPI_STATUS_SIZE
            IMPLICIT NONE
            INTEGER :: source
            INTEGER :: tag
            INTEGER :: comm
            INTEGER :: message
            INTEGER :: status(MPI_STATUS_SIZE)
            INTEGER :: ierror
        END SUBROUTINE PMPI_Mprobe
    END INTERFACE
    
    INTERFACE PMPI_Mrecv
        SUBROUTINE PMPI_Mrecv(buf, count, datatype, message, status, ierror)
            USE MPI_CONSTANTS, ONLY: MPI_STATUS_SIZE
            IMPLICIT NONE
            !GCC$ ATTRIBUTES NO_ARG_CHECK :: buf
            REAL :: buf
            INTEGER :: count
            INTEGER :: datatype
            INTEGER :: message
            INTEGER :: status(MPI_STATUS_SIZE)
            INTEGER :: ierror
        END SUBROUTINE PMPI_Mrecv
    END INTERFACE
    
    INTERFACE PMPI_Probe
        SUBROUTINE PMPI_Probe(source, tag, comm, status, ierror)
            USE MPI_CONSTANTS, ONLY: MPI_STATUS_SIZE
            IMPLICIT NONE
            INTEGER :: source
            INTEGER :: tag
            INTEGER :: comm
            INTEGER :: status(MPI_STATUS_SIZE)
            INTEGER :: ierror
        END SUBROUTINE PMPI_Probe
    END INTERFACE
    
    INTERFACE PMPI_Recv
        SUBROUTINE PMPI_Recv(buf, count, datatype, source, tag, comm, status, ierror)
            USE MPI_CONSTANTS, ONLY: MPI_STATUS_SIZE
            IMPLICIT NONE
            !GCC$ ATTRIBUTES NO_ARG_CHECK :: buf
            REAL :: buf
            INTEGER :: count
            INTEGER :: datatype
            INTEGER :: source
            INTEGER :: tag
            INTEGER :: comm
            INTEGER :: status(MPI_STATUS_SIZE)
            INTEGER :: ierror
        END SUBROUTINE PMPI_Recv
    END INTERFACE
    
    INTERFACE PMPI_Recv_init
        SUBROUTINE PMPI_Recv_init(buf, count, datatype, source, tag, comm, request, ierror)
            IMPLICIT NONE
            !GCC$ ATTRIBUTES NO_ARG_CHECK :: buf
            REAL :: buf
            INTEGER :: count
            INTEGER :: datatype
            INTEGER :: source
            INTEGER :: tag
            INTEGER :: comm
            INTEGER :: request
            INTEGER :: ierror
        END SUBROUTINE PMPI_Recv_init
    END INTERFACE
    
    INTERFACE PMPI_Rsend
        SUBROUTINE PMPI_Rsend(buf, count, datatype, dest, tag, comm, ierror)
            IMPLICIT NONE
            !GCC$ ATTRIBUTES NO_ARG_CHECK :: buf
            REAL :: buf
            INTEGER :: count
            INTEGER :: datatype
            INTEGER :: dest
            INTEGER :: tag
            INTEGER :: comm
            INTEGER :: ierror
        END SUBROUTINE PMPI_Rsend
    END INTERFACE
    
    INTERFACE PMPI_Rsend_init
        SUBROUTINE PMPI_Rsend_init(buf, count, datatype, dest, tag, comm, request, ierror)
            IMPLICIT NONE
            !GCC$ ATTRIBUTES NO_ARG_CHECK :: buf
            REAL :: buf
            INTEGER :: count
            INTEGER :: datatype
            INTEGER :: dest
            INTEGER :: tag
            INTEGER :: comm
            INTEGER :: request
            INTEGER :: ierror
        END SUBROUTINE PMPI_Rsend_init
    END INTERFACE
    
    INTERFACE PMPI_Send
        SUBROUTINE PMPI_Send(buf, count, datatype, dest, tag, comm, ierror)
            IMPLICIT NONE
            !GCC$ ATTRIBUTES NO_ARG_CHECK :: buf
            REAL :: buf
            INTEGER :: count
            INTEGER :: datatype
            INTEGER :: dest
            INTEGER :: tag
            INTEGER :: comm
            INTEGER :: ierror
        END SUBROUTINE PMPI_Send
    END INTERFACE
    
    INTERFACE PMPI_Send_init
        SUBROUTINE PMPI_Send_init(buf, count, datatype, dest, tag, comm, request, ierror)
            IMPLICIT NONE
            !GCC$ ATTRIBUTES NO_ARG_CHECK :: buf
            REAL :: buf
            INTEGER :: count
            INTEGER :: datatype
            INTEGER :: dest
            INTEGER :: tag
            INTEGER :: comm
            INTEGER :: request
            INTEGER :: ierror
        END SUBROUTINE PMPI_Send_init
    END INTERFACE
    
    INTERFACE PMPI_Sendrecv
        SUBROUTINE PMPI_Sendrecv(sendbuf, sendcount, sendtype, dest, sendtag, recvbuf, recvcount, recvtype, &
                                 source, recvtag, comm, status, ierror)
            USE MPI_CONSTANTS, ONLY: MPI_STATUS_SIZE
            IMPLICIT NONE
            !GCC$ ATTRIBUTES NO_ARG_CHECK :: sendbuf, recvbuf
            REAL :: sendbuf
            INTEGER :: sendcount
            INTEGER :: sendtype
            INTEGER :: dest
            INTEGER :: sendtag
            REAL :: recvbuf
            INTEGER :: recvcount
            INTEGER :: recvtype
            INTEGER :: source
            INTEGER :: recvtag
            INTEGER :: comm
            INTEGER :: status(MPI_STATUS_SIZE)
            INTEGER :: ierror
        END SUBROUTINE PMPI_Sendrecv
    END INTERFACE
    
    INTERFACE PMPI_Sendrecv_replace
        SUBROUTINE PMPI_Sendrecv_replace(buf, count, datatype, dest, sendtag, source, recvtag, comm, status, &
                                         ierror)
            USE MPI_CONSTANTS, ONLY: MPI_STATUS_SIZE
            IMPLICIT NONE
            !GCC$ ATTRIBUTES NO_ARG_CHECK :: buf
            REAL :: buf
            INTEGER :: count
            INTEGER :: datatype
            INTEGER :: dest
            INTEGER :: sendtag
            INTEGER :: source
            INTEGER :: recvtag
            INTEGER :: comm
            INTEGER :: status(MPI_STATUS_SIZE)
            INTEGER :: ierror
        END SUBROUTINE PMPI_Sendrecv_replace
    END INTERFACE
    
    INTERFACE PMPI_Session_attach_buffer
        SUBROUTINE PMPI_Session_attach_buffer(session, buffer, size, ierror)
            IMPLICIT NONE
            !GCC$ ATTRIBUTES NO_ARG_CHECK :: buffer
            INTEGER :: session
            REAL :: buffer
            INTEGER :: size
            INTEGER :: ierror
        END SUBROUTINE PMPI_Session_attach_buffer
    END INTERFACE
    
    INTERFACE PMPI_Session_detach_buffer
        SUBROUTINE PMPI_Session_detach_buffer(session, buffer_addr, size, ierror)
            IMPLICIT NONE
            !GCC$ ATTRIBUTES NO_ARG_CHECK :: buffer_addr
            INTEGER :: session
            REAL :: buffer_addr
            INTEGER :: size
            INTEGER :: ierror
        END SUBROUTINE PMPI_Session_detach_buffer
    END INTERFACE
    
    INTERFACE PMPI_Session_flush_buffer
        SUBROUTINE PMPI_Session_flush_buffer(session, ierror)
            IMPLICIT NONE
            INTEGER :: session
            INTEGER :: ierror
        END SUBROUTINE PMPI_Session_flush_buffer
    END INTERFACE
    
    INTERFACE PMPI_Session_iflush_buffer
        SUBROUTINE PMPI_Session_iflush_buffer(session, request, ierror)
            IMPLICIT NONE
            INTEGER :: session
            INTEGER :: request
            INTEGER :: ierror
        END SUBROUTINE PMPI_Session_iflush_buffer
    END INTERFACE
    
    INTERFACE PMPI_Ssend
        SUBROUTINE PMPI_Ssend(buf, count, datatype, dest, tag, comm, ierror)
            IMPLICIT NONE
            !GCC$ ATTRIBUTES NO_ARG_CHECK :: buf
            REAL :: buf
            INTEGER :: count
            INTEGER :: datatype
            INTEGER :: dest
            INTEGER :: tag
            INTEGER :: comm
            INTEGER :: ierror
        END SUBROUTINE PMPI_Ssend
    END INTERFACE
    
    INTERFACE PMPI_Ssend_init
        SUBROUTINE PMPI_Ssend_init(buf, count, datatype, dest, tag, comm, request, ierror)
            IMPLICIT NONE
            !GCC$ ATTRIBUTES NO_ARG_CHECK :: buf
            REAL :: buf
            INTEGER :: count
            INTEGER :: datatype
            INTEGER :: dest
            INTEGER :: tag
            INTEGER :: comm
            INTEGER :: request
            INTEGER :: ierror
        END SUBROUTINE PMPI_Ssend_init
    END INTERFACE
    
    INTERFACE PMPI_Cancel
        SUBROUTINE PMPI_Cancel(request, ierror)
            IMPLICIT NONE
            INTEGER :: request
            INTEGER :: ierror
        END SUBROUTINE PMPI_Cancel
    END INTERFACE
    
    INTERFACE PMPI_Grequest_complete
        SUBROUTINE PMPI_Grequest_complete(request, ierror)
            IMPLICIT NONE
            INTEGER :: request
            INTEGER :: ierror
        END SUBROUTINE PMPI_Grequest_complete
    END INTERFACE
    
    INTERFACE PMPI_Grequest_start
        SUBROUTINE PMPI_Grequest_start(query_fn, free_fn, cancel_fn, extra_state, request, ierror)
            USE MPI_CONSTANTS, ONLY: MPI_ADDRESS_KIND
            IMPLICIT NONE
            EXTERNAL :: query_fn
            EXTERNAL :: free_fn
            EXTERNAL :: cancel_fn
            INTEGER(KIND=MPI_ADDRESS_KIND) :: extra_state
            INTEGER :: request
            INTEGER :: ierror
        END SUBROUTINE PMPI_Grequest_start
    END INTERFACE
    
    INTERFACE PMPI_Request_free
        SUBROUTINE PMPI_Request_free(request, ierror)
            IMPLICIT NONE
            INTEGER :: request
            INTEGER :: ierror
        END SUBROUTINE PMPI_Request_free
    END INTERFACE
    
    INTERFACE PMPI_Request_get_status
        SUBROUTINE PMPI_Request_get_status(request, flag, status, ierror)
            USE MPI_CONSTANTS, ONLY: MPI_STATUS_SIZE
            IMPLICIT NONE
            INTEGER :: request
            LOGICAL :: flag
            INTEGER :: status(MPI_STATUS_SIZE)
            INTEGER :: ierror
        END SUBROUTINE PMPI_Request_get_status
    END INTERFACE
    
    INTERFACE PMPI_Request_get_status_all
        SUBROUTINE PMPI_Request_get_status_all(count, array_of_requests, flag, array_of_statuses, ierror)
            USE MPI_CONSTANTS, ONLY: MPI_STATUS_SIZE
            IMPLICIT NONE
            INTEGER :: count
            INTEGER :: array_of_requests(count)
            LOGICAL :: flag
            INTEGER :: array_of_statuses(MPI_STATUS_SIZE, *)
            INTEGER :: ierror
        END SUBROUTINE PMPI_Request_get_status_all
    END INTERFACE
    
    INTERFACE PMPI_Request_get_status_any
        SUBROUTINE PMPI_Request_get_status_any(count, array_of_requests, indx, flag, status, ierror)
            USE MPI_CONSTANTS, ONLY: MPI_STATUS_SIZE
            IMPLICIT NONE
            INTEGER :: count
            INTEGER :: array_of_requests(count)
            INTEGER :: indx
            LOGICAL :: flag
            INTEGER :: status(MPI_STATUS_SIZE)
            INTEGER :: ierror
        END SUBROUTINE PMPI_Request_get_status_any
    END INTERFACE
    
    INTERFACE PMPI_Request_get_status_some
        SUBROUTINE PMPI_Request_get_status_some(incount, array_of_requests, outcount, array_of_indices, &
                                                array_of_statuses, ierror)
            USE MPI_CONSTANTS, ONLY: MPI_STATUS_SIZE
            IMPLICIT NONE
            INTEGER :: incount
            INTEGER :: array_of_requests(incount)
            INTEGER :: outcount
            INTEGER :: array_of_indices(*)
            INTEGER :: array_of_statuses(MPI_STATUS_SIZE, *)
            INTEGER :: ierror
        END SUBROUTINE PMPI_Request_get_status_some
    END INTERFACE
    
    INTERFACE PMPI_Start
        SUBROUTINE PMPI_Start(request, ierror)
            IMPLICIT NONE
            INTEGER :: request
            INTEGER :: ierror
        END SUBROUTINE PMPI_Start
    END INTERFACE
    
    INTERFACE PMPI_Startall
        SUBROUTINE PMPI_Startall(count, array_of_requests, ierror)
            IMPLICIT NONE
            INTEGER :: count
            INTEGER :: array_of_requests(count)
            INTEGER :: ierror
        END SUBROUTINE PMPI_Startall
    END INTERFACE
    
    INTERFACE PMPI_Status_get_error
        SUBROUTINE PMPI_Status_get_error(status, error, ierror)
            USE MPI_CONSTANTS, ONLY: MPI_STATUS_SIZE
            IMPLICIT NONE
            INTEGER :: status(MPI_STATUS_SIZE)
            INTEGER :: error
            INTEGER :: ierror
        END SUBROUTINE PMPI_Status_get_error
    END INTERFACE
    
    INTERFACE PMPI_Status_get_source
        SUBROUTINE PMPI_Status_get_source(status, source, ierror)
            USE MPI_CONSTANTS, ONLY: MPI_STATUS_SIZE
            IMPLICIT NONE
            INTEGER :: status(MPI_STATUS_SIZE)
            INTEGER :: source
            INTEGER :: ierror
        END SUBROUTINE PMPI_Status_get_source
    END INTERFACE
    
    INTERFACE PMPI_Status_get_tag
        SUBROUTINE PMPI_Status_get_tag(status, tag, ierror)
            USE MPI_CONSTANTS, ONLY: MPI_STATUS_SIZE
            IMPLICIT NONE
            INTEGER :: status(MPI_STATUS_SIZE)
            INTEGER :: tag
            INTEGER :: ierror
        END SUBROUTINE PMPI_Status_get_tag
    END INTERFACE
    
    INTERFACE PMPI_Status_set_error
        SUBROUTINE PMPI_Status_set_error(status, error, ierror)
            USE MPI_CONSTANTS, ONLY: MPI_STATUS_SIZE
            IMPLICIT NONE
            INTEGER :: status(MPI_STATUS_SIZE)
            INTEGER :: error
            INTEGER :: ierror
        END SUBROUTINE PMPI_Status_set_error
    END INTERFACE
    
    INTERFACE PMPI_Status_set_source
        SUBROUTINE PMPI_Status_set_source(status, source, ierror)
            USE MPI_CONSTANTS, ONLY: MPI_STATUS_SIZE
            IMPLICIT NONE
            INTEGER :: status(MPI_STATUS_SIZE)
            INTEGER :: source
            INTEGER :: ierror
        END SUBROUTINE PMPI_Status_set_source
    END INTERFACE
    
    INTERFACE PMPI_Status_set_tag
        SUBROUTINE PMPI_Status_set_tag(status, tag, ierror)
            USE MPI_CONSTANTS, ONLY: MPI_STATUS_SIZE
            IMPLICIT NONE
            INTEGER :: status(MPI_STATUS_SIZE)
            INTEGER :: tag
            INTEGER :: ierror
        END SUBROUTINE PMPI_Status_set_tag
    END INTERFACE
    
    INTERFACE PMPI_Status_set_cancelled
        SUBROUTINE PMPI_Status_set_cancelled(status, flag, ierror)
            USE MPI_CONSTANTS, ONLY: MPI_STATUS_SIZE
            IMPLICIT NONE
            INTEGER :: status(MPI_STATUS_SIZE)
            LOGICAL :: flag
            INTEGER :: ierror
        END SUBROUTINE PMPI_Status_set_cancelled
    END INTERFACE
    
    INTERFACE PMPI_Test
        SUBROUTINE PMPI_Test(request, flag, status, ierror)
            USE MPI_CONSTANTS, ONLY: MPI_STATUS_SIZE
            IMPLICIT NONE
            INTEGER :: request
            LOGICAL :: flag
            INTEGER :: status(MPI_STATUS_SIZE)
            INTEGER :: ierror
        END SUBROUTINE PMPI_Test
    END INTERFACE
    
    INTERFACE PMPI_Test_cancelled
        SUBROUTINE PMPI_Test_cancelled(status, flag, ierror)
            USE MPI_CONSTANTS, ONLY: MPI_STATUS_SIZE
            IMPLICIT NONE
            INTEGER :: status(MPI_STATUS_SIZE)
            LOGICAL :: flag
            INTEGER :: ierror
        END SUBROUTINE PMPI_Test_cancelled
    END INTERFACE
    
    INTERFACE PMPI_Testall
        SUBROUTINE PMPI_Testall(count, array_of_requests, flag, array_of_statuses, ierror)
            USE MPI_CONSTANTS, ONLY: MPI_STATUS_SIZE
            IMPLICIT NONE
            INTEGER :: count
            INTEGER :: array_of_requests(count)
            LOGICAL :: flag
            INTEGER :: array_of_statuses(MPI_STATUS_SIZE, *)
            INTEGER :: ierror
        END SUBROUTINE PMPI_Testall
    END INTERFACE
    
    INTERFACE PMPI_Testany
        SUBROUTINE PMPI_Testany(count, array_of_requests, indx, flag, status, ierror)
            USE MPI_CONSTANTS, ONLY: MPI_STATUS_SIZE
            IMPLICIT NONE
            INTEGER :: count
            INTEGER :: array_of_requests(count)
            INTEGER :: indx
            LOGICAL :: flag
            INTEGER :: status(MPI_STATUS_SIZE)
            INTEGER :: ierror
        END SUBROUTINE PMPI_Testany
    END INTERFACE
    
    INTERFACE PMPI_Testsome
        SUBROUTINE PMPI_Testsome(incount, array_of_requests, outcount, array_of_indices, array_of_statuses, &
                                 ierror)
            USE MPI_CONSTANTS, ONLY: MPI_STATUS_SIZE
            IMPLICIT NONE
            INTEGER :: incount
            INTEGER :: array_of_requests(incount)
            INTEGER :: outcount
            INTEGER :: array_of_indices(*)
            INTEGER :: array_of_statuses(MPI_STATUS_SIZE, *)
            INTEGER :: ierror
        END SUBROUTINE PMPI_Testsome
    END INTERFACE
    
    INTERFACE PMPI_Wait
        SUBROUTINE PMPI_Wait(request, status, ierror)
            USE MPI_CONSTANTS, ONLY: MPI_STATUS_SIZE
            IMPLICIT NONE
            INTEGER :: request
            INTEGER :: status(MPI_STATUS_SIZE)
            INTEGER :: ierror
        END SUBROUTINE PMPI_Wait
    END INTERFACE
    
    INTERFACE PMPI_Waitall
        SUBROUTINE PMPI_Waitall(count, array_of_requests, array_of_statuses, ierror)
            USE MPI_CONSTANTS, ONLY: MPI_STATUS_SIZE
            IMPLICIT NONE
            INTEGER :: count
            INTEGER :: array_of_requests(count)
            INTEGER :: array_of_statuses(MPI_STATUS_SIZE, *)
            INTEGER :: ierror
        END SUBROUTINE PMPI_Waitall
    END INTERFACE
    
    INTERFACE PMPI_Waitany
        SUBROUTINE PMPI_Waitany(count, array_of_requests, indx, status, ierror)
            USE MPI_CONSTANTS, ONLY: MPI_STATUS_SIZE
            IMPLICIT NONE
            INTEGER :: count
            INTEGER :: array_of_requests(count)
            INTEGER :: indx
            INTEGER :: status(MPI_STATUS_SIZE)
            INTEGER :: ierror
        END SUBROUTINE PMPI_Waitany
    END INTERFACE
    
    INTERFACE PMPI_Waitsome
        SUBROUTINE PMPI_Waitsome(incount, array_of_requests, outcount, array_of_indices, array_of_statuses, &
                                 ierror)
            USE MPI_CONSTANTS, ONLY: MPI_STATUS_SIZE
            IMPLICIT NONE
            INTEGER :: incount
            INTEGER :: array_of_requests(incount)
            INTEGER :: outcount
            INTEGER :: array_of_indices(*)
            INTEGER :: array_of_statuses(MPI_STATUS_SIZE, *)
            INTEGER :: ierror
        END SUBROUTINE PMPI_Waitsome
    END INTERFACE
    
    INTERFACE PMPIX_Request_is_complete
        FUNCTION PMPIX_Request_is_complete(request) result(res)
            IMPLICIT NONE
            INTEGER :: request
            LOGICAL :: res
        END FUNCTION PMPIX_Request_is_complete
    END INTERFACE
    
    INTERFACE PMPI_Accumulate
        SUBROUTINE PMPI_Accumulate(origin_addr, origin_count, origin_datatype, target_rank, target_disp, &
                                   target_count, target_datatype, op, win, ierror)
            USE MPI_CONSTANTS, ONLY: MPI_ADDRESS_KIND
            IMPLICIT NONE
            !GCC$ ATTRIBUTES NO_ARG_CHECK :: origin_addr
            REAL :: origin_addr
            INTEGER :: origin_count
            INTEGER :: origin_datatype
            INTEGER :: target_rank
            INTEGER(KIND=MPI_ADDRESS_KIND) :: target_disp
            INTEGER :: target_count
            INTEGER :: target_datatype
            INTEGER :: op
            INTEGER :: win
            INTEGER :: ierror
        END SUBROUTINE PMPI_Accumulate
    END INTERFACE
    
    INTERFACE PMPI_Alloc_mem
        SUBROUTINE PMPI_Alloc_mem(size, info, baseptr, ierror)
            USE MPI_CONSTANTS, ONLY: MPI_ADDRESS_KIND
            IMPLICIT NONE
            INTEGER(KIND=MPI_ADDRESS_KIND) :: size
            INTEGER :: info
            INTEGER(KIND=MPI_ADDRESS_KIND) :: baseptr
            INTEGER :: ierror
        END SUBROUTINE PMPI_Alloc_mem
        SUBROUTINE PMPI_Alloc_mem_cptr(size, info, baseptr, ierror)
            USE MPI_CONSTANTS, ONLY: MPI_ADDRESS_KIND
            USE, INTRINSIC :: ISO_C_BINDING, ONLY : C_PTR
            IMPLICIT NONE
            INTEGER(KIND=MPI_ADDRESS_KIND) :: size
            INTEGER :: info
            TYPE(C_PTR) :: baseptr
            INTEGER :: ierror
        END SUBROUTINE PMPI_Alloc_mem_cptr
    END INTERFACE
    
    INTERFACE PMPI_Compare_and_swap
        SUBROUTINE PMPI_Compare_and_swap(origin_addr, compare_addr, result_addr, datatype, target_rank, &
                                         target_disp, win, ierror)
            USE MPI_CONSTANTS, ONLY: MPI_ADDRESS_KIND
            IMPLICIT NONE
            !GCC$ ATTRIBUTES NO_ARG_CHECK :: origin_addr, compare_addr, result_addr
            REAL :: origin_addr
            REAL :: compare_addr
            REAL :: result_addr
            INTEGER :: datatype
            INTEGER :: target_rank
            INTEGER(KIND=MPI_ADDRESS_KIND) :: target_disp
            INTEGER :: win
            INTEGER :: ierror
        END SUBROUTINE PMPI_Compare_and_swap
    END INTERFACE
    
    INTERFACE PMPI_Fetch_and_op
        SUBROUTINE PMPI_Fetch_and_op(origin_addr, result_addr, datatype, target_rank, target_disp, op, win, &
                                     ierror)
            USE MPI_CONSTANTS, ONLY: MPI_ADDRESS_KIND
            IMPLICIT NONE
            !GCC$ ATTRIBUTES NO_ARG_CHECK :: origin_addr, result_addr
            REAL :: origin_addr
            REAL :: result_addr
            INTEGER :: datatype
            INTEGER :: target_rank
            INTEGER(KIND=MPI_ADDRESS_KIND) :: target_disp
            INTEGER :: op
            INTEGER :: win
            INTEGER :: ierror
        END SUBROUTINE PMPI_Fetch_and_op
    END INTERFACE
    
    INTERFACE PMPI_Free_mem
        SUBROUTINE PMPI_Free_mem(base, ierror)
            IMPLICIT NONE
            !GCC$ ATTRIBUTES NO_ARG_CHECK :: base
            REAL :: base
            INTEGER :: ierror
        END SUBROUTINE PMPI_Free_mem
    END INTERFACE
    
    INTERFACE PMPI_Get
        SUBROUTINE PMPI_Get(origin_addr, origin_count, origin_datatype, target_rank, target_disp, &
                            target_count, target_datatype, win, ierror)
            USE MPI_CONSTANTS, ONLY: MPI_ADDRESS_KIND
            IMPLICIT NONE
            !GCC$ ATTRIBUTES NO_ARG_CHECK :: origin_addr
            REAL :: origin_addr
            INTEGER :: origin_count
            INTEGER :: origin_datatype
            INTEGER :: target_rank
            INTEGER(KIND=MPI_ADDRESS_KIND) :: target_disp
            INTEGER :: target_count
            INTEGER :: target_datatype
            INTEGER :: win
            INTEGER :: ierror
        END SUBROUTINE PMPI_Get
    END INTERFACE
    
    INTERFACE PMPI_Get_accumulate
        SUBROUTINE PMPI_Get_accumulate(origin_addr, origin_count, origin_datatype, result_addr, &
                                       result_count, result_datatype, target_rank, target_disp, &
                                       target_count, target_datatype, op, win, ierror)
            USE MPI_CONSTANTS, ONLY: MPI_ADDRESS_KIND
            IMPLICIT NONE
            !GCC$ ATTRIBUTES NO_ARG_CHECK :: origin_addr, result_addr
            REAL :: origin_addr
            INTEGER :: origin_count
            INTEGER :: origin_datatype
            REAL :: result_addr
            INTEGER :: result_count
            INTEGER :: result_datatype
            INTEGER :: target_rank
            INTEGER(KIND=MPI_ADDRESS_KIND) :: target_disp
            INTEGER :: target_count
            INTEGER :: target_datatype
            INTEGER :: op
            INTEGER :: win
            INTEGER :: ierror
        END SUBROUTINE PMPI_Get_accumulate
    END INTERFACE
    
    INTERFACE PMPI_Put
        SUBROUTINE PMPI_Put(origin_addr, origin_count, origin_datatype, target_rank, target_disp, &
                            target_count, target_datatype, win, ierror)
            USE MPI_CONSTANTS, ONLY: MPI_ADDRESS_KIND
            IMPLICIT NONE
            !GCC$ ATTRIBUTES NO_ARG_CHECK :: origin_addr
            REAL :: origin_addr
            INTEGER :: origin_count
            INTEGER :: origin_datatype
            INTEGER :: target_rank
            INTEGER(KIND=MPI_ADDRESS_KIND) :: target_disp
            INTEGER :: target_count
            INTEGER :: target_datatype
            INTEGER :: win
            INTEGER :: ierror
        END SUBROUTINE PMPI_Put
    END INTERFACE
    
    INTERFACE PMPI_Raccumulate
        SUBROUTINE PMPI_Raccumulate(origin_addr, origin_count, origin_datatype, target_rank, target_disp, &
                                    target_count, target_datatype, op, win, request, ierror)
            USE MPI_CONSTANTS, ONLY: MPI_ADDRESS_KIND
            IMPLICIT NONE
            !GCC$ ATTRIBUTES NO_ARG_CHECK :: origin_addr
            REAL :: origin_addr
            INTEGER :: origin_count
            INTEGER :: origin_datatype
            INTEGER :: target_rank
            INTEGER(KIND=MPI_ADDRESS_KIND) :: target_disp
            INTEGER :: target_count
            INTEGER :: target_datatype
            INTEGER :: op
            INTEGER :: win
            INTEGER :: request
            INTEGER :: ierror
        END SUBROUTINE PMPI_Raccumulate
    END INTERFACE
    
    INTERFACE PMPI_Rget
        SUBROUTINE PMPI_Rget(origin_addr, origin_count, origin_datatype, target_rank, target_disp, &
                             target_count, target_datatype, win, request, ierror)
            USE MPI_CONSTANTS, ONLY: MPI_ADDRESS_KIND
            IMPLICIT NONE
            !GCC$ ATTRIBUTES NO_ARG_CHECK :: origin_addr
            REAL :: origin_addr
            INTEGER :: origin_count
            INTEGER :: origin_datatype
            INTEGER :: target_rank
            INTEGER(KIND=MPI_ADDRESS_KIND) :: target_disp
            INTEGER :: target_count
            INTEGER :: target_datatype
            INTEGER :: win
            INTEGER :: request
            INTEGER :: ierror
        END SUBROUTINE PMPI_Rget
    END INTERFACE
    
    INTERFACE PMPI_Rget_accumulate
        SUBROUTINE PMPI_Rget_accumulate(origin_addr, origin_count, origin_datatype, result_addr, &
                                        result_count, result_datatype, target_rank, target_disp, &
                                        target_count, target_datatype, op, win, request, ierror)
            USE MPI_CONSTANTS, ONLY: MPI_ADDRESS_KIND
            IMPLICIT NONE
            !GCC$ ATTRIBUTES NO_ARG_CHECK :: origin_addr, result_addr
            REAL :: origin_addr
            INTEGER :: origin_count
            INTEGER :: origin_datatype
            REAL :: result_addr
            INTEGER :: result_count
            INTEGER :: result_datatype
            INTEGER :: target_rank
            INTEGER(KIND=MPI_ADDRESS_KIND) :: target_disp
            INTEGER :: target_count
            INTEGER :: target_datatype
            INTEGER :: op
            INTEGER :: win
            INTEGER :: request
            INTEGER :: ierror
        END SUBROUTINE PMPI_Rget_accumulate
    END INTERFACE
    
    INTERFACE PMPI_Rput
        SUBROUTINE PMPI_Rput(origin_addr, origin_count, origin_datatype, target_rank, target_disp, &
                             target_count, target_datatype, win, request, ierror)
            USE MPI_CONSTANTS, ONLY: MPI_ADDRESS_KIND
            IMPLICIT NONE
            !GCC$ ATTRIBUTES NO_ARG_CHECK :: origin_addr
            REAL :: origin_addr
            INTEGER :: origin_count
            INTEGER :: origin_datatype
            INTEGER :: target_rank
            INTEGER(KIND=MPI_ADDRESS_KIND) :: target_disp
            INTEGER :: target_count
            INTEGER :: target_datatype
            INTEGER :: win
            INTEGER :: request
            INTEGER :: ierror
        END SUBROUTINE PMPI_Rput
    END INTERFACE
    
    INTERFACE PMPI_Win_allocate
        SUBROUTINE PMPI_Win_allocate(size, disp_unit, info, comm, baseptr, win, ierror)
            USE MPI_CONSTANTS, ONLY: MPI_ADDRESS_KIND
            IMPLICIT NONE
            INTEGER(KIND=MPI_ADDRESS_KIND) :: size
            INTEGER :: disp_unit
            INTEGER :: info
            INTEGER :: comm
            INTEGER(KIND=MPI_ADDRESS_KIND) :: baseptr
            INTEGER :: win
            INTEGER :: ierror
        END SUBROUTINE PMPI_Win_allocate
    END INTERFACE
    
    INTERFACE PMPI_Win_allocate_shared
        SUBROUTINE PMPI_Win_allocate_shared(size, disp_unit, info, comm, baseptr, win, ierror)
            USE MPI_CONSTANTS, ONLY: MPI_ADDRESS_KIND
            IMPLICIT NONE
            INTEGER(KIND=MPI_ADDRESS_KIND) :: size
            INTEGER :: disp_unit
            INTEGER :: info
            INTEGER :: comm
            INTEGER(KIND=MPI_ADDRESS_KIND) :: baseptr
            INTEGER :: win
            INTEGER :: ierror
        END SUBROUTINE PMPI_Win_allocate_shared
    END INTERFACE
    
    INTERFACE PMPI_Win_attach
        SUBROUTINE PMPI_Win_attach(win, base, size, ierror)
            USE MPI_CONSTANTS, ONLY: MPI_ADDRESS_KIND
            IMPLICIT NONE
            !GCC$ ATTRIBUTES NO_ARG_CHECK :: base
            INTEGER :: win
            REAL :: base
            INTEGER(KIND=MPI_ADDRESS_KIND) :: size
            INTEGER :: ierror
        END SUBROUTINE PMPI_Win_attach
    END INTERFACE
    
    INTERFACE PMPI_Win_complete
        SUBROUTINE PMPI_Win_complete(win, ierror)
            IMPLICIT NONE
            INTEGER :: win
            INTEGER :: ierror
        END SUBROUTINE PMPI_Win_complete
    END INTERFACE
    
    INTERFACE PMPI_Win_create
        SUBROUTINE PMPI_Win_create(base, size, disp_unit, info, comm, win, ierror)
            USE MPI_CONSTANTS, ONLY: MPI_ADDRESS_KIND
            IMPLICIT NONE
            !GCC$ ATTRIBUTES NO_ARG_CHECK :: base
            REAL :: base
            INTEGER(KIND=MPI_ADDRESS_KIND) :: size
            INTEGER :: disp_unit
            INTEGER :: info
            INTEGER :: comm
            INTEGER :: win
            INTEGER :: ierror
        END SUBROUTINE PMPI_Win_create
    END INTERFACE
    
    INTERFACE PMPI_Win_create_dynamic
        SUBROUTINE PMPI_Win_create_dynamic(info, comm, win, ierror)
            IMPLICIT NONE
            INTEGER :: info
            INTEGER :: comm
            INTEGER :: win
            INTEGER :: ierror
        END SUBROUTINE PMPI_Win_create_dynamic
    END INTERFACE
    
    INTERFACE PMPI_Win_detach
        SUBROUTINE PMPI_Win_detach(win, base, ierror)
            IMPLICIT NONE
            !GCC$ ATTRIBUTES NO_ARG_CHECK :: base
            INTEGER :: win
            REAL :: base
            INTEGER :: ierror
        END SUBROUTINE PMPI_Win_detach
    END INTERFACE
    
    INTERFACE PMPI_Win_fence
        SUBROUTINE PMPI_Win_fence(assert, win, ierror)
            IMPLICIT NONE
            INTEGER :: assert
            INTEGER :: win
            INTEGER :: ierror
        END SUBROUTINE PMPI_Win_fence
    END INTERFACE
    
    INTERFACE PMPI_Win_flush
        SUBROUTINE PMPI_Win_flush(rank, win, ierror)
            IMPLICIT NONE
            INTEGER :: rank
            INTEGER :: win
            INTEGER :: ierror
        END SUBROUTINE PMPI_Win_flush
    END INTERFACE
    
    INTERFACE PMPI_Win_flush_all
        SUBROUTINE PMPI_Win_flush_all(win, ierror)
            IMPLICIT NONE
            INTEGER :: win
            INTEGER :: ierror
        END SUBROUTINE PMPI_Win_flush_all
    END INTERFACE
    
    INTERFACE PMPI_Win_flush_local
        SUBROUTINE PMPI_Win_flush_local(rank, win, ierror)
            IMPLICIT NONE
            INTEGER :: rank
            INTEGER :: win
            INTEGER :: ierror
        END SUBROUTINE PMPI_Win_flush_local
    END INTERFACE
    
    INTERFACE PMPI_Win_flush_local_all
        SUBROUTINE PMPI_Win_flush_local_all(win, ierror)
            IMPLICIT NONE
            INTEGER :: win
            INTEGER :: ierror
        END SUBROUTINE PMPI_Win_flush_local_all
    END INTERFACE
    
    INTERFACE PMPI_Win_free
        SUBROUTINE PMPI_Win_free(win, ierror)
            IMPLICIT NONE
            INTEGER :: win
            INTEGER :: ierror
        END SUBROUTINE PMPI_Win_free
    END INTERFACE
    
    INTERFACE PMPI_Win_get_group
        SUBROUTINE PMPI_Win_get_group(win, group, ierror)
            IMPLICIT NONE
            INTEGER :: win
            INTEGER :: group
            INTEGER :: ierror
        END SUBROUTINE PMPI_Win_get_group
    END INTERFACE
    
    INTERFACE PMPI_Win_get_info
        SUBROUTINE PMPI_Win_get_info(win, info_used, ierror)
            IMPLICIT NONE
            INTEGER :: win
            INTEGER :: info_used
            INTEGER :: ierror
        END SUBROUTINE PMPI_Win_get_info
    END INTERFACE
    
    INTERFACE PMPI_Win_get_name
        SUBROUTINE PMPI_Win_get_name(win, win_name, resultlen, ierror)
            IMPLICIT NONE
            INTEGER :: win
            CHARACTER*(*) :: win_name
            INTEGER :: resultlen
            INTEGER :: ierror
        END SUBROUTINE PMPI_Win_get_name
    END INTERFACE
    
    INTERFACE PMPI_Win_lock
        SUBROUTINE PMPI_Win_lock(lock_type, rank, assert, win, ierror)
            IMPLICIT NONE
            INTEGER :: lock_type
            INTEGER :: rank
            INTEGER :: assert
            INTEGER :: win
            INTEGER :: ierror
        END SUBROUTINE PMPI_Win_lock
    END INTERFACE
    
    INTERFACE PMPI_Win_lock_all
        SUBROUTINE PMPI_Win_lock_all(assert, win, ierror)
            IMPLICIT NONE
            INTEGER :: assert
            INTEGER :: win
            INTEGER :: ierror
        END SUBROUTINE PMPI_Win_lock_all
    END INTERFACE
    
    INTERFACE PMPI_Win_post
        SUBROUTINE PMPI_Win_post(group, assert, win, ierror)
            IMPLICIT NONE
            INTEGER :: group
            INTEGER :: assert
            INTEGER :: win
            INTEGER :: ierror
        END SUBROUTINE PMPI_Win_post
    END INTERFACE
    
    INTERFACE PMPI_Win_set_info
        SUBROUTINE PMPI_Win_set_info(win, info, ierror)
            IMPLICIT NONE
            INTEGER :: win
            INTEGER :: info
            INTEGER :: ierror
        END SUBROUTINE PMPI_Win_set_info
    END INTERFACE
    
    INTERFACE PMPI_Win_set_name
        SUBROUTINE PMPI_Win_set_name(win, win_name, ierror)
            IMPLICIT NONE
            INTEGER :: win
            CHARACTER*(*) :: win_name
            INTEGER :: ierror
        END SUBROUTINE PMPI_Win_set_name
    END INTERFACE
    
    INTERFACE PMPI_Win_shared_query
        SUBROUTINE PMPI_Win_shared_query(win, rank, size, disp_unit, baseptr, ierror)
            USE MPI_CONSTANTS, ONLY: MPI_ADDRESS_KIND
            IMPLICIT NONE
            INTEGER :: win
            INTEGER :: rank
            INTEGER(KIND=MPI_ADDRESS_KIND) :: size
            INTEGER :: disp_unit
            INTEGER(KIND=MPI_ADDRESS_KIND) :: baseptr
            INTEGER :: ierror
        END SUBROUTINE PMPI_Win_shared_query
    END INTERFACE
    
    INTERFACE PMPI_Win_start
        SUBROUTINE PMPI_Win_start(group, assert, win, ierror)
            IMPLICIT NONE
            INTEGER :: group
            INTEGER :: assert
            INTEGER :: win
            INTEGER :: ierror
        END SUBROUTINE PMPI_Win_start
    END INTERFACE
    
    INTERFACE PMPI_Win_sync
        SUBROUTINE PMPI_Win_sync(win, ierror)
            IMPLICIT NONE
            INTEGER :: win
            INTEGER :: ierror
        END SUBROUTINE PMPI_Win_sync
    END INTERFACE
    
    INTERFACE PMPI_Win_test
        SUBROUTINE PMPI_Win_test(win, flag, ierror)
            IMPLICIT NONE
            INTEGER :: win
            LOGICAL :: flag
            INTEGER :: ierror
        END SUBROUTINE PMPI_Win_test
    END INTERFACE
    
    INTERFACE PMPI_Win_unlock
        SUBROUTINE PMPI_Win_unlock(rank, win, ierror)
            IMPLICIT NONE
            INTEGER :: rank
            INTEGER :: win
            INTEGER :: ierror
        END SUBROUTINE PMPI_Win_unlock
    END INTERFACE
    
    INTERFACE PMPI_Win_unlock_all
        SUBROUTINE PMPI_Win_unlock_all(win, ierror)
            IMPLICIT NONE
            INTEGER :: win
            INTEGER :: ierror
        END SUBROUTINE PMPI_Win_unlock_all
    END INTERFACE
    
    INTERFACE PMPI_Win_wait
        SUBROUTINE PMPI_Win_wait(win, ierror)
            IMPLICIT NONE
            INTEGER :: win
            INTEGER :: ierror
        END SUBROUTINE PMPI_Win_wait
    END INTERFACE
    
    INTERFACE PMPI_Close_port
        SUBROUTINE PMPI_Close_port(port_name, ierror)
            IMPLICIT NONE
            CHARACTER*(*) :: port_name
            INTEGER :: ierror
        END SUBROUTINE PMPI_Close_port
    END INTERFACE
    
    INTERFACE PMPI_Comm_accept
        SUBROUTINE PMPI_Comm_accept(port_name, info, root, comm, newcomm, ierror)
            IMPLICIT NONE
            CHARACTER*(*) :: port_name
            INTEGER :: info
            INTEGER :: root
            INTEGER :: comm
            INTEGER :: newcomm
            INTEGER :: ierror
        END SUBROUTINE PMPI_Comm_accept
    END INTERFACE
    
    INTERFACE PMPI_Comm_connect
        SUBROUTINE PMPI_Comm_connect(port_name, info, root, comm, newcomm, ierror)
            IMPLICIT NONE
            CHARACTER*(*) :: port_name
            INTEGER :: info
            INTEGER :: root
            INTEGER :: comm
            INTEGER :: newcomm
            INTEGER :: ierror
        END SUBROUTINE PMPI_Comm_connect
    END INTERFACE
    
    INTERFACE PMPI_Comm_disconnect
        SUBROUTINE PMPI_Comm_disconnect(comm, ierror)
            IMPLICIT NONE
            INTEGER :: comm
            INTEGER :: ierror
        END SUBROUTINE PMPI_Comm_disconnect
    END INTERFACE
    
    INTERFACE PMPI_Comm_get_parent
        SUBROUTINE PMPI_Comm_get_parent(parent, ierror)
            IMPLICIT NONE
            INTEGER :: parent
            INTEGER :: ierror
        END SUBROUTINE PMPI_Comm_get_parent
    END INTERFACE
    
    INTERFACE PMPI_Comm_join
        SUBROUTINE PMPI_Comm_join(fd, intercomm, ierror)
            IMPLICIT NONE
            INTEGER :: fd
            INTEGER :: intercomm
            INTEGER :: ierror
        END SUBROUTINE PMPI_Comm_join
    END INTERFACE
    
    INTERFACE PMPI_Comm_spawn
        SUBROUTINE PMPI_Comm_spawn(command, argv, maxprocs, info, root, comm, intercomm, array_of_errcodes, &
                                   ierror)
            IMPLICIT NONE
            CHARACTER*(*) :: command
            CHARACTER*(*) :: argv(*)
            INTEGER :: maxprocs
            INTEGER :: info
            INTEGER :: root
            INTEGER :: comm
            INTEGER :: intercomm
            INTEGER :: array_of_errcodes(*)
            INTEGER :: ierror
        END SUBROUTINE PMPI_Comm_spawn
    END INTERFACE
    
    INTERFACE PMPI_Comm_spawn_multiple
        SUBROUTINE PMPI_Comm_spawn_multiple(count, array_of_commands, array_of_argv, array_of_maxprocs, &
                                            array_of_info, root, comm, intercomm, array_of_errcodes, &
                                            ierror)
            IMPLICIT NONE
            INTEGER :: count
            CHARACTER*(*) :: array_of_commands(*)
            CHARACTER*(*) :: array_of_argv(count, *)
            INTEGER :: array_of_maxprocs(count)
            INTEGER :: array_of_info(count)
            INTEGER :: root
            INTEGER :: comm
            INTEGER :: intercomm
            INTEGER :: array_of_errcodes(*)
            INTEGER :: ierror
        END SUBROUTINE PMPI_Comm_spawn_multiple
    END INTERFACE
    
    INTERFACE PMPI_Lookup_name
        SUBROUTINE PMPI_Lookup_name(service_name, info, port_name, ierror)
            IMPLICIT NONE
            CHARACTER*(*) :: service_name
            INTEGER :: info
            CHARACTER*(*) :: port_name
            INTEGER :: ierror
        END SUBROUTINE PMPI_Lookup_name
    END INTERFACE
    
    INTERFACE PMPI_Open_port
        SUBROUTINE PMPI_Open_port(info, port_name, ierror)
            IMPLICIT NONE
            INTEGER :: info
            CHARACTER*(*) :: port_name
            INTEGER :: ierror
        END SUBROUTINE PMPI_Open_port
    END INTERFACE
    
    INTERFACE PMPI_Publish_name
        SUBROUTINE PMPI_Publish_name(service_name, info, port_name, ierror)
            IMPLICIT NONE
            CHARACTER*(*) :: service_name
            INTEGER :: info
            CHARACTER*(*) :: port_name
            INTEGER :: ierror
        END SUBROUTINE PMPI_Publish_name
    END INTERFACE
    
    INTERFACE PMPI_Unpublish_name
        SUBROUTINE PMPI_Unpublish_name(service_name, info, port_name, ierror)
            IMPLICIT NONE
            CHARACTER*(*) :: service_name
            INTEGER :: info
            CHARACTER*(*) :: port_name
            INTEGER :: ierror
        END SUBROUTINE PMPI_Unpublish_name
    END INTERFACE
    
    INTERFACE PMPIX_Stream_create
        SUBROUTINE PMPIX_Stream_create(info, stream, ierror)
            IMPLICIT NONE
            INTEGER :: info
            INTEGER :: stream
            INTEGER :: ierror
        END SUBROUTINE PMPIX_Stream_create
    END INTERFACE
    
    INTERFACE PMPIX_Stream_free
        SUBROUTINE PMPIX_Stream_free(stream, ierror)
            IMPLICIT NONE
            INTEGER :: stream
            INTEGER :: ierror
        END SUBROUTINE PMPIX_Stream_free
    END INTERFACE
    
    INTERFACE PMPIX_Stream_comm_create
        SUBROUTINE PMPIX_Stream_comm_create(comm, stream, newcomm, ierror)
            IMPLICIT NONE
            INTEGER :: comm
            INTEGER :: stream
            INTEGER :: newcomm
            INTEGER :: ierror
        END SUBROUTINE PMPIX_Stream_comm_create
    END INTERFACE
    
    INTERFACE PMPIX_Stream_comm_create_multiplex
        SUBROUTINE PMPIX_Stream_comm_create_multiplex(comm, count, array_of_streams, newcomm, ierror)
            IMPLICIT NONE
            INTEGER :: comm
            INTEGER :: count
            INTEGER :: array_of_streams(count)
            INTEGER :: newcomm
            INTEGER :: ierror
        END SUBROUTINE PMPIX_Stream_comm_create_multiplex
    END INTERFACE
    
    INTERFACE PMPIX_Comm_get_stream
        SUBROUTINE PMPIX_Comm_get_stream(comm, idx, stream, ierror)
            IMPLICIT NONE
            INTEGER :: comm
            INTEGER :: idx
            INTEGER :: stream
            INTEGER :: ierror
        END SUBROUTINE PMPIX_Comm_get_stream
    END INTERFACE
    
    INTERFACE PMPIX_Stream_progress
        SUBROUTINE PMPIX_Stream_progress(stream, ierror)
            IMPLICIT NONE
            INTEGER :: stream
            INTEGER :: ierror
        END SUBROUTINE PMPIX_Stream_progress
    END INTERFACE
    
    INTERFACE PMPIX_Start_progress_thread
        SUBROUTINE PMPIX_Start_progress_thread(stream, ierror)
            IMPLICIT NONE
            INTEGER :: stream
            INTEGER :: ierror
        END SUBROUTINE PMPIX_Start_progress_thread
    END INTERFACE
    
    INTERFACE PMPIX_Stop_progress_thread
        SUBROUTINE PMPIX_Stop_progress_thread(stream, ierror)
            IMPLICIT NONE
            INTEGER :: stream
            INTEGER :: ierror
        END SUBROUTINE PMPIX_Stop_progress_thread
    END INTERFACE
    
    INTERFACE PMPIX_Stream_send
        SUBROUTINE PMPIX_Stream_send(buf, count, datatype, dest, tag, comm, source_stream_index, &
                                     dest_stream_index, ierror)
            IMPLICIT NONE
            !GCC$ ATTRIBUTES NO_ARG_CHECK :: buf
            REAL :: buf
            INTEGER :: count
            INTEGER :: datatype
            INTEGER :: dest
            INTEGER :: tag
            INTEGER :: comm
            INTEGER :: source_stream_index
            INTEGER :: dest_stream_index
            INTEGER :: ierror
        END SUBROUTINE PMPIX_Stream_send
    END INTERFACE
    
    INTERFACE PMPIX_Stream_isend
        SUBROUTINE PMPIX_Stream_isend(buf, count, datatype, dest, tag, comm, source_stream_index, &
                                      dest_stream_index, request, ierror)
            IMPLICIT NONE
            !GCC$ ATTRIBUTES NO_ARG_CHECK :: buf
            REAL :: buf
            INTEGER :: count
            INTEGER :: datatype
            INTEGER :: dest
            INTEGER :: tag
            INTEGER :: comm
            INTEGER :: source_stream_index
            INTEGER :: dest_stream_index
            INTEGER :: request
            INTEGER :: ierror
        END SUBROUTINE PMPIX_Stream_isend
    END INTERFACE
    
    INTERFACE PMPIX_Stream_recv
        SUBROUTINE PMPIX_Stream_recv(buf, count, datatype, source, tag, comm, source_stream_index, &
                                     dest_stream_index, status, ierror)
            USE MPI_CONSTANTS, ONLY: MPI_STATUS_SIZE
            IMPLICIT NONE
            !GCC$ ATTRIBUTES NO_ARG_CHECK :: buf
            REAL :: buf
            INTEGER :: count
            INTEGER :: datatype
            INTEGER :: source
            INTEGER :: tag
            INTEGER :: comm
            INTEGER :: source_stream_index
            INTEGER :: dest_stream_index
            INTEGER :: status(MPI_STATUS_SIZE)
            INTEGER :: ierror
        END SUBROUTINE PMPIX_Stream_recv
    END INTERFACE
    
    INTERFACE PMPIX_Stream_irecv
        SUBROUTINE PMPIX_Stream_irecv(buf, count, datatype, source, tag, comm, source_stream_index, &
                                      dest_stream_index, request, ierror)
            IMPLICIT NONE
            !GCC$ ATTRIBUTES NO_ARG_CHECK :: buf
            REAL :: buf
            INTEGER :: count
            INTEGER :: datatype
            INTEGER :: source
            INTEGER :: tag
            INTEGER :: comm
            INTEGER :: source_stream_index
            INTEGER :: dest_stream_index
            INTEGER :: request
            INTEGER :: ierror
        END SUBROUTINE PMPIX_Stream_irecv
    END INTERFACE
    
    INTERFACE PMPIX_Send_enqueue
        SUBROUTINE PMPIX_Send_enqueue(buf, count, datatype, dest, tag, comm, ierror)
            IMPLICIT NONE
            !GCC$ ATTRIBUTES NO_ARG_CHECK :: buf
            REAL :: buf
            INTEGER :: count
            INTEGER :: datatype
            INTEGER :: dest
            INTEGER :: tag
            INTEGER :: comm
            INTEGER :: ierror
        END SUBROUTINE PMPIX_Send_enqueue
    END INTERFACE
    
    INTERFACE PMPIX_Recv_enqueue
        SUBROUTINE PMPIX_Recv_enqueue(buf, count, datatype, source, tag, comm, status, ierror)
            USE MPI_CONSTANTS, ONLY: MPI_STATUS_SIZE
            IMPLICIT NONE
            !GCC$ ATTRIBUTES NO_ARG_CHECK :: buf
            REAL :: buf
            INTEGER :: count
            INTEGER :: datatype
            INTEGER :: source
            INTEGER :: tag
            INTEGER :: comm
            INTEGER :: status(MPI_STATUS_SIZE)
            INTEGER :: ierror
        END SUBROUTINE PMPIX_Recv_enqueue
    END INTERFACE
    
    INTERFACE PMPIX_Isend_enqueue
        SUBROUTINE PMPIX_Isend_enqueue(buf, count, datatype, dest, tag, comm, request, ierror)
            IMPLICIT NONE
            !GCC$ ATTRIBUTES NO_ARG_CHECK :: buf
            REAL :: buf
            INTEGER :: count
            INTEGER :: datatype
            INTEGER :: dest
            INTEGER :: tag
            INTEGER :: comm
            INTEGER :: request
            INTEGER :: ierror
        END SUBROUTINE PMPIX_Isend_enqueue
    END INTERFACE
    
    INTERFACE PMPIX_Irecv_enqueue
        SUBROUTINE PMPIX_Irecv_enqueue(buf, count, datatype, source, tag, comm, request, ierror)
            IMPLICIT NONE
            !GCC$ ATTRIBUTES NO_ARG_CHECK :: buf
            REAL :: buf
            INTEGER :: count
            INTEGER :: datatype
            INTEGER :: source
            INTEGER :: tag
            INTEGER :: comm
            INTEGER :: request
            INTEGER :: ierror
        END SUBROUTINE PMPIX_Irecv_enqueue
    END INTERFACE
    
    INTERFACE PMPIX_Wait_enqueue
        SUBROUTINE PMPIX_Wait_enqueue(request, status, ierror)
            USE MPI_CONSTANTS, ONLY: MPI_STATUS_SIZE
            IMPLICIT NONE
            INTEGER :: request
            INTEGER :: status(MPI_STATUS_SIZE)
            INTEGER :: ierror
        END SUBROUTINE PMPIX_Wait_enqueue
    END INTERFACE
    
    INTERFACE PMPIX_Waitall_enqueue
        SUBROUTINE PMPIX_Waitall_enqueue(count, array_of_requests, array_of_statuses, ierror)
            USE MPI_CONSTANTS, ONLY: MPI_STATUS_SIZE
            IMPLICIT NONE
            INTEGER :: count
            INTEGER :: array_of_requests(count)
            INTEGER :: array_of_statuses(MPI_STATUS_SIZE, *)
            INTEGER :: ierror
        END SUBROUTINE PMPIX_Waitall_enqueue
    END INTERFACE
    
    INTERFACE PMPIX_Allreduce_enqueue
        SUBROUTINE PMPIX_Allreduce_enqueue(sendbuf, recvbuf, count, datatype, op, comm, ierror)
            IMPLICIT NONE
            !GCC$ ATTRIBUTES NO_ARG_CHECK :: sendbuf, recvbuf
            REAL :: sendbuf
            REAL :: recvbuf
            INTEGER :: count
            INTEGER :: datatype
            INTEGER :: op
            INTEGER :: comm
            INTEGER :: ierror
        END SUBROUTINE PMPIX_Allreduce_enqueue
    END INTERFACE
    
    INTERFACE PMPIX_Threadcomm_init
        SUBROUTINE PMPIX_Threadcomm_init(comm, num_threads, newthreadcomm, ierror)
            IMPLICIT NONE
            INTEGER :: comm
            INTEGER :: num_threads
            INTEGER :: newthreadcomm
            INTEGER :: ierror
        END SUBROUTINE PMPIX_Threadcomm_init
    END INTERFACE
    
    INTERFACE PMPIX_Threadcomm_free
        SUBROUTINE PMPIX_Threadcomm_free(threadcomm, ierror)
            IMPLICIT NONE
            INTEGER :: threadcomm
            INTEGER :: ierror
        END SUBROUTINE PMPIX_Threadcomm_free
    END INTERFACE
    
    INTERFACE PMPIX_Threadcomm_start
        SUBROUTINE PMPIX_Threadcomm_start(threadcomm, ierror)
            IMPLICIT NONE
            INTEGER :: threadcomm
            INTEGER :: ierror
        END SUBROUTINE PMPIX_Threadcomm_start
    END INTERFACE
    
    INTERFACE PMPIX_Threadcomm_finish
        SUBROUTINE PMPIX_Threadcomm_finish(threadcomm, ierror)
            IMPLICIT NONE
            INTEGER :: threadcomm
            INTEGER :: ierror
        END SUBROUTINE PMPIX_Threadcomm_finish
    END INTERFACE
    
    INTERFACE PMPI_Wtick
        FUNCTION PMPI_Wtick() result(res)
            IMPLICIT NONE
            DOUBLE PRECISION :: res
        END FUNCTION PMPI_Wtick
    END INTERFACE
    
    INTERFACE PMPI_Wtime
        FUNCTION PMPI_Wtime() result(res)
            IMPLICIT NONE
            DOUBLE PRECISION :: res
        END FUNCTION PMPI_Wtime
    END INTERFACE
    
    INTERFACE PMPI_Cart_coords
        SUBROUTINE PMPI_Cart_coords(comm, rank, maxdims, coords, ierror)
            IMPLICIT NONE
            INTEGER :: comm
            INTEGER :: rank
            INTEGER :: maxdims
            INTEGER :: coords(maxdims)
            INTEGER :: ierror
        END SUBROUTINE PMPI_Cart_coords
    END INTERFACE
    
    INTERFACE PMPI_Cart_create
        SUBROUTINE PMPI_Cart_create(comm_old, ndims, dims, periods, reorder, comm_cart, ierror)
            IMPLICIT NONE
            INTEGER :: comm_old
            INTEGER :: ndims
            INTEGER :: dims(ndims)
            LOGICAL :: periods(ndims)
            LOGICAL :: reorder
            INTEGER :: comm_cart
            INTEGER :: ierror
        END SUBROUTINE PMPI_Cart_create
    END INTERFACE
    
    INTERFACE PMPI_Cart_get
        SUBROUTINE PMPI_Cart_get(comm, maxdims, dims, periods, coords, ierror)
            IMPLICIT NONE
            INTEGER :: comm
            INTEGER :: maxdims
            INTEGER :: dims(maxdims)
            LOGICAL :: periods(maxdims)
            INTEGER :: coords(maxdims)
            INTEGER :: ierror
        END SUBROUTINE PMPI_Cart_get
    END INTERFACE
    
    INTERFACE PMPI_Cart_map
        SUBROUTINE PMPI_Cart_map(comm, ndims, dims, periods, newrank, ierror)
            IMPLICIT NONE
            INTEGER :: comm
            INTEGER :: ndims
            INTEGER :: dims(ndims)
            LOGICAL :: periods(ndims)
            INTEGER :: newrank
            INTEGER :: ierror
        END SUBROUTINE PMPI_Cart_map
    END INTERFACE
    
    INTERFACE PMPI_Cart_rank
        SUBROUTINE PMPI_Cart_rank(comm, coords, rank, ierror)
            IMPLICIT NONE
            INTEGER :: comm
            INTEGER :: coords(*)
            INTEGER :: rank
            INTEGER :: ierror
        END SUBROUTINE PMPI_Cart_rank
    END INTERFACE
    
    INTERFACE PMPI_Cart_shift
        SUBROUTINE PMPI_Cart_shift(comm, direction, disp, rank_source, rank_dest, ierror)
            IMPLICIT NONE
            INTEGER :: comm
            INTEGER :: direction
            INTEGER :: disp
            INTEGER :: rank_source
            INTEGER :: rank_dest
            INTEGER :: ierror
        END SUBROUTINE PMPI_Cart_shift
    END INTERFACE
    
    INTERFACE PMPI_Cart_sub
        SUBROUTINE PMPI_Cart_sub(comm, remain_dims, newcomm, ierror)
            IMPLICIT NONE
            INTEGER :: comm
            LOGICAL :: remain_dims(*)
            INTEGER :: newcomm
            INTEGER :: ierror
        END SUBROUTINE PMPI_Cart_sub
    END INTERFACE
    
    INTERFACE PMPI_Cartdim_get
        SUBROUTINE PMPI_Cartdim_get(comm, ndims, ierror)
            IMPLICIT NONE
            INTEGER :: comm
            INTEGER :: ndims
            INTEGER :: ierror
        END SUBROUTINE PMPI_Cartdim_get
    END INTERFACE
    
    INTERFACE PMPI_Dims_create
        SUBROUTINE PMPI_Dims_create(nnodes, ndims, dims, ierror)
            IMPLICIT NONE
            INTEGER :: nnodes
            INTEGER :: ndims
            INTEGER :: dims(ndims)
            INTEGER :: ierror
        END SUBROUTINE PMPI_Dims_create
    END INTERFACE
    
    INTERFACE PMPI_Dist_graph_create
        SUBROUTINE PMPI_Dist_graph_create(comm_old, n, sources, degrees, destinations, weights, info, &
                                          reorder, comm_dist_graph, ierror)
            IMPLICIT NONE
            INTEGER :: comm_old
            INTEGER :: n
            INTEGER :: sources(n)
            INTEGER :: degrees(n)
            INTEGER :: destinations(*)
            INTEGER :: weights(*)
            INTEGER :: info
            LOGICAL :: reorder
            INTEGER :: comm_dist_graph
            INTEGER :: ierror
        END SUBROUTINE PMPI_Dist_graph_create
    END INTERFACE
    
    INTERFACE PMPI_Dist_graph_create_adjacent
        SUBROUTINE PMPI_Dist_graph_create_adjacent(comm_old, indegree, sources, sourceweights, outdegree, &
                                                   destinations, destweights, info, reorder, &
                                                   comm_dist_graph, ierror)
            IMPLICIT NONE
            INTEGER :: comm_old
            INTEGER :: indegree
            INTEGER :: sources(indegree)
            INTEGER :: sourceweights(*)
            INTEGER :: outdegree
            INTEGER :: destinations(outdegree)
            INTEGER :: destweights(*)
            INTEGER :: info
            LOGICAL :: reorder
            INTEGER :: comm_dist_graph
            INTEGER :: ierror
        END SUBROUTINE PMPI_Dist_graph_create_adjacent
    END INTERFACE
    
    INTERFACE PMPI_Dist_graph_neighbors
        SUBROUTINE PMPI_Dist_graph_neighbors(comm, maxindegree, sources, sourceweights, maxoutdegree, &
                                             destinations, destweights, ierror)
            IMPLICIT NONE
            INTEGER :: comm
            INTEGER :: maxindegree
            INTEGER :: sources(maxindegree)
            INTEGER :: sourceweights(*)
            INTEGER :: maxoutdegree
            INTEGER :: destinations(maxoutdegree)
            INTEGER :: destweights(*)
            INTEGER :: ierror
        END SUBROUTINE PMPI_Dist_graph_neighbors
    END INTERFACE
    
    INTERFACE PMPI_Dist_graph_neighbors_count
        SUBROUTINE PMPI_Dist_graph_neighbors_count(comm, indegree, outdegree, weighted, ierror)
            IMPLICIT NONE
            INTEGER :: comm
            INTEGER :: indegree
            INTEGER :: outdegree
            LOGICAL :: weighted
            INTEGER :: ierror
        END SUBROUTINE PMPI_Dist_graph_neighbors_count
    END INTERFACE
    
    INTERFACE PMPI_Get_hw_resource_info
        SUBROUTINE PMPI_Get_hw_resource_info(hw_info, ierror)
            IMPLICIT NONE
            INTEGER :: hw_info
            INTEGER :: ierror
        END SUBROUTINE PMPI_Get_hw_resource_info
    END INTERFACE
    
    INTERFACE PMPI_Graph_create
        SUBROUTINE PMPI_Graph_create(comm_old, nnodes, indx, edges, reorder, comm_graph, ierror)
            IMPLICIT NONE
            INTEGER :: comm_old
            INTEGER :: nnodes
            INTEGER :: indx(nnodes)
            INTEGER :: edges(*)
            LOGICAL :: reorder
            INTEGER :: comm_graph
            INTEGER :: ierror
        END SUBROUTINE PMPI_Graph_create
    END INTERFACE
    
    INTERFACE PMPI_Graph_get
        SUBROUTINE PMPI_Graph_get(comm, maxindex, maxedges, indx, edges, ierror)
            IMPLICIT NONE
            INTEGER :: comm
            INTEGER :: maxindex
            INTEGER :: maxedges
            INTEGER :: indx(maxindex)
            INTEGER :: edges(maxedges)
            INTEGER :: ierror
        END SUBROUTINE PMPI_Graph_get
    END INTERFACE
    
    INTERFACE PMPI_Graph_map
        SUBROUTINE PMPI_Graph_map(comm, nnodes, indx, edges, newrank, ierror)
            IMPLICIT NONE
            INTEGER :: comm
            INTEGER :: nnodes
            INTEGER :: indx(nnodes)
            INTEGER :: edges(*)
            INTEGER :: newrank
            INTEGER :: ierror
        END SUBROUTINE PMPI_Graph_map
    END INTERFACE
    
    INTERFACE PMPI_Graph_neighbors
        SUBROUTINE PMPI_Graph_neighbors(comm, rank, maxneighbors, neighbors, ierror)
            IMPLICIT NONE
            INTEGER :: comm
            INTEGER :: rank
            INTEGER :: maxneighbors
            INTEGER :: neighbors(maxneighbors)
            INTEGER :: ierror
        END SUBROUTINE PMPI_Graph_neighbors
    END INTERFACE
    
    INTERFACE PMPI_Graph_neighbors_count
        SUBROUTINE PMPI_Graph_neighbors_count(comm, rank, nneighbors, ierror)
            IMPLICIT NONE
            INTEGER :: comm
            INTEGER :: rank
            INTEGER :: nneighbors
            INTEGER :: ierror
        END SUBROUTINE PMPI_Graph_neighbors_count
    END INTERFACE
    
    INTERFACE PMPI_Graphdims_get
        SUBROUTINE PMPI_Graphdims_get(comm, nnodes, nedges, ierror)
            IMPLICIT NONE
            INTEGER :: comm
            INTEGER :: nnodes
            INTEGER :: nedges
            INTEGER :: ierror
        END SUBROUTINE PMPI_Graphdims_get
    END INTERFACE
    
    INTERFACE PMPI_Topo_test
        SUBROUTINE PMPI_Topo_test(comm, status, ierror)
            IMPLICIT NONE
            INTEGER :: comm
            INTEGER :: status
            INTEGER :: ierror
        END SUBROUTINE PMPI_Topo_test
    END INTERFACE
    
    INTERFACE PMPI_DUP_FN
        SUBROUTINE PMPI_DUP_FN(oldcomm, keyval, extra_state, attribute_val_in, attribute_val_out, flag, &
                               ierr)
            IMPLICIT NONE
            INTEGER :: oldcomm
            INTEGER :: keyval
            INTEGER :: extra_state
            INTEGER :: attribute_val_in
            INTEGER :: attribute_val_out
            LOGICAL :: flag
            INTEGER :: ierr
        END SUBROUTINE PMPI_DUP_FN
    END INTERFACE
    
    INTERFACE PMPI_NULL_COPY_FN
        SUBROUTINE PMPI_NULL_COPY_FN(oldcomm, keyval, extra_state, attribute_val_in, attribute_val_out, &
                                     flag, ierr)
            IMPLICIT NONE
            INTEGER :: oldcomm
            INTEGER :: keyval
            INTEGER :: extra_state
            INTEGER :: attribute_val_in
            INTEGER :: attribute_val_out
            LOGICAL :: flag
            INTEGER :: ierr
        END SUBROUTINE PMPI_NULL_COPY_FN
    END INTERFACE
    
    INTERFACE PMPI_NULL_DELETE_FN
        SUBROUTINE PMPI_NULL_DELETE_FN(comm, keyval, attribute_val, extra_state, ierror)
            IMPLICIT NONE
            INTEGER :: comm
            INTEGER :: keyval
            INTEGER :: attribute_val
            INTEGER :: extra_state
            INTEGER :: ierror
        END SUBROUTINE PMPI_NULL_DELETE_FN
    END INTERFACE
    
    INTERFACE PMPI_COMM_DUP_FN
        SUBROUTINE PMPI_COMM_DUP_FN(oldcomm, comm_keyval, extra_state, attribute_val_in, attribute_val_out, &
                                    flag, ierror)
            USE MPI_CONSTANTS, ONLY: MPI_ADDRESS_KIND
            IMPLICIT NONE
            INTEGER :: oldcomm
            INTEGER :: comm_keyval
            INTEGER(KIND=MPI_ADDRESS_KIND) :: extra_state
            INTEGER(KIND=MPI_ADDRESS_KIND) :: attribute_val_in
            INTEGER(KIND=MPI_ADDRESS_KIND) :: attribute_val_out
            LOGICAL :: flag
            INTEGER :: ierror
        END SUBROUTINE PMPI_COMM_DUP_FN
    END INTERFACE
    
    INTERFACE PMPI_COMM_NULL_COPY_FN
        SUBROUTINE PMPI_COMM_NULL_COPY_FN(oldcomm, comm_keyval, extra_state, attribute_val_in, &
                                          attribute_val_out, flag, ierror)
            USE MPI_CONSTANTS, ONLY: MPI_ADDRESS_KIND
            IMPLICIT NONE
            INTEGER :: oldcomm
            INTEGER :: comm_keyval
            INTEGER(KIND=MPI_ADDRESS_KIND) :: extra_state
            INTEGER(KIND=MPI_ADDRESS_KIND) :: attribute_val_in
            INTEGER(KIND=MPI_ADDRESS_KIND) :: attribute_val_out
            LOGICAL :: flag
            INTEGER :: ierror
        END SUBROUTINE PMPI_COMM_NULL_COPY_FN
    END INTERFACE
    
    INTERFACE PMPI_COMM_NULL_DELETE_FN
        SUBROUTINE PMPI_COMM_NULL_DELETE_FN(comm, comm_keyval, attribute_val, extra_state, ierror)
            USE MPI_CONSTANTS, ONLY: MPI_ADDRESS_KIND
            IMPLICIT NONE
            INTEGER :: comm
            INTEGER :: comm_keyval
            INTEGER(KIND=MPI_ADDRESS_KIND) :: attribute_val
            INTEGER(KIND=MPI_ADDRESS_KIND) :: extra_state
            INTEGER :: ierror
        END SUBROUTINE PMPI_COMM_NULL_DELETE_FN
    END INTERFACE
    
    INTERFACE PMPI_TYPE_DUP_FN
        SUBROUTINE PMPI_TYPE_DUP_FN(oldtype, type_keyval, extra_state, attribute_val_in, attribute_val_out, &
                                    flag, ierror)
            USE MPI_CONSTANTS, ONLY: MPI_ADDRESS_KIND
            IMPLICIT NONE
            INTEGER :: oldtype
            INTEGER :: type_keyval
            INTEGER(KIND=MPI_ADDRESS_KIND) :: extra_state
            INTEGER(KIND=MPI_ADDRESS_KIND) :: attribute_val_in
            INTEGER(KIND=MPI_ADDRESS_KIND) :: attribute_val_out
            LOGICAL :: flag
            INTEGER :: ierror
        END SUBROUTINE PMPI_TYPE_DUP_FN
    END INTERFACE
    
    INTERFACE PMPI_TYPE_NULL_COPY_FN
        SUBROUTINE PMPI_TYPE_NULL_COPY_FN(oldtype, type_keyval, extra_state, attribute_val_in, &
                                          attribute_val_out, flag, ierror)
            USE MPI_CONSTANTS, ONLY: MPI_ADDRESS_KIND
            IMPLICIT NONE
            INTEGER :: oldtype
            INTEGER :: type_keyval
            INTEGER(KIND=MPI_ADDRESS_KIND) :: extra_state
            INTEGER(KIND=MPI_ADDRESS_KIND) :: attribute_val_in
            INTEGER(KIND=MPI_ADDRESS_KIND) :: attribute_val_out
            LOGICAL :: flag
            INTEGER :: ierror
        END SUBROUTINE PMPI_TYPE_NULL_COPY_FN
    END INTERFACE
    
    INTERFACE PMPI_TYPE_NULL_DELETE_FN
        SUBROUTINE PMPI_TYPE_NULL_DELETE_FN(datatype, type_keyval, attribute_val, extra_state, ierror)
            USE MPI_CONSTANTS, ONLY: MPI_ADDRESS_KIND
            IMPLICIT NONE
            INTEGER :: datatype
            INTEGER :: type_keyval
            INTEGER(KIND=MPI_ADDRESS_KIND) :: attribute_val
            INTEGER(KIND=MPI_ADDRESS_KIND) :: extra_state
            INTEGER :: ierror
        END SUBROUTINE PMPI_TYPE_NULL_DELETE_FN
    END INTERFACE
    
    INTERFACE PMPI_WIN_DUP_FN
        SUBROUTINE PMPI_WIN_DUP_FN(oldwin, win_keyval, extra_state, attribute_val_in, attribute_val_out, &
                                   flag, ierror)
            USE MPI_CONSTANTS, ONLY: MPI_ADDRESS_KIND
            IMPLICIT NONE
            INTEGER :: oldwin
            INTEGER :: win_keyval
            INTEGER(KIND=MPI_ADDRESS_KIND) :: extra_state
            INTEGER(KIND=MPI_ADDRESS_KIND) :: attribute_val_in
            INTEGER(KIND=MPI_ADDRESS_KIND) :: attribute_val_out
            LOGICAL :: flag
            INTEGER :: ierror
        END SUBROUTINE PMPI_WIN_DUP_FN
    END INTERFACE
    
    INTERFACE PMPI_WIN_NULL_COPY_FN
        SUBROUTINE PMPI_WIN_NULL_COPY_FN(oldwin, win_keyval, extra_state, attribute_val_in, &
                                         attribute_val_out, flag, ierror)
            USE MPI_CONSTANTS, ONLY: MPI_ADDRESS_KIND
            IMPLICIT NONE
            INTEGER :: oldwin
            INTEGER :: win_keyval
            INTEGER(KIND=MPI_ADDRESS_KIND) :: extra_state
            INTEGER(KIND=MPI_ADDRESS_KIND) :: attribute_val_in
            INTEGER(KIND=MPI_ADDRESS_KIND) :: attribute_val_out
            LOGICAL :: flag
            INTEGER :: ierror
        END SUBROUTINE PMPI_WIN_NULL_COPY_FN
    END INTERFACE
    
    INTERFACE PMPI_WIN_NULL_DELETE_FN
        SUBROUTINE PMPI_WIN_NULL_DELETE_FN(win, win_keyval, attribute_val, extra_state, ierror)
            USE MPI_CONSTANTS, ONLY: MPI_ADDRESS_KIND
            IMPLICIT NONE
            INTEGER :: win
            INTEGER :: win_keyval
            INTEGER(KIND=MPI_ADDRESS_KIND) :: attribute_val
            INTEGER(KIND=MPI_ADDRESS_KIND) :: extra_state
            INTEGER :: ierror
        END SUBROUTINE PMPI_WIN_NULL_DELETE_FN
    END INTERFACE
    
    INTERFACE PMPI_CONVERSION_FN_NULL
        SUBROUTINE PMPI_CONVERSION_FN_NULL(userbuf, datatype, count, filebuf, position, extra_state, &
                                           ierror)
            USE MPI_CONSTANTS, ONLY: MPI_OFFSET_KIND, MPI_ADDRESS_KIND
            IMPLICIT NONE
            !GCC$ ATTRIBUTES NO_ARG_CHECK :: userbuf, filebuf
            REAL :: userbuf
            INTEGER :: datatype
            INTEGER :: count
            REAL :: filebuf
            INTEGER(KIND=MPI_OFFSET_KIND) :: position
            INTEGER(KIND=MPI_ADDRESS_KIND) :: extra_state
            INTEGER :: ierror
        END SUBROUTINE PMPI_CONVERSION_FN_NULL
    END INTERFACE
    
END MODULE pmpi_base
