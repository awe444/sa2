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
# 2 "/home/awaszczak/git/sa2/sa1/data/sa1/data_0_4.s"
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
# 3 "/home/awaszczak/git/sa2/sa1/data/sa1/data_0_4.s"

	mSectionRodata

    mAlignData
    .global C_DECL(gSpawnPositions)
C_DECL(gSpawnPositions):
    .incbin "baserom_sa1.gba", 0x004ADEF0, 0x48

    mAlignData
    .global C_DECL(gSpawnPositions_Modes_4_and_5)
C_DECL(gSpawnPositions_Modes_4_and_5):
    .incbin "baserom_sa1.gba", 0x004ADF38, 0x40

    .global C_DECL(sa2__gUnknown_080D650C)
C_DECL(sa2__gUnknown_080D650C):
    .incbin "baserom_sa1.gba", 0x004ADF78, 0x48

    .global C_DECL(sa2__gUnknown_080D661C)
C_DECL(sa2__gUnknown_080D661C):
    .incbin "baserom_sa1.gba", 0x004ADFC0, 0x48

    mAlignData
    .global C_DECL(gPlayerCharacterIdleAnims)
C_DECL(gPlayerCharacterIdleAnims):
    .short 0, 99, 199, 298

    mAlignData
    .global C_DECL(sCharStateAnimInfo)
C_DECL(sCharStateAnimInfo):
    .incbin "baserom_sa1.gba", 0x004AE010, 0x178

    mAlignData
    .global C_DECL(gUnknown_084AE188)
C_DECL(gUnknown_084AE188):
    .incbin "baserom_sa1.gba", 0x004AE188, 0x12

    mAlignData
    .global C_DECL(gUnknown_084AE19A)
C_DECL(gUnknown_084AE19A):
    .incbin "baserom_sa1.gba", 0x004AE19A, 0x12

    mAlignData
    .global C_DECL(gCharStatesKnucklesGlideTurn)
C_DECL(gCharStatesKnucklesGlideTurn):
    .byte 0x42, 0x43, 0x44, 0x45

    mAlignData
    .global C_DECL(gUnknown_084AE1B0)
C_DECL(gUnknown_084AE1B0):
    .byte 0x8E, 0x01, 0x00, 0x00, 0x15, 0x00, 0x00, 0x00, 0x8F, 0x01, 0x00, 0x00, 0x8F, 0x01, 0x01, 0x00, 0x8F, 0x01, 0x02, 0x00

