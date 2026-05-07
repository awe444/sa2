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
# 2 "/home/awaszczak/git/sa2/sa1/data/sa1/data_0_6_1.s"
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
# 3 "/home/awaszczak/git/sa2/sa1/data/sa1/data_0_6_1.s"

	mSectionRodata

    .align 2, 0
    mAlignData
    .global C_DECL(gUnknown_0868B684)
C_DECL(gUnknown_0868B684):
    .incbin "baserom_sa1.gba", 0x0068B684, 0x10

    mAlignData
    .global C_DECL(gUnknown_0868B694)
C_DECL(gUnknown_0868B694):
    .incbin "baserom_sa1.gba", 0x0068B694, 0x8

    mAlignData
    .global C_DECL(gUnknown_0868B69C)
C_DECL(gUnknown_0868B69C):
    .incbin "baserom_sa1.gba", 0x0068B69C, 0x4

    mAlignData
    .global C_DECL(gUnknown_0868B6A0)
C_DECL(gUnknown_0868B6A0):
    .incbin "baserom_sa1.gba", 0x0068B6A0, 0x18

    mAlignData
    .global C_DECL(gUnknown_0868B6B8)
C_DECL(gUnknown_0868B6B8):
    .incbin "baserom_sa1.gba", 0x0068B6B8, 0xC

    mAlignData
    .global C_DECL(gUnknown_0868B6C4)
C_DECL(gUnknown_0868B6C4):
    mPtr C_DECL(ApplyGameStageSettingsAndStart)
    mPtr C_DECL(sub_806A66C)
    mPtr C_DECL(sub_806A680)
    mPtr C_DECL(sub_806A68C)

                                   
    mAlignData
    .global C_DECL(gUnknown_0868B6D4)
C_DECL(gUnknown_0868B6D4):
    .incbin "baserom_sa1.gba", 0x0068B6D4, 0x18

    mAlignData
    .global C_DECL(gUnknown_0868B6EC)
C_DECL(gUnknown_0868B6EC):
    .incbin "baserom_sa1.gba", 0x0068B6EC, 0x18

    mAlignData
    .global C_DECL(gUnknown_0868B704)
C_DECL(gUnknown_0868B704):
    .incbin "baserom_sa1.gba", 0x0068B704, 0xC

    mAlignData
    .global C_DECL(gUnknown_0868B710)
C_DECL(gUnknown_0868B710):
    .incbin "baserom_sa1.gba", 0x0068B710, 0xC

    mAlignData
    .global C_DECL(gUnknown_0868B71C)
C_DECL(gUnknown_0868B71C):
    .incbin "baserom_sa1.gba", 0x0068B71C, 0x6

    mAlignData
    .global C_DECL(gUnknown_0868B722)
C_DECL(gUnknown_0868B722):
    .incbin "baserom_sa1.gba", 0x0068B722, 0x6

    mAlignData
    .global C_DECL(gUnknown_0868B728)
C_DECL(gUnknown_0868B728):
    .incbin "baserom_sa1.gba", 0x0068B728, 0x1

    mAlignData
    .global C_DECL(gUnknown_0868B729)
C_DECL(gUnknown_0868B729):
    .incbin "baserom_sa1.gba", 0x0068B729, 0xB

    mAlignData
    .global C_DECL(gUnknown_0868B734)
C_DECL(gUnknown_0868B734):
    .incbin "baserom_sa1.gba", 0x0068B734, 0x24

    mAlignWord
    mAlignData
    .global C_DECL(sLangScreenReturnProcs)
C_DECL(sLangScreenReturnProcs):
    mPtr C_DECL(CreateOptionsMenu)
    mPtr C_DECL(CreateSegaLogo)

    mAlignData
    .global C_DECL(gUnknown_0868B760)
C_DECL(gUnknown_0868B760):
    .incbin "baserom_sa1.gba", 0x0068B760, 0xC

                                 

    mAlignData
    .global C_DECL(gUnknown_0868B76C)
C_DECL(gUnknown_0868B76C):
    .incbin "baserom_sa1.gba", 0x0068B76C, 0xC

    mAlignData
    .global C_DECL(gUnknown_0868B778)
C_DECL(gUnknown_0868B778):
    .incbin "baserom_sa1.gba", 0x0068B778, 0x6

    mAlignData
    .global C_DECL(gUnknown_0868B77E)
C_DECL(gUnknown_0868B77E):
    .incbin "baserom_sa1.gba", 0x0068B77E, 0x4

    mAlignData
    .global C_DECL(gUnknown_0868B782)
C_DECL(gUnknown_0868B782):
    .incbin "baserom_sa1.gba", 0x0068B782, 0x4

    mAlignData
    .global C_DECL(gUnknown_0868B786)
C_DECL(gUnknown_0868B786):
    .incbin "baserom_sa1.gba", 0x0068B786, 0x4

    mAlignData
    .global C_DECL(gUnknown_0868B78A)
C_DECL(gUnknown_0868B78A):
    .incbin "baserom_sa1.gba", 0x0068B78A, 0x1

    mAlignData
    .global C_DECL(gUnknown_0868B78B)
C_DECL(gUnknown_0868B78B):
    .incbin "baserom_sa1.gba", 0x0068B78B, 0x5

    mAlignData
    .global C_DECL(gUnknown_0868B790)
C_DECL(gUnknown_0868B790):
    .incbin "baserom_sa1.gba", 0x0068B790, 0x4
