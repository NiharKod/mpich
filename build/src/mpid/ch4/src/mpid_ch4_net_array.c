/*
 * Copyright (C) by Argonne National Laboratory
 *     See COPYRIGHT in top-level directory
 */

#include <mpidimpl.h>

/* *INDENT-OFF* */
/* forward declaration of funcs structs defined in network modules */
extern MPIDI_NM_funcs_t MPIDI_NM_ucx_funcs;
extern MPIDI_NM_native_funcs_t MPIDI_NM_native_ucx_funcs;

#ifndef NETMOD_INLINE
MPIDI_NM_funcs_t *MPIDI_NM_funcs[1] = { &MPIDI_NM_ucx_funcs };
MPIDI_NM_native_funcs_t *MPIDI_NM_native_funcs[1] =
    { &MPIDI_NM_native_ucx_funcs };
#else
MPIDI_NM_funcs_t *MPIDI_NM_funcs[1] = { 0 };
MPIDI_NM_native_funcs_t *MPIDI_NM_native_funcs[1] = { 0 };
#endif
int MPIDI_num_netmods = 1;
char MPIDI_NM_strings[1][MPIDI_MAX_NETMOD_STRING_LEN] =
    { "ucx" };
/* *INDENT-ON* */
