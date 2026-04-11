# 1 "asm/macros/c_decl.inc"
// NOTE:
// For this to work, the file that is including this file HAS to be passed through the C preprocessor before assembling!

// 32bit Windows and MacOS versions prefix labels using an underscore.
// For interoperability we need to replicate that behavior here.
#if ( (CPU_ARCH_X86 && defined(_WIN32) && !defined(_WIN64)) || defined(__APPLE__) )
    #define C_DECL(label) _##label
#else
    #define C_DECL(label) label
#endif
# 2 "/home/runner/work/sa2/sa2/sa1/data/sa1/data1.s"
# 1 "asm/macros/portable.inc"
.macro mSectionRodata
#if (!CPU_ARCH_X86 && defined(__APPLE__)) // On macos, native compilation uses this name for the rodata section
  .section __DATA,__data
#elif defined(__ANDROID__)
  // On Android the assembly is linked into a shared library (libmain.so).
  // Pointer tables emitted with mPtr (.quad) produce absolute relocations
  // (R_AARCH64_ABS64 on ARM64, R_X86_64_64 on x86_64) which the linker
  // cannot place in read-only .rodata.
  // .data.rel.ro is writable during relocation, then made read-only.
  .section .data.rel.ro,"aw",%progbits
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

// Used for cross platform aligning of labels.
// Uses .balign (byte-count alignment) which is unambiguous across all
// assemblers.  The earlier .align N form is interpreted as 2^N on ARM
// targets, which produced 256-byte gaps instead of 8-byte gaps and
// caused struct-layout mismatches with C code on AArch64.
// The System V AMD64 ABI (and AAPCS64) requires global arrays of 16+
// bytes to be 16-byte aligned.  Clang -O2 relies on this and emits
// movaps (x86-64) / LDP with aligned hint (AArch64) when inlining
// memcpy from such symbols.  Assembly data files pack symbols with no
// padding, violating the ABI; this macro inserts the required
// alignment before each .global on 64-bit targets while leaving
// 32-bit (GBA) builds untouched.
.macro mAlignData
#if defined(__aarch64__) || defined(__x86_64__)
    .balign 16
#endif
.endm

.macro mAlignWord
#if defined(__aarch64__) || defined(__x86_64__)
    .balign 8
#else
    .balign 4
#endif
.endm
# 3 "/home/runner/work/sa2/sa2/sa1/data/sa1/data1.s"

	mSectionRodata

    .space 0x100

    mAlignData
    .global C_DECL(gDemoRecordings)
C_DECL(gDemoRecordings):
    mPtr demo1
    mPtr demo2
    mPtr demo3
    mPtr demo4

    mAlignData
    .global C_DECL(gUnknown_087BF8DC)
C_DECL(gUnknown_087BF8DC):
    mPtr C_DECL(gUnknown_08487358)
    mPtr C_DECL(gUnknown_08487BBC)
    mPtr C_DECL(gUnknown_0848872C)
    mPtr C_DECL(gUnknown_08489308)
    mPtr C_DECL(gUnknown_08489F5C)
    mPtr C_DECL(gUnknown_0848ADB4)
    mPtr C_DECL(gUnknown_0848BA80)
    .ascii "CODRED\0\0"
    .ascii "NIMDA \0\0"
    .ascii "CIRCAM\0\0"
    .ascii "HAPTIM\0\0"

   
                                                 
   
                                                       
    mAlignData
    .global demo1
demo1:
    .incbin "baserom_sa1.gba", 0x007BF918, 0x1F8

                                                       
    mAlignData
    .global demo2
demo2:
    .incbin "baserom_sa1.gba", 0x007BFB10, 0x200

                                                       
                                                           
    mAlignData
    .global demo4
demo4:
    .incbin "baserom_sa1.gba", 0x007BFD10, 0x208

                                                       
    mAlignData
    .global demo3
demo3:
    .incbin "baserom_sa1.gba", 0x007BFF18, 0x200
