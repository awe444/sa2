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
# 2 "/home/awaszczak/git/sa2/sa1/data/sa1/data_0_6_0.s"
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
# 3 "/home/awaszczak/git/sa2/sa1/data/sa1/data_0_6_0.s"

	mSectionRodata

    mAlignData
    .global C_DECL(gUnknown_0868B3D8)
C_DECL(gUnknown_0868B3D8):
    .incbin "baserom_sa1.gba", 0x0068B3D8, 0x10

    mAlignData
    .global C_DECL(gUnknown_0868B3E8)
C_DECL(gUnknown_0868B3E8):
    .incbin "baserom_sa1.gba", 0x0068B3E8, 0x10

    mAlignData
    .global C_DECL(gUnknown_0868B3F8)
C_DECL(gUnknown_0868B3F8):
    .incbin "baserom_sa1.gba", 0x0068B3F8, 0x10

    mAlignData
    .global C_DECL(gUnknown_0868B408)
C_DECL(gUnknown_0868B408):
    .incbin "baserom_sa1.gba", 0x0068B408, 0x10

    mAlignData
    .global C_DECL(gUnknown_0868B418)
C_DECL(gUnknown_0868B418):
    .incbin "baserom_sa1.gba", 0x0068B418, 0x10

    mAlignData
    .global C_DECL(gUnknown_0868B428)
C_DECL(gUnknown_0868B428):
    .incbin "baserom_sa1.gba", 0x0068B428, 0x10

    mAlignData
    .global C_DECL(gUnknown_0868B438)
C_DECL(gUnknown_0868B438):
    .incbin "baserom_sa1.gba", 0x0068B438, 0x10

    mAlignData
    .global C_DECL(gUnknown_0868B448)
C_DECL(gUnknown_0868B448):
    .incbin "baserom_sa1.gba", 0x0068B448, 0x10

    mAlignData
    .global C_DECL(gUnknown_0868B458)
C_DECL(gUnknown_0868B458):
    .incbin "baserom_sa1.gba", 0x0068B458, 0x10

    mAlignData
    .global C_DECL(gUnknown_0868B468)
C_DECL(gUnknown_0868B468):
    .incbin "baserom_sa1.gba", 0x0068B468, 0x10

    mAlignData
    .global C_DECL(gUnknown_0868B478)
C_DECL(gUnknown_0868B478):
    .incbin "baserom_sa1.gba", 0x0068B478, 0x10

    mAlignData
    .global C_DECL(gUnknown_0868B488)
C_DECL(gUnknown_0868B488):
    .incbin "baserom_sa1.gba", 0x0068B488, 0x10

    mAlignData
    .global C_DECL(gUnknown_0868B498)
C_DECL(gUnknown_0868B498):
    .incbin "baserom_sa1.gba", 0x0068B498, 0x10

    mAlignData
    .global C_DECL(gUnknown_0868B4A8)
C_DECL(gUnknown_0868B4A8):
    .incbin "baserom_sa1.gba", 0x0068B4A8, 0x10

    mAlignData
    .global C_DECL(gUnknown_0868B4B8)
C_DECL(gUnknown_0868B4B8):
    .incbin "baserom_sa1.gba", 0x0068B4B8, 0x6

    mAlignData
    .global C_DECL(gUnknown_0868B4BE)
C_DECL(gUnknown_0868B4BE):
    .incbin "baserom_sa1.gba", 0x0068B4BE, 0xC6

    mAlignData
    .global C_DECL(gUnknown_0868B584)
C_DECL(gUnknown_0868B584):
    .incbin "baserom_sa1.gba", 0x0068B584, 0x10

    mAlignData
    .global C_DECL(gUnknown_0868B594)
C_DECL(gUnknown_0868B594):
    .incbin "baserom_sa1.gba", 0x0068B594, 0x10

    mAlignData
    .global C_DECL(gUnknown_0868B5A4)
C_DECL(gUnknown_0868B5A4):
    .incbin "baserom_sa1.gba", 0x0068B5A4, 0x10

    mAlignData
    .global C_DECL(gUnknown_0868B5B4)
C_DECL(gUnknown_0868B5B4):
    .incbin "baserom_sa1.gba", 0x0068B5B4, 0x10

    mAlignData
    .global C_DECL(gUnknown_0868B5C4)
C_DECL(gUnknown_0868B5C4):
    .incbin "baserom_sa1.gba", 0x0068B5C4, 0x70

    mAlignData
    .global C_DECL(gUnknown_0868B634)
C_DECL(gUnknown_0868B634):
    .incbin "baserom_sa1.gba", 0x0068B634, 0x10

    mAlignData
    .global C_DECL(gUnknown_0868B644)
C_DECL(gUnknown_0868B644):
    .incbin "baserom_sa1.gba", 0x0068B644, 0x10

    mAlignData
    .global C_DECL(gUnknown_0868B654)
C_DECL(gUnknown_0868B654):
    .incbin "baserom_sa1.gba", 0x0068B654, 0x4

    mAlignData
    .global C_DECL(gUnknown_0868B658)
C_DECL(gUnknown_0868B658):
    .incbin "baserom_sa1.gba", 0x0068B658, 0x4
