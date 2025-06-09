/*
 * Copyright (C) by Argonne National Laboratory
 *     See COPYRIGHT in top-level directory
 */

/* ** This file is auto-generated, do not edit ** */


#ifndef POSIX_EAGER_INLINE
#ifndef POSIX_EAGER_DISABLE_INLINES

#include "mpidimpl.h"
#include "posix_eager.h"

int MPIDI_POSIX_eager_shm_size(int local_size)
{
    return MPIDI_POSIX_eager_func->shm_size(local_size);
}
int MPIDI_POSIX_eager_shm_vci_size(int local_size, int max_vci)
{
    return MPIDI_POSIX_eager_func->shm_vci_size(local_size, max_vci);
}
int MPIDI_POSIX_eager_init(void *slab, int rank, int size)
{
    return MPIDI_POSIX_eager_func->init(slab, rank, size);
}
int MPIDI_POSIX_eager_set_vcis(void *slab, MPIR_Comm * comm, int num_vcis)
{
    return MPIDI_POSIX_eager_func->set_vcis(slab, comm, num_vcis);
}
int MPIDI_POSIX_eager_finalize(void)
{
    return MPIDI_POSIX_eager_func->finalize();
}
#endif
#endif
