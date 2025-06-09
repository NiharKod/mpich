/*
 * Copyright (C) by Argonne National Laboratory
 *     See COPYRIGHT in top-level directory
 */

/* This file creates strings for the most important configuration options.
   These are then used in the file src/mpi/init/initthread.c to initialize
   global variables that will then be included in both the library and
   executables, providing a way to determine what version and features of
   MPICH were used with a particular library or executable.
*/
#ifndef MPICHINFO_H_INCLUDED
#define MPICHINFO_H_INCLUDED

#define MPICH_CONFIGURE_ARGS_CLEAN "--prefix=/home/nkodkani/mpich/build/install --with-device=ch4:ucx --with-ucx=/home/nkodkani/ucx/build/install --with-hip=/soft/compilers/rocm/rocm-6.3.2 --with-ucc=/home/nkodkani/ucc/build/install LDFLAGS=-Wl,-rpath,/home/nkodkani/ucx/build/install/lib -Wl,-rpath,/soft/compilers/rocm/rocm-6.3.2/lib"
#define MPICH_VERSION_DATE "unreleased development copy"
#define MPICH_DEVICE "ch4:ucx"
#define MPICH_COMPILER_CC "gcc     -O2"
#define MPICH_COMPILER_CXX "g++   -O2"
#define MPICH_COMPILER_F77 "gfortran   -O2"
#define MPICH_COMPILER_FC "gfortran   -O2"
#define MPICH_CUSTOM_STRING ""
#define MPICH_ABIVERSION "0:0:0"

#endif
