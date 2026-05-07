# 1 "/home/awaszczak/git/sa2/sa1/src/platform/ext/gbagfx/rl.c"
# 1 "<built-in>" 1
# 1 "<built-in>" 3
# 384 "<built-in>" 3
# 1 "<command line>" 1
# 1 "<built-in>" 2
# 1 "/home/awaszczak/git/sa2/sa1/src/platform/ext/gbagfx/rl.c" 2


# 1 "/home/awaszczak/Android/Sdk/ndk/25.1.8937393/toolchains/llvm/prebuilt/linux-x86_64/sysroot/usr/local/include/stdlib.h" 1 3
# 31 "/home/awaszczak/Android/Sdk/ndk/25.1.8937393/toolchains/llvm/prebuilt/linux-x86_64/sysroot/usr/local/include/stdlib.h" 3
# 1 "/home/awaszczak/Android/Sdk/ndk/25.1.8937393/toolchains/llvm/prebuilt/linux-x86_64/sysroot/usr/include/stdlib.h" 1 3 4
# 32 "/home/awaszczak/Android/Sdk/ndk/25.1.8937393/toolchains/llvm/prebuilt/linux-x86_64/sysroot/usr/include/stdlib.h" 3 4
# 1 "/home/awaszczak/Android/Sdk/ndk/25.1.8937393/toolchains/llvm/prebuilt/linux-x86_64/sysroot/usr/include/alloca.h" 1 3 4
# 36 "/home/awaszczak/Android/Sdk/ndk/25.1.8937393/toolchains/llvm/prebuilt/linux-x86_64/sysroot/usr/include/alloca.h" 3 4
# 1 "/home/awaszczak/Android/Sdk/ndk/25.1.8937393/toolchains/llvm/prebuilt/linux-x86_64/sysroot/usr/include/sys/cdefs.h" 1 3 4
# 372 "/home/awaszczak/Android/Sdk/ndk/25.1.8937393/toolchains/llvm/prebuilt/linux-x86_64/sysroot/usr/include/sys/cdefs.h" 3 4
# 1 "/home/awaszczak/Android/Sdk/ndk/25.1.8937393/toolchains/llvm/prebuilt/linux-x86_64/sysroot/usr/include/android/versioning.h" 1 3 4
# 373 "/home/awaszczak/Android/Sdk/ndk/25.1.8937393/toolchains/llvm/prebuilt/linux-x86_64/sysroot/usr/include/sys/cdefs.h" 2 3 4
# 1 "/home/awaszczak/Android/Sdk/ndk/25.1.8937393/toolchains/llvm/prebuilt/linux-x86_64/sysroot/usr/include/android/api-level.h" 1 3 4
# 193 "/home/awaszczak/Android/Sdk/ndk/25.1.8937393/toolchains/llvm/prebuilt/linux-x86_64/sysroot/usr/include/android/api-level.h" 3 4
# 1 "/home/awaszczak/Android/Sdk/ndk/25.1.8937393/toolchains/llvm/prebuilt/linux-x86_64/sysroot/usr/include/bits/get_device_api_level_inlines.h" 1 3 4
# 38 "/home/awaszczak/Android/Sdk/ndk/25.1.8937393/toolchains/llvm/prebuilt/linux-x86_64/sysroot/usr/include/bits/get_device_api_level_inlines.h" 3 4
int __system_property_get(const char* __name, char* __value);
int atoi(const char* __s) __attribute__((__pure__));

static __inline int android_get_device_api_level() {
  char value[92] = { 0 };
  if (__system_property_get("ro.build.version.sdk", value) < 1) return -1;
  int api_level = atoi(value);
  return (api_level > 0) ? api_level : -1;
}
# 194 "/home/awaszczak/Android/Sdk/ndk/25.1.8937393/toolchains/llvm/prebuilt/linux-x86_64/sysroot/usr/include/android/api-level.h" 2 3 4
# 374 "/home/awaszczak/Android/Sdk/ndk/25.1.8937393/toolchains/llvm/prebuilt/linux-x86_64/sysroot/usr/include/sys/cdefs.h" 2 3 4

# 1 "/home/awaszczak/Android/Sdk/ndk/25.1.8937393/toolchains/llvm/prebuilt/linux-x86_64/sysroot/usr/include/android/ndk-version.h" 1 3 4
# 376 "/home/awaszczak/Android/Sdk/ndk/25.1.8937393/toolchains/llvm/prebuilt/linux-x86_64/sysroot/usr/include/sys/cdefs.h" 2 3 4
# 37 "/home/awaszczak/Android/Sdk/ndk/25.1.8937393/toolchains/llvm/prebuilt/linux-x86_64/sysroot/usr/include/alloca.h" 2 3 4
# 33 "/home/awaszczak/Android/Sdk/ndk/25.1.8937393/toolchains/llvm/prebuilt/linux-x86_64/sysroot/usr/include/stdlib.h" 2 3 4
# 1 "/home/awaszczak/Android/Sdk/ndk/25.1.8937393/toolchains/llvm/prebuilt/linux-x86_64/sysroot/usr/include/bits/wait.h" 1 3 4
# 38 "/home/awaszczak/Android/Sdk/ndk/25.1.8937393/toolchains/llvm/prebuilt/linux-x86_64/sysroot/usr/include/bits/wait.h" 3 4
# 1 "/home/awaszczak/Android/Sdk/ndk/25.1.8937393/toolchains/llvm/prebuilt/linux-x86_64/sysroot/usr/include/linux/wait.h" 1 3 4
# 39 "/home/awaszczak/Android/Sdk/ndk/25.1.8937393/toolchains/llvm/prebuilt/linux-x86_64/sysroot/usr/include/bits/wait.h" 2 3 4
# 34 "/home/awaszczak/Android/Sdk/ndk/25.1.8937393/toolchains/llvm/prebuilt/linux-x86_64/sysroot/usr/include/stdlib.h" 2 3 4
# 1 "/home/awaszczak/Android/Sdk/ndk/25.1.8937393/toolchains/llvm/prebuilt/linux-x86_64/sysroot/usr/include/malloc.h" 1 3 4
# 29 "/home/awaszczak/Android/Sdk/ndk/25.1.8937393/toolchains/llvm/prebuilt/linux-x86_64/sysroot/usr/include/malloc.h" 3 4
# 1 "/home/awaszczak/Android/Sdk/ndk/25.1.8937393/toolchains/llvm/prebuilt/linux-x86_64/lib64/clang/14.0.6/include/stddef.h" 1 3 4
# 35 "/home/awaszczak/Android/Sdk/ndk/25.1.8937393/toolchains/llvm/prebuilt/linux-x86_64/lib64/clang/14.0.6/include/stddef.h" 3 4
typedef long int ptrdiff_t;
# 46 "/home/awaszczak/Android/Sdk/ndk/25.1.8937393/toolchains/llvm/prebuilt/linux-x86_64/lib64/clang/14.0.6/include/stddef.h" 3 4
typedef long unsigned int size_t;
# 74 "/home/awaszczak/Android/Sdk/ndk/25.1.8937393/toolchains/llvm/prebuilt/linux-x86_64/lib64/clang/14.0.6/include/stddef.h" 3 4
typedef unsigned int wchar_t;
# 102 "/home/awaszczak/Android/Sdk/ndk/25.1.8937393/toolchains/llvm/prebuilt/linux-x86_64/lib64/clang/14.0.6/include/stddef.h" 3 4
# 1 "/home/awaszczak/Android/Sdk/ndk/25.1.8937393/toolchains/llvm/prebuilt/linux-x86_64/lib64/clang/14.0.6/include/__stddef_max_align_t.h" 1 3 4
# 19 "/home/awaszczak/Android/Sdk/ndk/25.1.8937393/toolchains/llvm/prebuilt/linux-x86_64/lib64/clang/14.0.6/include/__stddef_max_align_t.h" 3 4
typedef struct {
  long long __clang_max_align_nonce1
      __attribute__((__aligned__(__alignof__(long long))));
  long double __clang_max_align_nonce2
      __attribute__((__aligned__(__alignof__(long double))));
} max_align_t;
# 103 "/home/awaszczak/Android/Sdk/ndk/25.1.8937393/toolchains/llvm/prebuilt/linux-x86_64/lib64/clang/14.0.6/include/stddef.h" 2 3 4
# 30 "/home/awaszczak/Android/Sdk/ndk/25.1.8937393/toolchains/llvm/prebuilt/linux-x86_64/sysroot/usr/include/malloc.h" 2 3 4
# 1 "/home/awaszczak/Android/Sdk/ndk/25.1.8937393/toolchains/llvm/prebuilt/linux-x86_64/sysroot/usr/include/stdio.h" 1 3 4
# 42 "/home/awaszczak/Android/Sdk/ndk/25.1.8937393/toolchains/llvm/prebuilt/linux-x86_64/sysroot/usr/include/stdio.h" 3 4
# 1 "/home/awaszczak/Android/Sdk/ndk/25.1.8937393/toolchains/llvm/prebuilt/linux-x86_64/sysroot/usr/include/sys/types.h" 1 3 4
# 32 "/home/awaszczak/Android/Sdk/ndk/25.1.8937393/toolchains/llvm/prebuilt/linux-x86_64/sysroot/usr/include/sys/types.h" 3 4
# 1 "/home/awaszczak/Android/Sdk/ndk/25.1.8937393/toolchains/llvm/prebuilt/linux-x86_64/lib64/clang/14.0.6/include/stddef.h" 1 3 4
# 33 "/home/awaszczak/Android/Sdk/ndk/25.1.8937393/toolchains/llvm/prebuilt/linux-x86_64/sysroot/usr/include/sys/types.h" 2 3 4
# 1 "/home/awaszczak/Android/Sdk/ndk/25.1.8937393/toolchains/llvm/prebuilt/linux-x86_64/lib64/clang/14.0.6/include/stdint.h" 1 3 4
# 52 "/home/awaszczak/Android/Sdk/ndk/25.1.8937393/toolchains/llvm/prebuilt/linux-x86_64/lib64/clang/14.0.6/include/stdint.h" 3 4
# 1 "/home/awaszczak/Android/Sdk/ndk/25.1.8937393/toolchains/llvm/prebuilt/linux-x86_64/sysroot/usr/include/stdint.h" 1 3 4
# 32 "/home/awaszczak/Android/Sdk/ndk/25.1.8937393/toolchains/llvm/prebuilt/linux-x86_64/sysroot/usr/include/stdint.h" 3 4
# 1 "/home/awaszczak/Android/Sdk/ndk/25.1.8937393/toolchains/llvm/prebuilt/linux-x86_64/sysroot/usr/include/bits/wchar_limits.h" 1 3 4
# 33 "/home/awaszczak/Android/Sdk/ndk/25.1.8937393/toolchains/llvm/prebuilt/linux-x86_64/sysroot/usr/include/stdint.h" 2 3 4
# 1 "/home/awaszczak/Android/Sdk/ndk/25.1.8937393/toolchains/llvm/prebuilt/linux-x86_64/lib64/clang/14.0.6/include/stddef.h" 1 3 4
# 34 "/home/awaszczak/Android/Sdk/ndk/25.1.8937393/toolchains/llvm/prebuilt/linux-x86_64/sysroot/usr/include/stdint.h" 2 3 4


typedef signed char __int8_t;
typedef unsigned char __uint8_t;
typedef short __int16_t;
typedef unsigned short __uint16_t;
typedef int __int32_t;
typedef unsigned int __uint32_t;

typedef long __int64_t;
typedef unsigned long __uint64_t;






typedef long __intptr_t;
typedef unsigned long __uintptr_t;





typedef __int8_t int8_t;
typedef __uint8_t uint8_t;

typedef __int16_t int16_t;
typedef __uint16_t uint16_t;

typedef __int32_t int32_t;
typedef __uint32_t uint32_t;

typedef __int64_t int64_t;
typedef __uint64_t uint64_t;

typedef __intptr_t intptr_t;
typedef __uintptr_t uintptr_t;

typedef int8_t int_least8_t;
typedef uint8_t uint_least8_t;

typedef int16_t int_least16_t;
typedef uint16_t uint_least16_t;

typedef int32_t int_least32_t;
typedef uint32_t uint_least32_t;

typedef int64_t int_least64_t;
typedef uint64_t uint_least64_t;

typedef int8_t int_fast8_t;
typedef uint8_t uint_fast8_t;

typedef int64_t int_fast64_t;
typedef uint64_t uint_fast64_t;


typedef int64_t int_fast16_t;
typedef uint64_t uint_fast16_t;
typedef int64_t int_fast32_t;
typedef uint64_t uint_fast32_t;







typedef uint64_t uintmax_t;
typedef int64_t intmax_t;
# 53 "/home/awaszczak/Android/Sdk/ndk/25.1.8937393/toolchains/llvm/prebuilt/linux-x86_64/lib64/clang/14.0.6/include/stdint.h" 2 3 4
# 34 "/home/awaszczak/Android/Sdk/ndk/25.1.8937393/toolchains/llvm/prebuilt/linux-x86_64/sysroot/usr/include/sys/types.h" 2 3 4


# 1 "/home/awaszczak/Android/Sdk/ndk/25.1.8937393/toolchains/llvm/prebuilt/linux-x86_64/sysroot/usr/include/linux/types.h" 1 3 4
# 21 "/home/awaszczak/Android/Sdk/ndk/25.1.8937393/toolchains/llvm/prebuilt/linux-x86_64/sysroot/usr/include/linux/types.h" 3 4
# 1 "/home/awaszczak/Android/Sdk/ndk/25.1.8937393/toolchains/llvm/prebuilt/linux-x86_64/sysroot/usr/include/aarch64-linux-android/asm/types.h" 1 3 4
# 19 "/home/awaszczak/Android/Sdk/ndk/25.1.8937393/toolchains/llvm/prebuilt/linux-x86_64/sysroot/usr/include/aarch64-linux-android/asm/types.h" 3 4
# 1 "/home/awaszczak/Android/Sdk/ndk/25.1.8937393/toolchains/llvm/prebuilt/linux-x86_64/sysroot/usr/include/asm-generic/types.h" 1 3 4
# 21 "/home/awaszczak/Android/Sdk/ndk/25.1.8937393/toolchains/llvm/prebuilt/linux-x86_64/sysroot/usr/include/asm-generic/types.h" 3 4
# 1 "/home/awaszczak/Android/Sdk/ndk/25.1.8937393/toolchains/llvm/prebuilt/linux-x86_64/sysroot/usr/include/asm-generic/int-ll64.h" 1 3 4
# 21 "/home/awaszczak/Android/Sdk/ndk/25.1.8937393/toolchains/llvm/prebuilt/linux-x86_64/sysroot/usr/include/asm-generic/int-ll64.h" 3 4
# 1 "/home/awaszczak/Android/Sdk/ndk/25.1.8937393/toolchains/llvm/prebuilt/linux-x86_64/sysroot/usr/include/aarch64-linux-android/asm/bitsperlong.h" 1 3 4
# 22 "/home/awaszczak/Android/Sdk/ndk/25.1.8937393/toolchains/llvm/prebuilt/linux-x86_64/sysroot/usr/include/aarch64-linux-android/asm/bitsperlong.h" 3 4
# 1 "/home/awaszczak/Android/Sdk/ndk/25.1.8937393/toolchains/llvm/prebuilt/linux-x86_64/sysroot/usr/include/asm-generic/bitsperlong.h" 1 3 4
# 23 "/home/awaszczak/Android/Sdk/ndk/25.1.8937393/toolchains/llvm/prebuilt/linux-x86_64/sysroot/usr/include/aarch64-linux-android/asm/bitsperlong.h" 2 3 4
# 22 "/home/awaszczak/Android/Sdk/ndk/25.1.8937393/toolchains/llvm/prebuilt/linux-x86_64/sysroot/usr/include/asm-generic/int-ll64.h" 2 3 4

typedef __signed__ char __s8;
typedef unsigned char __u8;
typedef __signed__ short __s16;
typedef unsigned short __u16;
typedef __signed__ int __s32;
typedef unsigned int __u32;

__extension__ typedef __signed__ long long __s64;
__extension__ typedef unsigned long long __u64;
# 22 "/home/awaszczak/Android/Sdk/ndk/25.1.8937393/toolchains/llvm/prebuilt/linux-x86_64/sysroot/usr/include/asm-generic/types.h" 2 3 4
# 20 "/home/awaszczak/Android/Sdk/ndk/25.1.8937393/toolchains/llvm/prebuilt/linux-x86_64/sysroot/usr/include/aarch64-linux-android/asm/types.h" 2 3 4
# 22 "/home/awaszczak/Android/Sdk/ndk/25.1.8937393/toolchains/llvm/prebuilt/linux-x86_64/sysroot/usr/include/linux/types.h" 2 3 4

# 1 "/home/awaszczak/Android/Sdk/ndk/25.1.8937393/toolchains/llvm/prebuilt/linux-x86_64/sysroot/usr/include/linux/posix_types.h" 1 3 4
# 21 "/home/awaszczak/Android/Sdk/ndk/25.1.8937393/toolchains/llvm/prebuilt/linux-x86_64/sysroot/usr/include/linux/posix_types.h" 3 4
# 1 "/home/awaszczak/Android/Sdk/ndk/25.1.8937393/toolchains/llvm/prebuilt/linux-x86_64/sysroot/usr/include/linux/stddef.h" 1 3 4
# 21 "/home/awaszczak/Android/Sdk/ndk/25.1.8937393/toolchains/llvm/prebuilt/linux-x86_64/sysroot/usr/include/linux/stddef.h" 3 4
# 1 "/home/awaszczak/Android/Sdk/ndk/25.1.8937393/toolchains/llvm/prebuilt/linux-x86_64/sysroot/usr/include/linux/compiler_types.h" 1 3 4




# 1 "/home/awaszczak/Android/Sdk/ndk/25.1.8937393/toolchains/llvm/prebuilt/linux-x86_64/sysroot/usr/include/linux/compiler.h" 1 3 4
# 6 "/home/awaszczak/Android/Sdk/ndk/25.1.8937393/toolchains/llvm/prebuilt/linux-x86_64/sysroot/usr/include/linux/compiler_types.h" 2 3 4
# 22 "/home/awaszczak/Android/Sdk/ndk/25.1.8937393/toolchains/llvm/prebuilt/linux-x86_64/sysroot/usr/include/linux/stddef.h" 2 3 4
# 22 "/home/awaszczak/Android/Sdk/ndk/25.1.8937393/toolchains/llvm/prebuilt/linux-x86_64/sysroot/usr/include/linux/posix_types.h" 2 3 4


typedef struct {
  unsigned long fds_bits[1024 / (8 * sizeof(long))];
} __kernel_fd_set;
typedef void(* __kernel_sighandler_t) (int);
typedef int __kernel_key_t;
typedef int __kernel_mqd_t;
# 1 "/home/awaszczak/Android/Sdk/ndk/25.1.8937393/toolchains/llvm/prebuilt/linux-x86_64/sysroot/usr/include/aarch64-linux-android/asm/posix_types.h" 1 3 4
# 21 "/home/awaszczak/Android/Sdk/ndk/25.1.8937393/toolchains/llvm/prebuilt/linux-x86_64/sysroot/usr/include/aarch64-linux-android/asm/posix_types.h" 3 4
typedef unsigned short __kernel_old_uid_t;
typedef unsigned short __kernel_old_gid_t;

# 1 "/home/awaszczak/Android/Sdk/ndk/25.1.8937393/toolchains/llvm/prebuilt/linux-x86_64/sysroot/usr/include/asm-generic/posix_types.h" 1 3 4
# 23 "/home/awaszczak/Android/Sdk/ndk/25.1.8937393/toolchains/llvm/prebuilt/linux-x86_64/sysroot/usr/include/asm-generic/posix_types.h" 3 4
typedef long __kernel_long_t;
typedef unsigned long __kernel_ulong_t;


typedef __kernel_ulong_t __kernel_ino_t;


typedef unsigned int __kernel_mode_t;


typedef int __kernel_pid_t;


typedef int __kernel_ipc_pid_t;


typedef unsigned int __kernel_uid_t;
typedef unsigned int __kernel_gid_t;


typedef __kernel_long_t __kernel_suseconds_t;


typedef int __kernel_daddr_t;


typedef unsigned int __kernel_uid32_t;
typedef unsigned int __kernel_gid32_t;






typedef unsigned int __kernel_old_dev_t;







typedef __kernel_ulong_t __kernel_size_t;
typedef __kernel_long_t __kernel_ssize_t;
typedef __kernel_long_t __kernel_ptrdiff_t;



typedef struct {
  int val[2];
} __kernel_fsid_t;

typedef __kernel_long_t __kernel_off_t;
typedef long long __kernel_loff_t;
typedef __kernel_long_t __kernel_old_time_t;
typedef __kernel_long_t __kernel_time_t;
typedef long long __kernel_time64_t;
typedef __kernel_long_t __kernel_clock_t;
typedef int __kernel_timer_t;
typedef int __kernel_clockid_t;
typedef char * __kernel_caddr_t;
typedef unsigned short __kernel_uid16_t;
typedef unsigned short __kernel_gid16_t;
# 25 "/home/awaszczak/Android/Sdk/ndk/25.1.8937393/toolchains/llvm/prebuilt/linux-x86_64/sysroot/usr/include/aarch64-linux-android/asm/posix_types.h" 2 3 4
# 31 "/home/awaszczak/Android/Sdk/ndk/25.1.8937393/toolchains/llvm/prebuilt/linux-x86_64/sysroot/usr/include/linux/posix_types.h" 2 3 4
# 24 "/home/awaszczak/Android/Sdk/ndk/25.1.8937393/toolchains/llvm/prebuilt/linux-x86_64/sysroot/usr/include/linux/types.h" 2 3 4

typedef __u16 __le16;
typedef __u16 __be16;
typedef __u32 __le32;
typedef __u32 __be32;
typedef __u64 __le64;
typedef __u64 __be64;
typedef __u16 __sum16;
typedef __u32 __wsum;



typedef unsigned __poll_t;
# 37 "/home/awaszczak/Android/Sdk/ndk/25.1.8937393/toolchains/llvm/prebuilt/linux-x86_64/sysroot/usr/include/sys/types.h" 2 3 4


# 1 "/home/awaszczak/Android/Sdk/ndk/25.1.8937393/toolchains/llvm/prebuilt/linux-x86_64/sysroot/usr/include/bits/pthread_types.h" 1 3 4
# 32 "/home/awaszczak/Android/Sdk/ndk/25.1.8937393/toolchains/llvm/prebuilt/linux-x86_64/sysroot/usr/include/bits/pthread_types.h" 3 4
# 1 "/home/awaszczak/Android/Sdk/ndk/25.1.8937393/toolchains/llvm/prebuilt/linux-x86_64/sysroot/usr/include/sys/types.h" 1 3 4
# 33 "/home/awaszczak/Android/Sdk/ndk/25.1.8937393/toolchains/llvm/prebuilt/linux-x86_64/sysroot/usr/include/bits/pthread_types.h" 2 3 4

typedef struct {
  uint32_t flags;
  void* stack_base;
  size_t stack_size;
  size_t guard_size;
  int32_t sched_policy;
  int32_t sched_priority;

  char __reserved[16];

} pthread_attr_t;
# 60 "/home/awaszczak/Android/Sdk/ndk/25.1.8937393/toolchains/llvm/prebuilt/linux-x86_64/sysroot/usr/include/bits/pthread_types.h" 3 4
typedef struct {

  int32_t __private[12];



} pthread_cond_t;

typedef long pthread_condattr_t;

typedef int pthread_key_t;

typedef struct {

  int32_t __private[10];



} pthread_mutex_t;

typedef long pthread_mutexattr_t;

typedef int pthread_once_t;

typedef struct {

  int32_t __private[14];



} pthread_rwlock_t;

typedef long pthread_rwlockattr_t;
# 104 "/home/awaszczak/Android/Sdk/ndk/25.1.8937393/toolchains/llvm/prebuilt/linux-x86_64/sysroot/usr/include/bits/pthread_types.h" 3 4
typedef long pthread_t;
# 40 "/home/awaszczak/Android/Sdk/ndk/25.1.8937393/toolchains/llvm/prebuilt/linux-x86_64/sysroot/usr/include/sys/types.h" 2 3 4


typedef __kernel_gid32_t __gid_t;
typedef __gid_t gid_t;
typedef __kernel_uid32_t __uid_t;
typedef __uid_t uid_t;
typedef __kernel_pid_t __pid_t;
typedef __pid_t pid_t;
typedef uint32_t __id_t;
typedef __id_t id_t;

typedef unsigned long blkcnt_t;
typedef unsigned long blksize_t;
typedef __kernel_caddr_t caddr_t;
typedef __kernel_clock_t clock_t;

typedef __kernel_clockid_t __clockid_t;
typedef __clockid_t clockid_t;

typedef __kernel_daddr_t daddr_t;
typedef unsigned long fsblkcnt_t;
typedef unsigned long fsfilcnt_t;

typedef __kernel_mode_t __mode_t;
typedef __mode_t mode_t;

typedef __kernel_key_t __key_t;
typedef __key_t key_t;

typedef __kernel_ino_t __ino_t;
typedef __ino_t ino_t;

typedef uint64_t ino64_t;

typedef uint32_t __nlink_t;
typedef __nlink_t nlink_t;

typedef void* __timer_t;
typedef __timer_t timer_t;

typedef __kernel_suseconds_t __suseconds_t;
typedef __suseconds_t suseconds_t;


typedef uint32_t __useconds_t;
typedef __useconds_t useconds_t;





typedef uint64_t dev_t;



typedef __kernel_time_t __time_t;
typedef __time_t time_t;




typedef int64_t off_t;
typedef off_t loff_t;
typedef loff_t off64_t;
# 115 "/home/awaszczak/Android/Sdk/ndk/25.1.8937393/toolchains/llvm/prebuilt/linux-x86_64/sysroot/usr/include/sys/types.h" 3 4
typedef uint32_t __socklen_t;

typedef __socklen_t socklen_t;

typedef __builtin_va_list __va_list;
# 128 "/home/awaszczak/Android/Sdk/ndk/25.1.8937393/toolchains/llvm/prebuilt/linux-x86_64/sysroot/usr/include/sys/types.h" 3 4
typedef __kernel_ssize_t ssize_t;


typedef unsigned int uint_t;
typedef unsigned int uint;


typedef unsigned char u_char;
typedef unsigned short u_short;
typedef unsigned int u_int;
typedef unsigned long u_long;

typedef uint32_t u_int32_t;
typedef uint16_t u_int16_t;
typedef uint8_t u_int8_t;
typedef uint64_t u_int64_t;
# 43 "/home/awaszczak/Android/Sdk/ndk/25.1.8937393/toolchains/llvm/prebuilt/linux-x86_64/sysroot/usr/include/stdio.h" 2 3 4

# 1 "/home/awaszczak/Android/Sdk/ndk/25.1.8937393/toolchains/llvm/prebuilt/linux-x86_64/lib64/clang/14.0.6/include/stdarg.h" 1 3 4
# 14 "/home/awaszczak/Android/Sdk/ndk/25.1.8937393/toolchains/llvm/prebuilt/linux-x86_64/lib64/clang/14.0.6/include/stdarg.h" 3 4
typedef __builtin_va_list va_list;
# 32 "/home/awaszczak/Android/Sdk/ndk/25.1.8937393/toolchains/llvm/prebuilt/linux-x86_64/lib64/clang/14.0.6/include/stdarg.h" 3 4
typedef __builtin_va_list __gnuc_va_list;
# 45 "/home/awaszczak/Android/Sdk/ndk/25.1.8937393/toolchains/llvm/prebuilt/linux-x86_64/sysroot/usr/include/stdio.h" 2 3 4
# 1 "/home/awaszczak/Android/Sdk/ndk/25.1.8937393/toolchains/llvm/prebuilt/linux-x86_64/lib64/clang/14.0.6/include/stddef.h" 1 3 4
# 46 "/home/awaszczak/Android/Sdk/ndk/25.1.8937393/toolchains/llvm/prebuilt/linux-x86_64/sysroot/usr/include/stdio.h" 2 3 4

# 1 "/home/awaszczak/Android/Sdk/ndk/25.1.8937393/toolchains/llvm/prebuilt/linux-x86_64/sysroot/usr/include/bits/seek_constants.h" 1 3 4
# 48 "/home/awaszczak/Android/Sdk/ndk/25.1.8937393/toolchains/llvm/prebuilt/linux-x86_64/sysroot/usr/include/stdio.h" 2 3 4


# 1 "/home/awaszczak/Android/Sdk/ndk/25.1.8937393/toolchains/llvm/prebuilt/linux-x86_64/sysroot/usr/include/bits/struct_file.h" 1 3 4
# 36 "/home/awaszczak/Android/Sdk/ndk/25.1.8937393/toolchains/llvm/prebuilt/linux-x86_64/sysroot/usr/include/bits/struct_file.h" 3 4
struct __sFILE {

  char __private[152];



} __attribute__((aligned(sizeof(void*))));
# 51 "/home/awaszczak/Android/Sdk/ndk/25.1.8937393/toolchains/llvm/prebuilt/linux-x86_64/sysroot/usr/include/stdio.h" 2 3 4




typedef off_t fpos_t;
typedef off64_t fpos64_t;

struct __sFILE;
typedef struct __sFILE FILE;
# 72 "/home/awaszczak/Android/Sdk/ndk/25.1.8937393/toolchains/llvm/prebuilt/linux-x86_64/sysroot/usr/include/stdio.h" 3 4
extern FILE __sF[] __attribute__((__availability__(android,strict,obsoleted=23)));
# 106 "/home/awaszczak/Android/Sdk/ndk/25.1.8937393/toolchains/llvm/prebuilt/linux-x86_64/sysroot/usr/include/stdio.h" 3 4
void clearerr(FILE* __fp);
int fclose(FILE* __fp);
int feof(FILE* __fp);
int ferror(FILE* __fp);
int fflush(FILE* __fp);
int fgetc(FILE* __fp);
char* fgets(char* __buf, int __size, FILE* __fp);
int fprintf(FILE* __fp , const char* __fmt, ...) __attribute__((__format__(printf, 2, 3)));
int fputc(int __ch, FILE* __fp);
int fputs(const char* __s, FILE* __fp);
size_t fread(void* __buf, size_t __size, size_t __count, FILE* __fp);
int fscanf(FILE* __fp, const char* __fmt, ...) __attribute__((__format__(scanf, 2, 3)));
size_t fwrite(const void* __buf, size_t __size, size_t __count, FILE* __fp);
int getc(FILE* __fp);
int getchar(void);


ssize_t getdelim(char** __line_ptr, size_t* __line_length_ptr, int __delimiter, FILE* __fp) __attribute__((__availability__(android,strict,introduced=18)));
ssize_t getline(char** __line_ptr, size_t* __line_length_ptr, FILE* __fp) __attribute__((__availability__(android,strict,introduced=18)));



void perror(const char* __msg);
int printf(const char* __fmt, ...) __attribute__((__format__(printf, 1, 2)));
int putc(int __ch, FILE* __fp);
int putchar(int __ch);
int puts(const char* __s);
int remove(const char* __path);
void rewind(FILE* __fp);
int scanf(const char* __fmt, ...) __attribute__((__format__(scanf, 1, 2)));
void setbuf(FILE* __fp, char* __buf);
int setvbuf(FILE* __fp, char* __buf, int __mode, size_t __size);
int sscanf(const char* __s, const char* __fmt, ...) __attribute__((__format__(scanf, 2, 3)));
int ungetc(int __ch, FILE* __fp);
int vfprintf(FILE* __fp, const char* __fmt, va_list __args) __attribute__((__format__(printf, 2, 0)));
int vprintf(const char* __fp, va_list __args) __attribute__((__format__(printf, 1, 0)));


int dprintf(int __fd, const char* __fmt, ...) __attribute__((__format__(printf, 2, 3))) __attribute__((__availability__(android,strict,introduced=21)));
int vdprintf(int __fd, const char* __fmt, va_list __args) __attribute__((__format__(printf, 2, 0))) __attribute__((__availability__(android,strict,introduced=21)));
# 162 "/home/awaszczak/Android/Sdk/ndk/25.1.8937393/toolchains/llvm/prebuilt/linux-x86_64/sysroot/usr/include/stdio.h" 3 4
int sprintf(char* __s, const char* __fmt, ...)
    __attribute__((__format__(printf, 2, 3))) ;
int vsprintf(char* __s, const char* __fmt, va_list __args)
    __attribute__((__format__(printf, 2, 0))) ;
char* tmpnam(char* __s)
    __attribute__((deprecated("tmpnam is unsafe, use mkstemp or tmpfile instead")));

char* tempnam(const char* __dir, const char* __prefix)
    __attribute__((deprecated("tempnam is unsafe, use mkstemp or tmpfile instead")));







int rename(const char* __old_path, const char* __new_path);







int renameat(int __old_dir_fd, const char* __old_path, int __new_dir_fd, const char* __new_path);
# 223 "/home/awaszczak/Android/Sdk/ndk/25.1.8937393/toolchains/llvm/prebuilt/linux-x86_64/sysroot/usr/include/stdio.h" 3 4
int fseek(FILE* __fp, long __offset, int __whence);
long ftell(FILE* __fp);
# 248 "/home/awaszczak/Android/Sdk/ndk/25.1.8937393/toolchains/llvm/prebuilt/linux-x86_64/sysroot/usr/include/stdio.h" 3 4
int fgetpos(FILE* __fp, fpos_t* __pos);
int fsetpos(FILE* __fp, const fpos_t* __pos);
int fseeko(FILE* __fp, off_t __offset, int __whence);
off_t ftello(FILE* __fp);
# 280 "/home/awaszczak/Android/Sdk/ndk/25.1.8937393/toolchains/llvm/prebuilt/linux-x86_64/sysroot/usr/include/stdio.h" 3 4
FILE* fopen(const char* __path, const char* __mode);





FILE* freopen(const char* __path, const char* __mode, FILE* __fp);





FILE* tmpfile(void);






int snprintf(char* __buf, size_t __size, const char* __fmt, ...) __attribute__((__format__(printf, 3, 4)));
int vfscanf(FILE* __fp, const char* __fmt, va_list __args) __attribute__((__format__(scanf, 2, 0)));
int vscanf(const char* __fmt , va_list __args) __attribute__((__format__(scanf, 1, 0)));
int vsnprintf(char* __buf, size_t __size, const char* __fmt, va_list __args) __attribute__((__format__(printf, 3, 0)));
int vsscanf(const char* __s, const char* __fmt, va_list __args) __attribute__((__format__(scanf, 2, 0)));
# 312 "/home/awaszczak/Android/Sdk/ndk/25.1.8937393/toolchains/llvm/prebuilt/linux-x86_64/sysroot/usr/include/stdio.h" 3 4
FILE* fdopen(int __fd, const char* __mode);
int fileno(FILE* __fp);
int pclose(FILE* __fp);
FILE* popen(const char* __command, const char* __mode);
void flockfile(FILE* __fp);
int ftrylockfile(FILE* __fp);
void funlockfile(FILE* __fp);
int getc_unlocked(FILE* __fp);
int getchar_unlocked(void);
int putc_unlocked(int __ch, FILE* __fp);
int putchar_unlocked(int __ch);
# 332 "/home/awaszczak/Android/Sdk/ndk/25.1.8937393/toolchains/llvm/prebuilt/linux-x86_64/sysroot/usr/include/stdio.h" 3 4
int asprintf(char** __s_ptr, const char* __fmt, ...) __attribute__((__format__(printf, 2, 3)));
char* fgetln(FILE* __fp, size_t* __length_ptr);
int fpurge(FILE* __fp);
void setbuffer(FILE* __fp, char* __buf, int __size);
int setlinebuf(FILE* __fp);
int vasprintf(char** __s_ptr, const char* __fmt, va_list __args) __attribute__((__format__(printf, 2, 0)));
# 376 "/home/awaszczak/Android/Sdk/ndk/25.1.8937393/toolchains/llvm/prebuilt/linux-x86_64/sysroot/usr/include/stdio.h" 3 4
# 1 "/home/awaszczak/Android/Sdk/ndk/25.1.8937393/toolchains/llvm/prebuilt/linux-x86_64/sysroot/usr/include/bits/fortify/stdio.h" 1 3 4
# 35 "/home/awaszczak/Android/Sdk/ndk/25.1.8937393/toolchains/llvm/prebuilt/linux-x86_64/sysroot/usr/include/bits/fortify/stdio.h" 3 4
char* __fgets_chk(char*, int, FILE*, size_t) __attribute__((__availability__(android,strict,introduced=17)));
# 49 "/home/awaszczak/Android/Sdk/ndk/25.1.8937393/toolchains/llvm/prebuilt/linux-x86_64/sysroot/usr/include/bits/fortify/stdio.h" 3 4
static __inline__ __attribute__((no_stack_protector)) __attribute__((__always_inline__)) __attribute__((__format__(printf, 3, 0)))
int vsnprintf(char* const __attribute__((pass_object_size(1))) dest, size_t size, const char* format, va_list ap)
        __attribute__((diagnose_as_builtin(__builtin_vsnprintf, 1, 2, 3, 4)))
        __attribute__((overloadable)) {
    return __builtin___vsnprintf_chk(dest, size, 0, __builtin_object_size(((dest)), (1)), format, ap);
}

static __inline__ __attribute__((no_stack_protector)) __attribute__((__always_inline__)) __attribute__((__format__(printf, 2, 0)))
int vsprintf(char* const __attribute__((pass_object_size(1))) dest, const char* format, va_list ap) __attribute__((overloadable)) {
    return __builtin___vsprintf_chk(dest, 0, __builtin_object_size(((dest)), (1)), format, ap);
}


static __attribute__((unused))
int sprintf(char* dest, const char* format)
    __attribute__((overloadable))
    __attribute__((enable_if(((__builtin_object_size(((dest)), (1))) != ((size_t) -1) && (__builtin_object_size(((dest)), (1))) < (__builtin_strlen(format))), "format string will always overflow destination buffer")))

    __attribute__((unavailable("format string will always overflow destination buffer")));


static __inline__ __attribute__((__format__(printf, 2, 3)))
int sprintf(char* const __attribute__((pass_object_size(1))) dest, const char* format, ...) __attribute__((overloadable)) {
    va_list va;
    __builtin_va_start(va, format);
    int result = __builtin___vsprintf_chk(dest, 0, __builtin_object_size(((dest)), (1)), format, va);
    __builtin_va_end(va);
    return result;
}


static __inline__ __attribute__((__format__(printf, 3, 4)))
int snprintf(char* const __attribute__((pass_object_size(1))) dest, size_t size, const char* format, ...)
        __attribute__((diagnose_as_builtin(__builtin_snprintf, 1, 2, 3)))
        __attribute__((overloadable)) {
    va_list va;
    __builtin_va_start(va, format);
    int result = __builtin___vsnprintf_chk(dest, size, 0, __builtin_object_size(((dest)), (1)), format, va);
    __builtin_va_end(va);
    return result;
}






static __inline__ __attribute__((no_stack_protector)) __attribute__((__always_inline__))
size_t fread(void* const __attribute__((pass_object_size(0))) buf, size_t size, size_t count, FILE* stream)
        __attribute__((overloadable))
        __attribute__((diagnose_if(((long unsigned int)-1 / (size) < (count)), "in call to 'fread', size * count overflows", "error")))

        __attribute__((diagnose_if(((__builtin_object_size(((buf)), (0))) != ((size_t) -1) && (__builtin_object_size(((buf)), (0))) < (size * count)), "in call to 'fread', size * count is too large for the given buffer", "error"))) {
# 110 "/home/awaszczak/Android/Sdk/ndk/25.1.8937393/toolchains/llvm/prebuilt/linux-x86_64/sysroot/usr/include/bits/fortify/stdio.h" 3 4
    return (&fread)(buf, size, count, stream);
}

static __inline__ __attribute__((no_stack_protector)) __attribute__((__always_inline__))
size_t fwrite(const void* const __attribute__((pass_object_size(0))) buf, size_t size, size_t count, FILE* stream)
        __attribute__((overloadable))
        __attribute__((diagnose_if(((long unsigned int)-1 / (size) < (count)), "in call to 'fwrite', size * count overflows", "error")))

        __attribute__((diagnose_if(((__builtin_object_size(((buf)), (0))) != ((size_t) -1) && (__builtin_object_size(((buf)), (0))) < (size * count)), "in call to 'fwrite', size * count is too large for the given buffer", "error"))) {
# 127 "/home/awaszczak/Android/Sdk/ndk/25.1.8937393/toolchains/llvm/prebuilt/linux-x86_64/sysroot/usr/include/bits/fortify/stdio.h" 3 4
    return (&fwrite)(buf, size, count, stream);
}


static __inline__ __attribute__((no_stack_protector)) __attribute__((__always_inline__))
char* fgets(char* const __attribute__((pass_object_size(1))) dest, int size, FILE* stream)
        __attribute__((overloadable))
        __attribute__((diagnose_if(size < 0, "in call to 'fgets', size should not be negative", "error")))
        __attribute__((diagnose_if(((__builtin_object_size(((dest)), (1))) != ((size_t) -1) && (__builtin_object_size(((dest)), (1))) < (size)), "in call to 'fgets', size is larger than the destination buffer", "error"))) {


    size_t bos = __builtin_object_size(((dest)), (1));

    if (!((bos) == ((size_t) -1) || (__builtin_constant_p((size_t)size) && bos >= (size_t)size && (size >= 0)))) {
        return __fgets_chk(dest, size, stream, bos);
    }

    return (&fgets)(dest, size, stream);
}
# 377 "/home/awaszczak/Android/Sdk/ndk/25.1.8937393/toolchains/llvm/prebuilt/linux-x86_64/sysroot/usr/include/stdio.h" 2 3 4
# 31 "/home/awaszczak/Android/Sdk/ndk/25.1.8937393/toolchains/llvm/prebuilt/linux-x86_64/sysroot/usr/include/malloc.h" 2 3 4
# 43 "/home/awaszczak/Android/Sdk/ndk/25.1.8937393/toolchains/llvm/prebuilt/linux-x86_64/sysroot/usr/include/malloc.h" 3 4
void* malloc(size_t __byte_count) __attribute__((__malloc__)) __attribute__((__alloc_size__(1))) __attribute__((__warn_unused_result__));
# 52 "/home/awaszczak/Android/Sdk/ndk/25.1.8937393/toolchains/llvm/prebuilt/linux-x86_64/sysroot/usr/include/malloc.h" 3 4
void* calloc(size_t __item_count, size_t __item_size) __attribute__((__malloc__)) __attribute__((__alloc_size__(1,2))) __attribute__((__warn_unused_result__));
# 61 "/home/awaszczak/Android/Sdk/ndk/25.1.8937393/toolchains/llvm/prebuilt/linux-x86_64/sysroot/usr/include/malloc.h" 3 4
void* realloc(void* __ptr, size_t __byte_count) __attribute__((__alloc_size__(2))) __attribute__((__warn_unused_result__));
# 83 "/home/awaszczak/Android/Sdk/ndk/25.1.8937393/toolchains/llvm/prebuilt/linux-x86_64/sysroot/usr/include/malloc.h" 3 4
void free(void* __ptr);
# 94 "/home/awaszczak/Android/Sdk/ndk/25.1.8937393/toolchains/llvm/prebuilt/linux-x86_64/sysroot/usr/include/malloc.h" 3 4
void* memalign(size_t __alignment, size_t __byte_count) __attribute__((__malloc__)) __attribute__((__alloc_size__(2))) __attribute__((__warn_unused_result__));
# 104 "/home/awaszczak/Android/Sdk/ndk/25.1.8937393/toolchains/llvm/prebuilt/linux-x86_64/sysroot/usr/include/malloc.h" 3 4
size_t malloc_usable_size(const void* __ptr) __attribute__((__availability__(android,strict,introduced=17)));
# 132 "/home/awaszczak/Android/Sdk/ndk/25.1.8937393/toolchains/llvm/prebuilt/linux-x86_64/sysroot/usr/include/malloc.h" 3 4
struct mallinfo { size_t arena; size_t ordblks; size_t smblks; size_t hblks; size_t hblkhd; size_t usmblks; size_t fsmblks; size_t uordblks; size_t fordblks; size_t keepcost; };







struct mallinfo mallinfo(void);




struct mallinfo2 { size_t arena; size_t ordblks; size_t smblks; size_t hblks; size_t hblkhd; size_t usmblks; size_t fsmblks; size_t uordblks; size_t fordblks; size_t keepcost; };






struct mallinfo2 mallinfo2(void) __asm__("mallinfo");
# 297 "/home/awaszczak/Android/Sdk/ndk/25.1.8937393/toolchains/llvm/prebuilt/linux-x86_64/sysroot/usr/include/malloc.h" 3 4
enum HeapTaggingLevel {




  M_HEAP_TAGGING_LEVEL_NONE = 0,






  M_HEAP_TAGGING_LEVEL_TBI = 1,





  M_HEAP_TAGGING_LEVEL_ASYNC = 2,





  M_HEAP_TAGGING_LEVEL_SYNC = 3,

};
# 35 "/home/awaszczak/Android/Sdk/ndk/25.1.8937393/toolchains/llvm/prebuilt/linux-x86_64/sysroot/usr/include/stdlib.h" 2 3 4
# 1 "/home/awaszczak/Android/Sdk/ndk/25.1.8937393/toolchains/llvm/prebuilt/linux-x86_64/lib64/clang/14.0.6/include/stddef.h" 1 3 4
# 36 "/home/awaszczak/Android/Sdk/ndk/25.1.8937393/toolchains/llvm/prebuilt/linux-x86_64/sysroot/usr/include/stdlib.h" 2 3 4

# 1 "/home/awaszczak/Android/Sdk/ndk/25.1.8937393/toolchains/llvm/prebuilt/linux-x86_64/sysroot/usr/include/xlocale.h" 1 3 4
# 44 "/home/awaszczak/Android/Sdk/ndk/25.1.8937393/toolchains/llvm/prebuilt/linux-x86_64/sysroot/usr/include/xlocale.h" 3 4
struct __locale_t;




typedef struct __locale_t* locale_t;
# 38 "/home/awaszczak/Android/Sdk/ndk/25.1.8937393/toolchains/llvm/prebuilt/linux-x86_64/sysroot/usr/include/stdlib.h" 2 3 4






__attribute__((__noreturn__)) void abort(void) __attribute__((__nomerge__));
__attribute__((__noreturn__)) void exit(int __status);

__attribute__((__noreturn__)) void _Exit(int __status) __attribute__((__availability__(android,strict,introduced=21)));




int atexit(void (*__fn)(void));



int at_quick_exit(void (*__fn)(void)) __attribute__((__availability__(android,strict,introduced=21)));
void quick_exit(int __status) __attribute__((__noreturn__)) __attribute__((__availability__(android,strict,introduced=21)));



char* getenv(const char* __name);
int putenv(char* __assignment);
int setenv(const char* __name, const char* __value, int __overwrite);
int unsetenv(const char* __name);
int clearenv(void);

char* mkdtemp(char* __template);
char* mktemp(char* __template) __attribute__((deprecated("mktemp is unsafe, use mkstemp or tmpfile instead")));
# 80 "/home/awaszczak/Android/Sdk/ndk/25.1.8937393/toolchains/llvm/prebuilt/linux-x86_64/sysroot/usr/include/stdlib.h" 3 4
int mkstemp64(char* __template) __attribute__((__availability__(android,strict,introduced=21)));


int mkstemp(char* __template);





int mkstemps(char* __template, int __flags);

long strtol(const char* __s, char** __end_ptr, int __base);
long long strtoll(const char* __s, char** __end_ptr, int __base);
unsigned long strtoul(const char* __s, char** __end_ptr, int __base);
unsigned long long strtoull(const char* __s, char** __end_ptr, int __base);



int posix_memalign(void** __memptr, size_t __alignment, size_t __size) __attribute__((__availability__(android,strict,introduced=17)));
# 108 "/home/awaszczak/Android/Sdk/ndk/25.1.8937393/toolchains/llvm/prebuilt/linux-x86_64/sysroot/usr/include/stdlib.h" 3 4
double strtod(const char* __s, char** __end_ptr);
long double strtold(const char* __s, char** __end_ptr) __attribute__((__availability__(android,strict,introduced=21)));







int atoi(const char* __s) __attribute__((__pure__));
long atol(const char* __s) __attribute__((__pure__));
long long atoll(const char* __s) __attribute__((__pure__));

__attribute__((__warn_unused_result__)) char* realpath(const char* __path, char* __resolved);
int system(const char* __command);

void* bsearch(const void* __key, const void* __base, size_t __nmemb, size_t __size, int (*__comparator)(const void* __lhs, const void* __rhs));

void qsort(void* __base, size_t __nmemb, size_t __size, int (*__comparator)(const void* __lhs, const void* __rhs));

uint32_t arc4random(void);
uint32_t arc4random_uniform(uint32_t __upper_bound);
void arc4random_buf(void* __buf, size_t __n);





int rand_r(unsigned int* __seed_ptr) __attribute__((__availability__(android,strict,introduced=21)));



double drand48(void);
double erand48(unsigned short __xsubi[3]);
long jrand48(unsigned short __xsubi[3]);





long lrand48(void);
long mrand48(void);
long nrand48(unsigned short __xsubi[3]);
unsigned short* seed48(unsigned short __seed16v[3]);
void srand48(long __seed);



char* initstate(unsigned int __seed, char* __state, size_t __n) __attribute__((__availability__(android,strict,introduced=21)));
char* setstate(char* __state) __attribute__((__availability__(android,strict,introduced=21)));



int getpt(void);


int posix_openpt(int __flags) __attribute__((__availability__(android,strict,introduced=21)));


char* ptsname(int __fd);
int ptsname_r(int __fd, char* __buf, size_t __n);
int unlockpt(int __fd);







typedef struct {
  int quot;
  int rem;
} div_t;

div_t div(int __numerator, int __denominator) __attribute__((__const__));

typedef struct {
  long int quot;
  long int rem;
} ldiv_t;

ldiv_t ldiv(long __numerator, long __denominator) __attribute__((__const__));

typedef struct {
  long long int quot;
  long long int rem;
} lldiv_t;

lldiv_t lldiv(long long __numerator, long long __denominator) __attribute__((__const__));
# 214 "/home/awaszczak/Android/Sdk/ndk/25.1.8937393/toolchains/llvm/prebuilt/linux-x86_64/sysroot/usr/include/stdlib.h" 3 4
const char* getprogname(void) __attribute__((__availability__(android,strict,introduced=21)));
void setprogname(const char* __name) __attribute__((__availability__(android,strict,introduced=21)));



int mblen(const char* __s, size_t __n) ;
size_t mbstowcs(wchar_t* __dst, const char* __src, size_t __n) ;
int mbtowc(wchar_t* __wc_ptr, const char* __s, size_t __n) ;
int wctomb(char* __dst, wchar_t __wc) ;

size_t wcstombs(char* __dst, const wchar_t* __src, size_t __n) ;


size_t __ctype_get_mb_cur_max(void) __attribute__((__availability__(android,strict,introduced=21)));
# 239 "/home/awaszczak/Android/Sdk/ndk/25.1.8937393/toolchains/llvm/prebuilt/linux-x86_64/sysroot/usr/include/stdlib.h" 3 4
# 1 "/home/awaszczak/Android/Sdk/ndk/25.1.8937393/toolchains/llvm/prebuilt/linux-x86_64/sysroot/usr/include/bits/fortify/stdlib.h" 1 3 4
# 38 "/home/awaszczak/Android/Sdk/ndk/25.1.8937393/toolchains/llvm/prebuilt/linux-x86_64/sysroot/usr/include/bits/fortify/stdlib.h" 3 4
char* realpath(const char* path, char* resolved)
        __attribute__((diagnose_if(!path, "'realpath': NULL path is never correct; flipped arguments?", "error")))
        __attribute__((diagnose_if(((__builtin_object_size(((resolved)), (1))) != ((size_t) -1) && (__builtin_object_size(((resolved)), (1))) < (4096)), "'realpath' output parameter must be NULL or a pointer to a buffer " "with >= PATH_MAX bytes", "error")));
# 240 "/home/awaszczak/Android/Sdk/ndk/25.1.8937393/toolchains/llvm/prebuilt/linux-x86_64/sysroot/usr/include/stdlib.h" 2 3 4



int abs(int __x) __attribute__((__const__)) __attribute__((__availability__(android,strict,introduced=19)));
long labs(long __x) __attribute__((__const__)) __attribute__((__availability__(android,strict,introduced=19)));
long long llabs(long long __x) __attribute__((__const__)) __attribute__((__availability__(android,strict,introduced=19)));





float strtof(const char* __s, char** __end_ptr) __attribute__((__availability__(android,strict,introduced=21)));
double atof(const char* __s) __attribute__((__pure__)) __attribute__((__availability__(android,strict,introduced=21)));
int rand(void) __attribute__((__availability__(android,strict,introduced=21)));
void srand(unsigned int __seed) __attribute__((__availability__(android,strict,introduced=21)));
long random(void) __attribute__((__availability__(android,strict,introduced=21)));
void srandom(unsigned int __seed) __attribute__((__availability__(android,strict,introduced=21)));
int grantpt(int __fd) __attribute__((__availability__(android,strict,introduced=21)));

long long strtoll_l(const char* __s, char** __end_ptr, int __base, locale_t __l) __attribute__((__availability__(android,strict,introduced=21)));
unsigned long long strtoull_l(const char* __s, char** __end_ptr, int __base, locale_t __l) __attribute__((__availability__(android,strict,introduced=21)));
long double strtold_l(const char* __s, char** __end_ptr, locale_t __l) __attribute__((__availability__(android,strict,introduced=21)));
# 276 "/home/awaszczak/Android/Sdk/ndk/25.1.8937393/toolchains/llvm/prebuilt/linux-x86_64/sysroot/usr/include/stdlib.h" 3 4
# 1 "/home/awaszczak/Android/Sdk/ndk/25.1.8937393/toolchains/llvm/prebuilt/linux-x86_64/sysroot/usr/include/android/legacy_stdlib_inlines.h" 1 3 4
# 96 "/home/awaszczak/Android/Sdk/ndk/25.1.8937393/toolchains/llvm/prebuilt/linux-x86_64/sysroot/usr/include/android/legacy_stdlib_inlines.h" 3 4
static __inline double strtod_l(const char* __s, char** __end_ptr, locale_t __l) {
  return strtod(__s, __end_ptr);
}

static __inline float strtof_l(const char* __s, char** __end_ptr, locale_t __l) {
  return strtof(__s, __end_ptr);
}

static __inline long strtol_l(const char* __s, char** __end_ptr, int __base, locale_t __l) {
  return strtol(__s, __end_ptr, __base);
}
# 277 "/home/awaszczak/Android/Sdk/ndk/25.1.8937393/toolchains/llvm/prebuilt/linux-x86_64/sysroot/usr/include/stdlib.h" 2 3 4
# 32 "/home/awaszczak/Android/Sdk/ndk/25.1.8937393/toolchains/llvm/prebuilt/linux-x86_64/sysroot/usr/local/include/stdlib.h" 2 3
# 4 "/home/awaszczak/git/sa2/sa1/src/platform/ext/gbagfx/rl.c" 2
# 1 "/home/awaszczak/Android/Sdk/ndk/25.1.8937393/toolchains/llvm/prebuilt/linux-x86_64/lib64/clang/14.0.6/include/stdbool.h" 1 3
# 5 "/home/awaszczak/git/sa2/sa1/src/platform/ext/gbagfx/rl.c" 2
# 1 "/home/awaszczak/git/sa2/sa1/include/platform/ext/gbagfx/global.h" 1
# 6 "/home/awaszczak/git/sa2/sa1/src/platform/ext/gbagfx/rl.c" 2
# 1 "/home/awaszczak/git/sa2/sa1/include/platform/ext/gbagfx/rl.h" 1





unsigned char *RLDecompress(unsigned char *src, int srcSize, int *uncompressedSize);
unsigned char *RLCompress(unsigned char *src, int srcSize, int *compressedSize);

void RLDecompressUnsafe(unsigned char *src, unsigned char *dest, int *uncompressedSize);
# 7 "/home/awaszczak/git/sa2/sa1/src/platform/ext/gbagfx/rl.c" 2

unsigned char *RLDecompress(unsigned char *src, int srcSize, int *uncompressedSize)
{
    if (srcSize < 4)
        goto fail;

    int destSize = (src[3] << 16) | (src[2] << 8) | src[1];

    unsigned char *dest = malloc(destSize);

    if (dest == ((void*)0))
        goto fail;

    int srcPos = 4;
    int destPos = 0;

    for (;;)
    {
        if (srcPos >= srcSize)
            goto fail;

        unsigned char flags = src[srcPos++];
        _Bool compressed = ((flags & 0x80) != 0);

        if (compressed)
        {
            int length = (flags & 0x7F) + 3;
            unsigned char data = src[srcPos++];

            if (destPos + length > destSize)
                goto fail;

            for (int i = 0; i < length; i++)
                dest[destPos++] = data;
        }
        else
        {
            int length = (flags & 0x7F) + 1;

            if (destPos + length > destSize)
                goto fail;

            for (int i = 0; i < length; i++)
                dest[destPos++] = src[srcPos++];
        }

        if (destPos == destSize)
        {
            *uncompressedSize = destSize;
            return dest;
        }
    }

fail:
    do { fprintf((&__sF[2]), "Fatal error while decompressing RL file.\n"); exit(1); } while (0);
}

void RLDecompressUnsafe(unsigned char *src, unsigned char *dest, int *uncompressedSize)
{
    int destSize = (src[3] << 16) | (src[2] << 8) | src[1];

    if (dest == ((void*)0))
        goto fail;

    int srcPos = 4;
    int destPos = 0;

    for (;;)
    {
        unsigned char flags = src[srcPos++];
        _Bool compressed = ((flags & 0x80) != 0);

        if (compressed)
        {
            int length = (flags & 0x7F) + 3;
            unsigned char data = src[srcPos++];

            if (destPos + length > destSize)
                goto fail;

            for (int i = 0; i < length; i++)
                dest[destPos++] = data;
        }
        else
        {
            int length = (flags & 0x7F) + 1;

            if (destPos + length > destSize)
                goto fail;

            for (int i = 0; i < length; i++)
                dest[destPos++] = src[srcPos++];
        }

        if (destPos == destSize)
        {
            *uncompressedSize = destSize;
            return;
        }
    }

fail:
    do { fprintf((&__sF[2]), "Fatal error while decompressing RL file.\n"); exit(1); } while (0);
}

unsigned char *RLCompress(unsigned char *src, int srcSize, int *compressedSize)
{
    if (srcSize <= 0)
        goto fail;

    int worstCaseDestSize = 4 + srcSize * 2;


    worstCaseDestSize = (worstCaseDestSize + 3) & ~3;

    unsigned char *dest = malloc(worstCaseDestSize);

    if (dest == ((void*)0))
        goto fail;


    dest[0] = 0x30;
    dest[1] = (unsigned char)srcSize;
    dest[2] = (unsigned char)(srcSize >> 8);
    dest[3] = (unsigned char)(srcSize >> 16);

    int srcPos = 0;
    int destPos = 4;

    for (;;)
    {
        _Bool compress = 0;
        int uncompressedStart = srcPos;
        int uncompressedLength = 0;

        while (srcPos < srcSize && uncompressedLength < (0x7F + 1))
        {
            compress = (srcPos + 2 < srcSize && src[srcPos] == src[srcPos + 1] && src[srcPos] == src[srcPos + 2]);

            if (compress)
                break;

            srcPos++;
            uncompressedLength++;
        }

        if (uncompressedLength > 0)
        {
            dest[destPos++] = uncompressedLength - 1;

            for (int i = 0; i < uncompressedLength; i++)
                dest[destPos++] = src[uncompressedStart + i];
        }

        if (compress)
        {
            unsigned char data = src[srcPos];
            int compressedLength = 0;

            while (compressedLength < (0x7F + 3)
                && srcPos + compressedLength < srcSize
                && src[srcPos + compressedLength] == data)
            {
                compressedLength++;
            }

            dest[destPos++] = 0x80 | (compressedLength - 3);
            dest[destPos++] = data;

            srcPos += compressedLength;
        }

        if (srcPos == srcSize)
        {

            int remainder = destPos % 4;

            if (remainder != 0)
            {
                for (int i = 0; i < 4 - remainder; i++)
                    dest[destPos++] = 0;
            }

            *compressedSize = destPos;
            return dest;
        }
    }

fail:
    do { fprintf((&__sF[2]), "Fatal error while compressing RL file.\n"); exit(1); } while (0);
}
