!
! Copyright (C) by Argonne National Laboratory
!     See COPYRIGHT in top-level directory
!

! -- THIS FILE IS AUTO-GENERATED -- 

MODULE mpi_base
    IMPLICIT NONE
    INTERFACE MPI_Abi_get_fortran_info
        SUBROUTINE MPI_Abi_get_fortran_info(info, ierror)
            IMPLICIT NONE
            INTEGER :: info
            INTEGER :: ierror
        END SUBROUTINE MPI_Abi_get_fortran_info
    END INTERFACE
    
    INTERFACE MPI_Abi_get_info
        SUBROUTINE MPI_Abi_get_info(info, ierror)
            IMPLICIT NONE
            INTEGER :: info
            INTEGER :: ierror
        END SUBROUTINE MPI_Abi_get_info
    END INTERFACE
    
    INTERFACE MPI_Abi_get_version
        SUBROUTINE MPI_Abi_get_version(abi_major, abi_minor, ierror)
            IMPLICIT NONE
            INTEGER :: abi_major
            INTEGER :: abi_minor
            INTEGER :: ierror
        END SUBROUTINE MPI_Abi_get_version
    END INTERFACE
    
    INTERFACE MPI_Comm_create_keyval
        SUBROUTINE MPI_Comm_create_keyval(comm_copy_attr_fn, comm_delete_attr_fn, comm_keyval, extra_state, &
                                          ierror)
            USE MPI_CONSTANTS, ONLY: MPI_ADDRESS_KIND
            IMPLICIT NONE
            EXTERNAL :: comm_copy_attr_fn
            EXTERNAL :: comm_delete_attr_fn
            INTEGER :: comm_keyval
            INTEGER(KIND=MPI_ADDRESS_KIND) :: extra_state
            INTEGER :: ierror
        END SUBROUTINE MPI_Comm_create_keyval
    END INTERFACE
    
    INTERFACE MPI_Comm_delete_attr
        SUBROUTINE MPI_Comm_delete_attr(comm, comm_keyval, ierror)
            IMPLICIT NONE
            INTEGER :: comm
            INTEGER :: comm_keyval
            INTEGER :: ierror
        END SUBROUTINE MPI_Comm_delete_attr
    END INTERFACE
    
    INTERFACE MPI_Comm_free_keyval
        SUBROUTINE MPI_Comm_free_keyval(comm_keyval, ierror)
            IMPLICIT NONE
            INTEGER :: comm_keyval
            INTEGER :: ierror
        END SUBROUTINE MPI_Comm_free_keyval
    END INTERFACE
    
    INTERFACE MPI_Comm_get_attr
        SUBROUTINE MPI_Comm_get_attr(comm, comm_keyval, attribute_val, flag, ierror)
            USE MPI_CONSTANTS, ONLY: MPI_ADDRESS_KIND
            IMPLICIT NONE
            INTEGER :: comm
            INTEGER :: comm_keyval
            INTEGER(KIND=MPI_ADDRESS_KIND) :: attribute_val
            LOGICAL :: flag
            INTEGER :: ierror
        END SUBROUTINE MPI_Comm_get_attr
    END INTERFACE
    
    INTERFACE MPI_Comm_set_attr
        SUBROUTINE MPI_Comm_set_attr(comm, comm_keyval, attribute_val, ierror)
            USE MPI_CONSTANTS, ONLY: MPI_ADDRESS_KIND
            IMPLICIT NONE
            INTEGER :: comm
            INTEGER :: comm_keyval
            INTEGER(KIND=MPI_ADDRESS_KIND) :: attribute_val
            INTEGER :: ierror
        END SUBROUTINE MPI_Comm_set_attr
    END INTERFACE
    
    INTERFACE MPI_Keyval_create
        SUBROUTINE MPI_Keyval_create(copy_fn, delete_fn, keyval, extra_state, ierror)
            IMPLICIT NONE
            EXTERNAL :: copy_fn
            EXTERNAL :: delete_fn
            INTEGER :: keyval
            INTEGER :: extra_state
            INTEGER :: ierror
        END SUBROUTINE MPI_Keyval_create
    END INTERFACE
    
    INTERFACE MPI_Keyval_free
        SUBROUTINE MPI_Keyval_free(keyval, ierror)
            IMPLICIT NONE
            INTEGER :: keyval
            INTEGER :: ierror
        END SUBROUTINE MPI_Keyval_free
    END INTERFACE
    
    INTERFACE MPI_Type_create_keyval
        SUBROUTINE MPI_Type_create_keyval(type_copy_attr_fn, type_delete_attr_fn, type_keyval, extra_state, &
                                          ierror)
            USE MPI_CONSTANTS, ONLY: MPI_ADDRESS_KIND
            IMPLICIT NONE
            EXTERNAL :: type_copy_attr_fn
            EXTERNAL :: type_delete_attr_fn
            INTEGER :: type_keyval
            INTEGER(KIND=MPI_ADDRESS_KIND) :: extra_state
            INTEGER :: ierror
        END SUBROUTINE MPI_Type_create_keyval
    END INTERFACE
    
    INTERFACE MPI_Type_delete_attr
        SUBROUTINE MPI_Type_delete_attr(datatype, type_keyval, ierror)
            IMPLICIT NONE
            INTEGER :: datatype
            INTEGER :: type_keyval
            INTEGER :: ierror
        END SUBROUTINE MPI_Type_delete_attr
    END INTERFACE
    
    INTERFACE MPI_Type_free_keyval
        SUBROUTINE MPI_Type_free_keyval(type_keyval, ierror)
            IMPLICIT NONE
            INTEGER :: type_keyval
            INTEGER :: ierror
        END SUBROUTINE MPI_Type_free_keyval
    END INTERFACE
    
    INTERFACE MPI_Type_get_attr
        SUBROUTINE MPI_Type_get_attr(datatype, type_keyval, attribute_val, flag, ierror)
            USE MPI_CONSTANTS, ONLY: MPI_ADDRESS_KIND
            IMPLICIT NONE
            INTEGER :: datatype
            INTEGER :: type_keyval
            INTEGER(KIND=MPI_ADDRESS_KIND) :: attribute_val
            LOGICAL :: flag
            INTEGER :: ierror
        END SUBROUTINE MPI_Type_get_attr
    END INTERFACE
    
    INTERFACE MPI_Type_set_attr
        SUBROUTINE MPI_Type_set_attr(datatype, type_keyval, attribute_val, ierror)
            USE MPI_CONSTANTS, ONLY: MPI_ADDRESS_KIND
            IMPLICIT NONE
            INTEGER :: datatype
            INTEGER :: type_keyval
            INTEGER(KIND=MPI_ADDRESS_KIND) :: attribute_val
            INTEGER :: ierror
        END SUBROUTINE MPI_Type_set_attr
    END INTERFACE
    
    INTERFACE MPI_Win_create_keyval
        SUBROUTINE MPI_Win_create_keyval(win_copy_attr_fn, win_delete_attr_fn, win_keyval, extra_state, &
                                         ierror)
            USE MPI_CONSTANTS, ONLY: MPI_ADDRESS_KIND
            IMPLICIT NONE
            EXTERNAL :: win_copy_attr_fn
            EXTERNAL :: win_delete_attr_fn
            INTEGER :: win_keyval
            INTEGER(KIND=MPI_ADDRESS_KIND) :: extra_state
            INTEGER :: ierror
        END SUBROUTINE MPI_Win_create_keyval
    END INTERFACE
    
    INTERFACE MPI_Win_delete_attr
        SUBROUTINE MPI_Win_delete_attr(win, win_keyval, ierror)
            IMPLICIT NONE
            INTEGER :: win
            INTEGER :: win_keyval
            INTEGER :: ierror
        END SUBROUTINE MPI_Win_delete_attr
    END INTERFACE
    
    INTERFACE MPI_Win_free_keyval
        SUBROUTINE MPI_Win_free_keyval(win_keyval, ierror)
            IMPLICIT NONE
            INTEGER :: win_keyval
            INTEGER :: ierror
        END SUBROUTINE MPI_Win_free_keyval
    END INTERFACE
    
    INTERFACE MPI_Win_get_attr
        SUBROUTINE MPI_Win_get_attr(win, win_keyval, attribute_val, flag, ierror)
            USE MPI_CONSTANTS, ONLY: MPI_ADDRESS_KIND
            IMPLICIT NONE
            INTEGER :: win
            INTEGER :: win_keyval
            INTEGER(KIND=MPI_ADDRESS_KIND) :: attribute_val
            LOGICAL :: flag
            INTEGER :: ierror
        END SUBROUTINE MPI_Win_get_attr
    END INTERFACE
    
    INTERFACE MPI_Win_set_attr
        SUBROUTINE MPI_Win_set_attr(win, win_keyval, attribute_val, ierror)
            USE MPI_CONSTANTS, ONLY: MPI_ADDRESS_KIND
            IMPLICIT NONE
            INTEGER :: win
            INTEGER :: win_keyval
            INTEGER(KIND=MPI_ADDRESS_KIND) :: attribute_val
            INTEGER :: ierror
        END SUBROUTINE MPI_Win_set_attr
    END INTERFACE
    
    INTERFACE MPIX_Op_create_x
        SUBROUTINE MPIX_Op_create_x(user_fn_x, destructor_fn, commute, extra_state, op, ierror)
            USE MPI_CONSTANTS, ONLY: MPI_ADDRESS_KIND
            IMPLICIT NONE
            EXTERNAL :: user_fn_x
            EXTERNAL :: destructor_fn
            LOGICAL :: commute
            INTEGER(KIND=MPI_ADDRESS_KIND) :: extra_state
            INTEGER :: op
            INTEGER :: ierror
        END SUBROUTINE MPIX_Op_create_x
    END INTERFACE
    
    INTERFACE MPIX_Comm_create_errhandler_x
        SUBROUTINE MPIX_Comm_create_errhandler_x(comm_errhandler_fn_x, destructor_fn, extra_state, &
                                                 errhandler, ierror)
            USE MPI_CONSTANTS, ONLY: MPI_ADDRESS_KIND
            IMPLICIT NONE
            EXTERNAL :: comm_errhandler_fn_x
            EXTERNAL :: destructor_fn
            INTEGER(KIND=MPI_ADDRESS_KIND) :: extra_state
            INTEGER :: errhandler
            INTEGER :: ierror
        END SUBROUTINE MPIX_Comm_create_errhandler_x
    END INTERFACE
    
    INTERFACE MPIX_Win_create_errhandler_x
        SUBROUTINE MPIX_Win_create_errhandler_x(comm_errhandler_fn_x, destructor_fn, extra_state, &
                                                errhandler, ierror)
            USE MPI_CONSTANTS, ONLY: MPI_ADDRESS_KIND
            IMPLICIT NONE
            EXTERNAL :: comm_errhandler_fn_x
            EXTERNAL :: destructor_fn
            INTEGER(KIND=MPI_ADDRESS_KIND) :: extra_state
            INTEGER :: errhandler
            INTEGER :: ierror
        END SUBROUTINE MPIX_Win_create_errhandler_x
    END INTERFACE
    
    INTERFACE MPIX_File_create_errhandler_x
        SUBROUTINE MPIX_File_create_errhandler_x(comm_errhandler_fn_x, destructor_fn, extra_state, &
                                                 errhandler, ierror)
            USE MPI_CONSTANTS, ONLY: MPI_ADDRESS_KIND
            IMPLICIT NONE
            EXTERNAL :: comm_errhandler_fn_x
            EXTERNAL :: destructor_fn
            INTEGER(KIND=MPI_ADDRESS_KIND) :: extra_state
            INTEGER :: errhandler
            INTEGER :: ierror
        END SUBROUTINE MPIX_File_create_errhandler_x
    END INTERFACE
    
    INTERFACE MPIX_Session_create_errhandler_x
        SUBROUTINE MPIX_Session_create_errhandler_x(comm_errhandler_fn_x, destructor_fn, extra_state, &
                                                    errhandler, ierror)
            USE MPI_CONSTANTS, ONLY: MPI_ADDRESS_KIND
            IMPLICIT NONE
            EXTERNAL :: comm_errhandler_fn_x
            EXTERNAL :: destructor_fn
            INTEGER(KIND=MPI_ADDRESS_KIND) :: extra_state
            INTEGER :: errhandler
            INTEGER :: ierror
        END SUBROUTINE MPIX_Session_create_errhandler_x
    END INTERFACE
    
    INTERFACE MPI_Allgather
        SUBROUTINE MPI_Allgather(sendbuf, sendcount, sendtype, recvbuf, recvcount, recvtype, comm, ierror)
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
        END SUBROUTINE MPI_Allgather
    END INTERFACE
    
    INTERFACE MPI_Allgather_init
        SUBROUTINE MPI_Allgather_init(sendbuf, sendcount, sendtype, recvbuf, recvcount, recvtype, comm, &
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
        END SUBROUTINE MPI_Allgather_init
    END INTERFACE
    
    INTERFACE MPI_Allgatherv
        SUBROUTINE MPI_Allgatherv(sendbuf, sendcount, sendtype, recvbuf, recvcounts, displs, recvtype, comm, &
                                  ierror)
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
        END SUBROUTINE MPI_Allgatherv
    END INTERFACE
    
    INTERFACE MPI_Allgatherv_init
        SUBROUTINE MPI_Allgatherv_init(sendbuf, sendcount, sendtype, recvbuf, recvcounts, displs, recvtype, &
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
        END SUBROUTINE MPI_Allgatherv_init
    END INTERFACE
    
    INTERFACE MPI_Allreduce
        SUBROUTINE MPI_Allreduce(sendbuf, recvbuf, count, datatype, op, comm, ierror)
            IMPLICIT NONE
            !GCC$ ATTRIBUTES NO_ARG_CHECK :: sendbuf, recvbuf
            REAL :: sendbuf
            REAL :: recvbuf
            INTEGER :: count
            INTEGER :: datatype
            INTEGER :: op
            INTEGER :: comm
            INTEGER :: ierror
        END SUBROUTINE MPI_Allreduce
    END INTERFACE
    
    INTERFACE MPI_Allreduce_init
        SUBROUTINE MPI_Allreduce_init(sendbuf, recvbuf, count, datatype, op, comm, info, request, ierror)
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
        END SUBROUTINE MPI_Allreduce_init
    END INTERFACE
    
    INTERFACE MPI_Alltoall
        SUBROUTINE MPI_Alltoall(sendbuf, sendcount, sendtype, recvbuf, recvcount, recvtype, comm, ierror)
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
        END SUBROUTINE MPI_Alltoall
    END INTERFACE
    
    INTERFACE MPI_Alltoall_init
        SUBROUTINE MPI_Alltoall_init(sendbuf, sendcount, sendtype, recvbuf, recvcount, recvtype, comm, info, &
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
            INTEGER :: info
            INTEGER :: request
            INTEGER :: ierror
        END SUBROUTINE MPI_Alltoall_init
    END INTERFACE
    
    INTERFACE MPI_Alltoallv
        SUBROUTINE MPI_Alltoallv(sendbuf, sendcounts, sdispls, sendtype, recvbuf, recvcounts, rdispls, &
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
        END SUBROUTINE MPI_Alltoallv
    END INTERFACE
    
    INTERFACE MPI_Alltoallv_init
        SUBROUTINE MPI_Alltoallv_init(sendbuf, sendcounts, sdispls, sendtype, recvbuf, recvcounts, rdispls, &
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
        END SUBROUTINE MPI_Alltoallv_init
    END INTERFACE
    
    INTERFACE MPI_Alltoallw
        SUBROUTINE MPI_Alltoallw(sendbuf, sendcounts, sdispls, sendtypes, recvbuf, recvcounts, rdispls, &
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
        END SUBROUTINE MPI_Alltoallw
    END INTERFACE
    
    INTERFACE MPI_Alltoallw_init
        SUBROUTINE MPI_Alltoallw_init(sendbuf, sendcounts, sdispls, sendtypes, recvbuf, recvcounts, rdispls, &
                                      recvtypes, comm, info, request, ierror)
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
        END SUBROUTINE MPI_Alltoallw_init
    END INTERFACE
    
    INTERFACE MPI_Barrier
        SUBROUTINE MPI_Barrier(comm, ierror)
            IMPLICIT NONE
            INTEGER :: comm
            INTEGER :: ierror
        END SUBROUTINE MPI_Barrier
    END INTERFACE
    
    INTERFACE MPI_Barrier_init
        SUBROUTINE MPI_Barrier_init(comm, info, request, ierror)
            IMPLICIT NONE
            INTEGER :: comm
            INTEGER :: info
            INTEGER :: request
            INTEGER :: ierror
        END SUBROUTINE MPI_Barrier_init
    END INTERFACE
    
    INTERFACE MPI_Bcast
        SUBROUTINE MPI_Bcast(buffer, count, datatype, root, comm, ierror)
            IMPLICIT NONE
            !GCC$ ATTRIBUTES NO_ARG_CHECK :: buffer
            REAL :: buffer
            INTEGER :: count
            INTEGER :: datatype
            INTEGER :: root
            INTEGER :: comm
            INTEGER :: ierror
        END SUBROUTINE MPI_Bcast
    END INTERFACE
    
    INTERFACE MPI_Bcast_init
        SUBROUTINE MPI_Bcast_init(buffer, count, datatype, root, comm, info, request, ierror)
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
        END SUBROUTINE MPI_Bcast_init
    END INTERFACE
    
    INTERFACE MPI_Exscan
        SUBROUTINE MPI_Exscan(sendbuf, recvbuf, count, datatype, op, comm, ierror)
            IMPLICIT NONE
            !GCC$ ATTRIBUTES NO_ARG_CHECK :: sendbuf, recvbuf
            REAL :: sendbuf
            REAL :: recvbuf
            INTEGER :: count
            INTEGER :: datatype
            INTEGER :: op
            INTEGER :: comm
            INTEGER :: ierror
        END SUBROUTINE MPI_Exscan
    END INTERFACE
    
    INTERFACE MPI_Exscan_init
        SUBROUTINE MPI_Exscan_init(sendbuf, recvbuf, count, datatype, op, comm, info, request, ierror)
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
        END SUBROUTINE MPI_Exscan_init
    END INTERFACE
    
    INTERFACE MPI_Gather
        SUBROUTINE MPI_Gather(sendbuf, sendcount, sendtype, recvbuf, recvcount, recvtype, root, comm, &
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
        END SUBROUTINE MPI_Gather
    END INTERFACE
    
    INTERFACE MPI_Gather_init
        SUBROUTINE MPI_Gather_init(sendbuf, sendcount, sendtype, recvbuf, recvcount, recvtype, root, comm, &
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
        END SUBROUTINE MPI_Gather_init
    END INTERFACE
    
    INTERFACE MPI_Gatherv
        SUBROUTINE MPI_Gatherv(sendbuf, sendcount, sendtype, recvbuf, recvcounts, displs, recvtype, root, &
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
        END SUBROUTINE MPI_Gatherv
    END INTERFACE
    
    INTERFACE MPI_Gatherv_init
        SUBROUTINE MPI_Gatherv_init(sendbuf, sendcount, sendtype, recvbuf, recvcounts, displs, recvtype, &
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
        END SUBROUTINE MPI_Gatherv_init
    END INTERFACE
    
    INTERFACE MPI_Iallgather
        SUBROUTINE MPI_Iallgather(sendbuf, sendcount, sendtype, recvbuf, recvcount, recvtype, comm, request, &
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
        END SUBROUTINE MPI_Iallgather
    END INTERFACE
    
    INTERFACE MPI_Iallgatherv
        SUBROUTINE MPI_Iallgatherv(sendbuf, sendcount, sendtype, recvbuf, recvcounts, displs, recvtype, &
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
        END SUBROUTINE MPI_Iallgatherv
    END INTERFACE
    
    INTERFACE MPI_Iallreduce
        SUBROUTINE MPI_Iallreduce(sendbuf, recvbuf, count, datatype, op, comm, request, ierror)
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
        END SUBROUTINE MPI_Iallreduce
    END INTERFACE
    
    INTERFACE MPI_Ialltoall
        SUBROUTINE MPI_Ialltoall(sendbuf, sendcount, sendtype, recvbuf, recvcount, recvtype, comm, request, &
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
        END SUBROUTINE MPI_Ialltoall
    END INTERFACE
    
    INTERFACE MPI_Ialltoallv
        SUBROUTINE MPI_Ialltoallv(sendbuf, sendcounts, sdispls, sendtype, recvbuf, recvcounts, rdispls, &
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
        END SUBROUTINE MPI_Ialltoallv
    END INTERFACE
    
    INTERFACE MPI_Ialltoallw
        SUBROUTINE MPI_Ialltoallw(sendbuf, sendcounts, sdispls, sendtypes, recvbuf, recvcounts, rdispls, &
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
        END SUBROUTINE MPI_Ialltoallw
    END INTERFACE
    
    INTERFACE MPI_Ibarrier
        SUBROUTINE MPI_Ibarrier(comm, request, ierror)
            IMPLICIT NONE
            INTEGER :: comm
            INTEGER :: request
            INTEGER :: ierror
        END SUBROUTINE MPI_Ibarrier
    END INTERFACE
    
    INTERFACE MPI_Ibcast
        SUBROUTINE MPI_Ibcast(buffer, count, datatype, root, comm, request, ierror)
            IMPLICIT NONE
            !GCC$ ATTRIBUTES NO_ARG_CHECK :: buffer
            REAL :: buffer
            INTEGER :: count
            INTEGER :: datatype
            INTEGER :: root
            INTEGER :: comm
            INTEGER :: request
            INTEGER :: ierror
        END SUBROUTINE MPI_Ibcast
    END INTERFACE
    
    INTERFACE MPI_Iexscan
        SUBROUTINE MPI_Iexscan(sendbuf, recvbuf, count, datatype, op, comm, request, ierror)
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
        END SUBROUTINE MPI_Iexscan
    END INTERFACE
    
    INTERFACE MPI_Igather
        SUBROUTINE MPI_Igather(sendbuf, sendcount, sendtype, recvbuf, recvcount, recvtype, root, comm, &
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
        END SUBROUTINE MPI_Igather
    END INTERFACE
    
    INTERFACE MPI_Igatherv
        SUBROUTINE MPI_Igatherv(sendbuf, sendcount, sendtype, recvbuf, recvcounts, displs, recvtype, root, &
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
        END SUBROUTINE MPI_Igatherv
    END INTERFACE
    
    INTERFACE MPI_Ineighbor_allgather
        SUBROUTINE MPI_Ineighbor_allgather(sendbuf, sendcount, sendtype, recvbuf, recvcount, recvtype, comm, &
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
        END SUBROUTINE MPI_Ineighbor_allgather
    END INTERFACE
    
    INTERFACE MPI_Ineighbor_allgatherv
        SUBROUTINE MPI_Ineighbor_allgatherv(sendbuf, sendcount, sendtype, recvbuf, recvcounts, displs, &
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
        END SUBROUTINE MPI_Ineighbor_allgatherv
    END INTERFACE
    
    INTERFACE MPI_Ineighbor_alltoall
        SUBROUTINE MPI_Ineighbor_alltoall(sendbuf, sendcount, sendtype, recvbuf, recvcount, recvtype, comm, &
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
        END SUBROUTINE MPI_Ineighbor_alltoall
    END INTERFACE
    
    INTERFACE MPI_Ineighbor_alltoallv
        SUBROUTINE MPI_Ineighbor_alltoallv(sendbuf, sendcounts, sdispls, sendtype, recvbuf, recvcounts, &
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
        END SUBROUTINE MPI_Ineighbor_alltoallv
    END INTERFACE
    
    INTERFACE MPI_Ineighbor_alltoallw
        SUBROUTINE MPI_Ineighbor_alltoallw(sendbuf, sendcounts, sdispls, sendtypes, recvbuf, recvcounts, &
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
        END SUBROUTINE MPI_Ineighbor_alltoallw
    END INTERFACE
    
    INTERFACE MPI_Ireduce
        SUBROUTINE MPI_Ireduce(sendbuf, recvbuf, count, datatype, op, root, comm, request, ierror)
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
        END SUBROUTINE MPI_Ireduce
    END INTERFACE
    
    INTERFACE MPI_Ireduce_scatter
        SUBROUTINE MPI_Ireduce_scatter(sendbuf, recvbuf, recvcounts, datatype, op, comm, request, ierror)
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
        END SUBROUTINE MPI_Ireduce_scatter
    END INTERFACE
    
    INTERFACE MPI_Ireduce_scatter_block
        SUBROUTINE MPI_Ireduce_scatter_block(sendbuf, recvbuf, recvcount, datatype, op, comm, request, &
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
        END SUBROUTINE MPI_Ireduce_scatter_block
    END INTERFACE
    
    INTERFACE MPI_Iscan
        SUBROUTINE MPI_Iscan(sendbuf, recvbuf, count, datatype, op, comm, request, ierror)
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
        END SUBROUTINE MPI_Iscan
    END INTERFACE
    
    INTERFACE MPI_Iscatter
        SUBROUTINE MPI_Iscatter(sendbuf, sendcount, sendtype, recvbuf, recvcount, recvtype, root, comm, &
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
        END SUBROUTINE MPI_Iscatter
    END INTERFACE
    
    INTERFACE MPI_Iscatterv
        SUBROUTINE MPI_Iscatterv(sendbuf, sendcounts, displs, sendtype, recvbuf, recvcount, recvtype, root, &
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
        END SUBROUTINE MPI_Iscatterv
    END INTERFACE
    
    INTERFACE MPI_Neighbor_allgather
        SUBROUTINE MPI_Neighbor_allgather(sendbuf, sendcount, sendtype, recvbuf, recvcount, recvtype, comm, &
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
        END SUBROUTINE MPI_Neighbor_allgather
    END INTERFACE
    
    INTERFACE MPI_Neighbor_allgather_init
        SUBROUTINE MPI_Neighbor_allgather_init(sendbuf, sendcount, sendtype, recvbuf, recvcount, recvtype, &
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
        END SUBROUTINE MPI_Neighbor_allgather_init
    END INTERFACE
    
    INTERFACE MPI_Neighbor_allgatherv
        SUBROUTINE MPI_Neighbor_allgatherv(sendbuf, sendcount, sendtype, recvbuf, recvcounts, displs, &
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
        END SUBROUTINE MPI_Neighbor_allgatherv
    END INTERFACE
    
    INTERFACE MPI_Neighbor_allgatherv_init
        SUBROUTINE MPI_Neighbor_allgatherv_init(sendbuf, sendcount, sendtype, recvbuf, recvcounts, displs, &
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
        END SUBROUTINE MPI_Neighbor_allgatherv_init
    END INTERFACE
    
    INTERFACE MPI_Neighbor_alltoall
        SUBROUTINE MPI_Neighbor_alltoall(sendbuf, sendcount, sendtype, recvbuf, recvcount, recvtype, comm, &
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
        END SUBROUTINE MPI_Neighbor_alltoall
    END INTERFACE
    
    INTERFACE MPI_Neighbor_alltoall_init
        SUBROUTINE MPI_Neighbor_alltoall_init(sendbuf, sendcount, sendtype, recvbuf, recvcount, recvtype, &
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
        END SUBROUTINE MPI_Neighbor_alltoall_init
    END INTERFACE
    
    INTERFACE MPI_Neighbor_alltoallv
        SUBROUTINE MPI_Neighbor_alltoallv(sendbuf, sendcounts, sdispls, sendtype, recvbuf, recvcounts, &
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
        END SUBROUTINE MPI_Neighbor_alltoallv
    END INTERFACE
    
    INTERFACE MPI_Neighbor_alltoallv_init
        SUBROUTINE MPI_Neighbor_alltoallv_init(sendbuf, sendcounts, sdispls, sendtype, recvbuf, recvcounts, &
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
        END SUBROUTINE MPI_Neighbor_alltoallv_init
    END INTERFACE
    
    INTERFACE MPI_Neighbor_alltoallw
        SUBROUTINE MPI_Neighbor_alltoallw(sendbuf, sendcounts, sdispls, sendtypes, recvbuf, recvcounts, &
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
        END SUBROUTINE MPI_Neighbor_alltoallw
    END INTERFACE
    
    INTERFACE MPI_Neighbor_alltoallw_init
        SUBROUTINE MPI_Neighbor_alltoallw_init(sendbuf, sendcounts, sdispls, sendtypes, recvbuf, recvcounts, &
                                               rdispls, recvtypes, comm, info, request, ierror)
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
        END SUBROUTINE MPI_Neighbor_alltoallw_init
    END INTERFACE
    
    INTERFACE MPI_Reduce
        SUBROUTINE MPI_Reduce(sendbuf, recvbuf, count, datatype, op, root, comm, ierror)
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
        END SUBROUTINE MPI_Reduce
    END INTERFACE
    
    INTERFACE MPI_Reduce_init
        SUBROUTINE MPI_Reduce_init(sendbuf, recvbuf, count, datatype, op, root, comm, info, request, &
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
        END SUBROUTINE MPI_Reduce_init
    END INTERFACE
    
    INTERFACE MPI_Reduce_local
        SUBROUTINE MPI_Reduce_local(inbuf, inoutbuf, count, datatype, op, ierror)
            IMPLICIT NONE
            !GCC$ ATTRIBUTES NO_ARG_CHECK :: inbuf, inoutbuf
            REAL :: inbuf
            REAL :: inoutbuf
            INTEGER :: count
            INTEGER :: datatype
            INTEGER :: op
            INTEGER :: ierror
        END SUBROUTINE MPI_Reduce_local
    END INTERFACE
    
    INTERFACE MPI_Reduce_scatter
        SUBROUTINE MPI_Reduce_scatter(sendbuf, recvbuf, recvcounts, datatype, op, comm, ierror)
            IMPLICIT NONE
            !GCC$ ATTRIBUTES NO_ARG_CHECK :: sendbuf, recvbuf
            REAL :: sendbuf
            REAL :: recvbuf
            INTEGER :: recvcounts(*)
            INTEGER :: datatype
            INTEGER :: op
            INTEGER :: comm
            INTEGER :: ierror
        END SUBROUTINE MPI_Reduce_scatter
    END INTERFACE
    
    INTERFACE MPI_Reduce_scatter_block
        SUBROUTINE MPI_Reduce_scatter_block(sendbuf, recvbuf, recvcount, datatype, op, comm, ierror)
            IMPLICIT NONE
            !GCC$ ATTRIBUTES NO_ARG_CHECK :: sendbuf, recvbuf
            REAL :: sendbuf
            REAL :: recvbuf
            INTEGER :: recvcount
            INTEGER :: datatype
            INTEGER :: op
            INTEGER :: comm
            INTEGER :: ierror
        END SUBROUTINE MPI_Reduce_scatter_block
    END INTERFACE
    
    INTERFACE MPI_Reduce_scatter_block_init
        SUBROUTINE MPI_Reduce_scatter_block_init(sendbuf, recvbuf, recvcount, datatype, op, comm, info, &
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
        END SUBROUTINE MPI_Reduce_scatter_block_init
    END INTERFACE
    
    INTERFACE MPI_Reduce_scatter_init
        SUBROUTINE MPI_Reduce_scatter_init(sendbuf, recvbuf, recvcounts, datatype, op, comm, info, request, &
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
        END SUBROUTINE MPI_Reduce_scatter_init
    END INTERFACE
    
    INTERFACE MPI_Scan
        SUBROUTINE MPI_Scan(sendbuf, recvbuf, count, datatype, op, comm, ierror)
            IMPLICIT NONE
            !GCC$ ATTRIBUTES NO_ARG_CHECK :: sendbuf, recvbuf
            REAL :: sendbuf
            REAL :: recvbuf
            INTEGER :: count
            INTEGER :: datatype
            INTEGER :: op
            INTEGER :: comm
            INTEGER :: ierror
        END SUBROUTINE MPI_Scan
    END INTERFACE
    
    INTERFACE MPI_Scan_init
        SUBROUTINE MPI_Scan_init(sendbuf, recvbuf, count, datatype, op, comm, info, request, ierror)
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
        END SUBROUTINE MPI_Scan_init
    END INTERFACE
    
    INTERFACE MPI_Scatter
        SUBROUTINE MPI_Scatter(sendbuf, sendcount, sendtype, recvbuf, recvcount, recvtype, root, comm, &
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
        END SUBROUTINE MPI_Scatter
    END INTERFACE
    
    INTERFACE MPI_Scatter_init
        SUBROUTINE MPI_Scatter_init(sendbuf, sendcount, sendtype, recvbuf, recvcount, recvtype, root, comm, &
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
        END SUBROUTINE MPI_Scatter_init
    END INTERFACE
    
    INTERFACE MPI_Scatterv
        SUBROUTINE MPI_Scatterv(sendbuf, sendcounts, displs, sendtype, recvbuf, recvcount, recvtype, root, &
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
        END SUBROUTINE MPI_Scatterv
    END INTERFACE
    
    INTERFACE MPI_Scatterv_init
        SUBROUTINE MPI_Scatterv_init(sendbuf, sendcounts, displs, sendtype, recvbuf, recvcount, recvtype, &
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
        END SUBROUTINE MPI_Scatterv_init
    END INTERFACE
    
    INTERFACE MPI_Comm_compare
        SUBROUTINE MPI_Comm_compare(comm1, comm2, result, ierror)
            IMPLICIT NONE
            INTEGER :: comm1
            INTEGER :: comm2
            INTEGER :: result
            INTEGER :: ierror
        END SUBROUTINE MPI_Comm_compare
    END INTERFACE
    
    INTERFACE MPI_Comm_create
        SUBROUTINE MPI_Comm_create(comm, group, newcomm, ierror)
            IMPLICIT NONE
            INTEGER :: comm
            INTEGER :: group
            INTEGER :: newcomm
            INTEGER :: ierror
        END SUBROUTINE MPI_Comm_create
    END INTERFACE
    
    INTERFACE MPI_Comm_create_group
        SUBROUTINE MPI_Comm_create_group(comm, group, tag, newcomm, ierror)
            IMPLICIT NONE
            INTEGER :: comm
            INTEGER :: group
            INTEGER :: tag
            INTEGER :: newcomm
            INTEGER :: ierror
        END SUBROUTINE MPI_Comm_create_group
    END INTERFACE
    
    INTERFACE MPI_Comm_dup
        SUBROUTINE MPI_Comm_dup(comm, newcomm, ierror)
            IMPLICIT NONE
            INTEGER :: comm
            INTEGER :: newcomm
            INTEGER :: ierror
        END SUBROUTINE MPI_Comm_dup
    END INTERFACE
    
    INTERFACE MPI_Comm_dup_with_info
        SUBROUTINE MPI_Comm_dup_with_info(comm, info, newcomm, ierror)
            IMPLICIT NONE
            INTEGER :: comm
            INTEGER :: info
            INTEGER :: newcomm
            INTEGER :: ierror
        END SUBROUTINE MPI_Comm_dup_with_info
    END INTERFACE
    
    INTERFACE MPI_Comm_free
        SUBROUTINE MPI_Comm_free(comm, ierror)
            IMPLICIT NONE
            INTEGER :: comm
            INTEGER :: ierror
        END SUBROUTINE MPI_Comm_free
    END INTERFACE
    
    INTERFACE MPI_Comm_get_info
        SUBROUTINE MPI_Comm_get_info(comm, info_used, ierror)
            IMPLICIT NONE
            INTEGER :: comm
            INTEGER :: info_used
            INTEGER :: ierror
        END SUBROUTINE MPI_Comm_get_info
    END INTERFACE
    
    INTERFACE MPI_Comm_get_name
        SUBROUTINE MPI_Comm_get_name(comm, comm_name, resultlen, ierror)
            IMPLICIT NONE
            INTEGER :: comm
            CHARACTER*(*) :: comm_name
            INTEGER :: resultlen
            INTEGER :: ierror
        END SUBROUTINE MPI_Comm_get_name
    END INTERFACE
    
    INTERFACE MPI_Comm_group
        SUBROUTINE MPI_Comm_group(comm, group, ierror)
            IMPLICIT NONE
            INTEGER :: comm
            INTEGER :: group
            INTEGER :: ierror
        END SUBROUTINE MPI_Comm_group
    END INTERFACE
    
    INTERFACE MPI_Comm_idup
        SUBROUTINE MPI_Comm_idup(comm, newcomm, request, ierror)
            IMPLICIT NONE
            INTEGER :: comm
            INTEGER :: newcomm
            INTEGER :: request
            INTEGER :: ierror
        END SUBROUTINE MPI_Comm_idup
    END INTERFACE
    
    INTERFACE MPI_Comm_idup_with_info
        SUBROUTINE MPI_Comm_idup_with_info(comm, info, newcomm, request, ierror)
            IMPLICIT NONE
            INTEGER :: comm
            INTEGER :: info
            INTEGER :: newcomm
            INTEGER :: request
            INTEGER :: ierror
        END SUBROUTINE MPI_Comm_idup_with_info
    END INTERFACE
    
    INTERFACE MPI_Comm_rank
        SUBROUTINE MPI_Comm_rank(comm, rank, ierror)
            IMPLICIT NONE
            INTEGER :: comm
            INTEGER :: rank
            INTEGER :: ierror
        END SUBROUTINE MPI_Comm_rank
    END INTERFACE
    
    INTERFACE MPI_Comm_remote_group
        SUBROUTINE MPI_Comm_remote_group(comm, group, ierror)
            IMPLICIT NONE
            INTEGER :: comm
            INTEGER :: group
            INTEGER :: ierror
        END SUBROUTINE MPI_Comm_remote_group
    END INTERFACE
    
    INTERFACE MPI_Comm_remote_size
        SUBROUTINE MPI_Comm_remote_size(comm, size, ierror)
            IMPLICIT NONE
            INTEGER :: comm
            INTEGER :: size
            INTEGER :: ierror
        END SUBROUTINE MPI_Comm_remote_size
    END INTERFACE
    
    INTERFACE MPI_Comm_set_info
        SUBROUTINE MPI_Comm_set_info(comm, info, ierror)
            IMPLICIT NONE
            INTEGER :: comm
            INTEGER :: info
            INTEGER :: ierror
        END SUBROUTINE MPI_Comm_set_info
    END INTERFACE
    
    INTERFACE MPI_Comm_set_name
        SUBROUTINE MPI_Comm_set_name(comm, comm_name, ierror)
            IMPLICIT NONE
            INTEGER :: comm
            CHARACTER*(*) :: comm_name
            INTEGER :: ierror
        END SUBROUTINE MPI_Comm_set_name
    END INTERFACE
    
    INTERFACE MPI_Comm_size
        SUBROUTINE MPI_Comm_size(comm, size, ierror)
            IMPLICIT NONE
            INTEGER :: comm
            INTEGER :: size
            INTEGER :: ierror
        END SUBROUTINE MPI_Comm_size
    END INTERFACE
    
    INTERFACE MPI_Comm_split
        SUBROUTINE MPI_Comm_split(comm, color, key, newcomm, ierror)
            IMPLICIT NONE
            INTEGER :: comm
            INTEGER :: color
            INTEGER :: key
            INTEGER :: newcomm
            INTEGER :: ierror
        END SUBROUTINE MPI_Comm_split
    END INTERFACE
    
    INTERFACE MPI_Comm_split_type
        SUBROUTINE MPI_Comm_split_type(comm, split_type, key, info, newcomm, ierror)
            IMPLICIT NONE
            INTEGER :: comm
            INTEGER :: split_type
            INTEGER :: key
            INTEGER :: info
            INTEGER :: newcomm
            INTEGER :: ierror
        END SUBROUTINE MPI_Comm_split_type
    END INTERFACE
    
    INTERFACE MPI_Comm_test_inter
        SUBROUTINE MPI_Comm_test_inter(comm, flag, ierror)
            IMPLICIT NONE
            INTEGER :: comm
            LOGICAL :: flag
            INTEGER :: ierror
        END SUBROUTINE MPI_Comm_test_inter
    END INTERFACE
    
    INTERFACE MPI_Intercomm_create
        SUBROUTINE MPI_Intercomm_create(local_comm, local_leader, peer_comm, remote_leader, tag, &
                                        newintercomm, ierror)
            IMPLICIT NONE
            INTEGER :: local_comm
            INTEGER :: local_leader
            INTEGER :: peer_comm
            INTEGER :: remote_leader
            INTEGER :: tag
            INTEGER :: newintercomm
            INTEGER :: ierror
        END SUBROUTINE MPI_Intercomm_create
    END INTERFACE
    
    INTERFACE MPI_Intercomm_create_from_groups
        SUBROUTINE MPI_Intercomm_create_from_groups(local_group, local_leader, remote_group, remote_leader, &
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
        END SUBROUTINE MPI_Intercomm_create_from_groups
    END INTERFACE
    
    INTERFACE MPI_Intercomm_merge
        SUBROUTINE MPI_Intercomm_merge(intercomm, high, newintracomm, ierror)
            IMPLICIT NONE
            INTEGER :: intercomm
            LOGICAL :: high
            INTEGER :: newintracomm
            INTEGER :: ierror
        END SUBROUTINE MPI_Intercomm_merge
    END INTERFACE
    
    INTERFACE MPIX_Comm_test_threadcomm
        SUBROUTINE MPIX_Comm_test_threadcomm(comm, flag, ierror)
            IMPLICIT NONE
            INTEGER :: comm
            LOGICAL :: flag
            INTEGER :: ierror
        END SUBROUTINE MPIX_Comm_test_threadcomm
    END INTERFACE
    
    INTERFACE MPIX_Comm_revoke
        SUBROUTINE MPIX_Comm_revoke(comm, ierror)
            IMPLICIT NONE
            INTEGER :: comm
            INTEGER :: ierror
        END SUBROUTINE MPIX_Comm_revoke
    END INTERFACE
    
    INTERFACE MPIX_Comm_shrink
        SUBROUTINE MPIX_Comm_shrink(comm, newcomm, ierror)
            IMPLICIT NONE
            INTEGER :: comm
            INTEGER :: newcomm
            INTEGER :: ierror
        END SUBROUTINE MPIX_Comm_shrink
    END INTERFACE
    
    INTERFACE MPIX_Comm_failure_ack
        SUBROUTINE MPIX_Comm_failure_ack(comm, ierror)
            IMPLICIT NONE
            INTEGER :: comm
            INTEGER :: ierror
        END SUBROUTINE MPIX_Comm_failure_ack
    END INTERFACE
    
    INTERFACE MPIX_Comm_failure_get_acked
        SUBROUTINE MPIX_Comm_failure_get_acked(comm, failedgrp, ierror)
            IMPLICIT NONE
            INTEGER :: comm
            INTEGER :: failedgrp
            INTEGER :: ierror
        END SUBROUTINE MPIX_Comm_failure_get_acked
    END INTERFACE
    
    INTERFACE MPIX_Comm_agree
        SUBROUTINE MPIX_Comm_agree(comm, flag, ierror)
            IMPLICIT NONE
            INTEGER :: comm
            LOGICAL :: flag
            INTEGER :: ierror
        END SUBROUTINE MPIX_Comm_agree
    END INTERFACE
    
    INTERFACE MPIX_Comm_get_failed
        SUBROUTINE MPIX_Comm_get_failed(comm, failedgrp, ierror)
            IMPLICIT NONE
            INTEGER :: comm
            INTEGER :: failedgrp
            INTEGER :: ierror
        END SUBROUTINE MPIX_Comm_get_failed
    END INTERFACE
    
    INTERFACE MPI_Get_address
        SUBROUTINE MPI_Get_address(location, address, ierror)
            USE MPI_CONSTANTS, ONLY: MPI_ADDRESS_KIND
            IMPLICIT NONE
            !GCC$ ATTRIBUTES NO_ARG_CHECK :: location
            REAL :: location
            INTEGER(KIND=MPI_ADDRESS_KIND) :: address
            INTEGER :: ierror
        END SUBROUTINE MPI_Get_address
    END INTERFACE
    
    INTERFACE MPI_Get_count
        SUBROUTINE MPI_Get_count(status, datatype, count, ierror)
            USE MPI_CONSTANTS, ONLY: MPI_STATUS_SIZE
            IMPLICIT NONE
            INTEGER :: status(MPI_STATUS_SIZE)
            INTEGER :: datatype
            INTEGER :: count
            INTEGER :: ierror
        END SUBROUTINE MPI_Get_count
    END INTERFACE
    
    INTERFACE MPI_Get_elements
        SUBROUTINE MPI_Get_elements(status, datatype, count, ierror)
            USE MPI_CONSTANTS, ONLY: MPI_STATUS_SIZE
            IMPLICIT NONE
            INTEGER :: status(MPI_STATUS_SIZE)
            INTEGER :: datatype
            INTEGER :: count
            INTEGER :: ierror
        END SUBROUTINE MPI_Get_elements
    END INTERFACE
    
    INTERFACE MPI_Get_elements_x
        SUBROUTINE MPI_Get_elements_x(status, datatype, count, ierror)
            USE MPI_CONSTANTS, ONLY: MPI_STATUS_SIZE, MPI_COUNT_KIND
            IMPLICIT NONE
            INTEGER :: status(MPI_STATUS_SIZE)
            INTEGER :: datatype
            INTEGER(KIND=MPI_COUNT_KIND) :: count
            INTEGER :: ierror
        END SUBROUTINE MPI_Get_elements_x
    END INTERFACE
    
    INTERFACE MPI_Pack
        SUBROUTINE MPI_Pack(inbuf, incount, datatype, outbuf, outsize, position, comm, ierror)
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
        END SUBROUTINE MPI_Pack
    END INTERFACE
    
    INTERFACE MPI_Pack_external
        SUBROUTINE MPI_Pack_external(datarep, inbuf, incount, datatype, outbuf, outsize, position, ierror)
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
        END SUBROUTINE MPI_Pack_external
    END INTERFACE
    
    INTERFACE MPI_Pack_external_size
        SUBROUTINE MPI_Pack_external_size(datarep, incount, datatype, size, ierror)
            USE MPI_CONSTANTS, ONLY: MPI_ADDRESS_KIND
            IMPLICIT NONE
            CHARACTER*(*) :: datarep
            INTEGER :: incount
            INTEGER :: datatype
            INTEGER(KIND=MPI_ADDRESS_KIND) :: size
            INTEGER :: ierror
        END SUBROUTINE MPI_Pack_external_size
    END INTERFACE
    
    INTERFACE MPI_Pack_size
        SUBROUTINE MPI_Pack_size(incount, datatype, comm, size, ierror)
            IMPLICIT NONE
            INTEGER :: incount
            INTEGER :: datatype
            INTEGER :: comm
            INTEGER :: size
            INTEGER :: ierror
        END SUBROUTINE MPI_Pack_size
    END INTERFACE
    
    INTERFACE MPI_Status_set_elements
        SUBROUTINE MPI_Status_set_elements(status, datatype, count, ierror)
            USE MPI_CONSTANTS, ONLY: MPI_STATUS_SIZE
            IMPLICIT NONE
            INTEGER :: status(MPI_STATUS_SIZE)
            INTEGER :: datatype
            INTEGER :: count
            INTEGER :: ierror
        END SUBROUTINE MPI_Status_set_elements
    END INTERFACE
    
    INTERFACE MPI_Status_set_elements_x
        SUBROUTINE MPI_Status_set_elements_x(status, datatype, count, ierror)
            USE MPI_CONSTANTS, ONLY: MPI_STATUS_SIZE, MPI_COUNT_KIND
            IMPLICIT NONE
            INTEGER :: status(MPI_STATUS_SIZE)
            INTEGER :: datatype
            INTEGER(KIND=MPI_COUNT_KIND) :: count
            INTEGER :: ierror
        END SUBROUTINE MPI_Status_set_elements_x
    END INTERFACE
    
    INTERFACE MPI_Type_commit
        SUBROUTINE MPI_Type_commit(datatype, ierror)
            IMPLICIT NONE
            INTEGER :: datatype
            INTEGER :: ierror
        END SUBROUTINE MPI_Type_commit
    END INTERFACE
    
    INTERFACE MPI_Type_contiguous
        SUBROUTINE MPI_Type_contiguous(count, oldtype, newtype, ierror)
            IMPLICIT NONE
            INTEGER :: count
            INTEGER :: oldtype
            INTEGER :: newtype
            INTEGER :: ierror
        END SUBROUTINE MPI_Type_contiguous
    END INTERFACE
    
    INTERFACE MPI_Type_create_darray
        SUBROUTINE MPI_Type_create_darray(size, rank, ndims, array_of_gsizes, array_of_distribs, &
                                          array_of_dargs, array_of_psizes, order, oldtype, newtype, ierror)
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
        END SUBROUTINE MPI_Type_create_darray
    END INTERFACE
    
    INTERFACE MPI_Type_create_f90_complex
        SUBROUTINE MPI_Type_create_f90_complex(p, r, newtype, ierror)
            IMPLICIT NONE
            INTEGER :: p
            INTEGER :: r
            INTEGER :: newtype
            INTEGER :: ierror
        END SUBROUTINE MPI_Type_create_f90_complex
    END INTERFACE
    
    INTERFACE MPI_Type_create_f90_integer
        SUBROUTINE MPI_Type_create_f90_integer(r, newtype, ierror)
            IMPLICIT NONE
            INTEGER :: r
            INTEGER :: newtype
            INTEGER :: ierror
        END SUBROUTINE MPI_Type_create_f90_integer
    END INTERFACE
    
    INTERFACE MPI_Type_create_f90_real
        SUBROUTINE MPI_Type_create_f90_real(p, r, newtype, ierror)
            IMPLICIT NONE
            INTEGER :: p
            INTEGER :: r
            INTEGER :: newtype
            INTEGER :: ierror
        END SUBROUTINE MPI_Type_create_f90_real
    END INTERFACE
    
    INTERFACE MPI_Type_create_hindexed
        SUBROUTINE MPI_Type_create_hindexed(count, array_of_blocklengths, array_of_displacements, oldtype, &
                                            newtype, ierror)
            USE MPI_CONSTANTS, ONLY: MPI_ADDRESS_KIND
            IMPLICIT NONE
            INTEGER :: count
            INTEGER :: array_of_blocklengths(count)
            INTEGER(KIND=MPI_ADDRESS_KIND) :: array_of_displacements(count)
            INTEGER :: oldtype
            INTEGER :: newtype
            INTEGER :: ierror
        END SUBROUTINE MPI_Type_create_hindexed
    END INTERFACE
    
    INTERFACE MPI_Type_create_hindexed_block
        SUBROUTINE MPI_Type_create_hindexed_block(count, blocklength, array_of_displacements, oldtype, &
                                                  newtype, ierror)
            USE MPI_CONSTANTS, ONLY: MPI_ADDRESS_KIND
            IMPLICIT NONE
            INTEGER :: count
            INTEGER :: blocklength
            INTEGER(KIND=MPI_ADDRESS_KIND) :: array_of_displacements(count)
            INTEGER :: oldtype
            INTEGER :: newtype
            INTEGER :: ierror
        END SUBROUTINE MPI_Type_create_hindexed_block
    END INTERFACE
    
    INTERFACE MPI_Type_create_hvector
        SUBROUTINE MPI_Type_create_hvector(count, blocklength, stride, oldtype, newtype, ierror)
            USE MPI_CONSTANTS, ONLY: MPI_ADDRESS_KIND
            IMPLICIT NONE
            INTEGER :: count
            INTEGER :: blocklength
            INTEGER(KIND=MPI_ADDRESS_KIND) :: stride
            INTEGER :: oldtype
            INTEGER :: newtype
            INTEGER :: ierror
        END SUBROUTINE MPI_Type_create_hvector
    END INTERFACE
    
    INTERFACE MPI_Type_create_indexed_block
        SUBROUTINE MPI_Type_create_indexed_block(count, blocklength, array_of_displacements, oldtype, &
                                                 newtype, ierror)
            IMPLICIT NONE
            INTEGER :: count
            INTEGER :: blocklength
            INTEGER :: array_of_displacements(count)
            INTEGER :: oldtype
            INTEGER :: newtype
            INTEGER :: ierror
        END SUBROUTINE MPI_Type_create_indexed_block
    END INTERFACE
    
    INTERFACE MPI_Type_create_resized
        SUBROUTINE MPI_Type_create_resized(oldtype, lb, extent, newtype, ierror)
            USE MPI_CONSTANTS, ONLY: MPI_ADDRESS_KIND
            IMPLICIT NONE
            INTEGER :: oldtype
            INTEGER(KIND=MPI_ADDRESS_KIND) :: lb
            INTEGER(KIND=MPI_ADDRESS_KIND) :: extent
            INTEGER :: newtype
            INTEGER :: ierror
        END SUBROUTINE MPI_Type_create_resized
    END INTERFACE
    
    INTERFACE MPI_Type_create_struct
        SUBROUTINE MPI_Type_create_struct(count, array_of_blocklengths, array_of_displacements, &
                                          array_of_types, newtype, ierror)
            USE MPI_CONSTANTS, ONLY: MPI_ADDRESS_KIND
            IMPLICIT NONE
            INTEGER :: count
            INTEGER :: array_of_blocklengths(count)
            INTEGER(KIND=MPI_ADDRESS_KIND) :: array_of_displacements(count)
            INTEGER :: array_of_types(count)
            INTEGER :: newtype
            INTEGER :: ierror
        END SUBROUTINE MPI_Type_create_struct
    END INTERFACE
    
    INTERFACE MPI_Type_create_subarray
        SUBROUTINE MPI_Type_create_subarray(ndims, array_of_sizes, array_of_subsizes, array_of_starts, &
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
        END SUBROUTINE MPI_Type_create_subarray
    END INTERFACE
    
    INTERFACE MPI_Type_dup
        SUBROUTINE MPI_Type_dup(oldtype, newtype, ierror)
            IMPLICIT NONE
            INTEGER :: oldtype
            INTEGER :: newtype
            INTEGER :: ierror
        END SUBROUTINE MPI_Type_dup
    END INTERFACE
    
    INTERFACE MPI_Type_free
        SUBROUTINE MPI_Type_free(datatype, ierror)
            IMPLICIT NONE
            INTEGER :: datatype
            INTEGER :: ierror
        END SUBROUTINE MPI_Type_free
    END INTERFACE
    
    INTERFACE MPI_Type_get_contents
        SUBROUTINE MPI_Type_get_contents(datatype, max_integers, max_addresses, max_datatypes, &
                                         array_of_integers, array_of_addresses, array_of_datatypes, ierror)
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
        END SUBROUTINE MPI_Type_get_contents
    END INTERFACE
    
    INTERFACE MPI_Type_get_envelope
        SUBROUTINE MPI_Type_get_envelope(datatype, num_integers, num_addresses, num_datatypes, combiner, &
                                         ierror)
            IMPLICIT NONE
            INTEGER :: datatype
            INTEGER :: num_integers
            INTEGER :: num_addresses
            INTEGER :: num_datatypes
            INTEGER :: combiner
            INTEGER :: ierror
        END SUBROUTINE MPI_Type_get_envelope
    END INTERFACE
    
    INTERFACE MPI_Type_get_extent
        SUBROUTINE MPI_Type_get_extent(datatype, lb, extent, ierror)
            USE MPI_CONSTANTS, ONLY: MPI_ADDRESS_KIND
            IMPLICIT NONE
            INTEGER :: datatype
            INTEGER(KIND=MPI_ADDRESS_KIND) :: lb
            INTEGER(KIND=MPI_ADDRESS_KIND) :: extent
            INTEGER :: ierror
        END SUBROUTINE MPI_Type_get_extent
    END INTERFACE
    
    INTERFACE MPI_Type_get_extent_x
        SUBROUTINE MPI_Type_get_extent_x(datatype, lb, extent, ierror)
            USE MPI_CONSTANTS, ONLY: MPI_COUNT_KIND
            IMPLICIT NONE
            INTEGER :: datatype
            INTEGER(KIND=MPI_COUNT_KIND) :: lb
            INTEGER(KIND=MPI_COUNT_KIND) :: extent
            INTEGER :: ierror
        END SUBROUTINE MPI_Type_get_extent_x
    END INTERFACE
    
    INTERFACE MPI_Type_get_name
        SUBROUTINE MPI_Type_get_name(datatype, type_name, resultlen, ierror)
            IMPLICIT NONE
            INTEGER :: datatype
            CHARACTER*(*) :: type_name
            INTEGER :: resultlen
            INTEGER :: ierror
        END SUBROUTINE MPI_Type_get_name
    END INTERFACE
    
    INTERFACE MPI_Type_get_true_extent
        SUBROUTINE MPI_Type_get_true_extent(datatype, true_lb, true_extent, ierror)
            USE MPI_CONSTANTS, ONLY: MPI_ADDRESS_KIND
            IMPLICIT NONE
            INTEGER :: datatype
            INTEGER(KIND=MPI_ADDRESS_KIND) :: true_lb
            INTEGER(KIND=MPI_ADDRESS_KIND) :: true_extent
            INTEGER :: ierror
        END SUBROUTINE MPI_Type_get_true_extent
    END INTERFACE
    
    INTERFACE MPI_Type_get_true_extent_x
        SUBROUTINE MPI_Type_get_true_extent_x(datatype, true_lb, true_extent, ierror)
            USE MPI_CONSTANTS, ONLY: MPI_COUNT_KIND
            IMPLICIT NONE
            INTEGER :: datatype
            INTEGER(KIND=MPI_COUNT_KIND) :: true_lb
            INTEGER(KIND=MPI_COUNT_KIND) :: true_extent
            INTEGER :: ierror
        END SUBROUTINE MPI_Type_get_true_extent_x
    END INTERFACE
    
    INTERFACE MPI_Type_get_value_index
        SUBROUTINE MPI_Type_get_value_index(value_type, index_type, pair_type, ierror)
            IMPLICIT NONE
            INTEGER :: value_type
            INTEGER :: index_type
            INTEGER :: pair_type
            INTEGER :: ierror
        END SUBROUTINE MPI_Type_get_value_index
    END INTERFACE
    
    INTERFACE MPI_Type_indexed
        SUBROUTINE MPI_Type_indexed(count, array_of_blocklengths, array_of_displacements, oldtype, newtype, &
                                    ierror)
            IMPLICIT NONE
            INTEGER :: count
            INTEGER :: array_of_blocklengths(count)
            INTEGER :: array_of_displacements(count)
            INTEGER :: oldtype
            INTEGER :: newtype
            INTEGER :: ierror
        END SUBROUTINE MPI_Type_indexed
    END INTERFACE
    
    INTERFACE MPI_Type_match_size
        SUBROUTINE MPI_Type_match_size(typeclass, size, datatype, ierror)
            IMPLICIT NONE
            INTEGER :: typeclass
            INTEGER :: size
            INTEGER :: datatype
            INTEGER :: ierror
        END SUBROUTINE MPI_Type_match_size
    END INTERFACE
    
    INTERFACE MPI_Type_set_name
        SUBROUTINE MPI_Type_set_name(datatype, type_name, ierror)
            IMPLICIT NONE
            INTEGER :: datatype
            CHARACTER*(*) :: type_name
            INTEGER :: ierror
        END SUBROUTINE MPI_Type_set_name
    END INTERFACE
    
    INTERFACE MPI_Type_size
        SUBROUTINE MPI_Type_size(datatype, size, ierror)
            IMPLICIT NONE
            INTEGER :: datatype
            INTEGER :: size
            INTEGER :: ierror
        END SUBROUTINE MPI_Type_size
    END INTERFACE
    
    INTERFACE MPI_Type_size_x
        SUBROUTINE MPI_Type_size_x(datatype, size, ierror)
            USE MPI_CONSTANTS, ONLY: MPI_COUNT_KIND
            IMPLICIT NONE
            INTEGER :: datatype
            INTEGER(KIND=MPI_COUNT_KIND) :: size
            INTEGER :: ierror
        END SUBROUTINE MPI_Type_size_x
    END INTERFACE
    
    INTERFACE MPI_Type_vector
        SUBROUTINE MPI_Type_vector(count, blocklength, stride, oldtype, newtype, ierror)
            IMPLICIT NONE
            INTEGER :: count
            INTEGER :: blocklength
            INTEGER :: stride
            INTEGER :: oldtype
            INTEGER :: newtype
            INTEGER :: ierror
        END SUBROUTINE MPI_Type_vector
    END INTERFACE
    
    INTERFACE MPI_Unpack
        SUBROUTINE MPI_Unpack(inbuf, insize, position, outbuf, outcount, datatype, comm, ierror)
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
        END SUBROUTINE MPI_Unpack
    END INTERFACE
    
    INTERFACE MPI_Unpack_external
        SUBROUTINE MPI_Unpack_external(datarep, inbuf, insize, position, outbuf, outcount, datatype, &
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
        END SUBROUTINE MPI_Unpack_external
    END INTERFACE
    
    INTERFACE MPI_Address
        SUBROUTINE MPI_Address(location, address, ierror)
            USE MPI_CONSTANTS, ONLY: MPI_ADDRESS_KIND
            IMPLICIT NONE
            !GCC$ ATTRIBUTES NO_ARG_CHECK :: location
            REAL :: location
            INTEGER(KIND=MPI_ADDRESS_KIND) :: address
            INTEGER :: ierror
        END SUBROUTINE MPI_Address
    END INTERFACE
    
    INTERFACE MPI_Type_extent
        SUBROUTINE MPI_Type_extent(datatype, extent, ierror)
            IMPLICIT NONE
            INTEGER :: datatype
            INTEGER :: extent
            INTEGER :: ierror
        END SUBROUTINE MPI_Type_extent
    END INTERFACE
    
    INTERFACE MPI_Type_lb
        SUBROUTINE MPI_Type_lb(datatype, displacement, ierror)
            IMPLICIT NONE
            INTEGER :: datatype
            INTEGER :: displacement
            INTEGER :: ierror
        END SUBROUTINE MPI_Type_lb
    END INTERFACE
    
    INTERFACE MPI_Type_ub
        SUBROUTINE MPI_Type_ub(datatype, displacement, ierror)
            IMPLICIT NONE
            INTEGER :: datatype
            INTEGER :: displacement
            INTEGER :: ierror
        END SUBROUTINE MPI_Type_ub
    END INTERFACE
    
    INTERFACE MPI_Type_hindexed
        SUBROUTINE MPI_Type_hindexed(count, array_of_blocklengths, array_of_displacements, oldtype, newtype, &
                                     ierror)
            IMPLICIT NONE
            INTEGER :: count
            INTEGER :: array_of_blocklengths(count)
            INTEGER :: array_of_displacements(count)
            INTEGER :: oldtype
            INTEGER :: newtype
            INTEGER :: ierror
        END SUBROUTINE MPI_Type_hindexed
    END INTERFACE
    
    INTERFACE MPI_Type_hvector
        SUBROUTINE MPI_Type_hvector(count, blocklength, stride, oldtype, newtype, ierror)
            IMPLICIT NONE
            INTEGER :: count
            INTEGER :: blocklength
            INTEGER :: stride
            INTEGER :: oldtype
            INTEGER :: newtype
            INTEGER :: ierror
        END SUBROUTINE MPI_Type_hvector
    END INTERFACE
    
    INTERFACE MPI_Type_struct
        SUBROUTINE MPI_Type_struct(count, array_of_blocklengths, array_of_displacements, array_of_types, &
                                   newtype, ierror)
            IMPLICIT NONE
            INTEGER :: count
            INTEGER :: array_of_blocklengths(count)
            INTEGER :: array_of_displacements(count)
            INTEGER :: array_of_types(count)
            INTEGER :: newtype
            INTEGER :: ierror
        END SUBROUTINE MPI_Type_struct
    END INTERFACE
    
    INTERFACE MPI_Add_error_class
        SUBROUTINE MPI_Add_error_class(errorclass, ierror)
            IMPLICIT NONE
            INTEGER :: errorclass
            INTEGER :: ierror
        END SUBROUTINE MPI_Add_error_class
    END INTERFACE
    
    INTERFACE MPI_Add_error_code
        SUBROUTINE MPI_Add_error_code(errorclass, errorcode, ierror)
            IMPLICIT NONE
            INTEGER :: errorclass
            INTEGER :: errorcode
            INTEGER :: ierror
        END SUBROUTINE MPI_Add_error_code
    END INTERFACE
    
    INTERFACE MPI_Add_error_string
        SUBROUTINE MPI_Add_error_string(errorcode, string, ierror)
            IMPLICIT NONE
            INTEGER :: errorcode
            CHARACTER*(*) :: string
            INTEGER :: ierror
        END SUBROUTINE MPI_Add_error_string
    END INTERFACE
    
    INTERFACE MPI_Comm_call_errhandler
        SUBROUTINE MPI_Comm_call_errhandler(comm, errorcode, ierror)
            IMPLICIT NONE
            INTEGER :: comm
            INTEGER :: errorcode
            INTEGER :: ierror
        END SUBROUTINE MPI_Comm_call_errhandler
    END INTERFACE
    
    INTERFACE MPI_Comm_create_errhandler
        SUBROUTINE MPI_Comm_create_errhandler(comm_errhandler_fn, errhandler, ierror)
            IMPLICIT NONE
            EXTERNAL :: comm_errhandler_fn
            INTEGER :: errhandler
            INTEGER :: ierror
        END SUBROUTINE MPI_Comm_create_errhandler
    END INTERFACE
    
    INTERFACE MPI_Comm_get_errhandler
        SUBROUTINE MPI_Comm_get_errhandler(comm, errhandler, ierror)
            IMPLICIT NONE
            INTEGER :: comm
            INTEGER :: errhandler
            INTEGER :: ierror
        END SUBROUTINE MPI_Comm_get_errhandler
    END INTERFACE
    
    INTERFACE MPI_Comm_set_errhandler
        SUBROUTINE MPI_Comm_set_errhandler(comm, errhandler, ierror)
            IMPLICIT NONE
            INTEGER :: comm
            INTEGER :: errhandler
            INTEGER :: ierror
        END SUBROUTINE MPI_Comm_set_errhandler
    END INTERFACE
    
    INTERFACE MPI_Errhandler_free
        SUBROUTINE MPI_Errhandler_free(errhandler, ierror)
            IMPLICIT NONE
            INTEGER :: errhandler
            INTEGER :: ierror
        END SUBROUTINE MPI_Errhandler_free
    END INTERFACE
    
    INTERFACE MPI_Error_class
        SUBROUTINE MPI_Error_class(errorcode, errorclass, ierror)
            IMPLICIT NONE
            INTEGER :: errorcode
            INTEGER :: errorclass
            INTEGER :: ierror
        END SUBROUTINE MPI_Error_class
    END INTERFACE
    
    INTERFACE MPI_Error_string
        SUBROUTINE MPI_Error_string(errorcode, string, resultlen, ierror)
            IMPLICIT NONE
            INTEGER :: errorcode
            CHARACTER*(*) :: string
            INTEGER :: resultlen
            INTEGER :: ierror
        END SUBROUTINE MPI_Error_string
    END INTERFACE
    
    INTERFACE MPI_File_call_errhandler
        SUBROUTINE MPI_File_call_errhandler(fh, errorcode, ierror)
            IMPLICIT NONE
            INTEGER :: fh
            INTEGER :: errorcode
            INTEGER :: ierror
        END SUBROUTINE MPI_File_call_errhandler
    END INTERFACE
    
    INTERFACE MPI_File_create_errhandler
        SUBROUTINE MPI_File_create_errhandler(file_errhandler_fn, errhandler, ierror)
            IMPLICIT NONE
            EXTERNAL :: file_errhandler_fn
            INTEGER :: errhandler
            INTEGER :: ierror
        END SUBROUTINE MPI_File_create_errhandler
    END INTERFACE
    
    INTERFACE MPI_File_get_errhandler
        SUBROUTINE MPI_File_get_errhandler(file, errhandler, ierror)
            IMPLICIT NONE
            INTEGER :: file
            INTEGER :: errhandler
            INTEGER :: ierror
        END SUBROUTINE MPI_File_get_errhandler
    END INTERFACE
    
    INTERFACE MPI_File_set_errhandler
        SUBROUTINE MPI_File_set_errhandler(file, errhandler, ierror)
            IMPLICIT NONE
            INTEGER :: file
            INTEGER :: errhandler
            INTEGER :: ierror
        END SUBROUTINE MPI_File_set_errhandler
    END INTERFACE
    
    INTERFACE MPI_Remove_error_class
        SUBROUTINE MPI_Remove_error_class(errorclass, ierror)
            IMPLICIT NONE
            INTEGER :: errorclass
            INTEGER :: ierror
        END SUBROUTINE MPI_Remove_error_class
    END INTERFACE
    
    INTERFACE MPI_Remove_error_code
        SUBROUTINE MPI_Remove_error_code(errorcode, ierror)
            IMPLICIT NONE
            INTEGER :: errorcode
            INTEGER :: ierror
        END SUBROUTINE MPI_Remove_error_code
    END INTERFACE
    
    INTERFACE MPI_Remove_error_string
        SUBROUTINE MPI_Remove_error_string(errorcode, ierror)
            IMPLICIT NONE
            INTEGER :: errorcode
            INTEGER :: ierror
        END SUBROUTINE MPI_Remove_error_string
    END INTERFACE
    
    INTERFACE MPI_Session_call_errhandler
        SUBROUTINE MPI_Session_call_errhandler(session, errorcode, ierror)
            IMPLICIT NONE
            INTEGER :: session
            INTEGER :: errorcode
            INTEGER :: ierror
        END SUBROUTINE MPI_Session_call_errhandler
    END INTERFACE
    
    INTERFACE MPI_Session_create_errhandler
        SUBROUTINE MPI_Session_create_errhandler(session_errhandler_fn, errhandler, ierror)
            IMPLICIT NONE
            EXTERNAL :: session_errhandler_fn
            INTEGER :: errhandler
            INTEGER :: ierror
        END SUBROUTINE MPI_Session_create_errhandler
    END INTERFACE
    
    INTERFACE MPI_Session_get_errhandler
        SUBROUTINE MPI_Session_get_errhandler(session, errhandler, ierror)
            IMPLICIT NONE
            INTEGER :: session
            INTEGER :: errhandler
            INTEGER :: ierror
        END SUBROUTINE MPI_Session_get_errhandler
    END INTERFACE
    
    INTERFACE MPI_Session_set_errhandler
        SUBROUTINE MPI_Session_set_errhandler(session, errhandler, ierror)
            IMPLICIT NONE
            INTEGER :: session
            INTEGER :: errhandler
            INTEGER :: ierror
        END SUBROUTINE MPI_Session_set_errhandler
    END INTERFACE
    
    INTERFACE MPI_Win_call_errhandler
        SUBROUTINE MPI_Win_call_errhandler(win, errorcode, ierror)
            IMPLICIT NONE
            INTEGER :: win
            INTEGER :: errorcode
            INTEGER :: ierror
        END SUBROUTINE MPI_Win_call_errhandler
    END INTERFACE
    
    INTERFACE MPI_Win_create_errhandler
        SUBROUTINE MPI_Win_create_errhandler(win_errhandler_fn, errhandler, ierror)
            IMPLICIT NONE
            EXTERNAL :: win_errhandler_fn
            INTEGER :: errhandler
            INTEGER :: ierror
        END SUBROUTINE MPI_Win_create_errhandler
    END INTERFACE
    
    INTERFACE MPI_Win_get_errhandler
        SUBROUTINE MPI_Win_get_errhandler(win, errhandler, ierror)
            IMPLICIT NONE
            INTEGER :: win
            INTEGER :: errhandler
            INTEGER :: ierror
        END SUBROUTINE MPI_Win_get_errhandler
    END INTERFACE
    
    INTERFACE MPI_Win_set_errhandler
        SUBROUTINE MPI_Win_set_errhandler(win, errhandler, ierror)
            IMPLICIT NONE
            INTEGER :: win
            INTEGER :: errhandler
            INTEGER :: ierror
        END SUBROUTINE MPI_Win_set_errhandler
    END INTERFACE
    
    INTERFACE MPI_Errhandler_create
        SUBROUTINE MPI_Errhandler_create(comm_errhandler_fn, errhandler, ierror)
            IMPLICIT NONE
            EXTERNAL :: comm_errhandler_fn
            INTEGER :: errhandler
            INTEGER :: ierror
        END SUBROUTINE MPI_Errhandler_create
    END INTERFACE
    
    INTERFACE MPI_Errhandler_get
        SUBROUTINE MPI_Errhandler_get(comm, errhandler, ierror)
            IMPLICIT NONE
            INTEGER :: comm
            INTEGER :: errhandler
            INTEGER :: ierror
        END SUBROUTINE MPI_Errhandler_get
    END INTERFACE
    
    INTERFACE MPI_Errhandler_set
        SUBROUTINE MPI_Errhandler_set(comm, errhandler, ierror)
            IMPLICIT NONE
            INTEGER :: comm
            INTEGER :: errhandler
            INTEGER :: ierror
        END SUBROUTINE MPI_Errhandler_set
    END INTERFACE
    
    INTERFACE MPI_Group_compare
        SUBROUTINE MPI_Group_compare(group1, group2, result, ierror)
            IMPLICIT NONE
            INTEGER :: group1
            INTEGER :: group2
            INTEGER :: result
            INTEGER :: ierror
        END SUBROUTINE MPI_Group_compare
    END INTERFACE
    
    INTERFACE MPI_Group_difference
        SUBROUTINE MPI_Group_difference(group1, group2, newgroup, ierror)
            IMPLICIT NONE
            INTEGER :: group1
            INTEGER :: group2
            INTEGER :: newgroup
            INTEGER :: ierror
        END SUBROUTINE MPI_Group_difference
    END INTERFACE
    
    INTERFACE MPI_Group_excl
        SUBROUTINE MPI_Group_excl(group, n, ranks, newgroup, ierror)
            IMPLICIT NONE
            INTEGER :: group
            INTEGER :: n
            INTEGER :: ranks(n)
            INTEGER :: newgroup
            INTEGER :: ierror
        END SUBROUTINE MPI_Group_excl
    END INTERFACE
    
    INTERFACE MPI_Group_free
        SUBROUTINE MPI_Group_free(group, ierror)
            IMPLICIT NONE
            INTEGER :: group
            INTEGER :: ierror
        END SUBROUTINE MPI_Group_free
    END INTERFACE
    
    INTERFACE MPI_Group_incl
        SUBROUTINE MPI_Group_incl(group, n, ranks, newgroup, ierror)
            IMPLICIT NONE
            INTEGER :: group
            INTEGER :: n
            INTEGER :: ranks(n)
            INTEGER :: newgroup
            INTEGER :: ierror
        END SUBROUTINE MPI_Group_incl
    END INTERFACE
    
    INTERFACE MPI_Group_intersection
        SUBROUTINE MPI_Group_intersection(group1, group2, newgroup, ierror)
            IMPLICIT NONE
            INTEGER :: group1
            INTEGER :: group2
            INTEGER :: newgroup
            INTEGER :: ierror
        END SUBROUTINE MPI_Group_intersection
    END INTERFACE
    
    INTERFACE MPI_Group_range_excl
        SUBROUTINE MPI_Group_range_excl(group, n, ranges, newgroup, ierror)
            IMPLICIT NONE
            INTEGER :: group
            INTEGER :: n
            INTEGER :: ranges(3, *)
            INTEGER :: newgroup
            INTEGER :: ierror
        END SUBROUTINE MPI_Group_range_excl
    END INTERFACE
    
    INTERFACE MPI_Group_range_incl
        SUBROUTINE MPI_Group_range_incl(group, n, ranges, newgroup, ierror)
            IMPLICIT NONE
            INTEGER :: group
            INTEGER :: n
            INTEGER :: ranges(3, *)
            INTEGER :: newgroup
            INTEGER :: ierror
        END SUBROUTINE MPI_Group_range_incl
    END INTERFACE
    
    INTERFACE MPI_Group_rank
        SUBROUTINE MPI_Group_rank(group, rank, ierror)
            IMPLICIT NONE
            INTEGER :: group
            INTEGER :: rank
            INTEGER :: ierror
        END SUBROUTINE MPI_Group_rank
    END INTERFACE
    
    INTERFACE MPI_Group_size
        SUBROUTINE MPI_Group_size(group, size, ierror)
            IMPLICIT NONE
            INTEGER :: group
            INTEGER :: size
            INTEGER :: ierror
        END SUBROUTINE MPI_Group_size
    END INTERFACE
    
    INTERFACE MPI_Group_translate_ranks
        SUBROUTINE MPI_Group_translate_ranks(group1, n, ranks1, group2, ranks2, ierror)
            IMPLICIT NONE
            INTEGER :: group1
            INTEGER :: n
            INTEGER :: ranks1(n)
            INTEGER :: group2
            INTEGER :: ranks2(n)
            INTEGER :: ierror
        END SUBROUTINE MPI_Group_translate_ranks
    END INTERFACE
    
    INTERFACE MPI_Group_union
        SUBROUTINE MPI_Group_union(group1, group2, newgroup, ierror)
            IMPLICIT NONE
            INTEGER :: group1
            INTEGER :: group2
            INTEGER :: newgroup
            INTEGER :: ierror
        END SUBROUTINE MPI_Group_union
    END INTERFACE
    
    INTERFACE MPI_Info_create
        SUBROUTINE MPI_Info_create(info, ierror)
            IMPLICIT NONE
            INTEGER :: info
            INTEGER :: ierror
        END SUBROUTINE MPI_Info_create
    END INTERFACE
    
    INTERFACE MPI_Info_create_env
        SUBROUTINE MPI_Info_create_env(info, ierror)
            IMPLICIT NONE
            INTEGER :: info
            INTEGER :: ierror
        END SUBROUTINE MPI_Info_create_env
    END INTERFACE
    
    INTERFACE MPI_Info_delete
        SUBROUTINE MPI_Info_delete(info, key, ierror)
            IMPLICIT NONE
            INTEGER :: info
            CHARACTER*(*) :: key
            INTEGER :: ierror
        END SUBROUTINE MPI_Info_delete
    END INTERFACE
    
    INTERFACE MPI_Info_dup
        SUBROUTINE MPI_Info_dup(info, newinfo, ierror)
            IMPLICIT NONE
            INTEGER :: info
            INTEGER :: newinfo
            INTEGER :: ierror
        END SUBROUTINE MPI_Info_dup
    END INTERFACE
    
    INTERFACE MPI_Info_free
        SUBROUTINE MPI_Info_free(info, ierror)
            IMPLICIT NONE
            INTEGER :: info
            INTEGER :: ierror
        END SUBROUTINE MPI_Info_free
    END INTERFACE
    
    INTERFACE MPI_Info_get
        SUBROUTINE MPI_Info_get(info, key, valuelen, value, flag, ierror)
            IMPLICIT NONE
            INTEGER :: info
            CHARACTER*(*) :: key
            INTEGER :: valuelen
            CHARACTER*(*) :: value
            LOGICAL :: flag
            INTEGER :: ierror
        END SUBROUTINE MPI_Info_get
    END INTERFACE
    
    INTERFACE MPI_Info_get_nkeys
        SUBROUTINE MPI_Info_get_nkeys(info, nkeys, ierror)
            IMPLICIT NONE
            INTEGER :: info
            INTEGER :: nkeys
            INTEGER :: ierror
        END SUBROUTINE MPI_Info_get_nkeys
    END INTERFACE
    
    INTERFACE MPI_Info_get_nthkey
        SUBROUTINE MPI_Info_get_nthkey(info, n, key, ierror)
            IMPLICIT NONE
            INTEGER :: info
            INTEGER :: n
            CHARACTER*(*) :: key
            INTEGER :: ierror
        END SUBROUTINE MPI_Info_get_nthkey
    END INTERFACE
    
    INTERFACE MPI_Info_get_string
        SUBROUTINE MPI_Info_get_string(info, key, buflen, value, flag, ierror)
            IMPLICIT NONE
            INTEGER :: info
            CHARACTER*(*) :: key
            INTEGER :: buflen
            CHARACTER*(*) :: value
            LOGICAL :: flag
            INTEGER :: ierror
        END SUBROUTINE MPI_Info_get_string
    END INTERFACE
    
    INTERFACE MPI_Info_get_valuelen
        SUBROUTINE MPI_Info_get_valuelen(info, key, valuelen, flag, ierror)
            IMPLICIT NONE
            INTEGER :: info
            CHARACTER*(*) :: key
            INTEGER :: valuelen
            LOGICAL :: flag
            INTEGER :: ierror
        END SUBROUTINE MPI_Info_get_valuelen
    END INTERFACE
    
    INTERFACE MPI_Info_set
        SUBROUTINE MPI_Info_set(info, key, value, ierror)
            IMPLICIT NONE
            INTEGER :: info
            CHARACTER*(*) :: key
            CHARACTER*(*) :: value
            INTEGER :: ierror
        END SUBROUTINE MPI_Info_set
    END INTERFACE
    
    INTERFACE MPIX_Info_set_hex
        SUBROUTINE MPIX_Info_set_hex(info, key, value, value_size, ierror)
            IMPLICIT NONE
            !GCC$ ATTRIBUTES NO_ARG_CHECK :: value
            INTEGER :: info
            CHARACTER*(*) :: key
            REAL :: value
            INTEGER :: value_size
            INTEGER :: ierror
        END SUBROUTINE MPIX_Info_set_hex
    END INTERFACE
    
    INTERFACE MPI_Abort
        SUBROUTINE MPI_Abort(comm, errorcode, ierror)
            IMPLICIT NONE
            INTEGER :: comm
            INTEGER :: errorcode
            INTEGER :: ierror
        END SUBROUTINE MPI_Abort
    END INTERFACE
    
    INTERFACE MPI_Comm_create_from_group
        SUBROUTINE MPI_Comm_create_from_group(group, stringtag, info, errhandler, newcomm, ierror)
            IMPLICIT NONE
            INTEGER :: group
            CHARACTER*(*) :: stringtag
            INTEGER :: info
            INTEGER :: errhandler
            INTEGER :: newcomm
            INTEGER :: ierror
        END SUBROUTINE MPI_Comm_create_from_group
    END INTERFACE
    
    INTERFACE MPI_Finalize
        SUBROUTINE MPI_Finalize(ierror)
            IMPLICIT NONE
            INTEGER :: ierror
        END SUBROUTINE MPI_Finalize
    END INTERFACE
    
    INTERFACE MPI_Finalized
        SUBROUTINE MPI_Finalized(flag, ierror)
            IMPLICIT NONE
            LOGICAL :: flag
            INTEGER :: ierror
        END SUBROUTINE MPI_Finalized
    END INTERFACE
    
    INTERFACE MPI_Group_from_session_pset
        SUBROUTINE MPI_Group_from_session_pset(session, pset_name, newgroup, ierror)
            IMPLICIT NONE
            INTEGER :: session
            CHARACTER*(*) :: pset_name
            INTEGER :: newgroup
            INTEGER :: ierror
        END SUBROUTINE MPI_Group_from_session_pset
    END INTERFACE
    
    INTERFACE MPI_Init
        SUBROUTINE MPI_Init(ierror)
            IMPLICIT NONE
            INTEGER :: ierror
        END SUBROUTINE MPI_Init
    END INTERFACE
    
    INTERFACE MPI_Init_thread
        SUBROUTINE MPI_Init_thread(required, provided, ierror)
            IMPLICIT NONE
            INTEGER :: required
            INTEGER :: provided
            INTEGER :: ierror
        END SUBROUTINE MPI_Init_thread
    END INTERFACE
    
    INTERFACE MPI_Initialized
        SUBROUTINE MPI_Initialized(flag, ierror)
            IMPLICIT NONE
            LOGICAL :: flag
            INTEGER :: ierror
        END SUBROUTINE MPI_Initialized
    END INTERFACE
    
    INTERFACE MPI_Is_thread_main
        SUBROUTINE MPI_Is_thread_main(flag, ierror)
            IMPLICIT NONE
            LOGICAL :: flag
            INTEGER :: ierror
        END SUBROUTINE MPI_Is_thread_main
    END INTERFACE
    
    INTERFACE MPI_Query_thread
        SUBROUTINE MPI_Query_thread(provided, ierror)
            IMPLICIT NONE
            INTEGER :: provided
            INTEGER :: ierror
        END SUBROUTINE MPI_Query_thread
    END INTERFACE
    
    INTERFACE MPI_Session_finalize
        SUBROUTINE MPI_Session_finalize(session, ierror)
            IMPLICIT NONE
            INTEGER :: session
            INTEGER :: ierror
        END SUBROUTINE MPI_Session_finalize
    END INTERFACE
    
    INTERFACE MPI_Session_get_info
        SUBROUTINE MPI_Session_get_info(session, info_used, ierror)
            IMPLICIT NONE
            INTEGER :: session
            INTEGER :: info_used
            INTEGER :: ierror
        END SUBROUTINE MPI_Session_get_info
    END INTERFACE
    
    INTERFACE MPI_Session_get_nth_pset
        SUBROUTINE MPI_Session_get_nth_pset(session, info, n, pset_len, pset_name, ierror)
            IMPLICIT NONE
            INTEGER :: session
            INTEGER :: info
            INTEGER :: n
            INTEGER :: pset_len
            CHARACTER*(*) :: pset_name
            INTEGER :: ierror
        END SUBROUTINE MPI_Session_get_nth_pset
    END INTERFACE
    
    INTERFACE MPI_Session_get_num_psets
        SUBROUTINE MPI_Session_get_num_psets(session, info, npset_names, ierror)
            IMPLICIT NONE
            INTEGER :: session
            INTEGER :: info
            INTEGER :: npset_names
            INTEGER :: ierror
        END SUBROUTINE MPI_Session_get_num_psets
    END INTERFACE
    
    INTERFACE MPI_Session_get_pset_info
        SUBROUTINE MPI_Session_get_pset_info(session, pset_name, info, ierror)
            IMPLICIT NONE
            INTEGER :: session
            CHARACTER*(*) :: pset_name
            INTEGER :: info
            INTEGER :: ierror
        END SUBROUTINE MPI_Session_get_pset_info
    END INTERFACE
    
    INTERFACE MPI_Session_init
        SUBROUTINE MPI_Session_init(info, errhandler, session, ierror)
            IMPLICIT NONE
            INTEGER :: info
            INTEGER :: errhandler
            INTEGER :: session
            INTEGER :: ierror
        END SUBROUTINE MPI_Session_init
    END INTERFACE
    
    INTERFACE MPI_File_close
        SUBROUTINE MPI_File_close(fh, ierror)
            IMPLICIT NONE
            INTEGER :: fh
            INTEGER :: ierror
        END SUBROUTINE MPI_File_close
    END INTERFACE
    
    INTERFACE MPI_File_delete
        SUBROUTINE MPI_File_delete(filename, info, ierror)
            IMPLICIT NONE
            CHARACTER*(*) :: filename
            INTEGER :: info
            INTEGER :: ierror
        END SUBROUTINE MPI_File_delete
    END INTERFACE
    
    INTERFACE MPI_File_get_amode
        SUBROUTINE MPI_File_get_amode(fh, amode, ierror)
            IMPLICIT NONE
            INTEGER :: fh
            INTEGER :: amode
            INTEGER :: ierror
        END SUBROUTINE MPI_File_get_amode
    END INTERFACE
    
    INTERFACE MPI_File_get_atomicity
        SUBROUTINE MPI_File_get_atomicity(fh, flag, ierror)
            IMPLICIT NONE
            INTEGER :: fh
            LOGICAL :: flag
            INTEGER :: ierror
        END SUBROUTINE MPI_File_get_atomicity
    END INTERFACE
    
    INTERFACE MPI_File_get_byte_offset
        SUBROUTINE MPI_File_get_byte_offset(fh, offset, disp, ierror)
            USE MPI_CONSTANTS, ONLY: MPI_OFFSET_KIND
            IMPLICIT NONE
            INTEGER :: fh
            INTEGER(KIND=MPI_OFFSET_KIND) :: offset
            INTEGER(KIND=MPI_OFFSET_KIND) :: disp
            INTEGER :: ierror
        END SUBROUTINE MPI_File_get_byte_offset
    END INTERFACE
    
    INTERFACE MPI_File_get_group
        SUBROUTINE MPI_File_get_group(fh, group, ierror)
            IMPLICIT NONE
            INTEGER :: fh
            INTEGER :: group
            INTEGER :: ierror
        END SUBROUTINE MPI_File_get_group
    END INTERFACE
    
    INTERFACE MPI_File_get_info
        SUBROUTINE MPI_File_get_info(fh, info_used, ierror)
            IMPLICIT NONE
            INTEGER :: fh
            INTEGER :: info_used
            INTEGER :: ierror
        END SUBROUTINE MPI_File_get_info
    END INTERFACE
    
    INTERFACE MPI_File_get_position
        SUBROUTINE MPI_File_get_position(fh, offset, ierror)
            USE MPI_CONSTANTS, ONLY: MPI_OFFSET_KIND
            IMPLICIT NONE
            INTEGER :: fh
            INTEGER(KIND=MPI_OFFSET_KIND) :: offset
            INTEGER :: ierror
        END SUBROUTINE MPI_File_get_position
    END INTERFACE
    
    INTERFACE MPI_File_get_position_shared
        SUBROUTINE MPI_File_get_position_shared(fh, offset, ierror)
            USE MPI_CONSTANTS, ONLY: MPI_OFFSET_KIND
            IMPLICIT NONE
            INTEGER :: fh
            INTEGER(KIND=MPI_OFFSET_KIND) :: offset
            INTEGER :: ierror
        END SUBROUTINE MPI_File_get_position_shared
    END INTERFACE
    
    INTERFACE MPI_File_get_size
        SUBROUTINE MPI_File_get_size(fh, size, ierror)
            USE MPI_CONSTANTS, ONLY: MPI_OFFSET_KIND
            IMPLICIT NONE
            INTEGER :: fh
            INTEGER(KIND=MPI_OFFSET_KIND) :: size
            INTEGER :: ierror
        END SUBROUTINE MPI_File_get_size
    END INTERFACE
    
    INTERFACE MPI_File_get_type_extent
        SUBROUTINE MPI_File_get_type_extent(fh, datatype, extent, ierror)
            USE MPI_CONSTANTS, ONLY: MPI_ADDRESS_KIND
            IMPLICIT NONE
            INTEGER :: fh
            INTEGER :: datatype
            INTEGER(KIND=MPI_ADDRESS_KIND) :: extent
            INTEGER :: ierror
        END SUBROUTINE MPI_File_get_type_extent
    END INTERFACE
    
    INTERFACE MPI_File_get_view
        SUBROUTINE MPI_File_get_view(fh, disp, etype, filetype, datarep, ierror)
            USE MPI_CONSTANTS, ONLY: MPI_OFFSET_KIND
            IMPLICIT NONE
            INTEGER :: fh
            INTEGER(KIND=MPI_OFFSET_KIND) :: disp
            INTEGER :: etype
            INTEGER :: filetype
            CHARACTER*(*) :: datarep
            INTEGER :: ierror
        END SUBROUTINE MPI_File_get_view
    END INTERFACE
    
    INTERFACE MPI_File_iread
        SUBROUTINE MPI_File_iread(fh, buf, count, datatype, request, ierror)
            IMPLICIT NONE
            !GCC$ ATTRIBUTES NO_ARG_CHECK :: buf
            INTEGER :: fh
            REAL :: buf
            INTEGER :: count
            INTEGER :: datatype
            INTEGER :: request
            INTEGER :: ierror
        END SUBROUTINE MPI_File_iread
    END INTERFACE
    
    INTERFACE MPI_File_iread_all
        SUBROUTINE MPI_File_iread_all(fh, buf, count, datatype, request, ierror)
            IMPLICIT NONE
            !GCC$ ATTRIBUTES NO_ARG_CHECK :: buf
            INTEGER :: fh
            REAL :: buf
            INTEGER :: count
            INTEGER :: datatype
            INTEGER :: request
            INTEGER :: ierror
        END SUBROUTINE MPI_File_iread_all
    END INTERFACE
    
    INTERFACE MPI_File_iread_at
        SUBROUTINE MPI_File_iread_at(fh, offset, buf, count, datatype, request, ierror)
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
        END SUBROUTINE MPI_File_iread_at
    END INTERFACE
    
    INTERFACE MPI_File_iread_at_all
        SUBROUTINE MPI_File_iread_at_all(fh, offset, buf, count, datatype, request, ierror)
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
        END SUBROUTINE MPI_File_iread_at_all
    END INTERFACE
    
    INTERFACE MPI_File_iread_shared
        SUBROUTINE MPI_File_iread_shared(fh, buf, count, datatype, request, ierror)
            IMPLICIT NONE
            !GCC$ ATTRIBUTES NO_ARG_CHECK :: buf
            INTEGER :: fh
            REAL :: buf
            INTEGER :: count
            INTEGER :: datatype
            INTEGER :: request
            INTEGER :: ierror
        END SUBROUTINE MPI_File_iread_shared
    END INTERFACE
    
    INTERFACE MPI_File_iwrite
        SUBROUTINE MPI_File_iwrite(fh, buf, count, datatype, request, ierror)
            IMPLICIT NONE
            !GCC$ ATTRIBUTES NO_ARG_CHECK :: buf
            INTEGER :: fh
            REAL :: buf
            INTEGER :: count
            INTEGER :: datatype
            INTEGER :: request
            INTEGER :: ierror
        END SUBROUTINE MPI_File_iwrite
    END INTERFACE
    
    INTERFACE MPI_File_iwrite_all
        SUBROUTINE MPI_File_iwrite_all(fh, buf, count, datatype, request, ierror)
            IMPLICIT NONE
            !GCC$ ATTRIBUTES NO_ARG_CHECK :: buf
            INTEGER :: fh
            REAL :: buf
            INTEGER :: count
            INTEGER :: datatype
            INTEGER :: request
            INTEGER :: ierror
        END SUBROUTINE MPI_File_iwrite_all
    END INTERFACE
    
    INTERFACE MPI_File_iwrite_at
        SUBROUTINE MPI_File_iwrite_at(fh, offset, buf, count, datatype, request, ierror)
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
        END SUBROUTINE MPI_File_iwrite_at
    END INTERFACE
    
    INTERFACE MPI_File_iwrite_at_all
        SUBROUTINE MPI_File_iwrite_at_all(fh, offset, buf, count, datatype, request, ierror)
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
        END SUBROUTINE MPI_File_iwrite_at_all
    END INTERFACE
    
    INTERFACE MPI_File_iwrite_shared
        SUBROUTINE MPI_File_iwrite_shared(fh, buf, count, datatype, request, ierror)
            IMPLICIT NONE
            !GCC$ ATTRIBUTES NO_ARG_CHECK :: buf
            INTEGER :: fh
            REAL :: buf
            INTEGER :: count
            INTEGER :: datatype
            INTEGER :: request
            INTEGER :: ierror
        END SUBROUTINE MPI_File_iwrite_shared
    END INTERFACE
    
    INTERFACE MPI_File_open
        SUBROUTINE MPI_File_open(comm, filename, amode, info, fh, ierror)
            IMPLICIT NONE
            INTEGER :: comm
            CHARACTER*(*) :: filename
            INTEGER :: amode
            INTEGER :: info
            INTEGER :: fh
            INTEGER :: ierror
        END SUBROUTINE MPI_File_open
    END INTERFACE
    
    INTERFACE MPI_File_preallocate
        SUBROUTINE MPI_File_preallocate(fh, size, ierror)
            USE MPI_CONSTANTS, ONLY: MPI_OFFSET_KIND
            IMPLICIT NONE
            INTEGER :: fh
            INTEGER(KIND=MPI_OFFSET_KIND) :: size
            INTEGER :: ierror
        END SUBROUTINE MPI_File_preallocate
    END INTERFACE
    
    INTERFACE MPI_File_read
        SUBROUTINE MPI_File_read(fh, buf, count, datatype, status, ierror)
            USE MPI_CONSTANTS, ONLY: MPI_STATUS_SIZE
            IMPLICIT NONE
            !GCC$ ATTRIBUTES NO_ARG_CHECK :: buf
            INTEGER :: fh
            REAL :: buf
            INTEGER :: count
            INTEGER :: datatype
            INTEGER :: status(MPI_STATUS_SIZE)
            INTEGER :: ierror
        END SUBROUTINE MPI_File_read
    END INTERFACE
    
    INTERFACE MPI_File_read_all
        SUBROUTINE MPI_File_read_all(fh, buf, count, datatype, status, ierror)
            USE MPI_CONSTANTS, ONLY: MPI_STATUS_SIZE
            IMPLICIT NONE
            !GCC$ ATTRIBUTES NO_ARG_CHECK :: buf
            INTEGER :: fh
            REAL :: buf
            INTEGER :: count
            INTEGER :: datatype
            INTEGER :: status(MPI_STATUS_SIZE)
            INTEGER :: ierror
        END SUBROUTINE MPI_File_read_all
    END INTERFACE
    
    INTERFACE MPI_File_read_all_begin
        SUBROUTINE MPI_File_read_all_begin(fh, buf, count, datatype, ierror)
            IMPLICIT NONE
            !GCC$ ATTRIBUTES NO_ARG_CHECK :: buf
            INTEGER :: fh
            REAL :: buf
            INTEGER :: count
            INTEGER :: datatype
            INTEGER :: ierror
        END SUBROUTINE MPI_File_read_all_begin
    END INTERFACE
    
    INTERFACE MPI_File_read_all_end
        SUBROUTINE MPI_File_read_all_end(fh, buf, status, ierror)
            USE MPI_CONSTANTS, ONLY: MPI_STATUS_SIZE
            IMPLICIT NONE
            !GCC$ ATTRIBUTES NO_ARG_CHECK :: buf
            INTEGER :: fh
            REAL :: buf
            INTEGER :: status(MPI_STATUS_SIZE)
            INTEGER :: ierror
        END SUBROUTINE MPI_File_read_all_end
    END INTERFACE
    
    INTERFACE MPI_File_read_at
        SUBROUTINE MPI_File_read_at(fh, offset, buf, count, datatype, status, ierror)
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
        END SUBROUTINE MPI_File_read_at
    END INTERFACE
    
    INTERFACE MPI_File_read_at_all
        SUBROUTINE MPI_File_read_at_all(fh, offset, buf, count, datatype, status, ierror)
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
        END SUBROUTINE MPI_File_read_at_all
    END INTERFACE
    
    INTERFACE MPI_File_read_at_all_begin
        SUBROUTINE MPI_File_read_at_all_begin(fh, offset, buf, count, datatype, ierror)
            USE MPI_CONSTANTS, ONLY: MPI_OFFSET_KIND
            IMPLICIT NONE
            !GCC$ ATTRIBUTES NO_ARG_CHECK :: buf
            INTEGER :: fh
            INTEGER(KIND=MPI_OFFSET_KIND) :: offset
            REAL :: buf
            INTEGER :: count
            INTEGER :: datatype
            INTEGER :: ierror
        END SUBROUTINE MPI_File_read_at_all_begin
    END INTERFACE
    
    INTERFACE MPI_File_read_at_all_end
        SUBROUTINE MPI_File_read_at_all_end(fh, buf, status, ierror)
            USE MPI_CONSTANTS, ONLY: MPI_STATUS_SIZE
            IMPLICIT NONE
            !GCC$ ATTRIBUTES NO_ARG_CHECK :: buf
            INTEGER :: fh
            REAL :: buf
            INTEGER :: status(MPI_STATUS_SIZE)
            INTEGER :: ierror
        END SUBROUTINE MPI_File_read_at_all_end
    END INTERFACE
    
    INTERFACE MPI_File_read_ordered
        SUBROUTINE MPI_File_read_ordered(fh, buf, count, datatype, status, ierror)
            USE MPI_CONSTANTS, ONLY: MPI_STATUS_SIZE
            IMPLICIT NONE
            !GCC$ ATTRIBUTES NO_ARG_CHECK :: buf
            INTEGER :: fh
            REAL :: buf
            INTEGER :: count
            INTEGER :: datatype
            INTEGER :: status(MPI_STATUS_SIZE)
            INTEGER :: ierror
        END SUBROUTINE MPI_File_read_ordered
    END INTERFACE
    
    INTERFACE MPI_File_read_ordered_begin
        SUBROUTINE MPI_File_read_ordered_begin(fh, buf, count, datatype, ierror)
            IMPLICIT NONE
            !GCC$ ATTRIBUTES NO_ARG_CHECK :: buf
            INTEGER :: fh
            REAL :: buf
            INTEGER :: count
            INTEGER :: datatype
            INTEGER :: ierror
        END SUBROUTINE MPI_File_read_ordered_begin
    END INTERFACE
    
    INTERFACE MPI_File_read_ordered_end
        SUBROUTINE MPI_File_read_ordered_end(fh, buf, status, ierror)
            USE MPI_CONSTANTS, ONLY: MPI_STATUS_SIZE
            IMPLICIT NONE
            !GCC$ ATTRIBUTES NO_ARG_CHECK :: buf
            INTEGER :: fh
            REAL :: buf
            INTEGER :: status(MPI_STATUS_SIZE)
            INTEGER :: ierror
        END SUBROUTINE MPI_File_read_ordered_end
    END INTERFACE
    
    INTERFACE MPI_File_read_shared
        SUBROUTINE MPI_File_read_shared(fh, buf, count, datatype, status, ierror)
            USE MPI_CONSTANTS, ONLY: MPI_STATUS_SIZE
            IMPLICIT NONE
            !GCC$ ATTRIBUTES NO_ARG_CHECK :: buf
            INTEGER :: fh
            REAL :: buf
            INTEGER :: count
            INTEGER :: datatype
            INTEGER :: status(MPI_STATUS_SIZE)
            INTEGER :: ierror
        END SUBROUTINE MPI_File_read_shared
    END INTERFACE
    
    INTERFACE MPI_File_seek
        SUBROUTINE MPI_File_seek(fh, offset, whence, ierror)
            USE MPI_CONSTANTS, ONLY: MPI_OFFSET_KIND
            IMPLICIT NONE
            INTEGER :: fh
            INTEGER(KIND=MPI_OFFSET_KIND) :: offset
            INTEGER :: whence
            INTEGER :: ierror
        END SUBROUTINE MPI_File_seek
    END INTERFACE
    
    INTERFACE MPI_File_seek_shared
        SUBROUTINE MPI_File_seek_shared(fh, offset, whence, ierror)
            USE MPI_CONSTANTS, ONLY: MPI_OFFSET_KIND
            IMPLICIT NONE
            INTEGER :: fh
            INTEGER(KIND=MPI_OFFSET_KIND) :: offset
            INTEGER :: whence
            INTEGER :: ierror
        END SUBROUTINE MPI_File_seek_shared
    END INTERFACE
    
    INTERFACE MPI_File_set_atomicity
        SUBROUTINE MPI_File_set_atomicity(fh, flag, ierror)
            IMPLICIT NONE
            INTEGER :: fh
            LOGICAL :: flag
            INTEGER :: ierror
        END SUBROUTINE MPI_File_set_atomicity
    END INTERFACE
    
    INTERFACE MPI_File_set_info
        SUBROUTINE MPI_File_set_info(fh, info, ierror)
            IMPLICIT NONE
            INTEGER :: fh
            INTEGER :: info
            INTEGER :: ierror
        END SUBROUTINE MPI_File_set_info
    END INTERFACE
    
    INTERFACE MPI_File_set_size
        SUBROUTINE MPI_File_set_size(fh, size, ierror)
            USE MPI_CONSTANTS, ONLY: MPI_OFFSET_KIND
            IMPLICIT NONE
            INTEGER :: fh
            INTEGER(KIND=MPI_OFFSET_KIND) :: size
            INTEGER :: ierror
        END SUBROUTINE MPI_File_set_size
    END INTERFACE
    
    INTERFACE MPI_File_set_view
        SUBROUTINE MPI_File_set_view(fh, disp, etype, filetype, datarep, info, ierror)
            USE MPI_CONSTANTS, ONLY: MPI_OFFSET_KIND
            IMPLICIT NONE
            INTEGER :: fh
            INTEGER(KIND=MPI_OFFSET_KIND) :: disp
            INTEGER :: etype
            INTEGER :: filetype
            CHARACTER*(*) :: datarep
            INTEGER :: info
            INTEGER :: ierror
        END SUBROUTINE MPI_File_set_view
    END INTERFACE
    
    INTERFACE MPI_File_sync
        SUBROUTINE MPI_File_sync(fh, ierror)
            IMPLICIT NONE
            INTEGER :: fh
            INTEGER :: ierror
        END SUBROUTINE MPI_File_sync
    END INTERFACE
    
    INTERFACE MPI_File_write
        SUBROUTINE MPI_File_write(fh, buf, count, datatype, status, ierror)
            USE MPI_CONSTANTS, ONLY: MPI_STATUS_SIZE
            IMPLICIT NONE
            !GCC$ ATTRIBUTES NO_ARG_CHECK :: buf
            INTEGER :: fh
            REAL :: buf
            INTEGER :: count
            INTEGER :: datatype
            INTEGER :: status(MPI_STATUS_SIZE)
            INTEGER :: ierror
        END SUBROUTINE MPI_File_write
    END INTERFACE
    
    INTERFACE MPI_File_write_all
        SUBROUTINE MPI_File_write_all(fh, buf, count, datatype, status, ierror)
            USE MPI_CONSTANTS, ONLY: MPI_STATUS_SIZE
            IMPLICIT NONE
            !GCC$ ATTRIBUTES NO_ARG_CHECK :: buf
            INTEGER :: fh
            REAL :: buf
            INTEGER :: count
            INTEGER :: datatype
            INTEGER :: status(MPI_STATUS_SIZE)
            INTEGER :: ierror
        END SUBROUTINE MPI_File_write_all
    END INTERFACE
    
    INTERFACE MPI_File_write_all_begin
        SUBROUTINE MPI_File_write_all_begin(fh, buf, count, datatype, ierror)
            IMPLICIT NONE
            !GCC$ ATTRIBUTES NO_ARG_CHECK :: buf
            INTEGER :: fh
            REAL :: buf
            INTEGER :: count
            INTEGER :: datatype
            INTEGER :: ierror
        END SUBROUTINE MPI_File_write_all_begin
    END INTERFACE
    
    INTERFACE MPI_File_write_all_end
        SUBROUTINE MPI_File_write_all_end(fh, buf, status, ierror)
            USE MPI_CONSTANTS, ONLY: MPI_STATUS_SIZE
            IMPLICIT NONE
            !GCC$ ATTRIBUTES NO_ARG_CHECK :: buf
            INTEGER :: fh
            REAL :: buf
            INTEGER :: status(MPI_STATUS_SIZE)
            INTEGER :: ierror
        END SUBROUTINE MPI_File_write_all_end
    END INTERFACE
    
    INTERFACE MPI_File_write_at
        SUBROUTINE MPI_File_write_at(fh, offset, buf, count, datatype, status, ierror)
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
        END SUBROUTINE MPI_File_write_at
    END INTERFACE
    
    INTERFACE MPI_File_write_at_all
        SUBROUTINE MPI_File_write_at_all(fh, offset, buf, count, datatype, status, ierror)
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
        END SUBROUTINE MPI_File_write_at_all
    END INTERFACE
    
    INTERFACE MPI_File_write_at_all_begin
        SUBROUTINE MPI_File_write_at_all_begin(fh, offset, buf, count, datatype, ierror)
            USE MPI_CONSTANTS, ONLY: MPI_OFFSET_KIND
            IMPLICIT NONE
            !GCC$ ATTRIBUTES NO_ARG_CHECK :: buf
            INTEGER :: fh
            INTEGER(KIND=MPI_OFFSET_KIND) :: offset
            REAL :: buf
            INTEGER :: count
            INTEGER :: datatype
            INTEGER :: ierror
        END SUBROUTINE MPI_File_write_at_all_begin
    END INTERFACE
    
    INTERFACE MPI_File_write_at_all_end
        SUBROUTINE MPI_File_write_at_all_end(fh, buf, status, ierror)
            USE MPI_CONSTANTS, ONLY: MPI_STATUS_SIZE
            IMPLICIT NONE
            !GCC$ ATTRIBUTES NO_ARG_CHECK :: buf
            INTEGER :: fh
            REAL :: buf
            INTEGER :: status(MPI_STATUS_SIZE)
            INTEGER :: ierror
        END SUBROUTINE MPI_File_write_at_all_end
    END INTERFACE
    
    INTERFACE MPI_File_write_ordered
        SUBROUTINE MPI_File_write_ordered(fh, buf, count, datatype, status, ierror)
            USE MPI_CONSTANTS, ONLY: MPI_STATUS_SIZE
            IMPLICIT NONE
            !GCC$ ATTRIBUTES NO_ARG_CHECK :: buf
            INTEGER :: fh
            REAL :: buf
            INTEGER :: count
            INTEGER :: datatype
            INTEGER :: status(MPI_STATUS_SIZE)
            INTEGER :: ierror
        END SUBROUTINE MPI_File_write_ordered
    END INTERFACE
    
    INTERFACE MPI_File_write_ordered_begin
        SUBROUTINE MPI_File_write_ordered_begin(fh, buf, count, datatype, ierror)
            IMPLICIT NONE
            !GCC$ ATTRIBUTES NO_ARG_CHECK :: buf
            INTEGER :: fh
            REAL :: buf
            INTEGER :: count
            INTEGER :: datatype
            INTEGER :: ierror
        END SUBROUTINE MPI_File_write_ordered_begin
    END INTERFACE
    
    INTERFACE MPI_File_write_ordered_end
        SUBROUTINE MPI_File_write_ordered_end(fh, buf, status, ierror)
            USE MPI_CONSTANTS, ONLY: MPI_STATUS_SIZE
            IMPLICIT NONE
            !GCC$ ATTRIBUTES NO_ARG_CHECK :: buf
            INTEGER :: fh
            REAL :: buf
            INTEGER :: status(MPI_STATUS_SIZE)
            INTEGER :: ierror
        END SUBROUTINE MPI_File_write_ordered_end
    END INTERFACE
    
    INTERFACE MPI_File_write_shared
        SUBROUTINE MPI_File_write_shared(fh, buf, count, datatype, status, ierror)
            USE MPI_CONSTANTS, ONLY: MPI_STATUS_SIZE
            IMPLICIT NONE
            !GCC$ ATTRIBUTES NO_ARG_CHECK :: buf
            INTEGER :: fh
            REAL :: buf
            INTEGER :: count
            INTEGER :: datatype
            INTEGER :: status(MPI_STATUS_SIZE)
            INTEGER :: ierror
        END SUBROUTINE MPI_File_write_shared
    END INTERFACE
    
    INTERFACE MPI_Register_datarep
        SUBROUTINE MPI_Register_datarep(datarep, read_conversion_fn, write_conversion_fn, &
                                        dtype_file_extent_fn, extra_state, ierror)
            USE MPI_CONSTANTS, ONLY: MPI_ADDRESS_KIND
            IMPLICIT NONE
            CHARACTER*(*) :: datarep
            EXTERNAL :: read_conversion_fn
            EXTERNAL :: write_conversion_fn
            EXTERNAL :: dtype_file_extent_fn
            INTEGER(KIND=MPI_ADDRESS_KIND) :: extra_state
            INTEGER :: ierror
        END SUBROUTINE MPI_Register_datarep
    END INTERFACE
    
    INTERFACE MPI_Aint_add
        FUNCTION MPI_Aint_add(base, disp) result(res)
            USE MPI_CONSTANTS, ONLY: MPI_ADDRESS_KIND
            IMPLICIT NONE
            INTEGER(KIND=MPI_ADDRESS_KIND) :: base
            INTEGER(KIND=MPI_ADDRESS_KIND) :: disp
            INTEGER(KIND=MPI_ADDRESS_KIND) :: res
        END FUNCTION MPI_Aint_add
    END INTERFACE
    
    INTERFACE MPI_Aint_diff
        FUNCTION MPI_Aint_diff(addr1, addr2) result(res)
            USE MPI_CONSTANTS, ONLY: MPI_ADDRESS_KIND
            IMPLICIT NONE
            INTEGER(KIND=MPI_ADDRESS_KIND) :: addr1
            INTEGER(KIND=MPI_ADDRESS_KIND) :: addr2
            INTEGER(KIND=MPI_ADDRESS_KIND) :: res
        END FUNCTION MPI_Aint_diff
    END INTERFACE
    
    INTERFACE MPI_Get_library_version
        SUBROUTINE MPI_Get_library_version(version, resultlen, ierror)
            IMPLICIT NONE
            CHARACTER*(*) :: version
            INTEGER :: resultlen
            INTEGER :: ierror
        END SUBROUTINE MPI_Get_library_version
    END INTERFACE
    
    INTERFACE MPI_Get_processor_name
        SUBROUTINE MPI_Get_processor_name(name, resultlen, ierror)
            IMPLICIT NONE
            CHARACTER*(*) :: name
            INTEGER :: resultlen
            INTEGER :: ierror
        END SUBROUTINE MPI_Get_processor_name
    END INTERFACE
    
    INTERFACE MPI_Get_version
        SUBROUTINE MPI_Get_version(version, subversion, ierror)
            IMPLICIT NONE
            INTEGER :: version
            INTEGER :: subversion
            INTEGER :: ierror
        END SUBROUTINE MPI_Get_version
    END INTERFACE
    
    INTERFACE MPIX_GPU_query_support
        SUBROUTINE MPIX_GPU_query_support(gpu_type, is_supported, ierror)
            IMPLICIT NONE
            INTEGER :: gpu_type
            LOGICAL :: is_supported
            INTEGER :: ierror
        END SUBROUTINE MPIX_GPU_query_support
    END INTERFACE
    
    INTERFACE MPIX_Query_cuda_support
        SUBROUTINE MPIX_Query_cuda_support(ierror)
            IMPLICIT NONE
            INTEGER :: ierror
        END SUBROUTINE MPIX_Query_cuda_support
    END INTERFACE
    
    INTERFACE MPIX_Query_ze_support
        SUBROUTINE MPIX_Query_ze_support(ierror)
            IMPLICIT NONE
            INTEGER :: ierror
        END SUBROUTINE MPIX_Query_ze_support
    END INTERFACE
    
    INTERFACE MPIX_Query_hip_support
        SUBROUTINE MPIX_Query_hip_support(ierror)
            IMPLICIT NONE
            INTEGER :: ierror
        END SUBROUTINE MPIX_Query_hip_support
    END INTERFACE
    
    INTERFACE MPI_Op_commutative
        SUBROUTINE MPI_Op_commutative(op, commute, ierror)
            IMPLICIT NONE
            INTEGER :: op
            LOGICAL :: commute
            INTEGER :: ierror
        END SUBROUTINE MPI_Op_commutative
    END INTERFACE
    
    INTERFACE MPI_Op_create
        SUBROUTINE MPI_Op_create(user_fn, commute, op, ierror)
            IMPLICIT NONE
            EXTERNAL :: user_fn
            LOGICAL :: commute
            INTEGER :: op
            INTEGER :: ierror
        END SUBROUTINE MPI_Op_create
    END INTERFACE
    
    INTERFACE MPI_Op_free
        SUBROUTINE MPI_Op_free(op, ierror)
            IMPLICIT NONE
            INTEGER :: op
            INTEGER :: ierror
        END SUBROUTINE MPI_Op_free
    END INTERFACE
    
    INTERFACE MPI_Parrived
        SUBROUTINE MPI_Parrived(request, partition, flag, ierror)
            IMPLICIT NONE
            INTEGER :: request
            INTEGER :: partition
            LOGICAL :: flag
            INTEGER :: ierror
        END SUBROUTINE MPI_Parrived
    END INTERFACE
    
    INTERFACE MPI_Pready
        SUBROUTINE MPI_Pready(partition, request, ierror)
            IMPLICIT NONE
            INTEGER :: partition
            INTEGER :: request
            INTEGER :: ierror
        END SUBROUTINE MPI_Pready
    END INTERFACE
    
    INTERFACE MPI_Pready_list
        SUBROUTINE MPI_Pready_list(length, array_of_partitions, request, ierror)
            IMPLICIT NONE
            INTEGER :: length
            INTEGER :: array_of_partitions(length)
            INTEGER :: request
            INTEGER :: ierror
        END SUBROUTINE MPI_Pready_list
    END INTERFACE
    
    INTERFACE MPI_Pready_range
        SUBROUTINE MPI_Pready_range(partition_low, partition_high, request, ierror)
            IMPLICIT NONE
            INTEGER :: partition_low
            INTEGER :: partition_high
            INTEGER :: request
            INTEGER :: ierror
        END SUBROUTINE MPI_Pready_range
    END INTERFACE
    
    INTERFACE MPI_Precv_init
        SUBROUTINE MPI_Precv_init(buf, partitions, count, datatype, dest, tag, comm, info, request, ierror)
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
        END SUBROUTINE MPI_Precv_init
    END INTERFACE
    
    INTERFACE MPI_Psend_init
        SUBROUTINE MPI_Psend_init(buf, partitions, count, datatype, dest, tag, comm, info, request, ierror)
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
        END SUBROUTINE MPI_Psend_init
    END INTERFACE
    
    INTERFACE MPI_Bsend
        SUBROUTINE MPI_Bsend(buf, count, datatype, dest, tag, comm, ierror)
            IMPLICIT NONE
            !GCC$ ATTRIBUTES NO_ARG_CHECK :: buf
            REAL :: buf
            INTEGER :: count
            INTEGER :: datatype
            INTEGER :: dest
            INTEGER :: tag
            INTEGER :: comm
            INTEGER :: ierror
        END SUBROUTINE MPI_Bsend
    END INTERFACE
    
    INTERFACE MPI_Bsend_init
        SUBROUTINE MPI_Bsend_init(buf, count, datatype, dest, tag, comm, request, ierror)
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
        END SUBROUTINE MPI_Bsend_init
    END INTERFACE
    
    INTERFACE MPI_Buffer_attach
        SUBROUTINE MPI_Buffer_attach(buffer, size, ierror)
            IMPLICIT NONE
            !GCC$ ATTRIBUTES NO_ARG_CHECK :: buffer
            REAL :: buffer
            INTEGER :: size
            INTEGER :: ierror
        END SUBROUTINE MPI_Buffer_attach
    END INTERFACE
    
    INTERFACE MPI_Buffer_detach
        SUBROUTINE MPI_Buffer_detach(buffer_addr, size, ierror)
            IMPLICIT NONE
            !GCC$ ATTRIBUTES NO_ARG_CHECK :: buffer_addr
            REAL :: buffer_addr
            INTEGER :: size
            INTEGER :: ierror
        END SUBROUTINE MPI_Buffer_detach
    END INTERFACE
    
    INTERFACE MPI_Buffer_flush
        SUBROUTINE MPI_Buffer_flush(ierror)
            IMPLICIT NONE
            INTEGER :: ierror
        END SUBROUTINE MPI_Buffer_flush
    END INTERFACE
    
    INTERFACE MPI_Buffer_iflush
        SUBROUTINE MPI_Buffer_iflush(request, ierror)
            IMPLICIT NONE
            INTEGER :: request
            INTEGER :: ierror
        END SUBROUTINE MPI_Buffer_iflush
    END INTERFACE
    
    INTERFACE MPI_Comm_attach_buffer
        SUBROUTINE MPI_Comm_attach_buffer(comm, buffer, size, ierror)
            IMPLICIT NONE
            !GCC$ ATTRIBUTES NO_ARG_CHECK :: buffer
            INTEGER :: comm
            REAL :: buffer
            INTEGER :: size
            INTEGER :: ierror
        END SUBROUTINE MPI_Comm_attach_buffer
    END INTERFACE
    
    INTERFACE MPI_Comm_detach_buffer
        SUBROUTINE MPI_Comm_detach_buffer(comm, buffer_addr, size, ierror)
            IMPLICIT NONE
            !GCC$ ATTRIBUTES NO_ARG_CHECK :: buffer_addr
            INTEGER :: comm
            REAL :: buffer_addr
            INTEGER :: size
            INTEGER :: ierror
        END SUBROUTINE MPI_Comm_detach_buffer
    END INTERFACE
    
    INTERFACE MPI_Comm_flush_buffer
        SUBROUTINE MPI_Comm_flush_buffer(comm, ierror)
            IMPLICIT NONE
            INTEGER :: comm
            INTEGER :: ierror
        END SUBROUTINE MPI_Comm_flush_buffer
    END INTERFACE
    
    INTERFACE MPI_Comm_iflush_buffer
        SUBROUTINE MPI_Comm_iflush_buffer(comm, request, ierror)
            IMPLICIT NONE
            INTEGER :: comm
            INTEGER :: request
            INTEGER :: ierror
        END SUBROUTINE MPI_Comm_iflush_buffer
    END INTERFACE
    
    INTERFACE MPI_Ibsend
        SUBROUTINE MPI_Ibsend(buf, count, datatype, dest, tag, comm, request, ierror)
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
        END SUBROUTINE MPI_Ibsend
    END INTERFACE
    
    INTERFACE MPI_Improbe
        SUBROUTINE MPI_Improbe(source, tag, comm, flag, message, status, ierror)
            USE MPI_CONSTANTS, ONLY: MPI_STATUS_SIZE
            IMPLICIT NONE
            INTEGER :: source
            INTEGER :: tag
            INTEGER :: comm
            LOGICAL :: flag
            INTEGER :: message
            INTEGER :: status(MPI_STATUS_SIZE)
            INTEGER :: ierror
        END SUBROUTINE MPI_Improbe
    END INTERFACE
    
    INTERFACE MPI_Imrecv
        SUBROUTINE MPI_Imrecv(buf, count, datatype, message, request, ierror)
            IMPLICIT NONE
            !GCC$ ATTRIBUTES NO_ARG_CHECK :: buf
            REAL :: buf
            INTEGER :: count
            INTEGER :: datatype
            INTEGER :: message
            INTEGER :: request
            INTEGER :: ierror
        END SUBROUTINE MPI_Imrecv
    END INTERFACE
    
    INTERFACE MPI_Iprobe
        SUBROUTINE MPI_Iprobe(source, tag, comm, flag, status, ierror)
            USE MPI_CONSTANTS, ONLY: MPI_STATUS_SIZE
            IMPLICIT NONE
            INTEGER :: source
            INTEGER :: tag
            INTEGER :: comm
            LOGICAL :: flag
            INTEGER :: status(MPI_STATUS_SIZE)
            INTEGER :: ierror
        END SUBROUTINE MPI_Iprobe
    END INTERFACE
    
    INTERFACE MPI_Irecv
        SUBROUTINE MPI_Irecv(buf, count, datatype, source, tag, comm, request, ierror)
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
        END SUBROUTINE MPI_Irecv
    END INTERFACE
    
    INTERFACE MPI_Irsend
        SUBROUTINE MPI_Irsend(buf, count, datatype, dest, tag, comm, request, ierror)
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
        END SUBROUTINE MPI_Irsend
    END INTERFACE
    
    INTERFACE MPI_Isend
        SUBROUTINE MPI_Isend(buf, count, datatype, dest, tag, comm, request, ierror)
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
        END SUBROUTINE MPI_Isend
    END INTERFACE
    
    INTERFACE MPI_Isendrecv
        SUBROUTINE MPI_Isendrecv(sendbuf, sendcount, sendtype, dest, sendtag, recvbuf, recvcount, recvtype, &
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
        END SUBROUTINE MPI_Isendrecv
    END INTERFACE
    
    INTERFACE MPI_Isendrecv_replace
        SUBROUTINE MPI_Isendrecv_replace(buf, count, datatype, dest, sendtag, source, recvtag, comm, &
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
        END SUBROUTINE MPI_Isendrecv_replace
    END INTERFACE
    
    INTERFACE MPI_Issend
        SUBROUTINE MPI_Issend(buf, count, datatype, dest, tag, comm, request, ierror)
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
        END SUBROUTINE MPI_Issend
    END INTERFACE
    
    INTERFACE MPI_Mprobe
        SUBROUTINE MPI_Mprobe(source, tag, comm, message, status, ierror)
            USE MPI_CONSTANTS, ONLY: MPI_STATUS_SIZE
            IMPLICIT NONE
            INTEGER :: source
            INTEGER :: tag
            INTEGER :: comm
            INTEGER :: message
            INTEGER :: status(MPI_STATUS_SIZE)
            INTEGER :: ierror
        END SUBROUTINE MPI_Mprobe
    END INTERFACE
    
    INTERFACE MPI_Mrecv
        SUBROUTINE MPI_Mrecv(buf, count, datatype, message, status, ierror)
            USE MPI_CONSTANTS, ONLY: MPI_STATUS_SIZE
            IMPLICIT NONE
            !GCC$ ATTRIBUTES NO_ARG_CHECK :: buf
            REAL :: buf
            INTEGER :: count
            INTEGER :: datatype
            INTEGER :: message
            INTEGER :: status(MPI_STATUS_SIZE)
            INTEGER :: ierror
        END SUBROUTINE MPI_Mrecv
    END INTERFACE
    
    INTERFACE MPI_Probe
        SUBROUTINE MPI_Probe(source, tag, comm, status, ierror)
            USE MPI_CONSTANTS, ONLY: MPI_STATUS_SIZE
            IMPLICIT NONE
            INTEGER :: source
            INTEGER :: tag
            INTEGER :: comm
            INTEGER :: status(MPI_STATUS_SIZE)
            INTEGER :: ierror
        END SUBROUTINE MPI_Probe
    END INTERFACE
    
    INTERFACE MPI_Recv
        SUBROUTINE MPI_Recv(buf, count, datatype, source, tag, comm, status, ierror)
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
        END SUBROUTINE MPI_Recv
    END INTERFACE
    
    INTERFACE MPI_Recv_init
        SUBROUTINE MPI_Recv_init(buf, count, datatype, source, tag, comm, request, ierror)
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
        END SUBROUTINE MPI_Recv_init
    END INTERFACE
    
    INTERFACE MPI_Rsend
        SUBROUTINE MPI_Rsend(buf, count, datatype, dest, tag, comm, ierror)
            IMPLICIT NONE
            !GCC$ ATTRIBUTES NO_ARG_CHECK :: buf
            REAL :: buf
            INTEGER :: count
            INTEGER :: datatype
            INTEGER :: dest
            INTEGER :: tag
            INTEGER :: comm
            INTEGER :: ierror
        END SUBROUTINE MPI_Rsend
    END INTERFACE
    
    INTERFACE MPI_Rsend_init
        SUBROUTINE MPI_Rsend_init(buf, count, datatype, dest, tag, comm, request, ierror)
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
        END SUBROUTINE MPI_Rsend_init
    END INTERFACE
    
    INTERFACE MPI_Send
        SUBROUTINE MPI_Send(buf, count, datatype, dest, tag, comm, ierror)
            IMPLICIT NONE
            !GCC$ ATTRIBUTES NO_ARG_CHECK :: buf
            REAL :: buf
            INTEGER :: count
            INTEGER :: datatype
            INTEGER :: dest
            INTEGER :: tag
            INTEGER :: comm
            INTEGER :: ierror
        END SUBROUTINE MPI_Send
    END INTERFACE
    
    INTERFACE MPI_Send_init
        SUBROUTINE MPI_Send_init(buf, count, datatype, dest, tag, comm, request, ierror)
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
        END SUBROUTINE MPI_Send_init
    END INTERFACE
    
    INTERFACE MPI_Sendrecv
        SUBROUTINE MPI_Sendrecv(sendbuf, sendcount, sendtype, dest, sendtag, recvbuf, recvcount, recvtype, &
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
        END SUBROUTINE MPI_Sendrecv
    END INTERFACE
    
    INTERFACE MPI_Sendrecv_replace
        SUBROUTINE MPI_Sendrecv_replace(buf, count, datatype, dest, sendtag, source, recvtag, comm, status, &
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
        END SUBROUTINE MPI_Sendrecv_replace
    END INTERFACE
    
    INTERFACE MPI_Session_attach_buffer
        SUBROUTINE MPI_Session_attach_buffer(session, buffer, size, ierror)
            IMPLICIT NONE
            !GCC$ ATTRIBUTES NO_ARG_CHECK :: buffer
            INTEGER :: session
            REAL :: buffer
            INTEGER :: size
            INTEGER :: ierror
        END SUBROUTINE MPI_Session_attach_buffer
    END INTERFACE
    
    INTERFACE MPI_Session_detach_buffer
        SUBROUTINE MPI_Session_detach_buffer(session, buffer_addr, size, ierror)
            IMPLICIT NONE
            !GCC$ ATTRIBUTES NO_ARG_CHECK :: buffer_addr
            INTEGER :: session
            REAL :: buffer_addr
            INTEGER :: size
            INTEGER :: ierror
        END SUBROUTINE MPI_Session_detach_buffer
    END INTERFACE
    
    INTERFACE MPI_Session_flush_buffer
        SUBROUTINE MPI_Session_flush_buffer(session, ierror)
            IMPLICIT NONE
            INTEGER :: session
            INTEGER :: ierror
        END SUBROUTINE MPI_Session_flush_buffer
    END INTERFACE
    
    INTERFACE MPI_Session_iflush_buffer
        SUBROUTINE MPI_Session_iflush_buffer(session, request, ierror)
            IMPLICIT NONE
            INTEGER :: session
            INTEGER :: request
            INTEGER :: ierror
        END SUBROUTINE MPI_Session_iflush_buffer
    END INTERFACE
    
    INTERFACE MPI_Ssend
        SUBROUTINE MPI_Ssend(buf, count, datatype, dest, tag, comm, ierror)
            IMPLICIT NONE
            !GCC$ ATTRIBUTES NO_ARG_CHECK :: buf
            REAL :: buf
            INTEGER :: count
            INTEGER :: datatype
            INTEGER :: dest
            INTEGER :: tag
            INTEGER :: comm
            INTEGER :: ierror
        END SUBROUTINE MPI_Ssend
    END INTERFACE
    
    INTERFACE MPI_Ssend_init
        SUBROUTINE MPI_Ssend_init(buf, count, datatype, dest, tag, comm, request, ierror)
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
        END SUBROUTINE MPI_Ssend_init
    END INTERFACE
    
    INTERFACE MPI_Cancel
        SUBROUTINE MPI_Cancel(request, ierror)
            IMPLICIT NONE
            INTEGER :: request
            INTEGER :: ierror
        END SUBROUTINE MPI_Cancel
    END INTERFACE
    
    INTERFACE MPI_Grequest_complete
        SUBROUTINE MPI_Grequest_complete(request, ierror)
            IMPLICIT NONE
            INTEGER :: request
            INTEGER :: ierror
        END SUBROUTINE MPI_Grequest_complete
    END INTERFACE
    
    INTERFACE MPI_Grequest_start
        SUBROUTINE MPI_Grequest_start(query_fn, free_fn, cancel_fn, extra_state, request, ierror)
            USE MPI_CONSTANTS, ONLY: MPI_ADDRESS_KIND
            IMPLICIT NONE
            EXTERNAL :: query_fn
            EXTERNAL :: free_fn
            EXTERNAL :: cancel_fn
            INTEGER(KIND=MPI_ADDRESS_KIND) :: extra_state
            INTEGER :: request
            INTEGER :: ierror
        END SUBROUTINE MPI_Grequest_start
    END INTERFACE
    
    INTERFACE MPI_Request_free
        SUBROUTINE MPI_Request_free(request, ierror)
            IMPLICIT NONE
            INTEGER :: request
            INTEGER :: ierror
        END SUBROUTINE MPI_Request_free
    END INTERFACE
    
    INTERFACE MPI_Request_get_status
        SUBROUTINE MPI_Request_get_status(request, flag, status, ierror)
            USE MPI_CONSTANTS, ONLY: MPI_STATUS_SIZE
            IMPLICIT NONE
            INTEGER :: request
            LOGICAL :: flag
            INTEGER :: status(MPI_STATUS_SIZE)
            INTEGER :: ierror
        END SUBROUTINE MPI_Request_get_status
    END INTERFACE
    
    INTERFACE MPI_Request_get_status_all
        SUBROUTINE MPI_Request_get_status_all(count, array_of_requests, flag, array_of_statuses, ierror)
            USE MPI_CONSTANTS, ONLY: MPI_STATUS_SIZE
            IMPLICIT NONE
            INTEGER :: count
            INTEGER :: array_of_requests(count)
            LOGICAL :: flag
            INTEGER :: array_of_statuses(MPI_STATUS_SIZE, *)
            INTEGER :: ierror
        END SUBROUTINE MPI_Request_get_status_all
    END INTERFACE
    
    INTERFACE MPI_Request_get_status_any
        SUBROUTINE MPI_Request_get_status_any(count, array_of_requests, indx, flag, status, ierror)
            USE MPI_CONSTANTS, ONLY: MPI_STATUS_SIZE
            IMPLICIT NONE
            INTEGER :: count
            INTEGER :: array_of_requests(count)
            INTEGER :: indx
            LOGICAL :: flag
            INTEGER :: status(MPI_STATUS_SIZE)
            INTEGER :: ierror
        END SUBROUTINE MPI_Request_get_status_any
    END INTERFACE
    
    INTERFACE MPI_Request_get_status_some
        SUBROUTINE MPI_Request_get_status_some(incount, array_of_requests, outcount, array_of_indices, &
                                               array_of_statuses, ierror)
            USE MPI_CONSTANTS, ONLY: MPI_STATUS_SIZE
            IMPLICIT NONE
            INTEGER :: incount
            INTEGER :: array_of_requests(incount)
            INTEGER :: outcount
            INTEGER :: array_of_indices(*)
            INTEGER :: array_of_statuses(MPI_STATUS_SIZE, *)
            INTEGER :: ierror
        END SUBROUTINE MPI_Request_get_status_some
    END INTERFACE
    
    INTERFACE MPI_Start
        SUBROUTINE MPI_Start(request, ierror)
            IMPLICIT NONE
            INTEGER :: request
            INTEGER :: ierror
        END SUBROUTINE MPI_Start
    END INTERFACE
    
    INTERFACE MPI_Startall
        SUBROUTINE MPI_Startall(count, array_of_requests, ierror)
            IMPLICIT NONE
            INTEGER :: count
            INTEGER :: array_of_requests(count)
            INTEGER :: ierror
        END SUBROUTINE MPI_Startall
    END INTERFACE
    
    INTERFACE MPI_Status_get_error
        SUBROUTINE MPI_Status_get_error(status, error, ierror)
            USE MPI_CONSTANTS, ONLY: MPI_STATUS_SIZE
            IMPLICIT NONE
            INTEGER :: status(MPI_STATUS_SIZE)
            INTEGER :: error
            INTEGER :: ierror
        END SUBROUTINE MPI_Status_get_error
    END INTERFACE
    
    INTERFACE MPI_Status_get_source
        SUBROUTINE MPI_Status_get_source(status, source, ierror)
            USE MPI_CONSTANTS, ONLY: MPI_STATUS_SIZE
            IMPLICIT NONE
            INTEGER :: status(MPI_STATUS_SIZE)
            INTEGER :: source
            INTEGER :: ierror
        END SUBROUTINE MPI_Status_get_source
    END INTERFACE
    
    INTERFACE MPI_Status_get_tag
        SUBROUTINE MPI_Status_get_tag(status, tag, ierror)
            USE MPI_CONSTANTS, ONLY: MPI_STATUS_SIZE
            IMPLICIT NONE
            INTEGER :: status(MPI_STATUS_SIZE)
            INTEGER :: tag
            INTEGER :: ierror
        END SUBROUTINE MPI_Status_get_tag
    END INTERFACE
    
    INTERFACE MPI_Status_set_error
        SUBROUTINE MPI_Status_set_error(status, error, ierror)
            USE MPI_CONSTANTS, ONLY: MPI_STATUS_SIZE
            IMPLICIT NONE
            INTEGER :: status(MPI_STATUS_SIZE)
            INTEGER :: error
            INTEGER :: ierror
        END SUBROUTINE MPI_Status_set_error
    END INTERFACE
    
    INTERFACE MPI_Status_set_source
        SUBROUTINE MPI_Status_set_source(status, source, ierror)
            USE MPI_CONSTANTS, ONLY: MPI_STATUS_SIZE
            IMPLICIT NONE
            INTEGER :: status(MPI_STATUS_SIZE)
            INTEGER :: source
            INTEGER :: ierror
        END SUBROUTINE MPI_Status_set_source
    END INTERFACE
    
    INTERFACE MPI_Status_set_tag
        SUBROUTINE MPI_Status_set_tag(status, tag, ierror)
            USE MPI_CONSTANTS, ONLY: MPI_STATUS_SIZE
            IMPLICIT NONE
            INTEGER :: status(MPI_STATUS_SIZE)
            INTEGER :: tag
            INTEGER :: ierror
        END SUBROUTINE MPI_Status_set_tag
    END INTERFACE
    
    INTERFACE MPI_Status_set_cancelled
        SUBROUTINE MPI_Status_set_cancelled(status, flag, ierror)
            USE MPI_CONSTANTS, ONLY: MPI_STATUS_SIZE
            IMPLICIT NONE
            INTEGER :: status(MPI_STATUS_SIZE)
            LOGICAL :: flag
            INTEGER :: ierror
        END SUBROUTINE MPI_Status_set_cancelled
    END INTERFACE
    
    INTERFACE MPI_Test
        SUBROUTINE MPI_Test(request, flag, status, ierror)
            USE MPI_CONSTANTS, ONLY: MPI_STATUS_SIZE
            IMPLICIT NONE
            INTEGER :: request
            LOGICAL :: flag
            INTEGER :: status(MPI_STATUS_SIZE)
            INTEGER :: ierror
        END SUBROUTINE MPI_Test
    END INTERFACE
    
    INTERFACE MPI_Test_cancelled
        SUBROUTINE MPI_Test_cancelled(status, flag, ierror)
            USE MPI_CONSTANTS, ONLY: MPI_STATUS_SIZE
            IMPLICIT NONE
            INTEGER :: status(MPI_STATUS_SIZE)
            LOGICAL :: flag
            INTEGER :: ierror
        END SUBROUTINE MPI_Test_cancelled
    END INTERFACE
    
    INTERFACE MPI_Testall
        SUBROUTINE MPI_Testall(count, array_of_requests, flag, array_of_statuses, ierror)
            USE MPI_CONSTANTS, ONLY: MPI_STATUS_SIZE
            IMPLICIT NONE
            INTEGER :: count
            INTEGER :: array_of_requests(count)
            LOGICAL :: flag
            INTEGER :: array_of_statuses(MPI_STATUS_SIZE, *)
            INTEGER :: ierror
        END SUBROUTINE MPI_Testall
    END INTERFACE
    
    INTERFACE MPI_Testany
        SUBROUTINE MPI_Testany(count, array_of_requests, indx, flag, status, ierror)
            USE MPI_CONSTANTS, ONLY: MPI_STATUS_SIZE
            IMPLICIT NONE
            INTEGER :: count
            INTEGER :: array_of_requests(count)
            INTEGER :: indx
            LOGICAL :: flag
            INTEGER :: status(MPI_STATUS_SIZE)
            INTEGER :: ierror
        END SUBROUTINE MPI_Testany
    END INTERFACE
    
    INTERFACE MPI_Testsome
        SUBROUTINE MPI_Testsome(incount, array_of_requests, outcount, array_of_indices, array_of_statuses, &
                                ierror)
            USE MPI_CONSTANTS, ONLY: MPI_STATUS_SIZE
            IMPLICIT NONE
            INTEGER :: incount
            INTEGER :: array_of_requests(incount)
            INTEGER :: outcount
            INTEGER :: array_of_indices(*)
            INTEGER :: array_of_statuses(MPI_STATUS_SIZE, *)
            INTEGER :: ierror
        END SUBROUTINE MPI_Testsome
    END INTERFACE
    
    INTERFACE MPI_Wait
        SUBROUTINE MPI_Wait(request, status, ierror)
            USE MPI_CONSTANTS, ONLY: MPI_STATUS_SIZE
            IMPLICIT NONE
            INTEGER :: request
            INTEGER :: status(MPI_STATUS_SIZE)
            INTEGER :: ierror
        END SUBROUTINE MPI_Wait
    END INTERFACE
    
    INTERFACE MPI_Waitall
        SUBROUTINE MPI_Waitall(count, array_of_requests, array_of_statuses, ierror)
            USE MPI_CONSTANTS, ONLY: MPI_STATUS_SIZE
            IMPLICIT NONE
            INTEGER :: count
            INTEGER :: array_of_requests(count)
            INTEGER :: array_of_statuses(MPI_STATUS_SIZE, *)
            INTEGER :: ierror
        END SUBROUTINE MPI_Waitall
    END INTERFACE
    
    INTERFACE MPI_Waitany
        SUBROUTINE MPI_Waitany(count, array_of_requests, indx, status, ierror)
            USE MPI_CONSTANTS, ONLY: MPI_STATUS_SIZE
            IMPLICIT NONE
            INTEGER :: count
            INTEGER :: array_of_requests(count)
            INTEGER :: indx
            INTEGER :: status(MPI_STATUS_SIZE)
            INTEGER :: ierror
        END SUBROUTINE MPI_Waitany
    END INTERFACE
    
    INTERFACE MPI_Waitsome
        SUBROUTINE MPI_Waitsome(incount, array_of_requests, outcount, array_of_indices, array_of_statuses, &
                                ierror)
            USE MPI_CONSTANTS, ONLY: MPI_STATUS_SIZE
            IMPLICIT NONE
            INTEGER :: incount
            INTEGER :: array_of_requests(incount)
            INTEGER :: outcount
            INTEGER :: array_of_indices(*)
            INTEGER :: array_of_statuses(MPI_STATUS_SIZE, *)
            INTEGER :: ierror
        END SUBROUTINE MPI_Waitsome
    END INTERFACE
    
    INTERFACE MPIX_Request_is_complete
        FUNCTION MPIX_Request_is_complete(request) result(res)
            IMPLICIT NONE
            INTEGER :: request
            LOGICAL :: res
        END FUNCTION MPIX_Request_is_complete
    END INTERFACE
    
    INTERFACE MPI_Accumulate
        SUBROUTINE MPI_Accumulate(origin_addr, origin_count, origin_datatype, target_rank, target_disp, &
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
        END SUBROUTINE MPI_Accumulate
    END INTERFACE
    
    INTERFACE MPI_Alloc_mem
        SUBROUTINE MPI_Alloc_mem(size, info, baseptr, ierror)
            USE MPI_CONSTANTS, ONLY: MPI_ADDRESS_KIND
            IMPLICIT NONE
            INTEGER(KIND=MPI_ADDRESS_KIND) :: size
            INTEGER :: info
            INTEGER(KIND=MPI_ADDRESS_KIND) :: baseptr
            INTEGER :: ierror
        END SUBROUTINE MPI_Alloc_mem
        SUBROUTINE MPI_Alloc_mem_cptr(size, info, baseptr, ierror)
            USE MPI_CONSTANTS, ONLY: MPI_ADDRESS_KIND
            USE, INTRINSIC :: ISO_C_BINDING, ONLY : C_PTR
            IMPLICIT NONE
            INTEGER(KIND=MPI_ADDRESS_KIND) :: size
            INTEGER :: info
            TYPE(C_PTR) :: baseptr
            INTEGER :: ierror
        END SUBROUTINE MPI_Alloc_mem_cptr
    END INTERFACE
    
    INTERFACE MPI_Compare_and_swap
        SUBROUTINE MPI_Compare_and_swap(origin_addr, compare_addr, result_addr, datatype, target_rank, &
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
        END SUBROUTINE MPI_Compare_and_swap
    END INTERFACE
    
    INTERFACE MPI_Fetch_and_op
        SUBROUTINE MPI_Fetch_and_op(origin_addr, result_addr, datatype, target_rank, target_disp, op, win, &
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
        END SUBROUTINE MPI_Fetch_and_op
    END INTERFACE
    
    INTERFACE MPI_Free_mem
        SUBROUTINE MPI_Free_mem(base, ierror)
            IMPLICIT NONE
            !GCC$ ATTRIBUTES NO_ARG_CHECK :: base
            REAL :: base
            INTEGER :: ierror
        END SUBROUTINE MPI_Free_mem
    END INTERFACE
    
    INTERFACE MPI_Get
        SUBROUTINE MPI_Get(origin_addr, origin_count, origin_datatype, target_rank, target_disp, &
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
        END SUBROUTINE MPI_Get
    END INTERFACE
    
    INTERFACE MPI_Get_accumulate
        SUBROUTINE MPI_Get_accumulate(origin_addr, origin_count, origin_datatype, result_addr, result_count, &
                                      result_datatype, target_rank, target_disp, target_count, &
                                      target_datatype, op, win, ierror)
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
        END SUBROUTINE MPI_Get_accumulate
    END INTERFACE
    
    INTERFACE MPI_Put
        SUBROUTINE MPI_Put(origin_addr, origin_count, origin_datatype, target_rank, target_disp, &
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
        END SUBROUTINE MPI_Put
    END INTERFACE
    
    INTERFACE MPI_Raccumulate
        SUBROUTINE MPI_Raccumulate(origin_addr, origin_count, origin_datatype, target_rank, target_disp, &
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
        END SUBROUTINE MPI_Raccumulate
    END INTERFACE
    
    INTERFACE MPI_Rget
        SUBROUTINE MPI_Rget(origin_addr, origin_count, origin_datatype, target_rank, target_disp, &
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
        END SUBROUTINE MPI_Rget
    END INTERFACE
    
    INTERFACE MPI_Rget_accumulate
        SUBROUTINE MPI_Rget_accumulate(origin_addr, origin_count, origin_datatype, result_addr, &
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
        END SUBROUTINE MPI_Rget_accumulate
    END INTERFACE
    
    INTERFACE MPI_Rput
        SUBROUTINE MPI_Rput(origin_addr, origin_count, origin_datatype, target_rank, target_disp, &
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
        END SUBROUTINE MPI_Rput
    END INTERFACE
    
    INTERFACE MPI_Win_allocate
        SUBROUTINE MPI_Win_allocate(size, disp_unit, info, comm, baseptr, win, ierror)
            USE MPI_CONSTANTS, ONLY: MPI_ADDRESS_KIND
            IMPLICIT NONE
            INTEGER(KIND=MPI_ADDRESS_KIND) :: size
            INTEGER :: disp_unit
            INTEGER :: info
            INTEGER :: comm
            INTEGER(KIND=MPI_ADDRESS_KIND) :: baseptr
            INTEGER :: win
            INTEGER :: ierror
        END SUBROUTINE MPI_Win_allocate
        SUBROUTINE MPI_Win_allocate_cptr(size, disp_unit, info, comm, baseptr, win, ierror)
            USE MPI_CONSTANTS, ONLY: MPI_ADDRESS_KIND
            USE, INTRINSIC :: ISO_C_BINDING, ONLY : C_PTR
            IMPLICIT NONE
            INTEGER(KIND=MPI_ADDRESS_KIND) :: size
            INTEGER :: disp_unit
            INTEGER :: info
            INTEGER :: comm
            TYPE(C_PTR) :: baseptr
            INTEGER :: win
            INTEGER :: ierror
        END SUBROUTINE MPI_Win_allocate_cptr
    END INTERFACE
    
    INTERFACE MPI_Win_allocate_shared
        SUBROUTINE MPI_Win_allocate_shared(size, disp_unit, info, comm, baseptr, win, ierror)
            USE MPI_CONSTANTS, ONLY: MPI_ADDRESS_KIND
            IMPLICIT NONE
            INTEGER(KIND=MPI_ADDRESS_KIND) :: size
            INTEGER :: disp_unit
            INTEGER :: info
            INTEGER :: comm
            INTEGER(KIND=MPI_ADDRESS_KIND) :: baseptr
            INTEGER :: win
            INTEGER :: ierror
        END SUBROUTINE MPI_Win_allocate_shared
        SUBROUTINE MPI_Win_allocate_shared_cptr(size, disp_unit, info, comm, baseptr, win, ierror)
            USE MPI_CONSTANTS, ONLY: MPI_ADDRESS_KIND
            USE, INTRINSIC :: ISO_C_BINDING, ONLY : C_PTR
            IMPLICIT NONE
            INTEGER(KIND=MPI_ADDRESS_KIND) :: size
            INTEGER :: disp_unit
            INTEGER :: info
            INTEGER :: comm
            TYPE(C_PTR) :: baseptr
            INTEGER :: win
            INTEGER :: ierror
        END SUBROUTINE MPI_Win_allocate_shared_cptr
    END INTERFACE
    
    INTERFACE MPI_Win_attach
        SUBROUTINE MPI_Win_attach(win, base, size, ierror)
            USE MPI_CONSTANTS, ONLY: MPI_ADDRESS_KIND
            IMPLICIT NONE
            !GCC$ ATTRIBUTES NO_ARG_CHECK :: base
            INTEGER :: win
            REAL :: base
            INTEGER(KIND=MPI_ADDRESS_KIND) :: size
            INTEGER :: ierror
        END SUBROUTINE MPI_Win_attach
    END INTERFACE
    
    INTERFACE MPI_Win_complete
        SUBROUTINE MPI_Win_complete(win, ierror)
            IMPLICIT NONE
            INTEGER :: win
            INTEGER :: ierror
        END SUBROUTINE MPI_Win_complete
    END INTERFACE
    
    INTERFACE MPI_Win_create
        SUBROUTINE MPI_Win_create(base, size, disp_unit, info, comm, win, ierror)
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
        END SUBROUTINE MPI_Win_create
    END INTERFACE
    
    INTERFACE MPI_Win_create_dynamic
        SUBROUTINE MPI_Win_create_dynamic(info, comm, win, ierror)
            IMPLICIT NONE
            INTEGER :: info
            INTEGER :: comm
            INTEGER :: win
            INTEGER :: ierror
        END SUBROUTINE MPI_Win_create_dynamic
    END INTERFACE
    
    INTERFACE MPI_Win_detach
        SUBROUTINE MPI_Win_detach(win, base, ierror)
            IMPLICIT NONE
            !GCC$ ATTRIBUTES NO_ARG_CHECK :: base
            INTEGER :: win
            REAL :: base
            INTEGER :: ierror
        END SUBROUTINE MPI_Win_detach
    END INTERFACE
    
    INTERFACE MPI_Win_fence
        SUBROUTINE MPI_Win_fence(assert, win, ierror)
            IMPLICIT NONE
            INTEGER :: assert
            INTEGER :: win
            INTEGER :: ierror
        END SUBROUTINE MPI_Win_fence
    END INTERFACE
    
    INTERFACE MPI_Win_flush
        SUBROUTINE MPI_Win_flush(rank, win, ierror)
            IMPLICIT NONE
            INTEGER :: rank
            INTEGER :: win
            INTEGER :: ierror
        END SUBROUTINE MPI_Win_flush
    END INTERFACE
    
    INTERFACE MPI_Win_flush_all
        SUBROUTINE MPI_Win_flush_all(win, ierror)
            IMPLICIT NONE
            INTEGER :: win
            INTEGER :: ierror
        END SUBROUTINE MPI_Win_flush_all
    END INTERFACE
    
    INTERFACE MPI_Win_flush_local
        SUBROUTINE MPI_Win_flush_local(rank, win, ierror)
            IMPLICIT NONE
            INTEGER :: rank
            INTEGER :: win
            INTEGER :: ierror
        END SUBROUTINE MPI_Win_flush_local
    END INTERFACE
    
    INTERFACE MPI_Win_flush_local_all
        SUBROUTINE MPI_Win_flush_local_all(win, ierror)
            IMPLICIT NONE
            INTEGER :: win
            INTEGER :: ierror
        END SUBROUTINE MPI_Win_flush_local_all
    END INTERFACE
    
    INTERFACE MPI_Win_free
        SUBROUTINE MPI_Win_free(win, ierror)
            IMPLICIT NONE
            INTEGER :: win
            INTEGER :: ierror
        END SUBROUTINE MPI_Win_free
    END INTERFACE
    
    INTERFACE MPI_Win_get_group
        SUBROUTINE MPI_Win_get_group(win, group, ierror)
            IMPLICIT NONE
            INTEGER :: win
            INTEGER :: group
            INTEGER :: ierror
        END SUBROUTINE MPI_Win_get_group
    END INTERFACE
    
    INTERFACE MPI_Win_get_info
        SUBROUTINE MPI_Win_get_info(win, info_used, ierror)
            IMPLICIT NONE
            INTEGER :: win
            INTEGER :: info_used
            INTEGER :: ierror
        END SUBROUTINE MPI_Win_get_info
    END INTERFACE
    
    INTERFACE MPI_Win_get_name
        SUBROUTINE MPI_Win_get_name(win, win_name, resultlen, ierror)
            IMPLICIT NONE
            INTEGER :: win
            CHARACTER*(*) :: win_name
            INTEGER :: resultlen
            INTEGER :: ierror
        END SUBROUTINE MPI_Win_get_name
    END INTERFACE
    
    INTERFACE MPI_Win_lock
        SUBROUTINE MPI_Win_lock(lock_type, rank, assert, win, ierror)
            IMPLICIT NONE
            INTEGER :: lock_type
            INTEGER :: rank
            INTEGER :: assert
            INTEGER :: win
            INTEGER :: ierror
        END SUBROUTINE MPI_Win_lock
    END INTERFACE
    
    INTERFACE MPI_Win_lock_all
        SUBROUTINE MPI_Win_lock_all(assert, win, ierror)
            IMPLICIT NONE
            INTEGER :: assert
            INTEGER :: win
            INTEGER :: ierror
        END SUBROUTINE MPI_Win_lock_all
    END INTERFACE
    
    INTERFACE MPI_Win_post
        SUBROUTINE MPI_Win_post(group, assert, win, ierror)
            IMPLICIT NONE
            INTEGER :: group
            INTEGER :: assert
            INTEGER :: win
            INTEGER :: ierror
        END SUBROUTINE MPI_Win_post
    END INTERFACE
    
    INTERFACE MPI_Win_set_info
        SUBROUTINE MPI_Win_set_info(win, info, ierror)
            IMPLICIT NONE
            INTEGER :: win
            INTEGER :: info
            INTEGER :: ierror
        END SUBROUTINE MPI_Win_set_info
    END INTERFACE
    
    INTERFACE MPI_Win_set_name
        SUBROUTINE MPI_Win_set_name(win, win_name, ierror)
            IMPLICIT NONE
            INTEGER :: win
            CHARACTER*(*) :: win_name
            INTEGER :: ierror
        END SUBROUTINE MPI_Win_set_name
    END INTERFACE
    
    INTERFACE MPI_Win_shared_query
        SUBROUTINE MPI_Win_shared_query(win, rank, size, disp_unit, baseptr, ierror)
            USE MPI_CONSTANTS, ONLY: MPI_ADDRESS_KIND
            IMPLICIT NONE
            INTEGER :: win
            INTEGER :: rank
            INTEGER(KIND=MPI_ADDRESS_KIND) :: size
            INTEGER :: disp_unit
            INTEGER(KIND=MPI_ADDRESS_KIND) :: baseptr
            INTEGER :: ierror
        END SUBROUTINE MPI_Win_shared_query
        SUBROUTINE MPI_Win_shared_query_cptr(win, rank, size, disp_unit, baseptr, ierror)
            USE MPI_CONSTANTS, ONLY: MPI_ADDRESS_KIND
            USE, INTRINSIC :: ISO_C_BINDING, ONLY : C_PTR
            IMPLICIT NONE
            INTEGER :: win
            INTEGER :: rank
            INTEGER(KIND=MPI_ADDRESS_KIND) :: size
            INTEGER :: disp_unit
            TYPE(C_PTR) :: baseptr
            INTEGER :: ierror
        END SUBROUTINE MPI_Win_shared_query_cptr
    END INTERFACE
    
    INTERFACE MPI_Win_start
        SUBROUTINE MPI_Win_start(group, assert, win, ierror)
            IMPLICIT NONE
            INTEGER :: group
            INTEGER :: assert
            INTEGER :: win
            INTEGER :: ierror
        END SUBROUTINE MPI_Win_start
    END INTERFACE
    
    INTERFACE MPI_Win_sync
        SUBROUTINE MPI_Win_sync(win, ierror)
            IMPLICIT NONE
            INTEGER :: win
            INTEGER :: ierror
        END SUBROUTINE MPI_Win_sync
    END INTERFACE
    
    INTERFACE MPI_Win_test
        SUBROUTINE MPI_Win_test(win, flag, ierror)
            IMPLICIT NONE
            INTEGER :: win
            LOGICAL :: flag
            INTEGER :: ierror
        END SUBROUTINE MPI_Win_test
    END INTERFACE
    
    INTERFACE MPI_Win_unlock
        SUBROUTINE MPI_Win_unlock(rank, win, ierror)
            IMPLICIT NONE
            INTEGER :: rank
            INTEGER :: win
            INTEGER :: ierror
        END SUBROUTINE MPI_Win_unlock
    END INTERFACE
    
    INTERFACE MPI_Win_unlock_all
        SUBROUTINE MPI_Win_unlock_all(win, ierror)
            IMPLICIT NONE
            INTEGER :: win
            INTEGER :: ierror
        END SUBROUTINE MPI_Win_unlock_all
    END INTERFACE
    
    INTERFACE MPI_Win_wait
        SUBROUTINE MPI_Win_wait(win, ierror)
            IMPLICIT NONE
            INTEGER :: win
            INTEGER :: ierror
        END SUBROUTINE MPI_Win_wait
    END INTERFACE
    
    INTERFACE MPI_Close_port
        SUBROUTINE MPI_Close_port(port_name, ierror)
            IMPLICIT NONE
            CHARACTER*(*) :: port_name
            INTEGER :: ierror
        END SUBROUTINE MPI_Close_port
    END INTERFACE
    
    INTERFACE MPI_Comm_accept
        SUBROUTINE MPI_Comm_accept(port_name, info, root, comm, newcomm, ierror)
            IMPLICIT NONE
            CHARACTER*(*) :: port_name
            INTEGER :: info
            INTEGER :: root
            INTEGER :: comm
            INTEGER :: newcomm
            INTEGER :: ierror
        END SUBROUTINE MPI_Comm_accept
    END INTERFACE
    
    INTERFACE MPI_Comm_connect
        SUBROUTINE MPI_Comm_connect(port_name, info, root, comm, newcomm, ierror)
            IMPLICIT NONE
            CHARACTER*(*) :: port_name
            INTEGER :: info
            INTEGER :: root
            INTEGER :: comm
            INTEGER :: newcomm
            INTEGER :: ierror
        END SUBROUTINE MPI_Comm_connect
    END INTERFACE
    
    INTERFACE MPI_Comm_disconnect
        SUBROUTINE MPI_Comm_disconnect(comm, ierror)
            IMPLICIT NONE
            INTEGER :: comm
            INTEGER :: ierror
        END SUBROUTINE MPI_Comm_disconnect
    END INTERFACE
    
    INTERFACE MPI_Comm_get_parent
        SUBROUTINE MPI_Comm_get_parent(parent, ierror)
            IMPLICIT NONE
            INTEGER :: parent
            INTEGER :: ierror
        END SUBROUTINE MPI_Comm_get_parent
    END INTERFACE
    
    INTERFACE MPI_Comm_join
        SUBROUTINE MPI_Comm_join(fd, intercomm, ierror)
            IMPLICIT NONE
            INTEGER :: fd
            INTEGER :: intercomm
            INTEGER :: ierror
        END SUBROUTINE MPI_Comm_join
    END INTERFACE
    
    INTERFACE MPI_Comm_spawn
        SUBROUTINE MPI_Comm_spawn(command, argv, maxprocs, info, root, comm, intercomm, array_of_errcodes, &
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
        END SUBROUTINE MPI_Comm_spawn
    END INTERFACE
    
    INTERFACE MPI_Comm_spawn_multiple
        SUBROUTINE MPI_Comm_spawn_multiple(count, array_of_commands, array_of_argv, array_of_maxprocs, &
                                           array_of_info, root, comm, intercomm, array_of_errcodes, ierror)
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
        END SUBROUTINE MPI_Comm_spawn_multiple
    END INTERFACE
    
    INTERFACE MPI_Lookup_name
        SUBROUTINE MPI_Lookup_name(service_name, info, port_name, ierror)
            IMPLICIT NONE
            CHARACTER*(*) :: service_name
            INTEGER :: info
            CHARACTER*(*) :: port_name
            INTEGER :: ierror
        END SUBROUTINE MPI_Lookup_name
    END INTERFACE
    
    INTERFACE MPI_Open_port
        SUBROUTINE MPI_Open_port(info, port_name, ierror)
            IMPLICIT NONE
            INTEGER :: info
            CHARACTER*(*) :: port_name
            INTEGER :: ierror
        END SUBROUTINE MPI_Open_port
    END INTERFACE
    
    INTERFACE MPI_Publish_name
        SUBROUTINE MPI_Publish_name(service_name, info, port_name, ierror)
            IMPLICIT NONE
            CHARACTER*(*) :: service_name
            INTEGER :: info
            CHARACTER*(*) :: port_name
            INTEGER :: ierror
        END SUBROUTINE MPI_Publish_name
    END INTERFACE
    
    INTERFACE MPI_Unpublish_name
        SUBROUTINE MPI_Unpublish_name(service_name, info, port_name, ierror)
            IMPLICIT NONE
            CHARACTER*(*) :: service_name
            INTEGER :: info
            CHARACTER*(*) :: port_name
            INTEGER :: ierror
        END SUBROUTINE MPI_Unpublish_name
    END INTERFACE
    
    INTERFACE MPIX_Stream_create
        SUBROUTINE MPIX_Stream_create(info, stream, ierror)
            IMPLICIT NONE
            INTEGER :: info
            INTEGER :: stream
            INTEGER :: ierror
        END SUBROUTINE MPIX_Stream_create
    END INTERFACE
    
    INTERFACE MPIX_Stream_free
        SUBROUTINE MPIX_Stream_free(stream, ierror)
            IMPLICIT NONE
            INTEGER :: stream
            INTEGER :: ierror
        END SUBROUTINE MPIX_Stream_free
    END INTERFACE
    
    INTERFACE MPIX_Stream_comm_create
        SUBROUTINE MPIX_Stream_comm_create(comm, stream, newcomm, ierror)
            IMPLICIT NONE
            INTEGER :: comm
            INTEGER :: stream
            INTEGER :: newcomm
            INTEGER :: ierror
        END SUBROUTINE MPIX_Stream_comm_create
    END INTERFACE
    
    INTERFACE MPIX_Stream_comm_create_multiplex
        SUBROUTINE MPIX_Stream_comm_create_multiplex(comm, count, array_of_streams, newcomm, ierror)
            IMPLICIT NONE
            INTEGER :: comm
            INTEGER :: count
            INTEGER :: array_of_streams(count)
            INTEGER :: newcomm
            INTEGER :: ierror
        END SUBROUTINE MPIX_Stream_comm_create_multiplex
    END INTERFACE
    
    INTERFACE MPIX_Comm_get_stream
        SUBROUTINE MPIX_Comm_get_stream(comm, idx, stream, ierror)
            IMPLICIT NONE
            INTEGER :: comm
            INTEGER :: idx
            INTEGER :: stream
            INTEGER :: ierror
        END SUBROUTINE MPIX_Comm_get_stream
    END INTERFACE
    
    INTERFACE MPIX_Stream_progress
        SUBROUTINE MPIX_Stream_progress(stream, ierror)
            IMPLICIT NONE
            INTEGER :: stream
            INTEGER :: ierror
        END SUBROUTINE MPIX_Stream_progress
    END INTERFACE
    
    INTERFACE MPIX_Start_progress_thread
        SUBROUTINE MPIX_Start_progress_thread(stream, ierror)
            IMPLICIT NONE
            INTEGER :: stream
            INTEGER :: ierror
        END SUBROUTINE MPIX_Start_progress_thread
    END INTERFACE
    
    INTERFACE MPIX_Stop_progress_thread
        SUBROUTINE MPIX_Stop_progress_thread(stream, ierror)
            IMPLICIT NONE
            INTEGER :: stream
            INTEGER :: ierror
        END SUBROUTINE MPIX_Stop_progress_thread
    END INTERFACE
    
    INTERFACE MPIX_Stream_send
        SUBROUTINE MPIX_Stream_send(buf, count, datatype, dest, tag, comm, source_stream_index, &
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
        END SUBROUTINE MPIX_Stream_send
    END INTERFACE
    
    INTERFACE MPIX_Stream_isend
        SUBROUTINE MPIX_Stream_isend(buf, count, datatype, dest, tag, comm, source_stream_index, &
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
        END SUBROUTINE MPIX_Stream_isend
    END INTERFACE
    
    INTERFACE MPIX_Stream_recv
        SUBROUTINE MPIX_Stream_recv(buf, count, datatype, source, tag, comm, source_stream_index, &
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
        END SUBROUTINE MPIX_Stream_recv
    END INTERFACE
    
    INTERFACE MPIX_Stream_irecv
        SUBROUTINE MPIX_Stream_irecv(buf, count, datatype, source, tag, comm, source_stream_index, &
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
        END SUBROUTINE MPIX_Stream_irecv
    END INTERFACE
    
    INTERFACE MPIX_Send_enqueue
        SUBROUTINE MPIX_Send_enqueue(buf, count, datatype, dest, tag, comm, ierror)
            IMPLICIT NONE
            !GCC$ ATTRIBUTES NO_ARG_CHECK :: buf
            REAL :: buf
            INTEGER :: count
            INTEGER :: datatype
            INTEGER :: dest
            INTEGER :: tag
            INTEGER :: comm
            INTEGER :: ierror
        END SUBROUTINE MPIX_Send_enqueue
    END INTERFACE
    
    INTERFACE MPIX_Recv_enqueue
        SUBROUTINE MPIX_Recv_enqueue(buf, count, datatype, source, tag, comm, status, ierror)
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
        END SUBROUTINE MPIX_Recv_enqueue
    END INTERFACE
    
    INTERFACE MPIX_Isend_enqueue
        SUBROUTINE MPIX_Isend_enqueue(buf, count, datatype, dest, tag, comm, request, ierror)
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
        END SUBROUTINE MPIX_Isend_enqueue
    END INTERFACE
    
    INTERFACE MPIX_Irecv_enqueue
        SUBROUTINE MPIX_Irecv_enqueue(buf, count, datatype, source, tag, comm, request, ierror)
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
        END SUBROUTINE MPIX_Irecv_enqueue
    END INTERFACE
    
    INTERFACE MPIX_Wait_enqueue
        SUBROUTINE MPIX_Wait_enqueue(request, status, ierror)
            USE MPI_CONSTANTS, ONLY: MPI_STATUS_SIZE
            IMPLICIT NONE
            INTEGER :: request
            INTEGER :: status(MPI_STATUS_SIZE)
            INTEGER :: ierror
        END SUBROUTINE MPIX_Wait_enqueue
    END INTERFACE
    
    INTERFACE MPIX_Waitall_enqueue
        SUBROUTINE MPIX_Waitall_enqueue(count, array_of_requests, array_of_statuses, ierror)
            USE MPI_CONSTANTS, ONLY: MPI_STATUS_SIZE
            IMPLICIT NONE
            INTEGER :: count
            INTEGER :: array_of_requests(count)
            INTEGER :: array_of_statuses(MPI_STATUS_SIZE, *)
            INTEGER :: ierror
        END SUBROUTINE MPIX_Waitall_enqueue
    END INTERFACE
    
    INTERFACE MPIX_Allreduce_enqueue
        SUBROUTINE MPIX_Allreduce_enqueue(sendbuf, recvbuf, count, datatype, op, comm, ierror)
            IMPLICIT NONE
            !GCC$ ATTRIBUTES NO_ARG_CHECK :: sendbuf, recvbuf
            REAL :: sendbuf
            REAL :: recvbuf
            INTEGER :: count
            INTEGER :: datatype
            INTEGER :: op
            INTEGER :: comm
            INTEGER :: ierror
        END SUBROUTINE MPIX_Allreduce_enqueue
    END INTERFACE
    
    INTERFACE MPIX_Threadcomm_init
        SUBROUTINE MPIX_Threadcomm_init(comm, num_threads, newthreadcomm, ierror)
            IMPLICIT NONE
            INTEGER :: comm
            INTEGER :: num_threads
            INTEGER :: newthreadcomm
            INTEGER :: ierror
        END SUBROUTINE MPIX_Threadcomm_init
    END INTERFACE
    
    INTERFACE MPIX_Threadcomm_free
        SUBROUTINE MPIX_Threadcomm_free(threadcomm, ierror)
            IMPLICIT NONE
            INTEGER :: threadcomm
            INTEGER :: ierror
        END SUBROUTINE MPIX_Threadcomm_free
    END INTERFACE
    
    INTERFACE MPIX_Threadcomm_start
        SUBROUTINE MPIX_Threadcomm_start(threadcomm, ierror)
            IMPLICIT NONE
            INTEGER :: threadcomm
            INTEGER :: ierror
        END SUBROUTINE MPIX_Threadcomm_start
    END INTERFACE
    
    INTERFACE MPIX_Threadcomm_finish
        SUBROUTINE MPIX_Threadcomm_finish(threadcomm, ierror)
            IMPLICIT NONE
            INTEGER :: threadcomm
            INTEGER :: ierror
        END SUBROUTINE MPIX_Threadcomm_finish
    END INTERFACE
    
    INTERFACE MPI_Wtick
        FUNCTION MPI_Wtick() result(res)
            IMPLICIT NONE
            DOUBLE PRECISION :: res
        END FUNCTION MPI_Wtick
    END INTERFACE
    
    INTERFACE MPI_Wtime
        FUNCTION MPI_Wtime() result(res)
            IMPLICIT NONE
            DOUBLE PRECISION :: res
        END FUNCTION MPI_Wtime
    END INTERFACE
    
    INTERFACE MPI_Cart_coords
        SUBROUTINE MPI_Cart_coords(comm, rank, maxdims, coords, ierror)
            IMPLICIT NONE
            INTEGER :: comm
            INTEGER :: rank
            INTEGER :: maxdims
            INTEGER :: coords(maxdims)
            INTEGER :: ierror
        END SUBROUTINE MPI_Cart_coords
    END INTERFACE
    
    INTERFACE MPI_Cart_create
        SUBROUTINE MPI_Cart_create(comm_old, ndims, dims, periods, reorder, comm_cart, ierror)
            IMPLICIT NONE
            INTEGER :: comm_old
            INTEGER :: ndims
            INTEGER :: dims(ndims)
            LOGICAL :: periods(ndims)
            LOGICAL :: reorder
            INTEGER :: comm_cart
            INTEGER :: ierror
        END SUBROUTINE MPI_Cart_create
    END INTERFACE
    
    INTERFACE MPI_Cart_get
        SUBROUTINE MPI_Cart_get(comm, maxdims, dims, periods, coords, ierror)
            IMPLICIT NONE
            INTEGER :: comm
            INTEGER :: maxdims
            INTEGER :: dims(maxdims)
            LOGICAL :: periods(maxdims)
            INTEGER :: coords(maxdims)
            INTEGER :: ierror
        END SUBROUTINE MPI_Cart_get
    END INTERFACE
    
    INTERFACE MPI_Cart_map
        SUBROUTINE MPI_Cart_map(comm, ndims, dims, periods, newrank, ierror)
            IMPLICIT NONE
            INTEGER :: comm
            INTEGER :: ndims
            INTEGER :: dims(ndims)
            LOGICAL :: periods(ndims)
            INTEGER :: newrank
            INTEGER :: ierror
        END SUBROUTINE MPI_Cart_map
    END INTERFACE
    
    INTERFACE MPI_Cart_rank
        SUBROUTINE MPI_Cart_rank(comm, coords, rank, ierror)
            IMPLICIT NONE
            INTEGER :: comm
            INTEGER :: coords(*)
            INTEGER :: rank
            INTEGER :: ierror
        END SUBROUTINE MPI_Cart_rank
    END INTERFACE
    
    INTERFACE MPI_Cart_shift
        SUBROUTINE MPI_Cart_shift(comm, direction, disp, rank_source, rank_dest, ierror)
            IMPLICIT NONE
            INTEGER :: comm
            INTEGER :: direction
            INTEGER :: disp
            INTEGER :: rank_source
            INTEGER :: rank_dest
            INTEGER :: ierror
        END SUBROUTINE MPI_Cart_shift
    END INTERFACE
    
    INTERFACE MPI_Cart_sub
        SUBROUTINE MPI_Cart_sub(comm, remain_dims, newcomm, ierror)
            IMPLICIT NONE
            INTEGER :: comm
            LOGICAL :: remain_dims(*)
            INTEGER :: newcomm
            INTEGER :: ierror
        END SUBROUTINE MPI_Cart_sub
    END INTERFACE
    
    INTERFACE MPI_Cartdim_get
        SUBROUTINE MPI_Cartdim_get(comm, ndims, ierror)
            IMPLICIT NONE
            INTEGER :: comm
            INTEGER :: ndims
            INTEGER :: ierror
        END SUBROUTINE MPI_Cartdim_get
    END INTERFACE
    
    INTERFACE MPI_Dims_create
        SUBROUTINE MPI_Dims_create(nnodes, ndims, dims, ierror)
            IMPLICIT NONE
            INTEGER :: nnodes
            INTEGER :: ndims
            INTEGER :: dims(ndims)
            INTEGER :: ierror
        END SUBROUTINE MPI_Dims_create
    END INTERFACE
    
    INTERFACE MPI_Dist_graph_create
        SUBROUTINE MPI_Dist_graph_create(comm_old, n, sources, degrees, destinations, weights, info, &
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
        END SUBROUTINE MPI_Dist_graph_create
    END INTERFACE
    
    INTERFACE MPI_Dist_graph_create_adjacent
        SUBROUTINE MPI_Dist_graph_create_adjacent(comm_old, indegree, sources, sourceweights, outdegree, &
                                                  destinations, destweights, info, reorder, comm_dist_graph, &
                                                  ierror)
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
        END SUBROUTINE MPI_Dist_graph_create_adjacent
    END INTERFACE
    
    INTERFACE MPI_Dist_graph_neighbors
        SUBROUTINE MPI_Dist_graph_neighbors(comm, maxindegree, sources, sourceweights, maxoutdegree, &
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
        END SUBROUTINE MPI_Dist_graph_neighbors
    END INTERFACE
    
    INTERFACE MPI_Dist_graph_neighbors_count
        SUBROUTINE MPI_Dist_graph_neighbors_count(comm, indegree, outdegree, weighted, ierror)
            IMPLICIT NONE
            INTEGER :: comm
            INTEGER :: indegree
            INTEGER :: outdegree
            LOGICAL :: weighted
            INTEGER :: ierror
        END SUBROUTINE MPI_Dist_graph_neighbors_count
    END INTERFACE
    
    INTERFACE MPI_Get_hw_resource_info
        SUBROUTINE MPI_Get_hw_resource_info(hw_info, ierror)
            IMPLICIT NONE
            INTEGER :: hw_info
            INTEGER :: ierror
        END SUBROUTINE MPI_Get_hw_resource_info
    END INTERFACE
    
    INTERFACE MPI_Graph_create
        SUBROUTINE MPI_Graph_create(comm_old, nnodes, indx, edges, reorder, comm_graph, ierror)
            IMPLICIT NONE
            INTEGER :: comm_old
            INTEGER :: nnodes
            INTEGER :: indx(nnodes)
            INTEGER :: edges(*)
            LOGICAL :: reorder
            INTEGER :: comm_graph
            INTEGER :: ierror
        END SUBROUTINE MPI_Graph_create
    END INTERFACE
    
    INTERFACE MPI_Graph_get
        SUBROUTINE MPI_Graph_get(comm, maxindex, maxedges, indx, edges, ierror)
            IMPLICIT NONE
            INTEGER :: comm
            INTEGER :: maxindex
            INTEGER :: maxedges
            INTEGER :: indx(maxindex)
            INTEGER :: edges(maxedges)
            INTEGER :: ierror
        END SUBROUTINE MPI_Graph_get
    END INTERFACE
    
    INTERFACE MPI_Graph_map
        SUBROUTINE MPI_Graph_map(comm, nnodes, indx, edges, newrank, ierror)
            IMPLICIT NONE
            INTEGER :: comm
            INTEGER :: nnodes
            INTEGER :: indx(nnodes)
            INTEGER :: edges(*)
            INTEGER :: newrank
            INTEGER :: ierror
        END SUBROUTINE MPI_Graph_map
    END INTERFACE
    
    INTERFACE MPI_Graph_neighbors
        SUBROUTINE MPI_Graph_neighbors(comm, rank, maxneighbors, neighbors, ierror)
            IMPLICIT NONE
            INTEGER :: comm
            INTEGER :: rank
            INTEGER :: maxneighbors
            INTEGER :: neighbors(maxneighbors)
            INTEGER :: ierror
        END SUBROUTINE MPI_Graph_neighbors
    END INTERFACE
    
    INTERFACE MPI_Graph_neighbors_count
        SUBROUTINE MPI_Graph_neighbors_count(comm, rank, nneighbors, ierror)
            IMPLICIT NONE
            INTEGER :: comm
            INTEGER :: rank
            INTEGER :: nneighbors
            INTEGER :: ierror
        END SUBROUTINE MPI_Graph_neighbors_count
    END INTERFACE
    
    INTERFACE MPI_Graphdims_get
        SUBROUTINE MPI_Graphdims_get(comm, nnodes, nedges, ierror)
            IMPLICIT NONE
            INTEGER :: comm
            INTEGER :: nnodes
            INTEGER :: nedges
            INTEGER :: ierror
        END SUBROUTINE MPI_Graphdims_get
    END INTERFACE
    
    INTERFACE MPI_Topo_test
        SUBROUTINE MPI_Topo_test(comm, status, ierror)
            IMPLICIT NONE
            INTEGER :: comm
            INTEGER :: status
            INTEGER :: ierror
        END SUBROUTINE MPI_Topo_test
    END INTERFACE
    
    INTERFACE MPI_DUP_FN
        SUBROUTINE MPI_DUP_FN(oldcomm, keyval, extra_state, attribute_val_in, attribute_val_out, flag, &
                              ierr)
            IMPLICIT NONE
            INTEGER :: oldcomm
            INTEGER :: keyval
            INTEGER :: extra_state
            INTEGER :: attribute_val_in
            INTEGER :: attribute_val_out
            LOGICAL :: flag
            INTEGER :: ierr
        END SUBROUTINE MPI_DUP_FN
    END INTERFACE
    
    INTERFACE MPI_NULL_COPY_FN
        SUBROUTINE MPI_NULL_COPY_FN(oldcomm, keyval, extra_state, attribute_val_in, attribute_val_out, flag, &
                                    ierr)
            IMPLICIT NONE
            INTEGER :: oldcomm
            INTEGER :: keyval
            INTEGER :: extra_state
            INTEGER :: attribute_val_in
            INTEGER :: attribute_val_out
            LOGICAL :: flag
            INTEGER :: ierr
        END SUBROUTINE MPI_NULL_COPY_FN
    END INTERFACE
    
    INTERFACE MPI_NULL_DELETE_FN
        SUBROUTINE MPI_NULL_DELETE_FN(comm, keyval, attribute_val, extra_state, ierror)
            IMPLICIT NONE
            INTEGER :: comm
            INTEGER :: keyval
            INTEGER :: attribute_val
            INTEGER :: extra_state
            INTEGER :: ierror
        END SUBROUTINE MPI_NULL_DELETE_FN
    END INTERFACE
    
    INTERFACE MPI_COMM_DUP_FN
        SUBROUTINE MPI_COMM_DUP_FN(oldcomm, comm_keyval, extra_state, attribute_val_in, attribute_val_out, &
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
        END SUBROUTINE MPI_COMM_DUP_FN
    END INTERFACE
    
    INTERFACE MPI_COMM_NULL_COPY_FN
        SUBROUTINE MPI_COMM_NULL_COPY_FN(oldcomm, comm_keyval, extra_state, attribute_val_in, &
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
        END SUBROUTINE MPI_COMM_NULL_COPY_FN
    END INTERFACE
    
    INTERFACE MPI_COMM_NULL_DELETE_FN
        SUBROUTINE MPI_COMM_NULL_DELETE_FN(comm, comm_keyval, attribute_val, extra_state, ierror)
            USE MPI_CONSTANTS, ONLY: MPI_ADDRESS_KIND
            IMPLICIT NONE
            INTEGER :: comm
            INTEGER :: comm_keyval
            INTEGER(KIND=MPI_ADDRESS_KIND) :: attribute_val
            INTEGER(KIND=MPI_ADDRESS_KIND) :: extra_state
            INTEGER :: ierror
        END SUBROUTINE MPI_COMM_NULL_DELETE_FN
    END INTERFACE
    
    INTERFACE MPI_TYPE_DUP_FN
        SUBROUTINE MPI_TYPE_DUP_FN(oldtype, type_keyval, extra_state, attribute_val_in, attribute_val_out, &
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
        END SUBROUTINE MPI_TYPE_DUP_FN
    END INTERFACE
    
    INTERFACE MPI_TYPE_NULL_COPY_FN
        SUBROUTINE MPI_TYPE_NULL_COPY_FN(oldtype, type_keyval, extra_state, attribute_val_in, &
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
        END SUBROUTINE MPI_TYPE_NULL_COPY_FN
    END INTERFACE
    
    INTERFACE MPI_TYPE_NULL_DELETE_FN
        SUBROUTINE MPI_TYPE_NULL_DELETE_FN(datatype, type_keyval, attribute_val, extra_state, ierror)
            USE MPI_CONSTANTS, ONLY: MPI_ADDRESS_KIND
            IMPLICIT NONE
            INTEGER :: datatype
            INTEGER :: type_keyval
            INTEGER(KIND=MPI_ADDRESS_KIND) :: attribute_val
            INTEGER(KIND=MPI_ADDRESS_KIND) :: extra_state
            INTEGER :: ierror
        END SUBROUTINE MPI_TYPE_NULL_DELETE_FN
    END INTERFACE
    
    INTERFACE MPI_WIN_DUP_FN
        SUBROUTINE MPI_WIN_DUP_FN(oldwin, win_keyval, extra_state, attribute_val_in, attribute_val_out, &
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
        END SUBROUTINE MPI_WIN_DUP_FN
    END INTERFACE
    
    INTERFACE MPI_WIN_NULL_COPY_FN
        SUBROUTINE MPI_WIN_NULL_COPY_FN(oldwin, win_keyval, extra_state, attribute_val_in, &
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
        END SUBROUTINE MPI_WIN_NULL_COPY_FN
    END INTERFACE
    
    INTERFACE MPI_WIN_NULL_DELETE_FN
        SUBROUTINE MPI_WIN_NULL_DELETE_FN(win, win_keyval, attribute_val, extra_state, ierror)
            USE MPI_CONSTANTS, ONLY: MPI_ADDRESS_KIND
            IMPLICIT NONE
            INTEGER :: win
            INTEGER :: win_keyval
            INTEGER(KIND=MPI_ADDRESS_KIND) :: attribute_val
            INTEGER(KIND=MPI_ADDRESS_KIND) :: extra_state
            INTEGER :: ierror
        END SUBROUTINE MPI_WIN_NULL_DELETE_FN
    END INTERFACE
    
    INTERFACE MPI_CONVERSION_FN_NULL
        SUBROUTINE MPI_CONVERSION_FN_NULL(userbuf, datatype, count, filebuf, position, extra_state, ierror)
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
        END SUBROUTINE MPI_CONVERSION_FN_NULL
    END INTERFACE
    
END MODULE mpi_base
