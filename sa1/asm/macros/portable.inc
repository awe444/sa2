.macro mSectionRodata
#if (!CPU_ARCH_X86 && defined(__APPLE__)) // On macos, native compilation uses this name for the rodata section
  .section __DATA,__data
#elif defined(__ANDROID__) && defined(__aarch64__)
  // On Android ARM64 the assembly is linked into a shared library (libmain.so).
  // Pointer tables emitted with mPtr (.quad) produce R_AARCH64_ABS64
  // relocations which the linker cannot place in read-only .rodata.
  // .data.rel.ro is writable during relocation, then made read-only.
  .section .data.rel.ro,"aw",@progbits
#else
  .section .rodata
#endif
.endm

// Used so that we can have cross platform (32bit or 64bit) pointers
.macro mPtr value
#if defined(__aarch64__) || defined(__x86_64__)
    .quad \value
#else
    .int \value
#endif
.endm

// Used for cross platform aligning of labels
.macro mAlignWord
#if defined(__APPLE__) && (defined(__aarch64__) || defined(__x86_64__))
    .align 3       // Align to 8 bytes on macOS (2^3 = 8)
#elif defined(__aarch64__) || defined(__x86_64__)
    .align 8       // Align to 8 bytes on other platforms
#elif defined(PLATFORM_GBA)
    .align 2       // Align to 4 bytes on GBA
#else
    .align 4       // Default alignment to 4 bytes
#endif
.endm
