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

// <COMPONENT>: os-apis
// <FILE-TYPE>: component public header

#ifndef OS_APIS_MAC_BARESYSCALL_H__
#define OS_APIS_MAC_BARESYSCALL_H__

#ifdef __cplusplus
extern "C" {
#endif

#if defined(TARGET_IA32)

#include "ia32-mac/baresyscall.h"
#else
#include "intel64-mac/baresyscall.h"

#endif

#include "unix-baresyscall.h"

/*!
 * @return  The last system call's second return value.  If IsSuccess() is FALSE,
 *           this is an O/S dependent error code.
 */
ADDRINT OS_SyscallReturnValue2(OS_SYSCALLRETURN ret);

/*!
 * @param[in] type         The system call type (linux, int80 , int81 ....).
 *
 * @return  The return address is the PC of the thread before it returns
 *          the system call.
 */
void* OS_GetSyscallTrapAddress(OS_SYSCALL_TYPE type);

#ifdef __cplusplus
}
#endif

#endif // file guard
