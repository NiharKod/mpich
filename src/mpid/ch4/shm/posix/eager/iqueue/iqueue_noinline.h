/*
 * Copyright (C) by Argonne National Laboratory
 *     See COPYRIGHT in top-level directory
 */

/* ** This file is auto-generated, do not edit ** */

#ifndef IQUEUE_NOINLINE_H_INCLUDED
#define IQUEUE_NOINLINE_H_INCLUDED

#include "iqueue_impl.h"

int MPIDI_POSIX_iqueue_shm_size(int local_size);
int MPIDI_POSIX_iqueue_shm_vci_size(int local_size, int max_vci);
int MPIDI_POSIX_iqueue_init(void *slab, int rank, int size);
int MPIDI_POSIX_iqueue_set_vcis(void *slab, MPIR_Comm * comm, int num_vcis);
int MPIDI_POSIX_iqueue_finalize(void);
#ifdef POSIX_EAGER_INLINE
#define MPIDI_POSIX_eager_shm_size MPIDI_POSIX_iqueue_shm_size
#define MPIDI_POSIX_eager_shm_vci_size MPIDI_POSIX_iqueue_shm_vci_size
#define MPIDI_POSIX_eager_init MPIDI_POSIX_iqueue_init
#define MPIDI_POSIX_eager_set_vcis MPIDI_POSIX_iqueue_set_vcis
#define MPIDI_POSIX_eager_finalize MPIDI_POSIX_iqueue_finalize
#endif

#endif /* IQUEUE_NOINLINE_H_INCLUDED */
