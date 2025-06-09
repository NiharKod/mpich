/*
 * Copyright (C) by Argonne National Laboratory
 *     See COPYRIGHT in top-level directory
 */

#ifndef NETMODPRE_H_INCLUDED
#define NETMODPRE_H_INCLUDED

/* *INDENT-OFF* */
#include "../netmod/ucx/ucx_pre.h"
/* *INDENT-ON* */

#define MPIDI_NM_REQUEST_AM_DECL MPIDI_UCX_am_request_t ucx;
#define MPIDI_NM_REQUEST_DECL    MPIDI_UCX_request_t ucx;

#define MPIDI_NM_COMM_DECL       MPIDI_UCX_comm_t ucx;
#define MPIDI_NM_DT_DECL         MPIDI_UCX_dt_t ucx;
#define MPIDI_NM_WIN_DECL        MPIDI_UCX_win_t ucx;
#define MPIDI_NM_ADDR_DECL    MPIDI_UCX_addr_t ucx;
#define MPIDI_NM_OP_DECL         MPIDI_UCX_op_t ucx;
#define MPIDI_NM_PART_DECL         MPIDI_UCX_part_t ucx;

#endif /* NETMODPRE_H_INCLUDED */
