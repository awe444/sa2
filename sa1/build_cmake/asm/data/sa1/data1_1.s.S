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
# 2 "/home/runner/work/sa2/sa2/sa1/data/sa1/data1_1.s"
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
# 3 "/home/runner/work/sa2/sa2/sa1/data/sa1/data1_1.s"

	mSectionRodata

    mAlignData
    .global C_DECL(gMultiboot_087C0258)
C_DECL(gMultiboot_087C0258):
    .incbin "baserom_sa1.gba", 0x007C0258, 0x20A0

    mAlignData
    .global C_DECL(gMultiboot_087C22F8)
C_DECL(gMultiboot_087C22F8):
    .incbin "baserom_sa1.gba", 0x007C22F8, 0x8000

    mAlignData
    .global C_DECL(gUnknown_087CA2F8)
C_DECL(gUnknown_087CA2F8):
    .incbin "baserom_sa1.gba", 0x007CA2F8, 0x8000
    
    mAlignData
    .global C_DECL(gUnknown_087D22F8)
C_DECL(gUnknown_087D22F8):
    .incbin "baserom_sa1.gba", 0x007D22F8, 0x5B88

    mAlignData
    .global C_DECL(gUnknown_087D7E80)
C_DECL(gUnknown_087D7E80):
    .incbin "baserom_sa1.gba", 0x007D7E80, 0x8000

    mAlignData
    .global C_DECL(gUnknown_087DFE80)
C_DECL(gUnknown_087DFE80):
    .incbin "baserom_sa1.gba", 0x007DFE80, 0x3790

    mAlignData
    .global C_DECL(gUnknown_087E3610)
C_DECL(gUnknown_087E3610):
    .incbin "baserom_sa1.gba", 0x007E3610, 0x8000

    mAlignData
    .global C_DECL(gUnknown_087EB610)
C_DECL(gUnknown_087EB610):
    .incbin "baserom_sa1.gba", 0x007EB610, 0x6B18

    mAlignData
    .global C_DECL(gUnknown_087F2128)
C_DECL(gUnknown_087F2128):
    .incbin "baserom_sa1.gba", 0x007F2128, 0x67C8

    mAlignData
    .global C_DECL(gUnknown_087F88F0)
C_DECL(gUnknown_087F88F0):
    .incbin "baserom_sa1.gba", 0x007F88F0, 0x673C
