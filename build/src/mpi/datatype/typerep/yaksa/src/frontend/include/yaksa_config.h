/* src/frontend/include/yaksa_config.h.  Generated from yaksa_config.h.in by configure.  */
/* src/frontend/include/yaksa_config.h.in.  Generated from configure.ac by autoheader.  */


/*
 * Copyright (C) by Argonne National Laboratory
 *     See COPYRIGHT in top-level directory
 */

#ifndef YAKSA_CONFIG_H_INCLUDED
#define YAKSA_CONFIG_H_INCLUDED


/* The normal alignment of `byte', in bytes. */
#define ALIGNOF_BYTE 0

/* The normal alignment of `char', in bytes. */
#define ALIGNOF_CHAR 1

/* The normal alignment of `double', in bytes. */
#define ALIGNOF_DOUBLE 8

/* The normal alignment of `float', in bytes. */
#define ALIGNOF_FLOAT 4

/* The normal alignment of `int', in bytes. */
#define ALIGNOF_INT 4

/* The normal alignment of `int16_t', in bytes. */
#define ALIGNOF_INT16_T 2

/* The normal alignment of `int32_t', in bytes. */
#define ALIGNOF_INT32_T 4

/* The normal alignment of `int64_t', in bytes. */
#define ALIGNOF_INT64_T 8

/* The normal alignment of `int8_t', in bytes. */
#define ALIGNOF_INT8_T 1

/* The normal alignment of `intmax_t', in bytes. */
#define ALIGNOF_INTMAX_T 8

/* The normal alignment of `intptr_t', in bytes. */
#define ALIGNOF_INTPTR_T 8

/* The normal alignment of `int_fast16_t', in bytes. */
#define ALIGNOF_INT_FAST16_T 8

/* The normal alignment of `int_fast32_t', in bytes. */
#define ALIGNOF_INT_FAST32_T 8

/* The normal alignment of `int_fast64_t', in bytes. */
#define ALIGNOF_INT_FAST64_T 8

/* The normal alignment of `int_fast8_t', in bytes. */
#define ALIGNOF_INT_FAST8_T 1

/* The normal alignment of `int_least16_t', in bytes. */
#define ALIGNOF_INT_LEAST16_T 2

/* The normal alignment of `int_least32_t', in bytes. */
#define ALIGNOF_INT_LEAST32_T 4

/* The normal alignment of `int_least64_t', in bytes. */
#define ALIGNOF_INT_LEAST64_T 8

/* The normal alignment of `int_least8_t', in bytes. */
#define ALIGNOF_INT_LEAST8_T 1

/* The normal alignment of `long', in bytes. */
#define ALIGNOF_LONG 8

/* The normal alignment of `long double', in bytes. */
#define ALIGNOF_LONG_DOUBLE 16

/* The normal alignment of `long long', in bytes. */
#define ALIGNOF_LONG_LONG 8

/* The normal alignment of `ptrdiff_t', in bytes. */
#define ALIGNOF_PTRDIFF_T 8

/* The normal alignment of `short', in bytes. */
#define ALIGNOF_SHORT 2

/* The normal alignment of `signed char', in bytes. */
#define ALIGNOF_SIGNED_CHAR 1

/* The normal alignment of `size_t', in bytes. */
#define ALIGNOF_SIZE_T 8

/* The normal alignment of `uint16_t', in bytes. */
#define ALIGNOF_UINT16_T 2

/* The normal alignment of `uint32_t', in bytes. */
#define ALIGNOF_UINT32_T 4

/* The normal alignment of `uint64_t', in bytes. */
#define ALIGNOF_UINT64_T 8

/* The normal alignment of `uint8_t', in bytes. */
#define ALIGNOF_UINT8_T 1

/* The normal alignment of `uintmax_t', in bytes. */
#define ALIGNOF_UINTMAX_T 8

/* The normal alignment of `uintptr_t', in bytes. */
#define ALIGNOF_UINTPTR_T 8

/* The normal alignment of `uint_fast16_t', in bytes. */
#define ALIGNOF_UINT_FAST16_T 8

/* The normal alignment of `uint_fast32_t', in bytes. */
#define ALIGNOF_UINT_FAST32_T 8

/* The normal alignment of `uint_fast64_t', in bytes. */
#define ALIGNOF_UINT_FAST64_T 8

/* The normal alignment of `uint_fast8_t', in bytes. */
#define ALIGNOF_UINT_FAST8_T 1

/* The normal alignment of `uint_least16_t', in bytes. */
#define ALIGNOF_UINT_LEAST16_T 2

/* The normal alignment of `uint_least32_t', in bytes. */
#define ALIGNOF_UINT_LEAST32_T 4

/* The normal alignment of `uint_least64_t', in bytes. */
#define ALIGNOF_UINT_LEAST64_T 8

/* The normal alignment of `uint_least8_t', in bytes. */
#define ALIGNOF_UINT_LEAST8_T 1

/* The normal alignment of `unsigned', in bytes. */
#define ALIGNOF_UNSIGNED 4

/* The normal alignment of `unsigned char', in bytes. */
#define ALIGNOF_UNSIGNED_CHAR 1

/* The normal alignment of `unsigned long', in bytes. */
#define ALIGNOF_UNSIGNED_LONG 8

/* The normal alignment of `unsigned long long', in bytes. */
#define ALIGNOF_UNSIGNED_LONG_LONG 8

/* The normal alignment of `unsigned short', in bytes. */
#define ALIGNOF_UNSIGNED_SHORT 2

/* The normal alignment of `wchar_t', in bytes. */
#define ALIGNOF_WCHAR_T 4

/* The normal alignment of `_Bool', in bytes. */
#define ALIGNOF__BOOL 1

/* Define if CUDA P2P is disabled */
#define CUDA_P2P CUDA_P2P_ENABLED

/* Define if C11 atomics are available */
#define HAVE_C11_ATOMICS 1

/* Define is CUDA is available */
/* #undef HAVE_CUDA */

/* Define to 1 if you have the <dlfcn.h> header file. */
#define HAVE_DLFCN_H 1

/* Define if GNU __attribute__ is supported */
#define HAVE_GCC_ATTRIBUTE 1

/* Define is HIP is available */
#define HAVE_HIP 1

/* Define to 1 if you have the <inttypes.h> header file. */
#define HAVE_INTTYPES_H 1

/* Define to 1 if you have the `amdhip64' library (-lamdhip64). */
#define HAVE_LIBAMDHIP64 1

/* Define to 1 if you have the `cudart' library (-lcudart). */
/* #undef HAVE_LIBCUDART */

/* Define to 1 if you have the `ze_loader' library (-lze_loader). */
/* #undef HAVE_LIBZE_LOADER */

/* Define to 1 if you have the <memory.h> header file. */
#define HAVE_MEMORY_H 1

/* Define to 1 if you have the <pthread.h> header file. */
#define HAVE_PTHREAD_H 1

/* Define to 1 if you have the <stdatomic.h> header file. */
#define HAVE_STDATOMIC_H 1

/* Define to 1 if you have the <stdint.h> header file. */
#define HAVE_STDINT_H 1

/* Define to 1 if you have the <stdlib.h> header file. */
#define HAVE_STDLIB_H 1

/* Define to 1 if you have the <strings.h> header file. */
#define HAVE_STRINGS_H 1

/* Define to 1 if you have the <string.h> header file. */
#define HAVE_STRING_H 1

/* Define to 1 if you have the <sys/stat.h> header file. */
#define HAVE_SYS_STAT_H 1

/* Define to 1 if you have the <sys/types.h> header file. */
#define HAVE_SYS_TYPES_H 1

/* Define to 1 if you have the <unistd.h> header file. */
#define HAVE_UNISTD_H 1

/* Define is ZE is available */
/* #undef HAVE_ZE */

/* Define if HIP P2P is disabled */
#define HIP_P2P HIP_P2P_ENABLED

/* Define if struct hipPointerAttribute_t use memoryType (pre-v6.0) */
/* #undef HIP_USE_MEMORYTYPE */

/* Define to the sub-directory where libtool stores uninstalled libraries. */
#define LT_OBJDIR ".libs/"

/* Name of package */
#define PACKAGE "yaksa"

/* Define to the address where bug reports for this package should be sent. */
#define PACKAGE_BUGREPORT ""

/* Define to the full name of this package. */
#define PACKAGE_NAME "yaksa"

/* Define to the full name and version of this package. */
#define PACKAGE_STRING "yaksa unreleased"

/* Define to the one symbol short name of this package. */
#define PACKAGE_TARNAME "yaksa"

/* Define to the home page for this package. */
#define PACKAGE_URL ""

/* Define to the version of this package. */
#define PACKAGE_VERSION "unreleased"

/* Define to 1 if you have the ANSI C header files. */
#define STDC_HEADERS 1

/* Version number of package */
#define VERSION "unreleased"

/* Whether C compiler supports symbol visibility or not */
#define YAKSA_C_HAVE_VISIBILITY 1

/* Define if debugging is enabled */
/* #undef YAKSA_DEBUG */

/* Define if yaksa is embedded */
#define YAKSA_EMBEDDED_BUILD 1

/* No native format */
#define ZE_NATIVE 0

/* Define if ZE P2P is disabled */
/* #undef ZE_P2P */


#endif /* YAKSA_CONFIG_H_INCLUDED */

