# 1 "/home/awaszczak/git/sa2/sa1/../src/lib/m4a/m4a.c"
# 1 "<built-in>" 1
# 1 "<built-in>" 3
# 384 "<built-in>" 3
# 1 "<command line>" 1
# 1 "<built-in>" 2
# 1 "/home/awaszczak/git/sa2/sa1/../src/lib/m4a/m4a.c" 2
# 1 "/home/awaszczak/Android/Sdk/ndk/25.1.8937393/toolchains/llvm/prebuilt/linux-x86_64/sysroot/usr/include/string.h" 1 3 4
# 32 "/home/awaszczak/Android/Sdk/ndk/25.1.8937393/toolchains/llvm/prebuilt/linux-x86_64/sysroot/usr/include/string.h" 3 4
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
# 33 "/home/awaszczak/Android/Sdk/ndk/25.1.8937393/toolchains/llvm/prebuilt/linux-x86_64/sysroot/usr/include/string.h" 2 3 4
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
# 34 "/home/awaszczak/Android/Sdk/ndk/25.1.8937393/toolchains/llvm/prebuilt/linux-x86_64/sysroot/usr/include/string.h" 2 3 4
# 1 "/home/awaszczak/Android/Sdk/ndk/25.1.8937393/toolchains/llvm/prebuilt/linux-x86_64/sysroot/usr/include/xlocale.h" 1 3 4
# 44 "/home/awaszczak/Android/Sdk/ndk/25.1.8937393/toolchains/llvm/prebuilt/linux-x86_64/sysroot/usr/include/xlocale.h" 3 4
struct __locale_t;




typedef struct __locale_t* locale_t;
# 35 "/home/awaszczak/Android/Sdk/ndk/25.1.8937393/toolchains/llvm/prebuilt/linux-x86_64/sysroot/usr/include/string.h" 2 3 4

# 1 "/home/awaszczak/Android/Sdk/ndk/25.1.8937393/toolchains/llvm/prebuilt/linux-x86_64/sysroot/usr/include/bits/strcasecmp.h" 1 3 4
# 37 "/home/awaszczak/Android/Sdk/ndk/25.1.8937393/toolchains/llvm/prebuilt/linux-x86_64/sysroot/usr/include/bits/strcasecmp.h" 3 4
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
# 38 "/home/awaszczak/Android/Sdk/ndk/25.1.8937393/toolchains/llvm/prebuilt/linux-x86_64/sysroot/usr/include/bits/strcasecmp.h" 2 3 4
# 49 "/home/awaszczak/Android/Sdk/ndk/25.1.8937393/toolchains/llvm/prebuilt/linux-x86_64/sysroot/usr/include/bits/strcasecmp.h" 3 4
int strcasecmp(const char* __s1, const char* __s2) __attribute__((__pure__));
# 68 "/home/awaszczak/Android/Sdk/ndk/25.1.8937393/toolchains/llvm/prebuilt/linux-x86_64/sysroot/usr/include/bits/strcasecmp.h" 3 4
int strncasecmp(const char* __s1, const char* __s2, size_t __n) __attribute__((__pure__));
# 37 "/home/awaszczak/Android/Sdk/ndk/25.1.8937393/toolchains/llvm/prebuilt/linux-x86_64/sysroot/usr/include/string.h" 2 3 4







void* memccpy(void* __dst, const void* __src, int __stop_char, size_t __n);
void* memchr(const void* __s, int __ch, size_t __n) __attribute__((__pure__));




void* memrchr(const void* __s, int __ch, size_t __n) __attribute__((__pure__));

int memcmp(const void* __lhs, const void* __rhs, size_t __n) __attribute__((__pure__));
void* memcpy(void*, const void*, size_t);







void* memmove(void* __dst, const void* __src, size_t __n);
void* memset(void* __dst, int __ch, size_t __n);
void* memmem(const void* __haystack, size_t __haystack_size, const void* __needle, size_t __needle_size) __attribute__((__pure__));

char* strchr(const char* __s, int __ch) __attribute__((__pure__));


char* __strchr_chk(const char* __s, int __ch, size_t __n) __attribute__((__availability__(android,strict,introduced=18)));
# 88 "/home/awaszczak/Android/Sdk/ndk/25.1.8937393/toolchains/llvm/prebuilt/linux-x86_64/sysroot/usr/include/string.h" 3 4
char* strrchr(const char* __s, int __ch) __attribute__((__pure__));


char* __strrchr_chk(const char* __s, int __ch, size_t __n) __attribute__((__availability__(android,strict,introduced=18)));



size_t strlen(const char* __s) __attribute__((__pure__));


size_t __strlen_chk(const char* __s, size_t __n) __attribute__((__availability__(android,strict,introduced=17)));



int strcmp(const char* __lhs, const char* __rhs) __attribute__((__pure__));


char* stpcpy(char* __dst, const char* __src) __attribute__((__availability__(android,strict,introduced=21)));


char* strcpy(char* __dst, const char* __src);
char* strcat(char* __dst, const char* __src);
char* strdup(const char* __s);

char* strstr(const char* __haystack, const char* __needle) __attribute__((__pure__));




char* strcasestr(const char* __haystack, const char* __needle) __attribute__((__pure__));

char* strtok(char* __s, const char* __delimiter);
char* strtok_r(char* __s, const char* __delimiter, char** __pos_ptr);

char* strerror(int __errno_value);
# 131 "/home/awaszczak/Android/Sdk/ndk/25.1.8937393/toolchains/llvm/prebuilt/linux-x86_64/sysroot/usr/include/string.h" 3 4
int strerror_r(int __errno_value, char* __buf, size_t __n);


size_t strnlen(const char* __s, size_t __n) __attribute__((__pure__));
char* strncat(char* __dst, const char* __src, size_t __n);
char* strndup(const char* __s, size_t __n);
int strncmp(const char* __lhs, const char* __rhs, size_t __n) __attribute__((__pure__));


char* stpncpy(char* __dst, const char* __src, size_t __n) __attribute__((__availability__(android,strict,introduced=21)));


char* strncpy(char* __dst, const char* __src, size_t __n);

size_t strlcat(char* __dst, const char* __src, size_t __n);
size_t strlcpy(char* __dst, const char* __src, size_t __n);

size_t strcspn(const char* __s, const char* __reject) __attribute__((__pure__));
char* strpbrk(const char* __s, const char* __accept) __attribute__((__pure__));
char* strsep(char** __s_ptr, const char* __delimiter);
size_t strspn(const char* __s, const char* __accept);

char* strsignal(int __signal);

int strcoll(const char* __lhs, const char* __rhs) __attribute__((__pure__));
size_t strxfrm(char* __dst, const char* __src, size_t __n);


int strcoll_l(const char* __lhs, const char* __rhs, locale_t __l) __attribute__((__pure__)) __attribute__((__availability__(android,strict,introduced=21)));
size_t strxfrm_l(char* __dst, const char* __src, size_t __n, locale_t __l) __attribute__((__availability__(android,strict,introduced=21)));
# 187 "/home/awaszczak/Android/Sdk/ndk/25.1.8937393/toolchains/llvm/prebuilt/linux-x86_64/sysroot/usr/include/string.h" 3 4
# 1 "/home/awaszczak/Android/Sdk/ndk/25.1.8937393/toolchains/llvm/prebuilt/linux-x86_64/sysroot/usr/include/bits/fortify/string.h" 1 3 4
# 41 "/home/awaszczak/Android/Sdk/ndk/25.1.8937393/toolchains/llvm/prebuilt/linux-x86_64/sysroot/usr/include/bits/fortify/string.h" 3 4
char* __stpncpy_chk2(char*, const char*, size_t, size_t, size_t) __attribute__((__availability__(android,strict,introduced=21)));
char* __strncpy_chk2(char*, const char*, size_t, size_t, size_t) __attribute__((__availability__(android,strict,introduced=21)));




size_t __strlcpy_chk(char*, const char*, size_t, size_t) __attribute__((__availability__(android,strict,introduced=17)));
size_t __strlcat_chk(char*, const char*, size_t, size_t) __attribute__((__availability__(android,strict,introduced=17)));




extern void* __memrchr_real(const void*, int, size_t) __asm__("memrchr");



static __inline__ __attribute__((no_stack_protector)) __attribute__((__always_inline__))
void* memcpy(void* const dst __attribute__((pass_object_size(0))), const void* src, size_t copy_amount)
        __attribute__((diagnose_as_builtin(__builtin_memcpy, 1, 2, 3)))
        __attribute__((overloadable)) {
    return __builtin___memcpy_chk(dst, src, copy_amount, __builtin_object_size(((dst)), (0)));
}


static __inline__ __attribute__((no_stack_protector)) __attribute__((__always_inline__))
void* memmove(void* const dst __attribute__((pass_object_size(0))), const void* src, size_t len)
        __attribute__((diagnose_as_builtin(__builtin_memmove, 1, 2, 3)))
        __attribute__((overloadable)) {
    return __builtin___memmove_chk(dst, src, len, __builtin_object_size(((dst)), (0)));
}
# 92 "/home/awaszczak/Android/Sdk/ndk/25.1.8937393/toolchains/llvm/prebuilt/linux-x86_64/sysroot/usr/include/bits/fortify/string.h" 3 4
static __inline__ __attribute__((no_stack_protector)) __attribute__((__always_inline__))
char* stpcpy(char* const dst __attribute__((pass_object_size(1))), const char* src)
        __attribute__((overloadable))
        __attribute__((diagnose_if(((__builtin_object_size(((dst)), (1))) != ((size_t) -1) && (__builtin_object_size(((dst)), (1))) <= (__builtin_strlen(src))), "'stpcpy' called with string bigger than buffer", "error"))) {


    return __builtin___stpcpy_chk(dst, src, __builtin_object_size(((dst)), (1)));



}

static __inline__ __attribute__((no_stack_protector)) __attribute__((__always_inline__))
char* strcpy(char* const dst __attribute__((pass_object_size(1))), const char* src)
        __attribute__((diagnose_as_builtin(__builtin_strcpy, 1, 2)))
        __attribute__((overloadable))
        __attribute__((diagnose_if(((__builtin_object_size(((dst)), (1))) != ((size_t) -1) && (__builtin_object_size(((dst)), (1))) <= (__builtin_strlen(src))), "'strcpy' called with string bigger than buffer", "error"))) {


    return __builtin___strcpy_chk(dst, src, __builtin_object_size(((dst)), (1)));



}

static __inline__ __attribute__((no_stack_protector)) __attribute__((__always_inline__))
char* strcat(char* const dst __attribute__((pass_object_size(1))), const char* src)
        __attribute__((overloadable))
        __attribute__((diagnose_if(((__builtin_object_size(((dst)), (1))) != ((size_t) -1) && (__builtin_object_size(((dst)), (1))) <= (__builtin_strlen(src))), "'strcat' called with string bigger than buffer", "error"))) {


    return __builtin___strcat_chk(dst, src, __builtin_object_size(((dst)), (1)));



}



static __inline__ __attribute__((no_stack_protector)) __attribute__((__always_inline__))
char* strncat(char* const dst __attribute__((pass_object_size(1))), const char* src, size_t n)
       __attribute__((diagnose_as_builtin(__builtin_strncat, 1, 2, 3)))
       __attribute__((overloadable)) {
    return __builtin___strncat_chk(dst, src, n, __builtin_object_size(((dst)), (1)));
}



static __inline__ __attribute__((no_stack_protector)) __attribute__((__always_inline__))
void* memset(void* const s __attribute__((pass_object_size(0))), int c, size_t n) __attribute__((overloadable))
        __attribute__((diagnose_as_builtin(__builtin_memset, 1, 2, 3)))

        __attribute__((diagnose_if(c && !n, "'memset' will set 0 bytes; maybe the arguments got flipped?", "warning"))) {

    return __builtin___memset_chk(s, c, n, __builtin_object_size(((s)), (0)));



}
# 178 "/home/awaszczak/Android/Sdk/ndk/25.1.8937393/toolchains/llvm/prebuilt/linux-x86_64/sysroot/usr/include/bits/fortify/string.h" 3 4
static __inline__ __attribute__((no_stack_protector)) __attribute__((__always_inline__))
char* stpncpy(char* const dst __attribute__((pass_object_size(1))), const char* const src __attribute__((pass_object_size(1))), size_t n)
        __attribute__((diagnose_as_builtin(__builtin_stpncpy, 1, 2, 3)))
        __attribute__((overloadable)) {
    size_t bos_dst = __builtin_object_size(((dst)), (1));
    size_t bos_src = __builtin_object_size(((src)), (1));


    if (bos_src == ((size_t) -1)) {
        return __builtin___stpncpy_chk(dst, src, n, bos_dst);
    }

    return __stpncpy_chk2(dst, src, n, bos_dst, bos_src);
}


static __inline__ __attribute__((no_stack_protector)) __attribute__((__always_inline__))
char* strncpy(char* const dst __attribute__((pass_object_size(1))), const char* const src __attribute__((pass_object_size(1))), size_t n)
        __attribute__((diagnose_as_builtin(__builtin_strncpy, 1, 2, 3)))
        __attribute__((overloadable)) {
    size_t bos_dst = __builtin_object_size(((dst)), (1));
    size_t bos_src = __builtin_object_size(((src)), (1));


    if (bos_src == ((size_t) -1)) {
        return __builtin___strncpy_chk(dst, src, n, bos_dst);
    }

    return __strncpy_chk2(dst, src, n, bos_dst, bos_src);
}


static __inline__ __attribute__((no_stack_protector)) __attribute__((__always_inline__))
size_t strlcpy(char* const dst __attribute__((pass_object_size(1))), const char* src, size_t size)
        __attribute__((overloadable))
        __attribute__((diagnose_if(((__builtin_object_size(((dst)), (1))) != ((size_t) -1) && (__builtin_object_size(((dst)), (1))) < (size)), "'strlcpy' called with size bigger than buffer", "error"))) {


    return __strlcpy_chk(dst, src, size, __builtin_object_size(((dst)), (1)));



}

static __inline__ __attribute__((no_stack_protector)) __attribute__((__always_inline__))
size_t strlcat(char* const dst __attribute__((pass_object_size(1))), const char* src, size_t size)
        __attribute__((overloadable))
        __attribute__((diagnose_if(((__builtin_object_size(((dst)), (1))) != ((size_t) -1) && (__builtin_object_size(((dst)), (1))) < (size)), "'strlcat' called with size bigger than buffer", "error"))) {


    return __strlcat_chk(dst, src, size, __builtin_object_size(((dst)), (1)));



}


static __inline__ __attribute__((no_stack_protector)) __attribute__((__always_inline__))
size_t strlen(const char* const s __attribute__((pass_object_size(0)))) __attribute__((overloadable)) {
    return __strlen_chk(s, __builtin_object_size(((s)), (0)));
}


static __inline__ __attribute__((no_stack_protector)) __attribute__((__always_inline__))
char* strchr(const char* const s __attribute__((pass_object_size(1))), int c) __attribute__((overloadable)) {

    size_t bos = __builtin_object_size(((s)), (1));

    if (bos != ((size_t) -1)) {
        return __strchr_chk(s, c, bos);
    }

    return __builtin_strchr(s, c);
}

static __inline__ __attribute__((no_stack_protector)) __attribute__((__always_inline__))
char* strrchr(const char* const s __attribute__((pass_object_size(1))), int c) __attribute__((overloadable)) {

    size_t bos = __builtin_object_size(((s)), (1));

    if (bos != ((size_t) -1)) {
        return __strrchr_chk(s, c, bos);
    }

    return __builtin_strrchr(s, c);
}
# 188 "/home/awaszczak/Android/Sdk/ndk/25.1.8937393/toolchains/llvm/prebuilt/linux-x86_64/sysroot/usr/include/string.h" 2 3 4
# 2 "/home/awaszczak/git/sa2/sa1/../src/lib/m4a/m4a.c" 2
# 1 "/home/awaszczak/git/sa2/sa1/../include/gba/types.h" 1



# 1 "/home/awaszczak/git/sa2/sa1/../include/gba/defines.h" 1




# 1 "/home/awaszczak/Android/Sdk/ndk/25.1.8937393/toolchains/llvm/prebuilt/linux-x86_64/lib64/clang/14.0.6/include/stddef.h" 1 3
# 6 "/home/awaszczak/git/sa2/sa1/../include/gba/defines.h" 2
# 16 "/home/awaszczak/git/sa2/sa1/../include/gba/defines.h"
# 1 "/home/awaszczak/git/sa2/sa1/../include/color.h" 1





typedef uint16_t ColorRaw;
typedef union Color {
    struct {
        uint16_t r : 5;
        uint16_t g : 5;
        uint16_t b : 5;
        uint16_t a : 1;
    } split;

    ColorRaw raw;
} Color;
# 17 "/home/awaszczak/git/sa2/sa1/../include/gba/defines.h" 2
# 67 "/home/awaszczak/git/sa2/sa1/../include/gba/defines.h"
extern uint8_t VRAM[(0x18000 + (0x800 * (14)))];
# 76 "/home/awaszczak/git/sa2/sa1/../include/gba/defines.h"
extern struct SoundMixerState *SOUND_INFO_PTR;
extern uint16_t INTR_CHECK;
extern void (*INTR_VECTOR)(void);

extern uint8_t EWRAM_START[0x40000];
extern uint8_t IWRAM_START[0x7E00];
extern ColorRaw PLTT[0x400/sizeof(uint16_t)];


extern uint8_t OAM[(128*0xC)];
# 144 "/home/awaszczak/git/sa2/sa1/../include/gba/defines.h"
typedef uint32_t winreg_t;
# 5 "/home/awaszczak/git/sa2/sa1/../include/gba/types.h" 2
# 26 "/home/awaszczak/git/sa2/sa1/../include/gba/types.h"
typedef uint8_t u8;
typedef uint16_t u16;
typedef uint32_t u32;
typedef uint64_t u64;
typedef int8_t s8;
typedef int16_t s16;
typedef int32_t s32;
typedef int64_t s64;



typedef u8 MetatileIndexType;
# 51 "/home/awaszczak/git/sa2/sa1/../include/gba/types.h"
typedef u16 int_vcount;




typedef volatile u8 vu8;
typedef volatile u16 vu16;
typedef volatile u32 vu32;
typedef volatile u64 vu64;
typedef volatile s8 vs8;
typedef volatile s16 vs16;
typedef volatile s32 vs32;
typedef volatile s64 vs64;

typedef float f32;
typedef double f64;

typedef u8 bool8;
typedef u16 bool16;
typedef u32 bool32;

struct BgCnt
{
    u16 priority:2;
    u16 charBaseBlock:2;
    u16 dummy:2;
    u16 mosaic:1;
    u16 palettes:1;
    u16 screenBaseBlock:5;
    u16 areaOverflowMode:1;
    u16 screenSize:2;
};
typedef volatile struct BgCnt vBgCnt;

struct PlttData
{
    u16 r:5;
    u16 g:5;
    u16 b:5;
    u16 unused_15:1;
};
# 187 "/home/awaszczak/git/sa2/sa1/../include/gba/types.h"
typedef struct __attribute__((packed)) OamDataShort { s16 x; s16 y; u32 affineMode:2; u32 objMode:2; u32 mosaic:1; u32 bpp:1; u32 shape:2; u32 matrixNum:5; u32 size:2; u32 padding:17; u16 tileNum:10; u16 priority:2; u16 paletteNum:4;} OamDataShort;;
# 207 "/home/awaszczak/git/sa2/sa1/../include/gba/types.h"
typedef union {
    struct {
               s16 x;
               s16 y;

               u32 affineMode:2;
             u32 objMode:2;
             u32 mosaic:1;
             u32 bpp:1;
             u32 shape:2;

               u32 matrixNum:5;
               u32 size:2;
               u32 padding:17;

               u16 tileNum:10;
             u16 priority:2;
             u16 paletteNum:4;

               u16 fractional:8;
             u16 integer:7;
             u16 sign:1;
    } split;

    struct {
        s16 x;
        s16 y;
        u16 attr0;
        u16 attr1;
        u16 attr2;
        u16 affineParam;
    } all;

    u16 raw[6];
} OamData;
# 272 "/home/awaszczak/git/sa2/sa1/../include/gba/types.h"
static inline void OAM_SET_GBA_ATTR0(OamData *oam, u16 attr0) {



    s32 y = attr0 & 0xFF;
    if (y > 240) y -= 256;
    oam->split.y = (s16)y;
    oam->split.affineMode = (attr0 >> 8) & 3;
    oam->split.objMode = (attr0 >> 10) & 3;
    oam->split.mosaic = (attr0 >> 12) & 1;
    oam->split.bpp = (attr0 >> 13) & 1;
    oam->split.shape = (attr0 >> 14) & 3;
}

static inline void OAM_SET_GBA_ATTR1(OamData *oam, u16 attr1) {
    s32 x = attr1 & 0x1FF;
    if (x >= 0x100) x -= 0x200;
    oam->split.x = (s16)x;
    oam->split.matrixNum = (attr1 >> 9) & 0x1F;
    oam->split.size = (attr1 >> 14) & 3;
}

static inline void OAM_SET_GBA_ATTR2(OamData *oam, u16 attr2) {
    oam->split.tileNum = attr2 & 0x3FF;
    oam->split.priority = (attr2 >> 10) & 3;
    oam->split.paletteNum = (attr2 >> 12) & 0xF;
}

static inline u16 OAM_GET_GBA_ATTR0(const OamData *oam) {
    return (u16)((oam->split.y & 0xFF)
        | (oam->split.affineMode << 8)
        | (oam->split.objMode << 10)
        | (oam->split.mosaic << 12)
        | (oam->split.bpp << 13)
        | (oam->split.shape << 14));
}

static inline u16 OAM_GET_GBA_ATTR1(const OamData *oam) {
    return (u16)((oam->split.x & 0x1FF)
        | (oam->split.matrixNum << 9)
        | (oam->split.size << 14));
}

static inline u16 OAM_GET_GBA_ATTR2(const OamData *oam) {
    return (u16)(oam->split.tileNum
        | (oam->split.priority << 10)
        | (oam->split.paletteNum << 12));
}
# 378 "/home/awaszczak/git/sa2/sa1/../include/gba/types.h"
struct BgAffineSrcData
{
    s32 texX;
    s32 texY;
    s16 scrX;
    s16 scrY;
    s16 sx;
    s16 sy;
    u16 alpha;
};

struct BgAffineDstData
{
    s16 pa;
    s16 pb;
    s16 pc;
    s16 pd;
    s32 dx;
    s32 dy;
};

struct ObjAffineSrcData
{
    s16 xScale;
    s16 yScale;
    u16 rotation;
};


struct SioNormalCnt
{
    u16 sck_I_O:1;
    u16 sck:1;
    u16 ackRecv:1;
    u16 ackSend:1;
    u16 unused_6_4:3;
    u16 enable:1;
    u16 unused_11_8:4;
    u16 mode:2;
    u16 ifEnable:1;
    u16 unused_15:1;
    u8 data;
    u8 unused_31_24;
};
# 432 "/home/awaszczak/git/sa2/sa1/../include/gba/types.h"
struct SioMultiCnt
{
    u16 baudRate:2;
    u16 si:1;
    u16 sd:1;
    u16 id:2;
    u16 error:1;
    u16 enable:1;
    u16 unused_11_8:4;
    u16 mode:2;
    u16 ifEnable:1;
    u16 unused_15:1;
    u16 data;
};
# 457 "/home/awaszczak/git/sa2/sa1/../include/gba/types.h"
struct SioUartCnt
{
    u16 baudRate:2;
    u16 ctsEnable:1;
    u16 paritySelect:1;
    u16 transDataFull:1;
    u16 recvDataEmpty:1;
    u16 error:1;
    u16 length:1;
    u16 fifoEnable:1;
    u16 parityEnable:1;
    u16 transEnable:1;
    u16 recvEnable:1;
    u16 mode:2;
    u16 ifEnable:1;
    u16 unused_15:1;
    u8 data;
    u8 unused_31_24;
};
# 485 "/home/awaszczak/git/sa2/sa1/../include/gba/types.h"
struct JoyCnt
{
    u8 ifReset:1;
    u8 ifRecv:1;
    u8 ifSend:1;
    u8 unused_5_3:3;
    u8 ifEnable:1;
    u8 unused_7:1;
};


struct JoyStat
{
    u8 unused_0:1;
    u8 recv:1;
    u8 unused_2:1;
    u8 send:1;
    u8 flags:2;
    u8 unused_7_6:2;
};


struct RCnt
{
    u8 sc:1;
    u8 sd:1;
    u8 si:1;
    u8 so:1;
    u8 sc_i_o:1;
    u8 sd_i_o:1;
    u8 si_i_o:1;
    u8 so_i_o:1;
    u8 ifEnable:1;
    u8 unused_13_9:5;
    u8 sioModeMaster:2;
};
# 3 "/home/awaszczak/git/sa2/sa1/../src/lib/m4a/m4a.c" 2
# 1 "/home/awaszczak/git/sa2/sa1/../include/lib/m4a/m4a_internal.h" 1



# 1 "/home/awaszczak/git/sa2/sa1/../include/gba/gba.h" 1




# 1 "/home/awaszczak/git/sa2/sa1/../include/gba/io_reg.h" 1
# 11 "/home/awaszczak/git/sa2/sa1/../include/gba/io_reg.h"
typedef uint8_t reg_u8;
typedef uint16_t reg_u16;
typedef uint32_t reg_u32;
typedef int16_t reg_s16;
typedef int32_t reg_s32;
typedef uint64_t reg_u64;
typedef winreg_t reg_wint;
# 34 "/home/awaszczak/git/sa2/sa1/../include/gba/io_reg.h"
extern unsigned char REG_BASE[0x400];
# 6 "/home/awaszczak/git/sa2/sa1/../include/gba/gba.h" 2

# 1 "/home/awaszczak/git/sa2/sa1/../include/gba/multiboot.h" 1








struct MultiBootParam
{
    u32 system_work[5];
    u8 handshake_data;
    u8 padding;
    u16 handshake_timeout;
    u8 probe_count;
    u8 client_data[3];
    u8 palette_data;
    u8 response_bit;
    u8 client_bit;
    u8 reserved1;
    u8 *boot_srcp;
    u8 *boot_endp;
    u8 *masterp;
    u8 *reserved2[3];
    u32 system_work2[4];
    u8 sendflag;
    u8 probe_target_bit;
    u8 check_wait;
    u8 server_type;
};
# 8 "/home/awaszczak/git/sa2/sa1/../include/gba/gba.h" 2
# 1 "/home/awaszczak/git/sa2/sa1/../include/gba/syscall.h" 1
# 14 "/home/awaszczak/git/sa2/sa1/../include/gba/syscall.h"
typedef struct {
    u32 srcLength : 16;
    u32 srcWidth : 8;
    u32 dstWidth : 8;
} BitUnPackData;

void SoftReset(u32 resetFlags);
void SoftResetExram(u32 resetFlags);

void RegisterRamReset(u32 resetFlags);

void VBlankIntrWait(void);

u16 Sqrt(u32 num);

u16 ArcTan2(s16 x, s16 y);





void CpuSet(const void *src, void *dest, u32 control);



void CpuFastSet(const void *src, void *dest, u32 control);

void BgAffineSet(struct BgAffineSrcData *src, struct BgAffineDstData *dest, s32 count);

void ObjAffineSet(struct ObjAffineSrcData *src, void *dest, s32 count, s32 offset);

void LZ77UnCompWram(const void *src, void *dest);

void LZ77UnCompVram(const void *src, void *dest);

void RLUnCompWram(const void *src, void *dest);

void RLUnCompVram(const void *src, void *dest);

int MultiBoot(struct MultiBootParam *mp);
# 72 "/home/awaszczak/git/sa2/sa1/../include/gba/syscall.h"
void SoundBiasReset(void);

void SoundBiasSet(void);
# 9 "/home/awaszczak/git/sa2/sa1/../include/gba/gba.h" 2
# 1 "/home/awaszczak/git/sa2/sa1/../include/gba/macro.h" 1



# 1 "/home/awaszczak/git/sa2/sa1/../include/gba/cpuset_macros.h" 1
# 5 "/home/awaszczak/git/sa2/sa1/../include/gba/macro.h" 2
# 1 "/home/awaszczak/git/sa2/sa1/../include/gba/dma_macros.h" 1



# 1 "/home/awaszczak/git/sa2/sa1/../include/config.h" 1
# 5 "/home/awaszczak/git/sa2/sa1/../include/gba/dma_macros.h" 2
# 16 "/home/awaszczak/git/sa2/sa1/../include/gba/dma_macros.h"
extern void DmaSet(int dmaNum, const void *src, void *dest, u32 control);
# 88 "/home/awaszczak/git/sa2/sa1/../include/gba/dma_macros.h"
extern void DmaStop(int dmaNum);
static inline void SlowDmaStop(int dmaNum) { DmaStop(dmaNum); }
# 183 "/home/awaszczak/git/sa2/sa1/../include/gba/dma_macros.h"
extern void DmaWait(int dmaNum);
# 6 "/home/awaszczak/git/sa2/sa1/../include/gba/macro.h" 2
# 10 "/home/awaszczak/git/sa2/sa1/../include/gba/gba.h" 2
# 1 "/home/awaszczak/git/sa2/sa1/../include/gba/isagbprint.h" 1
# 13 "/home/awaszczak/git/sa2/sa1/../include/gba/isagbprint.h"
void AGBPrintInit(void);
void AGBPutc(const char cChr);
void AGBPrint(const char *pBuf);
void AGBPrintf(const char *pBuf, ...);
void AGBPrintFlush1Block(void);
void AGBPrintFlush(void);
void AGBAssert(const char *pFile, int nLine, const char *pExpression, int nStopProgram);
# 11 "/home/awaszczak/git/sa2/sa1/../include/gba/gba.h" 2
# 5 "/home/awaszczak/git/sa2/sa1/../include/lib/m4a/m4a_internal.h" 2
# 111 "/home/awaszczak/git/sa2/sa1/../include/lib/m4a/m4a_internal.h"
typedef s32 fixed8_24;






struct MP2KTrack;
struct MP2KPlayerState;

typedef void (*MP2KEventNoteFunc)(u8, struct MP2KPlayerState *, struct MP2KTrack *);
typedef void (*MP2KEventFunc)(struct MP2KPlayerState *, struct MP2KTrack *);
typedef void (*CgbSoundFunc)(void);
typedef void (*CgbOscOffFunc)(u8);
typedef u32 (*MidiKeyToCgbFreqFunc)(u8, u8, u8);
typedef void (*ExtVolPitFunc)(void);
typedef void (*MPlayMainFunc)(struct MP2KPlayerState *);

struct MixerSource {
    u8 status;
    u8 type;
    u8 rightVol;
    u8 leftVol;

    union {
        struct {
            u8 attack;
            u8 decay;
            u8 sustain;
            u8 release;
            u8 key;
            u8 envelopeVol;

            u8 envelopeGoal;
            u8 envelopeCtr;

            u8 echoVol;
            u8 echoLen;
            u8 padding1;
            u8 padding2;
            u8 gateTime;
            u8 untransposedKey;
            u8 velocity;
            u8 priority;
            u8 rhythmPan;
            u8 padding3;
            u8 padding4;
            u8 padding5;

            u8 padding6;
            u8 sustainGoal;
            u8 nrx4;
            u8 pan;

            u8 panMask;
            u8 cgbStatus;
            u8 length;
            u8 sweep;

            u32 freq;
        } cgb;
        struct {
            u8 attack;
            u8 decay;
            u8 sustain;
            u8 release;
            u8 key;
            u8 envelopeVol;

            u8 envelopeVolR;
            u8 envelopeVolL;

            u8 echoVol;
            u8 echoLen;
            u8 padding1;
            u8 padding2;
            u8 gateTime;
            u8 untransposedKey;
            u8 velocity;
            u8 priority;
            u8 rhythmPan;
            u8 padding3;
            u8 padding4;
            u8 padding5;

            u32 ct;
            fixed8_24 fw;

            u32 freq;
        } sound;
    } data;

    void *wav;
    void *current;

    struct MP2KTrack *track;
    struct MixerSource *prev;
    struct MixerSource *next;
    u32 padding7;
    u32 blockCount;
};

struct SoundMixerState {


    u32 lockStatus;

    vu8 dmaCounter;


    u8 reverb;
    u8 numChans;
    u8 masterVol;
    u8 freqOption;

    u8 extensionFlags;
    u8 cgbCounter15;
    u8 framesPerDmaCycle;
    u8 maxScanlines;
    u8 gap[3];
    s32 samplesPerFrame;
    s32 sampleRate;



    float sampleRateReciprocal;

    struct MixerSource *cgbChans;
    MPlayMainFunc MPlayMainHead;
    struct MP2KPlayerState *musicPlayerHead;
    CgbSoundFunc CgbSound;
    CgbOscOffFunc CgbOscOff;
    MidiKeyToCgbFreqFunc MidiKeyToCgbFreq;
    void **MPlayJumpTable;
    MP2KEventNoteFunc plynote;
    ExtVolPitFunc ExtVolPit;
    void *reserved2;
    void *reserved3;
    void *reversed4;
    void *reserved5;
    struct MixerSource chans[12];



    fixed8_24 pcmBuffer[4907 * 2];

};

struct MP2KVoiceGroup {
    u8 type;
    u8 drumKey;
    u8 cgbLength;
    u8 pan_sweep;
    union {
        struct {
            struct WaveData *wav;
            u8 attack;
            u8 decay;
            u8 sustain;
            u8 release;
        } sound;
        struct {
            struct MP2KVoiceGroup *group;
            u8 *keySplitTable;
        } keySplit;
    } data;
};

struct WaveData {
    u16 type;
    u16 status;

    u32 freq;
    u32 loopStart;
    u32 size;
    s8 data[1];
};

struct MP2KSongHeader {
    u8 trackCount;
    u8 blockCount;
    u8 priority;
    u8 reverb;
    struct MP2KVoiceGroup *voicegroup;
    u8 *part[1];
};

struct MP2KTrack {
    u8 status;
    u8 wait;
    u8 patternLevel;
    u8 repeatCount;
    u8 gateTime;
    u8 key;
    u8 velocity;
    u8 runningStatus;
    s8 keyShiftCalculated;
    u8 pitchCalculated;
    s8 keyShift;
    s8 keyShiftPublic;
    s8 tune;
    u8 pitchPublic;
    s8 bend;
    u8 bendRange;
    u8 volRightCalculated;
    u8 volLeftCalculated;
    u8 vol;
    u8 volPublic;
    s8 pan;
    s8 panPublic;
    s8 modCalculated;
    u8 modDepth;
    u8 modType;
    u8 lfoSpeed;
    u8 lfoSpeedCounter;
    u8 lfoDelay;
    u8 lfoDelayCounter;
    u8 priority;
    u8 echoVolume;
    u8 echoLength;

    struct MixerSource *chan;
    struct MP2KVoiceGroup voicegroup;

    u8 gap[10];
    u16 unk_3A;
    u32 unk_3C;
    u8 *cmdPtr;
    u8 *patternStack[3];
};

struct MP2KPlayerState {
    struct MP2KSongHeader *songHeader;
    u32 status;
    u8 trackCount;
    u8 priority;
    u8 cmd;
    bool8 checkSongPriority;
    u32 clock;
    u8 padding[8];
    u8 *memAccArea;
    u16 tempoRawBPM;
    u16 tempoScale;
    u16 tempoInterval;
    u16 tempoCounter;
    u16 fadeInterval;
    u16 fadeCounter;
    u16 fadeOV;
    struct MP2KTrack *tracks;
    struct MP2KVoiceGroup *voicegroup;
    u32 lockStatus;
    MPlayMainFunc nextPlayerFunc;
    struct MP2KPlayerState *nextPlayer;
};

struct MusicPlayer {
    struct MP2KPlayerState *info;
    struct MP2KTrack *track;
    u8 numTracks;
    u16 unk_A;
};

struct Song {
    struct MP2KSongHeader *header;
    u16 ms;
    u16 me;
};

typedef void (*XcmdFunc)(struct MP2KPlayerState *, struct MP2KTrack *);

extern char SoundMainRAM[];
extern u8 gMPlayMemAccArea[];
extern void *gMPlayJumpTable[];
extern struct MixerSource gCgbChans[];

extern const struct MusicPlayer gMPlayTable[4];
extern const struct Song gSongTable[];
extern const XcmdFunc gXcmdTable[];

extern const u8 gClockTable[];
extern const u8 gScaleTable[];
extern const u32 gFreqTable[];
extern const u16 gPcmSamplesPerVBlankTable[];
extern void *const gMPlayJumpTableTemplate[];

extern const u8 gCgbScaleTable[];
extern const s16 gCgbFreqTable[];
extern const u8 gNoiseTable[];
extern const u8 gCgb3Vol[];






u32 MidiKeyToFreq(struct WaveData *wav, u8 key, u8 fineAdjust);
u32 umul3232H32(u32 multiplier, u32 multiplicand);
void SoundMain(void);
void SoundMainBTM(void *ptr);
void TrackStop(struct MP2KPlayerState *player, struct MP2KTrack *track);
void MP2KPlayerMain(struct MP2KPlayerState *);

void ClearChain(struct MixerSource *chan);
void MP2KClearChain(struct MixerSource *chan);

void MPlayContinue(struct MP2KPlayerState *mplayInfo);
void MPlayStart(struct MP2KPlayerState *mplayInfo, struct MP2KSongHeader *songHeader);
void MPlayStop(struct MP2KPlayerState *mplayInfo);
void FadeOutBody(struct MP2KPlayerState *mplayInfo);
void TrkVolPitSet(struct MP2KPlayerState *mplayInfo, struct MP2KTrack *track);
void MPlayFadeOut(struct MP2KPlayerState *mplayInfo, u16 speed);
void Clear64byte(void *addr);
void SoundInit(struct SoundMixerState *soundInfo);
void MPlayExtender(struct MixerSource *cgbChans);
void m4aSoundMode(u32 mode);
void MPlayOpen(struct MP2KPlayerState *mplayInfo, struct MP2KTrack *tracks, u8 trackCount);
void CgbSound(void);
void CgbOscOff(u8);
void CgbModVol(struct MixerSource *chan);
u32 MidiKeyToCgbFreq(u8, u8, u8);
void MPlayJumpTableCopy(void **mplayJumpTable);
void SampleFreqSet(u32 freq);
void m4aSoundVSyncOn(void);
void m4aSoundVSyncOff(void);

void m4aMPlayTempoControl(struct MP2KPlayerState *mplayInfo, u16 tempo);
void m4aMPlayVolumeControl(struct MP2KPlayerState *mplayInfo, u16 trackBits, u16 volume);
void m4aMPlayPitchControl(struct MP2KPlayerState *mplayInfo, u16 trackBits, s16 pitch);
void m4aMPlayPanpotControl(struct MP2KPlayerState *mplayInfo, u16 trackBits, s8 pan);
void ClearModM(struct MP2KTrack *track);
void m4aMPlayModDepthSet(struct MP2KPlayerState *mplayInfo, u16 trackBits, u8 modDepth);
void m4aMPlayLFOSpeedSet(struct MP2KPlayerState *mplayInfo, u16 trackBits, u8 lfoSpeed);


void MP2K_event_fine(struct MP2KPlayerState *, struct MP2KTrack *);
void MP2K_event_goto(struct MP2KPlayerState *, struct MP2KTrack *);
void MP2K_event_patt(struct MP2KPlayerState *, struct MP2KTrack *);
void MP2K_event_pend(struct MP2KPlayerState *, struct MP2KTrack *);
void MP2K_event_rept(struct MP2KPlayerState *, struct MP2KTrack *);
void MP2K_event_memacc(struct MP2KPlayerState *, struct MP2KTrack *);
void MP2K_event_prio(struct MP2KPlayerState *, struct MP2KTrack *);
void MP2K_event_tempo(struct MP2KPlayerState *, struct MP2KTrack *);
void MP2K_event_keysh(struct MP2KPlayerState *, struct MP2KTrack *);
void MP2K_event_voice(struct MP2KPlayerState *, struct MP2KTrack *);
void MP2K_event_vol(struct MP2KPlayerState *, struct MP2KTrack *);
void MP2K_event_pan(struct MP2KPlayerState *, struct MP2KTrack *);
void MP2K_event_bend(struct MP2KPlayerState *, struct MP2KTrack *);
void MP2K_event_bendr(struct MP2KPlayerState *, struct MP2KTrack *);
void MP2K_event_lfos(struct MP2KPlayerState *, struct MP2KTrack *);
void MP2K_event_lfodl(struct MP2KPlayerState *, struct MP2KTrack *);
void MP2K_event_mod(struct MP2KPlayerState *, struct MP2KTrack *);
void MP2K_event_modt(struct MP2KPlayerState *, struct MP2KTrack *);
void MP2K_event_tune(struct MP2KPlayerState *, struct MP2KTrack *);
void MP2K_event_port(struct MP2KPlayerState *, struct MP2KTrack *);
void MP2K_event_xcmd(struct MP2KPlayerState *, struct MP2KTrack *);
void MP2K_event_endtie(struct MP2KPlayerState *, struct MP2KTrack *);
void MP2K_event_nxx(u8 clock, struct MP2KPlayerState *, struct MP2KTrack *);


void MP2K_event_xxx(struct MP2KPlayerState *, struct MP2KTrack *);
void MP2K_event_xwave(struct MP2KPlayerState *, struct MP2KTrack *);
void MP2K_event_xtype(struct MP2KPlayerState *, struct MP2KTrack *);
void MP2K_event_xatta(struct MP2KPlayerState *, struct MP2KTrack *);
void MP2K_event_xdeca(struct MP2KPlayerState *, struct MP2KTrack *);
void MP2K_event_xsust(struct MP2KPlayerState *, struct MP2KTrack *);
void MP2K_event_xrele(struct MP2KPlayerState *, struct MP2KTrack *);
void MP2K_event_xiecv(struct MP2KPlayerState *, struct MP2KTrack *);
void MP2K_event_xiecl(struct MP2KPlayerState *, struct MP2KTrack *);
void MP2K_event_xleng(struct MP2KPlayerState *, struct MP2KTrack *);
void MP2K_event_xswee(struct MP2KPlayerState *, struct MP2KTrack *);
void MP2K_event_xcmd_0C(struct MP2KPlayerState *, struct MP2KTrack *);
void MP2K_event_xcmd_0D(struct MP2KPlayerState *, struct MP2KTrack *);
# 4 "/home/awaszczak/git/sa2/sa1/../src/lib/m4a/m4a.c" 2

# 1 "/home/awaszczak/Android/Sdk/ndk/25.1.8937393/toolchains/llvm/prebuilt/linux-x86_64/sysroot/usr/include/stdio.h" 1 3 4
# 44 "/home/awaszczak/Android/Sdk/ndk/25.1.8937393/toolchains/llvm/prebuilt/linux-x86_64/sysroot/usr/include/stdio.h" 3 4
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
# 6 "/home/awaszczak/git/sa2/sa1/../src/lib/m4a/m4a.c" 2


# 1 "/home/awaszczak/git/sa2/sa1/include/platform/shared/audio/cgb_audio.h" 1





struct AudioCGB {
    u16 ch1Freq;
    u8 ch1SweepCounter;
    u8 ch1SweepCounterI;
    bool8 ch1SweepDir;
    u8 ch1SweepShift;
    u8 Vol[4];
    u8 VolI[4];
    u8 Len[4];
    u8 LenI[4];
    bool8 LenOn[4];
    u8 EnvCounter[4];
    u8 EnvCounterI[4];
    bool8 EnvDir[4];
    bool8 DAC[4];
    fixed8_24 WAVRAM[32];
    u16 ch4LFSR[2];
    fixed8_24 outBuffer[4907 * 2];
};

void cgb_audio_init(u32 rate);
void cgb_set_sweep(u8 sweep);
void cgb_set_wavram();
void cgb_toggle_length(u8 channel, bool8 state);
void cgb_set_length(u8 channel, u8 length);
void cgb_set_envelope(u8 channel, u8 envelope);
void cgb_trigger_note(u8 channel);
void cgb_audio_generate(u16 samplesPerFrame);
fixed8_24 *cgb_get_buffer();
# 9 "/home/awaszczak/git/sa2/sa1/../src/lib/m4a/m4a.c" 2
# 1 "/home/awaszczak/git/sa2/sa1/include/platform/platform.h" 1





extern void Platform_QueueAudio(const s16 *data, u32 numBytes);
extern void Platform_ClearQueuedAudio(void);
extern void Platform_ProcessBackgroundsCopyQueue(void);
# 10 "/home/awaszczak/git/sa2/sa1/../src/lib/m4a/m4a.c" 2








           struct MP2KTrack gMPlayTrack_BGM[16] = {};
           struct MP2KTrack gMPlayTrack_SE1[16] = {};
           struct MP2KTrack gMPlayTrack_SE2[16] = {};
           struct MP2KTrack gMPlayTrack_SE3[16] = {};
# 31 "/home/awaszczak/git/sa2/sa1/../src/lib/m4a/m4a.c"
           struct SoundMixerState gSoundInfo = {};
           void *gMPlayJumpTable[36] = {};
           struct MixerSource gCgbChans[4] = {};


           struct MP2KPlayerState gMPlayInfo_BGM = {};
           struct MP2KPlayerState gMPlayInfo_SE1 = {};
           struct MP2KPlayerState gMPlayInfo_SE2 = {};
           u8 gMPlayMemAccArea[4 * sizeof(uintptr_t)] = {};
           struct MP2KPlayerState gMPlayInfo_SE3 = {};

static void MP2K_event_null(void);

u32 MidiKeyToFreq(struct WaveData *wav, u8 key, u8 fineAdjust)
{
    u32 val1;
    u32 val2;
    u32 fineAdjustShifted = fineAdjust << 24;

    if (key > 178) {
        key = 178;
        fineAdjustShifted = 255 << 24;
    }

    val1 = gScaleTable[key];
    val1 = gFreqTable[val1 & 0xF] >> (val1 >> 4);

    val2 = gScaleTable[key + 1];
    val2 = gFreqTable[val2 & 0xF] >> (val2 >> 4);

    return umul3232H32(wav->freq, val1 + umul3232H32(val2 - val1, fineAdjustShifted));
}

__attribute__((unused)) static void UnusedFunc(void) { }

void MPlayContinue(struct MP2KPlayerState *mplayInfo)
{
    if (mplayInfo->lockStatus == 0x68736D53) {
        mplayInfo->lockStatus++;
        mplayInfo->status &= ~0x80000000;
        mplayInfo->lockStatus = 0x68736D53;
    }
}

void MPlayFadeOut(struct MP2KPlayerState *mplayInfo, u16 speed)
{
    if (mplayInfo->lockStatus == 0x68736D53) {
        mplayInfo->lockStatus++;
        mplayInfo->fadeCounter = speed;
        mplayInfo->fadeInterval = speed;
        mplayInfo->fadeOV = (64 << 2);
        mplayInfo->lockStatus = 0x68736D53;
    }
}

void m4aSoundInit(void)
{
    s32 i;




    SoundInit(&gSoundInfo);
    MPlayExtender(gCgbChans);
    m4aSoundMode((0x00900000 | 0x00030000 | (15 << 12) | (5 << 8)));

    for (i = 0; i < 4; i++) {
        struct MP2KPlayerState *mplayInfo = gMPlayTable[i].info;
        MPlayOpen(mplayInfo, gMPlayTable[i].track, gMPlayTable[i].numTracks);
        mplayInfo->checkSongPriority = gMPlayTable[i].unk_A;
        mplayInfo->memAccArea = gMPlayMemAccArea;
    }
}

void m4aSoundMain(void) { SoundMain(); }

void m4aSongNumStart(u16 n)
{
    const struct MusicPlayer *mplayTable = gMPlayTable;
    const struct Song *songTable = gSongTable;
    const struct Song *song = &songTable[n];
    const struct MusicPlayer *mplay = &mplayTable[song->ms];

    MPlayStart(mplay->info, song->header);
}

void m4aSongNumStartOrChange(u16 n)
{
    const struct MusicPlayer *mplayTable = gMPlayTable;
    const struct Song *songTable = gSongTable;
    const struct Song *song = &songTable[n];
    const struct MusicPlayer *mplay = &mplayTable[song->ms];

    if (mplay->info->songHeader != song->header) {
        MPlayStart(mplay->info, song->header);
    } else {
        if ((mplay->info->status & 0x0000ffff) == 0 || (mplay->info->status & 0x80000000)) {
            MPlayStart(mplay->info, song->header);
        }
    }
}

void m4aSongNumStartOrContinue(u16 n)
{
    const struct MusicPlayer *mplayTable = gMPlayTable;
    const struct Song *songTable = gSongTable;
    const struct Song *song = &songTable[n];
    const struct MusicPlayer *mplay = &mplayTable[song->ms];

    if (mplay->info->songHeader != song->header)
        MPlayStart(mplay->info, song->header);
    else if ((mplay->info->status & 0x0000ffff) == 0)
        MPlayStart(mplay->info, song->header);
    else if (mplay->info->status & 0x80000000)
        MPlayContinue(mplay->info);
}

void m4aSongNumStop(u16 n)
{
    const struct MusicPlayer *mplayTable = gMPlayTable;
    const struct Song *songTable = gSongTable;
    const struct Song *song = &songTable[n];
    const struct MusicPlayer *mplay = &mplayTable[song->ms];

    if (mplay->info->songHeader == song->header)
        MPlayStop(mplay->info);
}

void m4aSongNumContinue(u16 n)
{
    const struct MusicPlayer *mplayTable = gMPlayTable;
    const struct Song *songTable = gSongTable;
    const struct Song *song = &songTable[n];
    const struct MusicPlayer *mplay = &mplayTable[song->ms];

    if (mplay->info->songHeader == song->header)
        MPlayContinue(mplay->info);
}

void m4aMPlayAllStop(void)
{
    s32 i;

    for (i = 0; i < 4; i++)
        MPlayStop(gMPlayTable[i].info);
}

void m4aMPlayContinue(struct MP2KPlayerState *mplayInfo) { MPlayContinue(mplayInfo); }

void m4aMPlayAllContinue(void)
{
    s32 i;

    for (i = 0; i < 4; i++)
        MPlayContinue(gMPlayTable[i].info);
}

void m4aMPlayFadeOut(struct MP2KPlayerState *mplayInfo, u16 speed) { MPlayFadeOut(mplayInfo, speed); }

void m4aMPlayFadeOutTemporarily(struct MP2KPlayerState *mplayInfo, u16 speed)
{
    if (mplayInfo->lockStatus == 0x68736D53) {
        mplayInfo->lockStatus++;
        mplayInfo->fadeCounter = speed;
        mplayInfo->fadeInterval = speed;
        mplayInfo->fadeOV = (64 << 2) | 0x0001;
        mplayInfo->lockStatus = 0x68736D53;
    }
}

void m4aMPlayFadeIn(struct MP2KPlayerState *mplayInfo, u16 speed)
{
    if (mplayInfo->lockStatus == 0x68736D53) {
        mplayInfo->lockStatus++;
        mplayInfo->fadeCounter = speed;
        mplayInfo->fadeInterval = speed;
        mplayInfo->fadeOV = (0 << 2) | 0x0002;
        mplayInfo->status &= ~0x80000000;
        mplayInfo->lockStatus = 0x68736D53;
    }
}

void m4aMPlayImmInit(struct MP2KPlayerState *mplayInfo)
{
    s32 trackCount = mplayInfo->trackCount;
    struct MP2KTrack *track = mplayInfo->tracks;

    while (trackCount > 0) {
        if (track->status & 0x80) {
            if (track->status & 0x40) {
                Clear64byte(track);
                track->status = 0x80;
                track->bendRange = 2;
                track->volPublic = 64;
                track->lfoSpeed = 22;
                track->voicegroup.type = 1;
            }
        }

        trackCount--;
        track++;
    }
}

void MPlayExtender(struct MixerSource *cgbChans)
{
    struct SoundMixerState *soundInfo;
    u32 lockStatus;

    (*(reg_u16 *)(REG_BASE + ((((0x40 + sizeof(winreg_t) * 6) + 4) + 2) + 2) + 2 + 10 + 0x24)) = 0x0080 | 0x0008 | 0x0004 | 0x0002 | 0x0001;
    (*(reg_u16 *)(REG_BASE + ((((0x40 + sizeof(winreg_t) * 6) + 4) + 2) + 2) + 2 + 10 + 0x20)) = 0;
    (*(reg_u8 *)(REG_BASE + ((((0x40 + sizeof(winreg_t) * 6) + 4) + 2) + 2) + 2 + 10 + 0x3)) = 0x8;
    (*(reg_u8 *)(REG_BASE + ((((0x40 + sizeof(winreg_t) * 6) + 4) + 2) + 2) + 2 + 10 + 0x9)) = 0x8;
    (*(reg_u8 *)(REG_BASE + ((((0x40 + sizeof(winreg_t) * 6) + 4) + 2) + 2) + 2 + 10 + 0x19)) = 0x8;
    (*(reg_u8 *)(REG_BASE + ((((0x40 + sizeof(winreg_t) * 6) + 4) + 2) + 2) + 2 + 10 + 0x5)) = 0x80;
    (*(reg_u8 *)(REG_BASE + ((((0x40 + sizeof(winreg_t) * 6) + 4) + 2) + 2) + 2 + 10 + 0xD)) = 0x80;
    (*(reg_u8 *)(REG_BASE + ((((0x40 + sizeof(winreg_t) * 6) + 4) + 2) + 2) + 2 + 10 + 0x1d)) = 0x80;
    (*(reg_u8 *)(REG_BASE + ((((0x40 + sizeof(winreg_t) * 6) + 4) + 2) + 2) + 2 + 10 + 0x10)) = 0;
    (*(reg_u8 *)(REG_BASE + ((((0x40 + sizeof(winreg_t) * 6) + 4) + 2) + 2) + 2 + 10 + 0x20)) = 0x77;


    for (u8 i = 0; i < 4; i++) {
        cgb_set_envelope(i, 8);
        cgb_trigger_note(i);
    }


    soundInfo = SOUND_INFO_PTR;

    lockStatus = soundInfo->lockStatus;

    if (lockStatus != 0x68736D53)
        return;

    soundInfo->lockStatus++;

    gMPlayJumpTable[8] = MP2K_event_memacc;
    gMPlayJumpTable[17] = MP2K_event_lfos;
    gMPlayJumpTable[19] = MP2K_event_mod;
    gMPlayJumpTable[28] = MP2K_event_xcmd;
    gMPlayJumpTable[29] = MP2K_event_endtie;
    gMPlayJumpTable[30] = SampleFreqSet;
    gMPlayJumpTable[31] = TrackStop;
    gMPlayJumpTable[32] = FadeOutBody;
    gMPlayJumpTable[33] = TrkVolPitSet;

    soundInfo->cgbChans = cgbChans;
    soundInfo->CgbSound = CgbSound;
    soundInfo->CgbOscOff = CgbOscOff;
    soundInfo->MidiKeyToCgbFreq = MidiKeyToCgbFreq;
    soundInfo->maxScanlines = 0;

    { vu32 tmp = (vu32)(0); CpuSet((void *)&tmp, cgbChans, 0x04000000 | 0x01000000 | ((sizeof(struct MixerSource) * 4)/(32/8) & 0x1FFFFF)); };

    cgbChans[0].type = 1;
    cgbChans[0].data.cgb.panMask = 0x11;
    cgbChans[1].type = 2;
    cgbChans[1].data.cgb.panMask = 0x22;
    cgbChans[2].type = 3;
    cgbChans[2].data.cgb.panMask = 0x44;
    cgbChans[3].type = 4;
    cgbChans[3].data.cgb.panMask = 0x88;

    soundInfo->lockStatus = lockStatus;
}





void ClearChain(struct MixerSource *chan)
{
    void (*func)(void *) = *(&gMPlayJumpTable[34]);
    func(chan);
}

void Clear64byte(void *x)
{
    void (*func)(void *) = *(&gMPlayJumpTable[35]);
    func(x);
}

void SoundInit(struct SoundMixerState *soundInfo)
{
    soundInfo->lockStatus = 0;
# 333 "/home/awaszczak/git/sa2/sa1/../src/lib/m4a/m4a.c"
    SOUND_INFO_PTR = soundInfo;
    { vu32 tmp = (vu32)(0); CpuSet((void *)&tmp, soundInfo, 0x04000000 | 0x01000000 | ((sizeof(struct SoundMixerState))/(32/8) & 0x1FFFFF)); };

    soundInfo->numChans = 8;
    soundInfo->masterVol = 15;
    soundInfo->plynote = MP2K_event_nxx;
    soundInfo->CgbSound = MP2K_event_null;
    soundInfo->CgbOscOff = (CgbOscOffFunc)MP2K_event_null;
    soundInfo->MidiKeyToCgbFreq = (MidiKeyToCgbFreqFunc)MP2K_event_null;
    soundInfo->ExtVolPit = (ExtVolPitFunc)MP2K_event_null;

    MPlayJumpTableCopy((void **)gMPlayJumpTable);

    soundInfo->MPlayJumpTable = gMPlayJumpTable;




    SampleFreqSet(0x000C0000);


    soundInfo->lockStatus = 0x68736D53;
}

void SampleFreqSet(u32 freq)
{
    struct SoundMixerState *soundInfo = SOUND_INFO_PTR;

    freq = (freq & 0xF0000) >> 16;
    soundInfo->freqOption = freq;
# 374 "/home/awaszczak/git/sa2/sa1/../src/lib/m4a/m4a.c"
    soundInfo->samplesPerFrame = 800;
    soundInfo->framesPerDmaCycle = 4907 / (soundInfo->samplesPerFrame);
    soundInfo->sampleRate = 60.0f * soundInfo->samplesPerFrame;
    soundInfo->sampleRateReciprocal = 1.0f / soundInfo->sampleRate;



    (*(reg_u16 *)(REG_BASE + 0x102)) = 0;


    (*(reg_u16 *)(REG_BASE + 0x100)) = -(280896 / soundInfo->samplesPerFrame);

    m4aSoundVSyncOn();







    (*(reg_u16 *)(REG_BASE + 0x102)) = 0x80 | 0x00;
}

void m4aSoundMode(u32 mode)
{
    struct SoundMixerState *soundInfo = SOUND_INFO_PTR;
    u32 temp;

    if (soundInfo->lockStatus != 0x68736D53)
        return;

    soundInfo->lockStatus++;

    temp = mode & (0x00000080 | 0x0000007F);

    if (temp)
        soundInfo->reverb = temp & 0x0000007F;

    temp = mode & 0x00000F00;

    if (temp) {
        struct MixerSource *chan;

        soundInfo->numChans = temp >> 8;

        temp = 12;
        chan = &soundInfo->chans[0];

        while (temp != 0) {
            chan->status = 0;
            temp--;
            chan++;
        }
    }

    temp = mode & 0x0000F000;

    if (temp)
        soundInfo->masterVol = temp >> 12;

    temp = mode & 0x00B00000;

    if (temp) {
        temp = (temp & 0x300000) >> 14;
        (*(reg_u8 *)(REG_BASE + ((((0x40 + sizeof(winreg_t) * 6) + 4) + 2) + 2) + 2 + 10 + 0x29)) = ((*(reg_u8 *)(REG_BASE + ((((0x40 + sizeof(winreg_t) * 6) + 4) + 2) + 2) + 2 + 10 + 0x29)) & 0x3F) | temp;
    }

    temp = mode & 0x000F0000;

    if (temp) {
        m4aSoundVSyncOff();
        SampleFreqSet(temp);
    }

    soundInfo->lockStatus = 0x68736D53;
}

void SoundClear(void)
{
    struct SoundMixerState *soundInfo = SOUND_INFO_PTR;
    s32 i;
    struct MixerSource *chan;

    if (soundInfo->lockStatus != 0x68736D53)
        return;

    soundInfo->lockStatus++;

    i = 12;
    chan = &soundInfo->chans[0];

    while (i > 0) {
        chan->status = 0;
        i--;
        chan = (void *)((intptr_t)chan + sizeof(struct MixerSource));
    }

    chan = soundInfo->cgbChans;

    if (chan) {
        i = 1;

        while (i <= 4) {
            soundInfo->CgbOscOff(i);
            chan->status = 0;
            i++;
            chan = (void *)((intptr_t)chan + sizeof(struct MixerSource));
        }
    }

    soundInfo->lockStatus = 0x68736D53;
}

void m4aSoundVSyncOff(void)
{
    struct SoundMixerState *soundInfo = SOUND_INFO_PTR;

    if (soundInfo->lockStatus >= 0x68736D53 && soundInfo->lockStatus <= 0x68736D53 + 1) {
        soundInfo->lockStatus += 10;

        if ((*(reg_u32 *)(REG_BASE + 0xc4)) & (0x0200 << 16))
            (*(reg_u32 *)(REG_BASE + 0xc4)) = ((0x8000 | 0x0000 | 0x0400 | 0x0000 | 0x0040) << 16) | 4;

        if ((*(reg_u32 *)(REG_BASE + 0xd0)) & (0x0200 << 16))
            (*(reg_u32 *)(REG_BASE + 0xd0)) = ((0x8000 | 0x0000 | 0x0400 | 0x0000 | 0x0040) << 16) | 4;

        (*(reg_u16 *)(REG_BASE + 0xc6)) = 0x0400;
        (*(reg_u16 *)(REG_BASE + 0xd2)) = 0x0400;

        { vu32 tmp = (vu32)(0); CpuSet((void *)&tmp, soundInfo->pcmBuffer, 0x04000000 | 0x01000000 | ((sizeof(soundInfo->pcmBuffer))/(32/8) & 0x1FFFFF)); };


        Platform_ClearQueuedAudio();

    }
}

void m4aSoundVSyncOn(void)
{
    struct SoundMixerState *soundInfo = SOUND_INFO_PTR;
    u32 lockStatus = soundInfo->lockStatus;

    if (lockStatus == 0x68736D53)
        return;

    (*(reg_u16 *)(REG_BASE + 0xc6)) = 0x8000 | 0x3000 | 0x0400 | 0x0200;
    (*(reg_u16 *)(REG_BASE + 0xd2)) = 0x8000 | 0x3000 | 0x0400 | 0x0200;

    soundInfo->dmaCounter = 0;
    soundInfo->lockStatus = lockStatus - 10;
}

void MPlayOpen(struct MP2KPlayerState *mplayInfo, struct MP2KTrack *tracks, u8 trackCount)
{
    struct SoundMixerState *soundInfo;

    if (trackCount == 0)
        return;

    if (trackCount > 16)
        trackCount = 16;

    soundInfo = SOUND_INFO_PTR;

    if (soundInfo->lockStatus != 0x68736D53)
        return;

    soundInfo->lockStatus++;

    Clear64byte(mplayInfo);

    mplayInfo->tracks = tracks;
    mplayInfo->trackCount = trackCount;
    mplayInfo->status = 0x80000000;

    while (trackCount != 0) {
        tracks->status = 0;
        trackCount--;
        tracks++;
    }



    if (soundInfo->MPlayMainHead != ((void*)0)) {
        mplayInfo->nextPlayerFunc = soundInfo->MPlayMainHead;
        mplayInfo->nextPlayer = soundInfo->musicPlayerHead;

        soundInfo->MPlayMainHead = ((void*)0);
    }

    soundInfo->musicPlayerHead = mplayInfo;
    soundInfo->MPlayMainHead = MP2KPlayerMain;

    soundInfo->lockStatus = 0x68736D53;
    mplayInfo->lockStatus = 0x68736D53;
}

void MPlayStart(struct MP2KPlayerState *mplayInfo, struct MP2KSongHeader *songHeader)
{
    s32 i;
    u8 checkSongPriority;
    struct MP2KTrack *track;

    if (mplayInfo->lockStatus != 0x68736D53)
        return;

    checkSongPriority = mplayInfo->checkSongPriority;

    if (!checkSongPriority
        || ((!mplayInfo->songHeader || !(mplayInfo->tracks[0].status & 0x40))
            && ((mplayInfo->status & 0x0000ffff) == 0 || (mplayInfo->status & 0x80000000)))
        || (mplayInfo->priority <= songHeader->priority)) {
        mplayInfo->lockStatus++;
        mplayInfo->status = 0;
        mplayInfo->songHeader = songHeader;
        mplayInfo->voicegroup = songHeader->voicegroup;
        mplayInfo->priority = songHeader->priority;
        mplayInfo->clock = 0;
        mplayInfo->tempoRawBPM = 150;
        mplayInfo->tempoInterval = 150;
        mplayInfo->tempoScale = 0x100;
        mplayInfo->tempoCounter = 0;
        mplayInfo->fadeInterval = 0;

        i = 0;
        track = mplayInfo->tracks;

        while (i < songHeader->trackCount && i < mplayInfo->trackCount) {
            TrackStop(mplayInfo, track);
            track->status = 0x80 | 0x40;
            track->chan = 0;
            track->cmdPtr = songHeader->part[i];
            i++;
            track++;
        }

        while (i < mplayInfo->trackCount) {
            TrackStop(mplayInfo, track);
            track->status = 0;
            i++;
            track++;
        }

        if (songHeader->reverb & 0x00000080)
            m4aSoundMode(songHeader->reverb);

        mplayInfo->lockStatus = 0x68736D53;
    }
}

void MPlayStop(struct MP2KPlayerState *mplayInfo)
{
    s32 i;
    struct MP2KTrack *track;

    if (mplayInfo->lockStatus != 0x68736D53)
        return;

    mplayInfo->lockStatus++;
    mplayInfo->status |= 0x80000000;

    i = mplayInfo->trackCount;
    track = mplayInfo->tracks;

    while (i > 0) {
        TrackStop(mplayInfo, track);
        i--;
        track++;
    }

    mplayInfo->lockStatus = 0x68736D53;
}

void FadeOutBody(struct MP2KPlayerState *mplayInfo)
{
    s32 i;
    struct MP2KTrack *track;
    u16 fadeOV;

    if (mplayInfo->fadeInterval == 0)
        return;
    if (--mplayInfo->fadeCounter != 0)
        return;

    mplayInfo->fadeCounter = mplayInfo->fadeInterval;

    if (mplayInfo->fadeOV & 0x0002) {
        if ((u16)(mplayInfo->fadeOV += (4 << 2)) >= (64 << 2)) {
            mplayInfo->fadeOV = (64 << 2);
            mplayInfo->fadeInterval = 0;
        }
    } else {
        if ((s16)(mplayInfo->fadeOV -= (4 << 2)) <= 0) {
            i = mplayInfo->trackCount;
            track = mplayInfo->tracks;

            while (i > 0) {
                u32 val;

                TrackStop(mplayInfo, track);

                val = 0x0001;
                fadeOV = mplayInfo->fadeOV;
                val &= fadeOV;

                if (!val)
                    track->status = 0;

                i--;
                track++;
            }

            if (mplayInfo->fadeOV & 0x0001)
                mplayInfo->status |= 0x80000000;
            else
                mplayInfo->status = 0x80000000;

            mplayInfo->fadeInterval = 0;
            return;
        }
    }

    i = mplayInfo->trackCount;
    track = mplayInfo->tracks;

    while (i > 0) {
        if (track->status & 0x80) {
            fadeOV = mplayInfo->fadeOV;

            track->volPublic = (fadeOV >> 2);
            track->status |= 0x03;
        }

        i--;
        track++;
    }
}

void TrkVolPitSet(struct MP2KPlayerState *mplayInfo, struct MP2KTrack *track)
{
    if (track->status & 0x01) {
        s32 x;
        s32 y;

        x = (u32)(track->vol * track->volPublic) >> 5;

        if (track->modType == 1)
            x = (u32)(x * (track->modCalculated + 128)) >> 7;

        y = 2 * track->pan + track->panPublic;

        if (track->modType == 2)
            y += track->modCalculated;

        if (y < -128)
            y = -128;
        else if (y > 127)
            y = 127;

        track->volRightCalculated = (u32)((y + 128) * x) >> 8;
        track->volLeftCalculated = (u32)((127 - y) * x) >> 8;
    }

    if (track->status & 0x04) {
        s32 bend = track->bend * track->bendRange;
        s32 x = (track->tune + bend) * 4 + (track->keyShift << 8) + (track->keyShiftPublic << 8) + track->pitchPublic;

        if (track->modType == 0)
            x += 16 * track->modCalculated;

        track->keyShiftCalculated = x >> 8;
        track->pitchCalculated = x;
    }

    track->status &= ~(0x04 | 0x01);
}

u32 MidiKeyToCgbFreq(u8 chanNum, u8 key, u8 fineAdjust)
{
    if (chanNum == 4) {
        if (key <= 20) {
            key = 0;
        } else {
            key -= 21;
            if (key > 59)
                key = 59;
        }

        return gNoiseTable[key];
    } else {
        s32 val1;
        s32 val2;

        if (key <= 35) {
            fineAdjust = 0;
            key = 0;
        } else {
            key -= 36;
            if (key > 130) {
                key = 130;
                fineAdjust = 255;
            }
        }

        val1 = gCgbScaleTable[key];
        val1 = gCgbFreqTable[val1 & 0xF] >> (val1 >> 4);

        val2 = gCgbScaleTable[key + 1];
        val2 = gCgbFreqTable[val2 & 0xF] >> (val2 >> 4);

        return val1 + ((fineAdjust * (val2 - val1)) >> 8) + 2048;
    }
}

void CgbOscOff(u8 chanNum)
{
    switch (chanNum) {
        case 1:
            (*(reg_u8 *)(REG_BASE + ((((0x40 + sizeof(winreg_t) * 6) + 4) + 2) + 2) + 2 + 10 + 0x3)) = 8;
            (*(reg_u8 *)(REG_BASE + ((((0x40 + sizeof(winreg_t) * 6) + 4) + 2) + 2) + 2 + 10 + 0x5)) = 0x80;
            break;
        case 2:
            (*(reg_u8 *)(REG_BASE + ((((0x40 + sizeof(winreg_t) * 6) + 4) + 2) + 2) + 2 + 10 + 0x9)) = 8;
            (*(reg_u8 *)(REG_BASE + ((((0x40 + sizeof(winreg_t) * 6) + 4) + 2) + 2) + 2 + 10 + 0xD)) = 0x80;
            break;
        case 3:
            (*(reg_u8 *)(REG_BASE + ((((0x40 + sizeof(winreg_t) * 6) + 4) + 2) + 2) + 2 + 10 + 0x10)) = 0;
            break;
        default:
            (*(reg_u8 *)(REG_BASE + ((((0x40 + sizeof(winreg_t) * 6) + 4) + 2) + 2) + 2 + 10 + 0x19)) = 8;
            (*(reg_u8 *)(REG_BASE + ((((0x40 + sizeof(winreg_t) * 6) + 4) + 2) + 2) + 2 + 10 + 0x1d)) = 0x80;
    }

    cgb_set_envelope(chanNum - 1, 8);
    cgb_trigger_note(chanNum - 1);

}

static inline int CgbPan(struct MixerSource *chan)
{
    u32 rightVol = chan->rightVol;
    u32 leftVol = chan->leftVol;

    if ((rightVol = (u8)rightVol) >= (leftVol = (u8)leftVol)) {
        if (rightVol / 2 >= leftVol) {
            chan->data.cgb.pan = 0x0F;
            return 1;
        }
    } else {
        if (leftVol / 2 >= rightVol) {
            chan->data.cgb.pan = 0xF0;
            return 1;
        }
    }

    return 0;
}

void CgbModVol(struct MixerSource *chan)
{
    if (!CgbPan(chan)) {
        chan->data.cgb.pan = 0xFF;
        chan->data.cgb.envelopeGoal = (u32)(chan->rightVol + chan->leftVol) / 16;
    } else {
        chan->data.cgb.envelopeGoal = (u32)(chan->rightVol + chan->leftVol) / 16;

        if (chan->data.cgb.envelopeGoal > 15)
            chan->data.cgb.envelopeGoal = 15;
    }

    chan->data.cgb.sustainGoal = (chan->data.cgb.envelopeGoal * chan->data.cgb.sustain + 15) >> 4;
    chan->data.cgb.pan &= chan->data.cgb.panMask;
}

void CgbSound(void)
{
    s32 ch;
    struct MixerSource *channels;
    s32 prevC15;
    struct SoundMixerState *soundInfo = SOUND_INFO_PTR;
    vu8 *nrx0ptr;
    vu8 *nrx1ptr;
    vu8 *nrx2ptr;
    vu8 *nrx3ptr;
    vu8 *nrx4ptr;
    s32 envelopeStepTimeAndDir;


    int mask = 0xff;

    if (soundInfo->cgbCounter15)
        soundInfo->cgbCounter15--;
    else
        soundInfo->cgbCounter15 = 14;

    for (ch = 1, channels = soundInfo->cgbChans; ch <= 4; ch++, channels++) {
        if (!(channels->status & (0x80 | 0x40 | 0x04 | 0x03)))
            continue;


        switch (ch) {
            case 1:
                nrx0ptr = &(*(reg_u8 *)(REG_BASE + ((((0x40 + sizeof(winreg_t) * 6) + 4) + 2) + 2) + 2 + 10 + 0x0));
                nrx1ptr = &(*(reg_u8 *)(REG_BASE + ((((0x40 + sizeof(winreg_t) * 6) + 4) + 2) + 2) + 2 + 10 + 0x2));
                nrx2ptr = &(*(reg_u8 *)(REG_BASE + ((((0x40 + sizeof(winreg_t) * 6) + 4) + 2) + 2) + 2 + 10 + 0x3));
                nrx3ptr = &(*(reg_u8 *)(REG_BASE + ((((0x40 + sizeof(winreg_t) * 6) + 4) + 2) + 2) + 2 + 10 + 0x4));
                nrx4ptr = &(*(reg_u8 *)(REG_BASE + ((((0x40 + sizeof(winreg_t) * 6) + 4) + 2) + 2) + 2 + 10 + 0x5));
                break;
            case 2:
                nrx0ptr = (vu8 *)((REG_BASE + ((((0x40 + sizeof(winreg_t) * 6) + 4) + 2) + 2) + 2 + 10 + 0x0) + 1);
                nrx1ptr = &(*(reg_u8 *)(REG_BASE + ((((0x40 + sizeof(winreg_t) * 6) + 4) + 2) + 2) + 2 + 10 + 0x8));
                nrx2ptr = &(*(reg_u8 *)(REG_BASE + ((((0x40 + sizeof(winreg_t) * 6) + 4) + 2) + 2) + 2 + 10 + 0x9));
                nrx3ptr = &(*(reg_u8 *)(REG_BASE + ((((0x40 + sizeof(winreg_t) * 6) + 4) + 2) + 2) + 2 + 10 + 0xC));
                nrx4ptr = &(*(reg_u8 *)(REG_BASE + ((((0x40 + sizeof(winreg_t) * 6) + 4) + 2) + 2) + 2 + 10 + 0xD));
                break;
            case 3:
                nrx0ptr = &(*(reg_u8 *)(REG_BASE + ((((0x40 + sizeof(winreg_t) * 6) + 4) + 2) + 2) + 2 + 10 + 0x10));
                nrx1ptr = &(*(reg_u8 *)(REG_BASE + ((((0x40 + sizeof(winreg_t) * 6) + 4) + 2) + 2) + 2 + 10 + 0x12));
                nrx2ptr = &(*(reg_u8 *)(REG_BASE + ((((0x40 + sizeof(winreg_t) * 6) + 4) + 2) + 2) + 2 + 10 + 0x13));
                nrx3ptr = &(*(reg_u8 *)(REG_BASE + ((((0x40 + sizeof(winreg_t) * 6) + 4) + 2) + 2) + 2 + 10 + 0x14));
                nrx4ptr = &(*(reg_u8 *)(REG_BASE + ((((0x40 + sizeof(winreg_t) * 6) + 4) + 2) + 2) + 2 + 10 + 0x15));
                break;
            default:
                nrx0ptr = (vu8 *)((REG_BASE + ((((0x40 + sizeof(winreg_t) * 6) + 4) + 2) + 2) + 2 + 10 + 0x10) + 1);
                nrx1ptr = &(*(reg_u8 *)(REG_BASE + ((((0x40 + sizeof(winreg_t) * 6) + 4) + 2) + 2) + 2 + 10 + 0x18));
                nrx2ptr = &(*(reg_u8 *)(REG_BASE + ((((0x40 + sizeof(winreg_t) * 6) + 4) + 2) + 2) + 2 + 10 + 0x19));
                nrx3ptr = &(*(reg_u8 *)(REG_BASE + ((((0x40 + sizeof(winreg_t) * 6) + 4) + 2) + 2) + 2 + 10 + 0x1c));
                nrx4ptr = &(*(reg_u8 *)(REG_BASE + ((((0x40 + sizeof(winreg_t) * 6) + 4) + 2) + 2) + 2 + 10 + 0x1d));
                break;
        }

        prevC15 = soundInfo->cgbCounter15;
        envelopeStepTimeAndDir = *nrx2ptr;


        if (channels->status & 0x80) {
            if (!(channels->status & 0x40)) {
                channels->status = 0x03;
                channels->data.cgb.cgbStatus = 0x02 | 0x01;
                CgbModVol(channels);
                switch (ch) {
                    case 1:
                        *nrx0ptr = channels->data.cgb.sweep;

                        cgb_set_sweep(channels->data.cgb.sweep);


                    case 2:
                        *nrx1ptr = ((intptr_t)channels->wav << 6) + channels->data.cgb.length;
                        goto init_env_step_time_dir;
                    case 3:
                        if (channels->wav != channels->current) {
                            *nrx0ptr = 0x40;
                            (*(reg_u32 *)(REG_BASE + ((((0x40 + sizeof(winreg_t) * 6) + 4) + 2) + 2) + 2 + 10 + 0x30)) = ((u32 *)channels->wav)[0];
                            (*(reg_u32 *)(REG_BASE + ((((0x40 + sizeof(winreg_t) * 6) + 4) + 2) + 2) + 2 + 10 + 0x34)) = ((u32 *)channels->wav)[1];
                            (*(reg_u32 *)(REG_BASE + ((((0x40 + sizeof(winreg_t) * 6) + 4) + 2) + 2) + 2 + 10 + 0x38)) = ((u32 *)channels->wav)[2];
                            (*(reg_u32 *)(REG_BASE + ((((0x40 + sizeof(winreg_t) * 6) + 4) + 2) + 2) + 2 + 10 + 0x3c)) = ((u32 *)channels->wav)[3];
                            channels->current = channels->wav;

                            cgb_set_wavram();

                        }
                        *nrx0ptr = 0;
                        *nrx1ptr = channels->data.cgb.length;
                        if (channels->data.cgb.length)
                            channels->data.cgb.nrx4 = 0xC0;
                        else
                            channels->data.cgb.nrx4 = 0x80;
                        break;
                    default:
                        *nrx1ptr = channels->data.cgb.length;
                        *nrx3ptr = (intptr_t)channels->wav << 3;
                    init_env_step_time_dir:
                        envelopeStepTimeAndDir = channels->data.cgb.attack + 0x08;
                        if (channels->data.cgb.length)
                            channels->data.cgb.nrx4 = 0x40;
                        else
                            channels->data.cgb.nrx4 = 0x00;
                        break;
                }

                cgb_set_length(ch - 1, channels->data.cgb.length);

                channels->data.cgb.envelopeCtr = channels->data.cgb.attack;
                if ((s8)(channels->data.cgb.attack & mask)) {
                    channels->data.cgb.envelopeVol = 0;
                    goto envelope_step_complete;
                } else {

                    goto envelope_decay_start;
                }
            } else {
                goto oscillator_off;
            }
        } else if (channels->status & 0x04) {
            channels->data.cgb.echoLen--;
            if ((s8)(channels->data.cgb.echoLen & mask) <= 0) {
            oscillator_off:
                CgbOscOff(ch);
                channels->status = 0;
                goto channel_complete;
            }
            goto envelope_complete;
        } else if ((channels->status & 0x40) && (channels->status & 0x03)) {
            channels->status &= ~0x03;
            channels->data.cgb.envelopeCtr = channels->data.cgb.release;
            if ((s8)(channels->data.cgb.release & mask)) {
                channels->data.cgb.cgbStatus |= 0x01;
                if (ch != 3)
                    envelopeStepTimeAndDir = channels->data.cgb.release | 0x00;
                goto envelope_step_complete;
            } else {
                goto envelope_pseudoecho_start;
            }
        } else {
        envelope_step_repeat:
            if (channels->data.cgb.envelopeCtr == 0) {
                if (ch == 3)
                    channels->data.cgb.cgbStatus |= 0x01;

                CgbModVol(channels);
                if ((channels->status & 0x03) == 0x00) {
                    channels->data.cgb.envelopeVol--;
                    if ((s8)(channels->data.cgb.envelopeVol & mask) <= 0) {
                    envelope_pseudoecho_start:
                        channels->data.cgb.envelopeVol = ((channels->data.cgb.envelopeGoal * channels->data.cgb.echoVol) + 0xFF) >> 8;
                        if (channels->data.cgb.envelopeVol) {
                            channels->status |= 0x04;
                            channels->data.cgb.cgbStatus |= 0x01;
                            if (ch != 3)
                                envelopeStepTimeAndDir = 0 | 0x08;
                            goto envelope_complete;
                        } else {
                            goto oscillator_off;
                        }
                    } else {
                        channels->data.cgb.envelopeCtr = channels->data.cgb.release;
                    }
                } else if ((channels->status & 0x03) == 0x01) {
                envelope_sustain:
                    channels->data.cgb.envelopeVol = channels->data.cgb.sustainGoal;
                    channels->data.cgb.envelopeCtr = 7;
                } else if ((channels->status & 0x03) == 0x02) {
                    int envelopeVol, sustainGoal;

                    channels->data.cgb.envelopeVol--;
                    envelopeVol = (s8)(channels->data.cgb.envelopeVol & mask);
                    sustainGoal = (s8)(channels->data.cgb.sustainGoal);
                    if (envelopeVol <= sustainGoal) {
                    envelope_sustain_start:
                        if (channels->data.cgb.sustain == 0) {
                            channels->status &= ~0x03;
                            goto envelope_pseudoecho_start;
                        } else {
                            channels->status--;
                            channels->data.cgb.cgbStatus |= 0x01;
                            if (ch != 3)
                                envelopeStepTimeAndDir = 0 | 0x08;
                            goto envelope_sustain;
                        }
                    } else {
                        channels->data.cgb.envelopeCtr = channels->data.cgb.decay;
                    }
                } else {
                    channels->data.cgb.envelopeVol++;
                    if ((u8)(channels->data.cgb.envelopeVol & mask) >= channels->data.cgb.envelopeGoal) {
                    envelope_decay_start:
                        channels->status--;
                        channels->data.cgb.envelopeCtr = channels->data.cgb.decay;
                        if ((u8)(channels->data.cgb.envelopeCtr & mask)) {
                            channels->data.cgb.cgbStatus |= 0x01;
                            channels->data.cgb.envelopeVol = channels->data.cgb.envelopeGoal;
                            if (ch != 3)
                                envelopeStepTimeAndDir = channels->data.cgb.decay | 0x00;
                        } else {
                            goto envelope_sustain_start;
                        }
                    } else {
                        channels->data.cgb.envelopeCtr = channels->data.cgb.attack;
                    }
                }
            }
        }

    envelope_step_complete:


        channels->data.cgb.envelopeCtr--;
        if (prevC15 == 0) {
            prevC15--;
            goto envelope_step_repeat;
        }

    envelope_complete:

        if (channels->data.cgb.cgbStatus & 0x02) {
            if (ch < 4 && (channels->type & 0x08)) {
                int dac_pwm_rate = (*(reg_u8 *)(REG_BASE + ((((0x40 + sizeof(winreg_t) * 6) + 4) + 2) + 2) + 2 + 10 + 0x29));

                if (dac_pwm_rate < 0x40)
                    channels->data.cgb.freq = (channels->data.cgb.freq + 2) & 0x7fc;
                else if (dac_pwm_rate < 0x80)
                    channels->data.cgb.freq = (channels->data.cgb.freq + 1) & 0x7fe;
            }

            if (ch != 4)
                *nrx3ptr = channels->data.cgb.freq;
            else
                *nrx3ptr = (*nrx3ptr & 0x08) | channels->data.cgb.freq;
            channels->data.cgb.nrx4 = (channels->data.cgb.nrx4 & 0xC0) + (*((u8 *)(&channels->data.cgb.freq) + 1));
            *nrx4ptr = (s8)(channels->data.cgb.nrx4 & mask);
        }


        if (channels->data.cgb.cgbStatus & 0x01) {
            (*(reg_u8 *)(REG_BASE + ((((0x40 + sizeof(winreg_t) * 6) + 4) + 2) + 2) + 2 + 10 + 0x21)) = ((*(reg_u8 *)(REG_BASE + ((((0x40 + sizeof(winreg_t) * 6) + 4) + 2) + 2) + 2 + 10 + 0x21)) & ~channels->data.cgb.panMask) | channels->data.cgb.pan;
            if (ch == 3) {
                *nrx2ptr = gCgb3Vol[channels->data.cgb.envelopeVol];
                if (channels->data.cgb.nrx4 & 0x80) {
                    *nrx0ptr = 0x80;
                    *nrx4ptr = channels->data.cgb.nrx4;
                    channels->data.cgb.nrx4 &= 0x7f;
                }
            } else {
                u32 envMask = 0xF;
                *nrx2ptr = (envelopeStepTimeAndDir & envMask) + (channels->data.cgb.envelopeVol << 4);
                *nrx4ptr = channels->data.cgb.nrx4 | 0x80;
                if (ch == 1 && !(*nrx0ptr & 0x08))
                    *nrx4ptr = channels->data.cgb.nrx4 | 0x80;
            }

            cgb_set_envelope(ch - 1, *nrx2ptr);
            cgb_toggle_length(ch - 1, (*nrx4ptr & 0x40));
            cgb_trigger_note(ch - 1);

        }

    channel_complete:
        channels->data.cgb.cgbStatus = 0;
    }
}

void m4aMPlayTempoControl(struct MP2KPlayerState *mplayInfo, u16 tempo)
{
    if (mplayInfo->lockStatus == 0x68736D53) {
        mplayInfo->lockStatus++;
        mplayInfo->tempoScale = tempo;
        mplayInfo->tempoInterval = (mplayInfo->tempoRawBPM * mplayInfo->tempoScale) >> 8;
        mplayInfo->lockStatus = 0x68736D53;
    }
}

void m4aMPlayVolumeControl(struct MP2KPlayerState *mplayInfo, u16 trackBits, u16 volume)
{
    s32 i;
    u32 bit;
    struct MP2KTrack *track;

    if (mplayInfo->lockStatus != 0x68736D53)
        return;

    mplayInfo->lockStatus++;

    i = mplayInfo->trackCount;
    track = mplayInfo->tracks;
    bit = 1;

    while (i > 0) {
        if (trackBits & bit) {
            if (track->status & 0x80) {
                track->volPublic = volume / 4;
                track->status |= 0x03;
            }
        }

        i--;
        track++;
        bit <<= 1;
    }

    mplayInfo->lockStatus = 0x68736D53;
}

void m4aMPlayPitchControl(struct MP2KPlayerState *mplayInfo, u16 trackBits, s16 pitch)
{
    s32 i;
    u32 bit;
    struct MP2KTrack *track;

    if (mplayInfo->lockStatus != 0x68736D53)
        return;

    mplayInfo->lockStatus++;

    i = mplayInfo->trackCount;
    track = mplayInfo->tracks;
    bit = 1;

    while (i > 0) {
        if (trackBits & bit) {
            if (track->status & 0x80) {
                track->keyShiftPublic = pitch >> 8;
                track->pitchPublic = pitch;
                track->status |= 0x0C;
            }
        }

        i--;
        track++;
        bit <<= 1;
    }

    mplayInfo->lockStatus = 0x68736D53;
}

void m4aMPlayPanpotControl(struct MP2KPlayerState *mplayInfo, u16 trackBits, s8 pan)
{
    s32 i;
    u32 bit;
    struct MP2KTrack *track;

    if (mplayInfo->lockStatus != 0x68736D53)
        return;

    mplayInfo->lockStatus++;

    i = mplayInfo->trackCount;
    track = mplayInfo->tracks;
    bit = 1;

    while (i > 0) {
        if (trackBits & bit) {
            if (track->status & 0x80) {
                track->panPublic = pan;
                track->status |= 0x03;
            }
        }

        i--;
        track++;
        bit <<= 1;
    }

    mplayInfo->lockStatus = 0x68736D53;
}

void ClearModM(struct MP2KTrack *track)
{
    track->lfoSpeedCounter = 0;
    track->modCalculated = 0;

    if (track->modType == 0)
        track->status |= 0x0C;
    else
        track->status |= 0x03;
}

void m4aMPlayModDepthSet(struct MP2KPlayerState *mplayInfo, u16 trackBits, u8 modDepth)
{
    s32 i;
    u32 bit;
    struct MP2KTrack *track;

    if (mplayInfo->lockStatus != 0x68736D53)
        return;

    mplayInfo->lockStatus++;

    i = mplayInfo->trackCount;
    track = mplayInfo->tracks;
    bit = 1;

    while (i > 0) {
        if (trackBits & bit) {
            if (track->status & 0x80) {
                track->modDepth = modDepth;

                if (!track->modDepth)
                    ClearModM(track);
            }
        }

        i--;
        track++;
        bit <<= 1;
    }

    mplayInfo->lockStatus = 0x68736D53;
}

void m4aMPlayLFOSpeedSet(struct MP2KPlayerState *mplayInfo, u16 trackBits, u8 lfoSpeed)
{
    s32 i;
    u32 bit;
    struct MP2KTrack *track;

    if (mplayInfo->lockStatus != 0x68736D53)
        return;

    mplayInfo->lockStatus++;

    i = mplayInfo->trackCount;
    track = mplayInfo->tracks;
    bit = 1;

    while (i > 0) {
        if (trackBits & bit) {
            if (track->status & 0x80) {
                track->lfoSpeed = lfoSpeed;

                if (!track->lfoSpeed)
                    ClearModM(track);
            }
        }

        i--;
        track++;
        bit <<= 1;
    }

    mplayInfo->lockStatus = 0x68736D53;
}







void MP2K_event_memacc(struct MP2KPlayerState *mplayInfo, struct MP2KTrack *track)
{
    u32 op;
    u8 *addr;
    u8 data;

    op = *track->cmdPtr;
    track->cmdPtr++;

    addr = mplayInfo->memAccArea + *track->cmdPtr;
    track->cmdPtr++;

    data = *track->cmdPtr;
    track->cmdPtr++;

    switch (op) {
        case 0:
            *addr = data;
            return;
        case 1:
            *addr += data;
            return;
        case 2:
            *addr -= data;
            return;
        case 3:
            *addr = mplayInfo->memAccArea[data];
            return;
        case 4:
            *addr += mplayInfo->memAccArea[data];
            return;
        case 5:
            *addr -= mplayInfo->memAccArea[data];
            return;
        case 6:
            if (*addr == data) goto cond_true; else goto cond_false;
            return;
        case 7:
            if (*addr != data) goto cond_true; else goto cond_false;
            return;
        case 8:
            if (*addr > data) goto cond_true; else goto cond_false;
            return;
        case 9:
            if (*addr >= data) goto cond_true; else goto cond_false;
            return;
        case 10:
            if (*addr <= data) goto cond_true; else goto cond_false;
            return;
        case 11:
            if (*addr < data) goto cond_true; else goto cond_false;
            return;
        case 12:
            if (*addr == mplayInfo->memAccArea[data]) goto cond_true; else goto cond_false;
            return;
        case 13:
            if (*addr != mplayInfo->memAccArea[data]) goto cond_true; else goto cond_false;
            return;
        case 14:
            if (*addr > mplayInfo->memAccArea[data]) goto cond_true; else goto cond_false;
            return;
        case 15:
            if (*addr >= mplayInfo->memAccArea[data]) goto cond_true; else goto cond_false;
            return;
        case 16:
            if (*addr <= mplayInfo->memAccArea[data]) goto cond_true; else goto cond_false;
            return;
        case 17:
            if (*addr < mplayInfo->memAccArea[data]) goto cond_true; else goto cond_false;
            return;
        default:
            return;
    }

cond_true : {
    {
        void (*func)(struct MP2KPlayerState *, struct MP2KTrack *) = *(&gMPlayJumpTable[1]);
        func(mplayInfo, track);
    }
    return;
}

cond_false:
    track->cmdPtr += 4;
}

void MP2K_event_xcmd(struct MP2KPlayerState *mplayInfo, struct MP2KTrack *track)
{
    u32 n = *track->cmdPtr;
    track->cmdPtr++;

    gXcmdTable[n](mplayInfo, track);
}

void MP2K_event_xxx(struct MP2KPlayerState *mplayInfo, struct MP2KTrack *track)
{
    void (*func)(struct MP2KPlayerState *, struct MP2KTrack *) = *(&gMPlayJumpTable[0]);
    func(mplayInfo, track);
}

void MP2K_event_xwave(struct MP2KPlayerState *mplayInfo, struct MP2KTrack *track)
{
    union {
        u8 *a;
        u8 d[sizeof(uintptr_t)];
    } u;

    u.d[0] = *(track->cmdPtr + 0);
    u.d[1] = *(track->cmdPtr + 1);
    u.d[2] = *(track->cmdPtr + 2);
    u.d[3] = *(track->cmdPtr + 3);

    u.d[4] = *(track->cmdPtr + 4);
    u.d[5] = *(track->cmdPtr + 5);
    u.d[6] = *(track->cmdPtr + 6);
    u.d[7] = *(track->cmdPtr + 7);

    track->voicegroup.data.sound.wav = (struct WaveData *)u.a;
    track->cmdPtr += sizeof(uintptr_t);
}

void MP2K_event_xtype(struct MP2KPlayerState *mplayInfo, struct MP2KTrack *track)
{
    track->voicegroup.type = *track->cmdPtr;
    track->cmdPtr++;
}

void MP2K_event_xatta(struct MP2KPlayerState *mplayInfo, struct MP2KTrack *track)
{
    track->voicegroup.data.sound.attack = *track->cmdPtr;
    track->cmdPtr++;
}

void MP2K_event_xdeca(struct MP2KPlayerState *mplayInfo, struct MP2KTrack *track)
{
    track->voicegroup.data.sound.decay = *track->cmdPtr;
    track->cmdPtr++;
}

void MP2K_event_xsust(struct MP2KPlayerState *mplayInfo, struct MP2KTrack *track)
{
    track->voicegroup.data.sound.sustain = *track->cmdPtr;
    track->cmdPtr++;
}

void MP2K_event_xrele(struct MP2KPlayerState *mplayInfo, struct MP2KTrack *track)
{
    track->voicegroup.data.sound.release = *track->cmdPtr;
    track->cmdPtr++;
}

void MP2K_event_xiecv(struct MP2KPlayerState *mplayInfo, struct MP2KTrack *track)
{
    track->echoVolume = *track->cmdPtr;
    track->cmdPtr++;
}

void MP2K_event_xiecl(struct MP2KPlayerState *mplayInfo, struct MP2KTrack *track)
{
    track->echoLength = *track->cmdPtr;
    track->cmdPtr++;
}

void MP2K_event_xleng(struct MP2KPlayerState *mplayInfo, struct MP2KTrack *track)
{
    track->voicegroup.cgbLength = *track->cmdPtr;
    track->cmdPtr++;
}

void MP2K_event_xswee(struct MP2KPlayerState *mplayInfo, struct MP2KTrack *track)
{
    track->voicegroup.pan_sweep = *track->cmdPtr;
    track->cmdPtr++;
}

void MP2K_event_null(void) { }
