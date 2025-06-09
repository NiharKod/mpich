/*
 * Copyright (C) by Argonne National Laboratory
 *     See COPYRIGHT in top-level directory
 */

#ifndef POSIX_EAGER_PRE_H_INCLUDED
#define POSIX_EAGER_PRE_H_INCLUDED

/* *INDENT-OFF* */
#include "../iqueue/iqueue_pre.h"
/* *INDENT-ON* */

#define MPIDI_POSIX_EAGER_RECV_TRANSACTION_DECL    MPIDI_POSIX_eager_iqueue_recv_transaction_t iqueue;

#endif /* POSIX_EAGER_PRE_H_INCLUDED */
