/*
 * Copyright 2002-2019 Intel Corporation.
 * 
 * This software and the related documents are Intel copyrighted materials, and your
 * use of them is governed by the express license under which they were provided to
 * you ("License"). Unless the License provides otherwise, you may not use, modify,
 * copy, publish, distribute, disclose or transmit this software or the related
 * documents without Intel's prior written permission.
 * 
 * This software and the related documents are provided as is, with no express or
 * implied warranties, other than those that are expressly stated in the License.
 */

#ifndef __PINCRT_MAC_H__
#define __PINCRT_MAC_H__

#include <sys/cdefs.h>
#include <mach/mach.h>
#include <sys/wait.h>

__BEGIN_DECLS

/*
 * [XSI] The id_t and pid_t types shall be defined as described
 * in <sys/types.h>
 */

#ifndef _ID_T
typedef uint32_t id_t;
#define _ID_T
#endif

/*
 * [XSI] The following symbolic constants shall be defined as possible
 * values for the fourth argument to waitid().
 */
/* WNOHANG already defined for wait4() */
/* WUNTRACED defined for wait4() but not for waitid() */
#define WEXITED         0x00000004  /* [XSI] Processes which have exitted */
#define WSTOPPED        0x00000008  /* [XSI] Any child stopped by signal */
#define WCONTINUED      0x00000010  /* [XSI] Any child stopped then continued */
#define WNOWAIT         0x00000020  /* [XSI] Leave process returned waitable */
int     waitid(idtype_t, id_t, siginfo_t *, int);

void pincrt_atfork();
int waitid_nobug(int syscall_no, idtype_t idtype, id_t id, siginfo_t *infop, int options);
pid_t wait4_nobug(int syscall_no, pid_t pid, int *stat_loc, int options, struct rusage *rusage);
int __csrctl(UINT32 op, void *buffer, size_t size);

#ifdef TARGET_IA32
# define POSIX_SPAWN_ATTR_SIZE 0x70
#else
# define POSIX_SPAWN_ATTR_SIZE 0x80
#endif

__END_DECLS

#endif // __PINCRT_MAC_H__

