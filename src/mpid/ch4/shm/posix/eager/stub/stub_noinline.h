/*
 * Copyright (C) by Argonne National Laboratory
 *     See COPYRIGHT in top-level directory
 */

/* ** This file is auto-generated, do not edit ** */

#ifndef STUB_NOINLINE_H_INCLUDED
#define STUB_NOINLINE_H_INCLUDED

#include "stub_impl.h"

int MPIDI_POSIX_stub_shm_size(int local_size);
int MPIDI_POSIX_stub_shm_vci_size(int local_size, int max_vci);
int MPIDI_POSIX_stub_init(void *slab, int rank, int size);
int MPIDI_POSIX_stub_set_vcis(void *slab, MPIR_Comm * comm, int num_vcis);
int MPIDI_POSIX_stub_finalize(void);
#ifdef POSIX_EAGER_INLINE
#define MPIDI_POSIX_eager_shm_size MPIDI_POSIX_stub_shm_size
#define MPIDI_POSIX_eager_shm_vci_size MPIDI_POSIX_stub_shm_vci_size
#define MPIDI_POSIX_eager_init MPIDI_POSIX_stub_init
#define MPIDI_POSIX_eager_set_vcis MPIDI_POSIX_stub_set_vcis
#define MPIDI_POSIX_eager_finalize MPIDI_POSIX_stub_finalize
#endif

#endif /* STUB_NOINLINE_H_INCLUDED */
