/*
 * Copyright (C) by Argonne National Laboratory
 *     See COPYRIGHT in top-level directory
 */

#include <mpidimpl.h>
#include "posix_eager.h"

/* *INDENT-OFF* */
/* forward declaration of funcs structs defined in network modules */
extern MPIDI_POSIX_eager_funcs_t MPIDI_POSIX_eager_iqueue_funcs;

#ifndef POSIX_EAGER_INLINE
MPIDI_POSIX_eager_funcs_t *MPIDI_POSIX_eager_funcs[1] = { &MPIDI_POSIX_eager_iqueue_funcs };
#else
MPIDI_POSIX_eager_funcs_t *MPIDI_POSIX_eager_funcs[1] = { 0 };
#endif
int MPIDI_num_posix_eager_fabrics = 1;
char MPIDI_POSIX_eager_strings[1][MPIDI_MAX_POSIX_EAGER_STRING_LEN] =
    { "iqueue" };
/* *INDENT-ON* */
