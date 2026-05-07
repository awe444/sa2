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
# 2 "/home/awaszczak/git/sa2/sa1/data/sa1/data_0_5_2.s"
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
# 3 "/home/awaszczak/git/sa2/sa1/data/sa1/data_0_5_2.s"

	mSectionRodata

    mAlignData
    .global C_DECL(gUnknown_08688378)
C_DECL(gUnknown_08688378):
    .incbin "baserom_sa1.gba", 0x00688378, 0xE

    mAlignData
    .global C_DECL(gUnknown_08688386)
C_DECL(gUnknown_08688386):
    .incbin "baserom_sa1.gba", 0x00688386, 0xE

    mAlignData
    .global C_DECL(gUnknown_08688394)
C_DECL(gUnknown_08688394):
    .incbin "baserom_sa1.gba", 0x00688394, 0x4

    mAlignData
    .global C_DECL(gUnknown_08688398)
C_DECL(gUnknown_08688398):
    .incbin "baserom_sa1.gba", 0x00688398, 0x14

    mAlignData
    .global C_DECL(gUnknown_086883AC)
C_DECL(gUnknown_086883AC):
    .incbin "baserom_sa1.gba", 0x006883AC, 0x4

    mAlignData
    .global C_DECL(gUnknown_086883B0)
C_DECL(gUnknown_086883B0):
    .incbin "baserom_sa1.gba", 0x006883B0, 0x8

    mAlignData
    .global C_DECL(gUnknown_086883B8)
C_DECL(gUnknown_086883B8):
    .incbin "baserom_sa1.gba", 0x006883B8, 0xC

    mAlignData
    .global C_DECL(gUnknown_086883C4)
C_DECL(gUnknown_086883C4):
    .incbin "baserom_sa1.gba", 0x006883C4, 0x8

    mAlignData
    .global C_DECL(gUnknown_086883CC)
C_DECL(gUnknown_086883CC):
    .incbin "baserom_sa1.gba", 0x006883CC, 0x18

    mAlignData
    .global C_DECL(gUnknown_086883E4)
C_DECL(gUnknown_086883E4):
    .incbin "baserom_sa1.gba", 0x006883E4, 0x14

    mAlignData
    .global C_DECL(gUnknown_086883F8)
C_DECL(gUnknown_086883F8):
    .incbin "baserom_sa1.gba", 0x006883F8, 0xC

    mAlignData
    .global C_DECL(gUnknown_08688404)
C_DECL(gUnknown_08688404):
    .incbin "baserom_sa1.gba", 0x00688404, 0xB

    mAlignData
    .global C_DECL(gUnknown_0868840F)
C_DECL(gUnknown_0868840F):
    .incbin "baserom_sa1.gba", 0x0068840F, 0xD

    mAlignData
    .global C_DECL(gUnknown_0868841C)
C_DECL(gUnknown_0868841C):
    .incbin "baserom_sa1.gba", 0x0068841C, 0xC

    mAlignData
    .global C_DECL(gUnknown_08688428)
C_DECL(gUnknown_08688428):
    .incbin "baserom_sa1.gba", 0x00688428, 0x1C

    mAlignData
    .global C_DECL(gUnknown_08688444)
C_DECL(gUnknown_08688444):
    .ascii "ABCDEFGHIJKLMNOPQRSTUVWXYZ.,j-pqrstuvwxyz{|}~\x7F\x80\x81\x82\x83\x84\x85\x86\x87\x88\x89?!& 0123456789abcdef@\0"

    mAlignData
    .global C_DECL(gUnknown_08688492)
C_DECL(gUnknown_08688492):
    .incbin "baserom_sa1.gba", 0x00688492, 0xD6

    mAlignData
    .global C_DECL(gUnknown_08688568)
C_DECL(gUnknown_08688568):
    .incbin "baserom_sa1.gba", 0x00688568, 0x4

    mAlignData
    .global C_DECL(gUnknown_0868856C)
C_DECL(gUnknown_0868856C):
    .incbin "baserom_sa1.gba", 0x0068856C, 0x4
