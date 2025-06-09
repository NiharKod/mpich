!
! Copyright (C) by Argonne National Laboratory
!     See COPYRIGHT in top-level directory
!

! -- THIS FILE IS AUTO-GENERATED -- 

MODULE mpi_constants
    IMPLICIT NONE
    INCLUDE 'mpifnoext.h'
    
    TYPE :: MPI_Status
        SEQUENCE
        INTEGER :: count_lo
        INTEGER :: count_hi_and_cancelled
        INTEGER :: MPI_SOURCE
        INTEGER :: MPI_TAG
        INTEGER :: MPI_ERROR
    END TYPE MPI_Status
    
    TYPE :: MPI_Comm
        SEQUENCE
        INTEGER :: MPI_VAL
    END TYPE MPI_Comm
    
    TYPE :: MPI_Datatype
        SEQUENCE
        INTEGER :: MPI_VAL
    END TYPE MPI_Datatype
    
    TYPE :: MPI_Errhandler
        SEQUENCE
        INTEGER :: MPI_VAL
    END TYPE MPI_Errhandler
    
    TYPE :: MPI_File
        SEQUENCE
        INTEGER :: MPI_VAL
    END TYPE MPI_File
    
    TYPE :: MPI_Group
        SEQUENCE
        INTEGER :: MPI_VAL
    END TYPE MPI_Group
    
    TYPE :: MPI_Info
        SEQUENCE
        INTEGER :: MPI_VAL
    END TYPE MPI_Info
    
    TYPE :: MPI_Op
        SEQUENCE
        INTEGER :: MPI_VAL
    END TYPE MPI_Op
    
    TYPE :: MPI_Request
        SEQUENCE
        INTEGER :: MPI_VAL
    END TYPE MPI_Request
    
    TYPE :: MPI_Win
        SEQUENCE
        INTEGER :: MPI_VAL
    END TYPE MPI_Win
    
    TYPE :: MPI_Message
        SEQUENCE
        INTEGER :: MPI_VAL
    END TYPE MPI_Message
    
    TYPE :: MPI_Session
        SEQUENCE
        INTEGER :: MPI_VAL
    END TYPE MPI_Session
    
    TYPE :: MPIX_Stream
        SEQUENCE
        INTEGER :: MPI_VAL
    END TYPE MPIX_Stream
    
    INTERFACE OPERATOR(.EQ.)
        MODULE PROCEDURE commeq
        MODULE PROCEDURE datatypeeq
        MODULE PROCEDURE errhandlereq
        MODULE PROCEDURE fileeq
        MODULE PROCEDURE groupeq
        MODULE PROCEDURE infoeq
        MODULE PROCEDURE opeq
        MODULE PROCEDURE requesteq
        MODULE PROCEDURE wineq
        MODULE PROCEDURE messageeq
        MODULE PROCEDURE sessioneq
        MODULE PROCEDURE streameq
    END INTERFACE
    
    INTERFACE OPERATOR(.NE.)
        MODULE PROCEDURE commneq
        MODULE PROCEDURE datatypeneq
        MODULE PROCEDURE errhandlerneq
        MODULE PROCEDURE fileneq
        MODULE PROCEDURE groupneq
        MODULE PROCEDURE infoneq
        MODULE PROCEDURE opneq
        MODULE PROCEDURE requestneq
        MODULE PROCEDURE winneq
        MODULE PROCEDURE messageneq
        MODULE PROCEDURE sessionneq
        MODULE PROCEDURE streamneq
    END INTERFACE
    
    CONTAINS
    
    LOGICAL FUNCTION commeq(lhs, rhs)
        TYPE(MPI_Comm), INTENT(IN) :: lhs, rhs
        commeq = lhs%MPI_VAL .EQ. rhs%MPI_VAL
    END FUNCTION commeq
    
    LOGICAL FUNCTION datatypeeq(lhs, rhs)
        TYPE(MPI_Datatype), INTENT(IN) :: lhs, rhs
        datatypeeq = lhs%MPI_VAL .EQ. rhs%MPI_VAL
    END FUNCTION datatypeeq
    
    LOGICAL FUNCTION errhandlereq(lhs, rhs)
        TYPE(MPI_Errhandler), INTENT(IN) :: lhs, rhs
        errhandlereq = lhs%MPI_VAL .EQ. rhs%MPI_VAL
    END FUNCTION errhandlereq
    
    LOGICAL FUNCTION fileeq(lhs, rhs)
        TYPE(MPI_File), INTENT(IN) :: lhs, rhs
        fileeq = lhs%MPI_VAL .EQ. rhs%MPI_VAL
    END FUNCTION fileeq
    
    LOGICAL FUNCTION groupeq(lhs, rhs)
        TYPE(MPI_Group), INTENT(IN) :: lhs, rhs
        groupeq = lhs%MPI_VAL .EQ. rhs%MPI_VAL
    END FUNCTION groupeq
    
    LOGICAL FUNCTION infoeq(lhs, rhs)
        TYPE(MPI_Info), INTENT(IN) :: lhs, rhs
        infoeq = lhs%MPI_VAL .EQ. rhs%MPI_VAL
    END FUNCTION infoeq
    
    LOGICAL FUNCTION opeq(lhs, rhs)
        TYPE(MPI_Op), INTENT(IN) :: lhs, rhs
        opeq = lhs%MPI_VAL .EQ. rhs%MPI_VAL
    END FUNCTION opeq
    
    LOGICAL FUNCTION requesteq(lhs, rhs)
        TYPE(MPI_Request), INTENT(IN) :: lhs, rhs
        requesteq = lhs%MPI_VAL .EQ. rhs%MPI_VAL
    END FUNCTION requesteq
    
    LOGICAL FUNCTION wineq(lhs, rhs)
        TYPE(MPI_Win), INTENT(IN) :: lhs, rhs
        wineq = lhs%MPI_VAL .EQ. rhs%MPI_VAL
    END FUNCTION wineq
    
    LOGICAL FUNCTION messageeq(lhs, rhs)
        TYPE(MPI_Message), INTENT(IN) :: lhs, rhs
        messageeq = lhs%MPI_VAL .EQ. rhs%MPI_VAL
    END FUNCTION messageeq
    
    LOGICAL FUNCTION sessioneq(lhs, rhs)
        TYPE(MPI_Session), INTENT(IN) :: lhs, rhs
        sessioneq = lhs%MPI_VAL .EQ. rhs%MPI_VAL
    END FUNCTION sessioneq
    
    LOGICAL FUNCTION streameq(lhs, rhs)
        TYPE(MPIX_Stream), INTENT(IN) :: lhs, rhs
        streameq = lhs%MPI_VAL .EQ. rhs%MPI_VAL
    END FUNCTION streameq
    
    LOGICAL FUNCTION commneq(lhs, rhs)
        TYPE(MPI_Comm), INTENT(IN) :: lhs, rhs
        commneq = lhs%MPI_VAL .NE. rhs%MPI_VAL
    END FUNCTION commneq
    
    LOGICAL FUNCTION datatypeneq(lhs, rhs)
        TYPE(MPI_Datatype), INTENT(IN) :: lhs, rhs
        datatypeneq = lhs%MPI_VAL .NE. rhs%MPI_VAL
    END FUNCTION datatypeneq
    
    LOGICAL FUNCTION errhandlerneq(lhs, rhs)
        TYPE(MPI_Errhandler), INTENT(IN) :: lhs, rhs
        errhandlerneq = lhs%MPI_VAL .NE. rhs%MPI_VAL
    END FUNCTION errhandlerneq
    
    LOGICAL FUNCTION fileneq(lhs, rhs)
        TYPE(MPI_File), INTENT(IN) :: lhs, rhs
        fileneq = lhs%MPI_VAL .NE. rhs%MPI_VAL
    END FUNCTION fileneq
    
    LOGICAL FUNCTION groupneq(lhs, rhs)
        TYPE(MPI_Group), INTENT(IN) :: lhs, rhs
        groupneq = lhs%MPI_VAL .NE. rhs%MPI_VAL
    END FUNCTION groupneq
    
    LOGICAL FUNCTION infoneq(lhs, rhs)
        TYPE(MPI_Info), INTENT(IN) :: lhs, rhs
        infoneq = lhs%MPI_VAL .NE. rhs%MPI_VAL
    END FUNCTION infoneq
    
    LOGICAL FUNCTION opneq(lhs, rhs)
        TYPE(MPI_Op), INTENT(IN) :: lhs, rhs
        opneq = lhs%MPI_VAL .NE. rhs%MPI_VAL
    END FUNCTION opneq
    
    LOGICAL FUNCTION requestneq(lhs, rhs)
        TYPE(MPI_Request), INTENT(IN) :: lhs, rhs
        requestneq = lhs%MPI_VAL .NE. rhs%MPI_VAL
    END FUNCTION requestneq
    
    LOGICAL FUNCTION winneq(lhs, rhs)
        TYPE(MPI_Win), INTENT(IN) :: lhs, rhs
        winneq = lhs%MPI_VAL .NE. rhs%MPI_VAL
    END FUNCTION winneq
    
    LOGICAL FUNCTION messageneq(lhs, rhs)
        TYPE(MPI_Message), INTENT(IN) :: lhs, rhs
        messageneq = lhs%MPI_VAL .NE. rhs%MPI_VAL
    END FUNCTION messageneq
    
    LOGICAL FUNCTION sessionneq(lhs, rhs)
        TYPE(MPI_Session), INTENT(IN) :: lhs, rhs
        sessionneq = lhs%MPI_VAL .NE. rhs%MPI_VAL
    END FUNCTION sessionneq
    
    LOGICAL FUNCTION streamneq(lhs, rhs)
        TYPE(MPIX_Stream), INTENT(IN) :: lhs, rhs
        streamneq = lhs%MPI_VAL .NE. rhs%MPI_VAL
    END FUNCTION streamneq
END MODULE mpi_constants
