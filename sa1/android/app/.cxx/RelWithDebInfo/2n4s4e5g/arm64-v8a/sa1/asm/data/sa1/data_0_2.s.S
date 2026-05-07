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
# 2 "/home/awaszczak/git/sa2/sa1/data/sa1/data_0_2.s"
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
# 3 "/home/awaszczak/git/sa2/sa1/data/sa1/data_0_2.s"

	mSectionRodata

    mAlignData
    .global C_DECL(gUnknown_08487134)
C_DECL(gUnknown_08487134):
    .incbin "baserom_sa1.gba", 0x00487134, 0xC

    mAlignData
    .global C_DECL(gUnknown_08487140)
C_DECL(gUnknown_08487140):
    .incbin "baserom_sa1.gba", 0x00487140, 0x1C

    mAlignData
    .global C_DECL(gUnknown_0848715C)
C_DECL(gUnknown_0848715C):
    .incbin "baserom_sa1.gba", 0x0048715C, 0x28

    mAlignData
    .global C_DECL(gUnknown_08487184)
C_DECL(gUnknown_08487184):
    .incbin "baserom_sa1.gba", 0x00487184, 0x40

    mAlignData
    .global C_DECL(gUnknown_084871C4)
C_DECL(gUnknown_084871C4):
    .incbin "baserom_sa1.gba", 0x004871C4, 0x40

    mAlignData
    .global C_DECL(gUnknown_08487204)
C_DECL(gUnknown_08487204):
    .incbin "baserom_sa1.gba", 0x00487204, 0x8

    mAlignData
    .global C_DECL(gUnknown_0848720C)
C_DECL(gUnknown_0848720C):
    .incbin "baserom_sa1.gba", 0x0048720C, 0x8

    mAlignData
    .global C_DECL(gUnknown_08487214)
C_DECL(gUnknown_08487214):
    .incbin "baserom_sa1.gba", 0x00487214, 0x18

    mAlignData
    .global C_DECL(gUnknown_0848722C)
C_DECL(gUnknown_0848722C):
    .incbin "baserom_sa1.gba", 0x0048722C, 0x60

    mAlignData
    .global C_DECL(gUnknown_0848728C)
C_DECL(gUnknown_0848728C):
    .incbin "baserom_sa1.gba", 0x0048728C, 0x38

    mAlignData
    .global C_DECL(gUnknown_084872C4)
C_DECL(gUnknown_084872C4):
    .incbin "baserom_sa1.gba", 0x004872C4, 0x1C

    mAlignData
    .global C_DECL(gUnknown_084872E0)
C_DECL(gUnknown_084872E0):
    .incbin "baserom_sa1.gba", 0x004872E0, 0x30

    mAlignData
    .global C_DECL(gUnknown_08487310)
C_DECL(gUnknown_08487310):
    .incbin "baserom_sa1.gba", 0x00487310, 0x20

    mAlignData
    .global C_DECL(gUnknown_08487330)
C_DECL(gUnknown_08487330):
    .incbin "baserom_sa1.gba", 0x00487330, 0x28

    mAlignData
    .global C_DECL(gUnknown_08487358)
C_DECL(gUnknown_08487358):
    .incbin "baserom_sa1.gba", 0x00487358, 0x864
    
    mAlignData
    .global C_DECL(gUnknown_08487BBC)
C_DECL(gUnknown_08487BBC):
    .incbin "baserom_sa1.gba", 0x00487BBC, 0xB70
    
    mAlignData
    .global C_DECL(gUnknown_0848872C)
C_DECL(gUnknown_0848872C):
    .incbin "baserom_sa1.gba", 0x0048872C, 0xBDC
    
    mAlignData
    .global C_DECL(gUnknown_08489308)
C_DECL(gUnknown_08489308):
    .incbin "baserom_sa1.gba", 0x00489308, 0xC54
    
    mAlignData
    .global C_DECL(gUnknown_08489F5C)
C_DECL(gUnknown_08489F5C):
    .incbin "baserom_sa1.gba", 0x00489F5C, 0xE58
    
    mAlignData
    .global C_DECL(gUnknown_0848ADB4)
C_DECL(gUnknown_0848ADB4):
    .incbin "baserom_sa1.gba", 0x0048ADB4, 0xCCC

    mAlignData
    .global C_DECL(gUnknown_0848BA80)
C_DECL(gUnknown_0848BA80):
    .incbin "baserom_sa1.gba", 0x0048BA80, 0xF24
