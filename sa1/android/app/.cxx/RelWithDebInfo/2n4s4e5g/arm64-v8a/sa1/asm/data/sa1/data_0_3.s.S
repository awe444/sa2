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
# 2 "/home/awaszczak/git/sa2/sa1/data/sa1/data_0_3.s"
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
# 3 "/home/awaszczak/git/sa2/sa1/data/sa1/data_0_3.s"

    mSectionRodata


    mAlignData
    .global C_DECL(gUnknown_084ACDA0)
C_DECL(gUnknown_084ACDA0):
    .incbin "baserom_sa1.gba", 0x004ACDA0, 0xC

    mAlignData
    .global C_DECL(gUnknown_084ACDAC)
C_DECL(gUnknown_084ACDAC):
    .incbin "baserom_sa1.gba", 0x004ACDAC, 0x14

    mAlignData
    .global C_DECL(gUnknown_084ACDC0)
C_DECL(gUnknown_084ACDC0):
    .incbin "baserom_sa1.gba", 0x004ACDC0, 0x12

    mAlignData
    .global C_DECL(gUnknown_084ACDD2)
C_DECL(gUnknown_084ACDD2):
    // C code declares this as u16[8][2][2] = 64 bytes (0x40).
    // The original ROM data spans 0x4ACDD2..0x4ACE12 contiguously.
    // Previously this was split into three separate .incbin directives
    // (gUnknown_084ACDD2: 0x2, gUnknown_084ACDD4: 0x4, gUnknown_084ACDD8: 0x3A)
    // with mAlignData between them, which inserted 16-byte alignment padding
    // on x86_64 and broke the contiguous array layout — causing boss 3 pipe
    // sprites to read garbage variant IDs and segfault.
    .incbin "baserom_sa1.gba", 0x004ACDD2, 0x40

    mAlignData
    .global C_DECL(gUnknown_084ACE12)
C_DECL(gUnknown_084ACE12):
    .incbin "baserom_sa1.gba", 0x004ACE12, 0x12

    mAlignData
    .global C_DECL(gUnknown_084ACE24)
C_DECL(gUnknown_084ACE24):
    .incbin "baserom_sa1.gba", 0x004ACE24, 0x80

    mAlignData
    .global C_DECL(gUnknown_084ACEA4)
C_DECL(gUnknown_084ACEA4):
    .incbin "baserom_sa1.gba", 0x004ACEA4, 0x10

    mAlignData
    .global C_DECL(gUnknown_084ACEB4)
C_DECL(gUnknown_084ACEB4):
    .incbin "baserom_sa1.gba", 0x004ACEB4, 0x12

    mAlignData
    .global C_DECL(gUnknown_084ACEC6)
C_DECL(gUnknown_084ACEC6):
    .incbin "baserom_sa1.gba", 0x004ACEC6, 0x12

    mAlignData
    .global C_DECL(gUnknown_084ACED8)
C_DECL(gUnknown_084ACED8):
    .incbin "baserom_sa1.gba", 0x004ACED8, 0xC

    mAlignData
    .global C_DECL(gUnknown_084ACEE4)
C_DECL(gUnknown_084ACEE4):
    .incbin "baserom_sa1.gba", 0x004ACEE4, 0x12

    mAlignData
    .global C_DECL(gUnknown_084ACEF6)
C_DECL(gUnknown_084ACEF6):
    .incbin "baserom_sa1.gba", 0x004ACEF6, 0x12

    mAlignData
    .global C_DECL(gUnknown_084ACF08)
C_DECL(gUnknown_084ACF08):
    .incbin "baserom_sa1.gba", 0x004ACF08, 0x14

    mAlignData
    .global C_DECL(gUnknown_084ACF1C)
C_DECL(gUnknown_084ACF1C):
    .incbin "baserom_sa1.gba", 0x004ACF1C, 0x8

    mAlignData
    .global C_DECL(gUnknown_084ACF24)
C_DECL(gUnknown_084ACF24):
    .incbin "baserom_sa1.gba", 0x004ACF24, 0x8

    mAlignData
    .global C_DECL(gUnknown_084ACF2C)
C_DECL(gUnknown_084ACF2C):
    .incbin "baserom_sa1.gba", 0x004ACF2C, 0x8

    mAlignData
    .global C_DECL(gUnknown_084ACF34)
C_DECL(gUnknown_084ACF34):
    .incbin "baserom_sa1.gba", 0x004ACF34, 0x8
