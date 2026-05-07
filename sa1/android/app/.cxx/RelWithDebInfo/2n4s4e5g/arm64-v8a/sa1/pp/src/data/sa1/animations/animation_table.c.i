# 1 "/home/awaszczak/git/sa2/sa1/src/data/sa1/animations/animation_table.c"
# 1 "<built-in>" 1
# 1 "<built-in>" 3
# 384 "<built-in>" 3
# 1 "<command line>" 1
# 1 "<built-in>" 2
# 1 "/home/awaszczak/git/sa2/sa1/src/data/sa1/animations/animation_table.c" 2
# 1 "/home/awaszczak/git/sa2/sa1/../include/global.h" 1



# 1 "/home/awaszczak/git/sa2/sa1/../include/config.h" 1
# 5 "/home/awaszczak/git/sa2/sa1/../include/global.h" 2
# 1 "/home/awaszczak/git/sa2/sa1/../include/gba/gba.h" 1



# 1 "/home/awaszczak/git/sa2/sa1/../include/gba/defines.h" 1




# 1 "/home/awaszczak/Android/Sdk/ndk/25.1.8937393/toolchains/llvm/prebuilt/linux-x86_64/lib64/clang/14.0.6/include/stddef.h" 1 3
# 35 "/home/awaszczak/Android/Sdk/ndk/25.1.8937393/toolchains/llvm/prebuilt/linux-x86_64/lib64/clang/14.0.6/include/stddef.h" 3
typedef long int ptrdiff_t;
# 46 "/home/awaszczak/Android/Sdk/ndk/25.1.8937393/toolchains/llvm/prebuilt/linux-x86_64/lib64/clang/14.0.6/include/stddef.h" 3
typedef long unsigned int size_t;
# 74 "/home/awaszczak/Android/Sdk/ndk/25.1.8937393/toolchains/llvm/prebuilt/linux-x86_64/lib64/clang/14.0.6/include/stddef.h" 3
typedef unsigned int wchar_t;
# 102 "/home/awaszczak/Android/Sdk/ndk/25.1.8937393/toolchains/llvm/prebuilt/linux-x86_64/lib64/clang/14.0.6/include/stddef.h" 3
# 1 "/home/awaszczak/Android/Sdk/ndk/25.1.8937393/toolchains/llvm/prebuilt/linux-x86_64/lib64/clang/14.0.6/include/__stddef_max_align_t.h" 1 3
# 19 "/home/awaszczak/Android/Sdk/ndk/25.1.8937393/toolchains/llvm/prebuilt/linux-x86_64/lib64/clang/14.0.6/include/__stddef_max_align_t.h" 3
typedef struct {
  long long __clang_max_align_nonce1
      __attribute__((__aligned__(__alignof__(long long))));
  long double __clang_max_align_nonce2
      __attribute__((__aligned__(__alignof__(long double))));
} max_align_t;
# 103 "/home/awaszczak/Android/Sdk/ndk/25.1.8937393/toolchains/llvm/prebuilt/linux-x86_64/lib64/clang/14.0.6/include/stddef.h" 2 3
# 6 "/home/awaszczak/git/sa2/sa1/../include/gba/defines.h" 2
# 1 "/home/awaszczak/Android/Sdk/ndk/25.1.8937393/toolchains/llvm/prebuilt/linux-x86_64/lib64/clang/14.0.6/include/stdint.h" 1 3
# 52 "/home/awaszczak/Android/Sdk/ndk/25.1.8937393/toolchains/llvm/prebuilt/linux-x86_64/lib64/clang/14.0.6/include/stdint.h" 3
# 1 "/home/awaszczak/Android/Sdk/ndk/25.1.8937393/toolchains/llvm/prebuilt/linux-x86_64/sysroot/usr/include/stdint.h" 1 3 4
# 32 "/home/awaszczak/Android/Sdk/ndk/25.1.8937393/toolchains/llvm/prebuilt/linux-x86_64/sysroot/usr/include/stdint.h" 3 4
# 1 "/home/awaszczak/Android/Sdk/ndk/25.1.8937393/toolchains/llvm/prebuilt/linux-x86_64/sysroot/usr/include/bits/wchar_limits.h" 1 3 4
# 36 "/home/awaszczak/Android/Sdk/ndk/25.1.8937393/toolchains/llvm/prebuilt/linux-x86_64/sysroot/usr/include/bits/wchar_limits.h" 3 4
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
# 37 "/home/awaszczak/Android/Sdk/ndk/25.1.8937393/toolchains/llvm/prebuilt/linux-x86_64/sysroot/usr/include/bits/wchar_limits.h" 2 3 4
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
# 53 "/home/awaszczak/Android/Sdk/ndk/25.1.8937393/toolchains/llvm/prebuilt/linux-x86_64/lib64/clang/14.0.6/include/stdint.h" 2 3
# 7 "/home/awaszczak/git/sa2/sa1/../include/gba/defines.h" 2
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
# 5 "/home/awaszczak/git/sa2/sa1/../include/gba/gba.h" 2
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
# 1 "/home/awaszczak/git/sa2/sa1/../include/gba/types.h" 1
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
# 7 "/home/awaszczak/git/sa2/sa1/../include/gba/gba.h" 2
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
# 6 "/home/awaszczak/git/sa2/sa1/../include/global.h" 2
# 34 "/home/awaszczak/git/sa2/sa1/../include/global.h"
typedef void (*VoidFn)(void);
# 319 "/home/awaszczak/git/sa2/sa1/../include/global.h"
typedef struct {
    s16 x;
    s16 y;
} Vec2_16;

typedef struct {
    s32 x;
    s32 y;
} Vec2_32;

typedef struct {
    u8 reserved : 4;
    u8 compressedType : 4;
    u32 size : 24;
    void *data;
} RLCompressed;

struct BlendRegs {
    u16 bldCnt;
    u16 bldAlpha;
    u16 bldY;
};







typedef struct {
               u16 pa, pb, pc, pd;
               u32 x, y;
} BgAffineReg;


typedef void (*HBlankIntrFunc)(int_vcount vcount);
typedef void (*IntrFunc)(void);

extern void *iwram_end;
extern void *ewram_end;

extern void *rom_footer;
# 2 "/home/awaszczak/git/sa2/sa1/src/data/sa1/animations/animation_table.c" 2

extern const s32 * const anim_0000[];
extern const s32 * const anim_0001[];
extern const s32 * const anim_0002[];
extern const s32 * const anim_0003[];
extern const s32 * const anim_0004[];
extern const s32 * const anim_0005[];
extern const s32 * const anim_0006[];
extern const s32 * const anim_0007[];
extern const s32 * const anim_0008[];
extern const s32 * const anim_0009[];
extern const s32 * const anim_0010[];
extern const s32 * const anim_0011[];
extern const s32 * const anim_0012[];
extern const s32 * const anim_0013[];
extern const s32 * const anim_0014[];
extern const s32 * const anim_0017[];
extern const s32 * const anim_0018[];
extern const s32 * const anim_0019[];
extern const s32 * const anim_0021[];
extern const s32 * const anim_0022[];
extern const s32 * const anim_0023[];
extern const s32 * const anim_0024[];
extern const s32 * const anim_0025[];
extern const s32 * const anim_0026[];
extern const s32 * const anim_0027[];
extern const s32 * const anim_0028[];
extern const s32 * const anim_0029[];
extern const s32 * const anim_0030[];
extern const s32 * const anim_0031[];
extern const s32 * const anim_0032[];
extern const s32 * const anim_0033[];
extern const s32 * const anim_0034[];
extern const s32 * const anim_0035[];
extern const s32 * const anim_0036[];
extern const s32 * const anim_0037[];
extern const s32 * const anim_0038[];
extern const s32 * const anim_0039[];
extern const s32 * const anim_0040[];
extern const s32 * const anim_0041[];
extern const s32 * const anim_0042[];
extern const s32 * const anim_0043[];
extern const s32 * const anim_0044[];
extern const s32 * const anim_0045[];
extern const s32 * const anim_0049[];
extern const s32 * const anim_0050[];
extern const s32 * const anim_0051[];
extern const s32 * const anim_0052[];
extern const s32 * const anim_0053[];
extern const s32 * const anim_0055[];
extern const s32 * const anim_0081[];
extern const s32 * const anim_0082[];
extern const s32 * const anim_0083[];
extern const s32 * const anim_0084[];
extern const s32 * const anim_0085[];
extern const s32 * const anim_0086[];
extern const s32 * const anim_0087[];
extern const s32 * const anim_0088[];
extern const s32 * const anim_0089[];
extern const s32 * const anim_0091[];
extern const s32 * const anim_0093[];
extern const s32 * const anim_0096[];
extern const s32 * const anim_0097[];
extern const s32 * const anim_0098[];
extern const s32 * const anim_0099[];
extern const s32 * const anim_0100[];
extern const s32 * const anim_0101[];
extern const s32 * const anim_0102[];
extern const s32 * const anim_0103[];
extern const s32 * const anim_0104[];
extern const s32 * const anim_0105[];
extern const s32 * const anim_0106[];
extern const s32 * const anim_0107[];
extern const s32 * const anim_0108[];
extern const s32 * const anim_0109[];
extern const s32 * const anim_0110[];
extern const s32 * const anim_0111[];
extern const s32 * const anim_0112[];
extern const s32 * const anim_0113[];
extern const s32 * const anim_0116[];
extern const s32 * const anim_0117[];
extern const s32 * const anim_0118[];
extern const s32 * const anim_0120[];
extern const s32 * const anim_0121[];
extern const s32 * const anim_0122[];
extern const s32 * const anim_0123[];
extern const s32 * const anim_0124[];
extern const s32 * const anim_0125[];
extern const s32 * const anim_0126[];
extern const s32 * const anim_0127[];
extern const s32 * const anim_0128[];
extern const s32 * const anim_0129[];
extern const s32 * const anim_0130[];
extern const s32 * const anim_0131[];
extern const s32 * const anim_0132[];
extern const s32 * const anim_0133[];
extern const s32 * const anim_0134[];
extern const s32 * const anim_0135[];
extern const s32 * const anim_0136[];
extern const s32 * const anim_0137[];
extern const s32 * const anim_0138[];
extern const s32 * const anim_0139[];
extern const s32 * const anim_0140[];
extern const s32 * const anim_0141[];
extern const s32 * const anim_0142[];
extern const s32 * const anim_0145[];
extern const s32 * const anim_0146[];
extern const s32 * const anim_0147[];
extern const s32 * const anim_0149[];
extern const s32 * const anim_0155[];
extern const s32 * const anim_0156[];
extern const s32 * const anim_0157[];
extern const s32 * const anim_0158[];
extern const s32 * const anim_0180[];
extern const s32 * const anim_0181[];
extern const s32 * const anim_0182[];
extern const s32 * const anim_0184[];
extern const s32 * const anim_0185[];
extern const s32 * const anim_0186[];
extern const s32 * const anim_0187[];
extern const s32 * const anim_0188[];
extern const s32 * const anim_0190[];
extern const s32 * const anim_0191[];
extern const s32 * const anim_0192[];
extern const s32 * const anim_0195[];
extern const s32 * const anim_0196[];
extern const s32 * const anim_0197[];
extern const s32 * const anim_0198[];
extern const s32 * const anim_0199[];
extern const s32 * const anim_0200[];
extern const s32 * const anim_0201[];
extern const s32 * const anim_0202[];
extern const s32 * const anim_0203[];
extern const s32 * const anim_0204[];
extern const s32 * const anim_0205[];
extern const s32 * const anim_0206[];
extern const s32 * const anim_0207[];
extern const s32 * const anim_0208[];
extern const s32 * const anim_0209[];
extern const s32 * const anim_0210[];
extern const s32 * const anim_0211[];
extern const s32 * const anim_0212[];
extern const s32 * const anim_0213[];
extern const s32 * const anim_0216[];
extern const s32 * const anim_0217[];
extern const s32 * const anim_0218[];
extern const s32 * const anim_0220[];
extern const s32 * const anim_0221[];
extern const s32 * const anim_0222[];
extern const s32 * const anim_0223[];
extern const s32 * const anim_0224[];
extern const s32 * const anim_0225[];
extern const s32 * const anim_0226[];
extern const s32 * const anim_0227[];
extern const s32 * const anim_0228[];
extern const s32 * const anim_0229[];
extern const s32 * const anim_0230[];
extern const s32 * const anim_0231[];
extern const s32 * const anim_0232[];
extern const s32 * const anim_0233[];
extern const s32 * const anim_0234[];
extern const s32 * const anim_0235[];
extern const s32 * const anim_0236[];
extern const s32 * const anim_0237[];
extern const s32 * const anim_0238[];
extern const s32 * const anim_0239[];
extern const s32 * const anim_0240[];
extern const s32 * const anim_0241[];
extern const s32 * const anim_0242[];
extern const s32 * const anim_0245[];
extern const s32 * const anim_0246[];
extern const s32 * const anim_0249[];
extern const s32 * const anim_0250[];
extern const s32 * const anim_0260[];
extern const s32 * const anim_0261[];
extern const s32 * const anim_0262[];
extern const s32 * const anim_0263[];
extern const s32 * const anim_0264[];
extern const s32 * const anim_0265[];
extern const s32 * const anim_0269[];
extern const s32 * const anim_0270[];
extern const s32 * const anim_0271[];
extern const s32 * const anim_0280[];
extern const s32 * const anim_0281[];
extern const s32 * const anim_0282[];
extern const s32 * const anim_0284[];
extern const s32 * const anim_0285[];
extern const s32 * const anim_0286[];
extern const s32 * const anim_0287[];
extern const s32 * const anim_0288[];
extern const s32 * const anim_0292[];
extern const s32 * const anim_0295[];
extern const s32 * const anim_0296[];
extern const s32 * const anim_0297[];
extern const s32 * const anim_0298[];
extern const s32 * const anim_0299[];
extern const s32 * const anim_0300[];
extern const s32 * const anim_0301[];
extern const s32 * const anim_0302[];
extern const s32 * const anim_0303[];
extern const s32 * const anim_0304[];
extern const s32 * const anim_0305[];
extern const s32 * const anim_0306[];
extern const s32 * const anim_0307[];
extern const s32 * const anim_0308[];
extern const s32 * const anim_0309[];
extern const s32 * const anim_0310[];
extern const s32 * const anim_0311[];
extern const s32 * const anim_0312[];
extern const s32 * const anim_0315[];
extern const s32 * const anim_0316[];
extern const s32 * const anim_0317[];
extern const s32 * const anim_0319[];
extern const s32 * const anim_0320[];
extern const s32 * const anim_0321[];
extern const s32 * const anim_0322[];
extern const s32 * const anim_0323[];
extern const s32 * const anim_0324[];
extern const s32 * const anim_0325[];
extern const s32 * const anim_0326[];
extern const s32 * const anim_0327[];
extern const s32 * const anim_0328[];
extern const s32 * const anim_0329[];
extern const s32 * const anim_0330[];
extern const s32 * const anim_0331[];
extern const s32 * const anim_0332[];
extern const s32 * const anim_0333[];
extern const s32 * const anim_0334[];
extern const s32 * const anim_0335[];
extern const s32 * const anim_0336[];
extern const s32 * const anim_0337[];
extern const s32 * const anim_0338[];
extern const s32 * const anim_0339[];
extern const s32 * const anim_0340[];
extern const s32 * const anim_0341[];
extern const s32 * const anim_0342[];
extern const s32 * const anim_0343[];
extern const s32 * const anim_0348[];
extern const s32 * const anim_0353[];
extern const s32 * const anim_0373[];
extern const s32 * const anim_0374[];
extern const s32 * const anim_0375[];
extern const s32 * const anim_0376[];
extern const s32 * const anim_0377[];
extern const s32 * const anim_0378[];
extern const s32 * const anim_0379[];
extern const s32 * const anim_0380[];
extern const s32 * const anim_0381[];
extern const s32 * const anim_0383[];
extern const s32 * const anim_0384[];
extern const s32 * const anim_0385[];
extern const s32 * const anim_0386[];
extern const s32 * const anim_0387[];
extern const s32 * const anim_0391[];
extern const s32 * const anim_0392[];
extern const s32 * const anim_0393[];
extern const s32 * const anim_0394[];
extern const s32 * const anim_0396[];
extern const s32 * const anim_0397[];
extern const s32 * const anim_0398[];
extern const s32 * const anim_0399[];
extern const s32 * const anim_0400[];
extern const s32 * const anim_0401[];
extern const s32 * const anim_0402[];
extern const s32 * const anim_0403[];
extern const s32 * const anim_0404[];
extern const s32 * const anim_0405[];
extern const s32 * const anim_0406[];
extern const s32 * const anim_0407[];
extern const s32 * const anim_0408[];
extern const s32 * const anim_0409[];
extern const s32 * const anim_0410[];
extern const s32 * const anim_0411[];
extern const s32 * const anim_0412[];
extern const s32 * const anim_0413[];
extern const s32 * const anim_0414[];
extern const s32 * const anim_0415[];
extern const s32 * const anim_0416[];
extern const s32 * const anim_0417[];
extern const s32 * const anim_0418[];
extern const s32 * const anim_0419[];
extern const s32 * const anim_0420[];
extern const s32 * const anim_0421[];
extern const s32 * const anim_0422[];
extern const s32 * const anim_0423[];
extern const s32 * const anim_0424[];
extern const s32 * const anim_0425[];
extern const s32 * const anim_0426[];
extern const s32 * const anim_0427[];
extern const s32 * const anim_0428[];
extern const s32 * const anim_0429[];
extern const s32 * const anim_0430[];
extern const s32 * const anim_0431[];
extern const s32 * const anim_0432[];
extern const s32 * const anim_0433[];
extern const s32 * const anim_0434[];
extern const s32 * const anim_0435[];
extern const s32 * const anim_0436[];
extern const s32 * const anim_0437[];
extern const s32 * const anim_0438[];
extern const s32 * const anim_0439[];
extern const s32 * const anim_0440[];
extern const s32 * const anim_0441[];
extern const s32 * const anim_0442[];
extern const s32 * const anim_0443[];
extern const s32 * const anim_0444[];
extern const s32 * const anim_0445[];
extern const s32 * const anim_0446[];
extern const s32 * const anim_0447[];
extern const s32 * const anim_0448[];
extern const s32 * const anim_0449[];
extern const s32 * const anim_0450[];
extern const s32 * const anim_0451[];
extern const s32 * const anim_0452[];
extern const s32 * const anim_0453[];
extern const s32 * const anim_0454[];
extern const s32 * const anim_0455[];
extern const s32 * const anim_0456[];
extern const s32 * const anim_0457[];
extern const s32 * const anim_0458[];
extern const s32 * const anim_0459[];
extern const s32 * const anim_0460[];
extern const s32 * const anim_0461[];
extern const s32 * const anim_0462[];
extern const s32 * const anim_0463[];
extern const s32 * const anim_0464[];
extern const s32 * const anim_0465[];
extern const s32 * const anim_0466[];
extern const s32 * const anim_0467[];
extern const s32 * const anim_0468[];
extern const s32 * const anim_0469[];
extern const s32 * const anim_0470[];
extern const s32 * const anim_0471[];
extern const s32 * const anim_0472[];
extern const s32 * const anim_0473[];
extern const s32 * const anim_0474[];
extern const s32 * const anim_0475[];
extern const s32 * const anim_0476[];
extern const s32 * const anim_0477[];
extern const s32 * const anim_0478[];
extern const s32 * const anim_0479[];
extern const s32 * const anim_0480[];
extern const s32 * const anim_0481[];
extern const s32 * const anim_0482[];
extern const s32 * const anim_0483[];
extern const s32 * const anim_0484[];
extern const s32 * const anim_0485[];
extern const s32 * const anim_0486[];
extern const s32 * const anim_0487[];
extern const s32 * const anim_0488[];
extern const s32 * const anim_0489[];
extern const s32 * const anim_0490[];
extern const s32 * const anim_0491[];
extern const s32 * const anim_0492[];
extern const s32 * const anim_0493[];
extern const s32 * const anim_0494[];
extern const s32 * const anim_0495[];
extern const s32 * const anim_0496[];
extern const s32 * const anim_0497[];
extern const s32 * const anim_0498[];
extern const s32 * const anim_0499[];
extern const s32 * const anim_0500[];
extern const s32 * const anim_0501[];
extern const s32 * const anim_0502[];
extern const s32 * const anim_0503[];
extern const s32 * const anim_0504[];
extern const s32 * const anim_0505[];
extern const s32 * const anim_0506[];
extern const s32 * const anim_0507[];
extern const s32 * const anim_0508[];
extern const s32 * const anim_0509[];
extern const s32 * const anim_0510[];
extern const s32 * const anim_0511[];
extern const s32 * const anim_0512[];
extern const s32 * const anim_0513[];
extern const s32 * const anim_0514[];
extern const s32 * const anim_0515[];
extern const s32 * const anim_0516[];
extern const s32 * const anim_0517[];
extern const s32 * const anim_0518[];
extern const s32 * const anim_0519[];
extern const s32 * const anim_0520[];
extern const s32 * const anim_0521[];
extern const s32 * const anim_0522[];
extern const s32 * const anim_0523[];
extern const s32 * const anim_0524[];
extern const s32 * const anim_0525[];
extern const s32 * const anim_0526[];
extern const s32 * const anim_0527[];
extern const s32 * const anim_0528[];
extern const s32 * const anim_0529[];
extern const s32 * const anim_0530[];
extern const s32 * const anim_0531[];
extern const s32 * const anim_0532[];
extern const s32 * const anim_0533[];
extern const s32 * const anim_0534[];
extern const s32 * const anim_0535[];
extern const s32 * const anim_0536[];
extern const s32 * const anim_0537[];
extern const s32 * const anim_0538[];
extern const s32 * const anim_0539[];
extern const s32 * const anim_0540[];
extern const s32 * const anim_0541[];
extern const s32 * const anim_0542[];
extern const s32 * const anim_0543[];
extern const s32 * const anim_0544[];
extern const s32 * const anim_0545[];
extern const s32 * const anim_0546[];
extern const s32 * const anim_0547[];
extern const s32 * const anim_0548[];
extern const s32 * const anim_0549[];
extern const s32 * const anim_0550[];
extern const s32 * const anim_0551[];
extern const s32 * const anim_0552[];
extern const s32 * const anim_0553[];
extern const s32 * const anim_0554[];
extern const s32 * const anim_0555[];
extern const s32 * const anim_0556[];
extern const s32 * const anim_0557[];
extern const s32 * const anim_0558[];
extern const s32 * const anim_0559[];
extern const s32 * const anim_0560[];
extern const s32 * const anim_0561[];
extern const s32 * const anim_0562[];
extern const s32 * const anim_0563[];
extern const s32 * const anim_0564[];
extern const s32 * const anim_0565[];
extern const s32 * const anim_0566[];
extern const s32 * const anim_0567[];
extern const s32 * const anim_0568[];
extern const s32 * const anim_0569[];
extern const s32 * const anim_0570[];
extern const s32 * const anim_0571[];
extern const s32 * const anim_0572[];
extern const s32 * const anim_0573[];
extern const s32 * const anim_0574[];
extern const s32 * const anim_0575[];
extern const s32 * const anim_0576[];
extern const s32 * const anim_0577[];
extern const s32 * const anim_0578[];
extern const s32 * const anim_0579[];
extern const s32 * const anim_0580[];
extern const s32 * const anim_0581[];
extern const s32 * const anim_0582[];
extern const s32 * const anim_0583[];
extern const s32 * const anim_0584[];
extern const s32 * const anim_0585[];
extern const s32 * const anim_0586[];
extern const s32 * const anim_0587[];
extern const s32 * const anim_0588[];
extern const s32 * const anim_0589[];
extern const s32 * const anim_0590[];
extern const s32 * const anim_0591[];
extern const s32 * const anim_0592[];
extern const s32 * const anim_0593[];
extern const s32 * const anim_0594[];
extern const s32 * const anim_0595[];
extern const s32 * const anim_0596[];
extern const s32 * const anim_0597[];
extern const s32 * const anim_0598[];
extern const s32 * const anim_0599[];
extern const s32 * const anim_0600[];
extern const s32 * const anim_0601[];
extern const s32 * const anim_0602[];
extern const s32 * const anim_0603[];
extern const s32 * const anim_0604[];
extern const s32 * const anim_0605[];
extern const s32 * const anim_0606[];
extern const s32 * const anim_0607[];
extern const s32 * const anim_0608[];
extern const s32 * const anim_0609[];
extern const s32 * const anim_0610[];
extern const s32 * const anim_0611[];
extern const s32 * const anim_0612[];
extern const s32 * const anim_0613[];
extern const s32 * const anim_0614[];
extern const s32 * const anim_0615[];
extern const s32 * const anim_0616[];
extern const s32 * const anim_0617[];
extern const s32 * const anim_0618[];
extern const s32 * const anim_0619[];
extern const s32 * const anim_0620[];
extern const s32 * const anim_0621[];
extern const s32 * const anim_0622[];
extern const s32 * const anim_0623[];
extern const s32 * const anim_0624[];
extern const s32 * const anim_0625[];
extern const s32 * const anim_0626[];
extern const s32 * const anim_0627[];
extern const s32 * const anim_0628[];
extern const s32 * const anim_0629[];
extern const s32 * const anim_0630[];
extern const s32 * const anim_0631[];
extern const s32 * const anim_0632[];
extern const s32 * const anim_0633[];
extern const s32 * const anim_0634[];
extern const s32 * const anim_0635[];
extern const s32 * const anim_0636[];
extern const s32 * const anim_0637[];
extern const s32 * const anim_0638[];
extern const s32 * const anim_0639[];
extern const s32 * const anim_0640[];
extern const s32 * const anim_0641[];
extern const s32 * const anim_0642[];
extern const s32 * const anim_0643[];
extern const s32 * const anim_0644[];
extern const s32 * const anim_0645[];
extern const s32 * const anim_0646[];
extern const s32 * const anim_0647[];
extern const s32 * const anim_0648[];
extern const s32 * const anim_0649[];
extern const s32 * const anim_0650[];
extern const s32 * const anim_0651[];
extern const s32 * const anim_0652[];
extern const s32 * const anim_0653[];
extern const s32 * const anim_0654[];
extern const s32 * const anim_0655[];
extern const s32 * const anim_0656[];
extern const s32 * const anim_0657[];
extern const s32 * const anim_0658[];
extern const s32 * const anim_0659[];
extern const s32 * const anim_0660[];
extern const s32 * const anim_0661[];
extern const s32 * const anim_0662[];
extern const s32 * const anim_0663[];
extern const s32 * const anim_0664[];
extern const s32 * const anim_0665[];
extern const s32 * const anim_0666[];
extern const s32 * const anim_0667[];
extern const s32 * const anim_0668[];
extern const s32 * const anim_0669[];
extern const s32 * const anim_0670[];
extern const s32 * const anim_0671[];
extern const s32 * const anim_0672[];
extern const s32 * const anim_0673[];
extern const s32 * const anim_0674[];
extern const s32 * const anim_0675[];
extern const s32 * const anim_0676[];
extern const s32 * const anim_0677[];
extern const s32 * const anim_0678[];
extern const s32 * const anim_0679[];
extern const s32 * const anim_0680[];
extern const s32 * const anim_0681[];
extern const s32 * const anim_0682[];
extern const s32 * const anim_0683[];
extern const s32 * const anim_0684[];
extern const s32 * const anim_0685[];
extern const s32 * const anim_0686[];
extern const s32 * const anim_0687[];
extern const s32 * const anim_0688[];
extern const s32 * const anim_0689[];
extern const s32 * const anim_0690[];
extern const s32 * const anim_0691[];
extern const s32 * const anim_0692[];
extern const s32 * const anim_0693[];
extern const s32 * const anim_0694[];
extern const s32 * const anim_0695[];
extern const s32 * const anim_0696[];
extern const s32 * const anim_0697[];
extern const s32 * const anim_0698[];
extern const s32 * const anim_0699[];
extern const s32 * const anim_0700[];
extern const s32 * const anim_0701[];
extern const s32 * const anim_0702[];
extern const s32 * const anim_0703[];
extern const s32 * const anim_0704[];
extern const s32 * const anim_0705[];
extern const s32 * const anim_0706[];
extern const s32 * const anim_0707[];
extern const s32 * const anim_0708[];
extern const s32 * const anim_0709[];
extern const s32 * const anim_0710[];
extern const s32 * const anim_0711[];
extern const s32 * const anim_0712[];
extern const s32 * const anim_0713[];
extern const s32 * const anim_0714[];
extern const s32 * const anim_0715[];
extern const s32 * const anim_0716[];
extern const s32 * const anim_0717[];
extern const s32 * const anim_0718[];
extern const s32 * const anim_0719[];
extern const s32 * const anim_0720[];
extern const s32 * const anim_0721[];
extern const s32 * const anim_0722[];
extern const s32 * const anim_0723[];
extern const s32 * const anim_0724[];
extern const s32 * const anim_0725[];
extern const s32 * const anim_0726[];
extern const s32 * const anim_0727[];
extern const s32 * const anim_0728[];
extern const s32 * const anim_0729[];
extern const s32 * const anim_0730[];
extern const s32 * const anim_0731[];
extern const s32 * const anim_0732[];
extern const s32 * const anim_0733[];
extern const s32 * const anim_0734[];
extern const s32 * const anim_0735[];
extern const s32 * const anim_0736[];
extern const s32 * const anim_0737[];
extern const s32 * const anim_0738[];
extern const s32 * const anim_0739[];
extern const s32 * const anim_0740[];
extern const s32 * const anim_0741[];
extern const s32 * const anim_0742[];
extern const s32 * const anim_0743[];
extern const s32 * const anim_0744[];
extern const s32 * const anim_0745[];
extern const s32 * const anim_0746[];
extern const s32 * const anim_0747[];
extern const s32 * const anim_0748[];
extern const s32 * const anim_0749[];
extern const s32 * const anim_0750[];
extern const s32 * const anim_0751[];
extern const s32 * const anim_0752[];
extern const s32 * const anim_0753[];
extern const s32 * const anim_0754[];
extern const s32 * const anim_0755[];
extern const s32 * const anim_0756[];
extern const s32 * const anim_0757[];
extern const s32 * const anim_0758[];
extern const s32 * const anim_0759[];
extern const s32 * const anim_0760[];
extern const s32 * const anim_0761[];
extern const s32 * const anim_0762[];
extern const s32 * const anim_0763[];
extern const s32 * const anim_0764[];
extern const s32 * const anim_0765[];
extern const s32 * const anim_0766[];
extern const s32 * const anim_0767[];
extern const s32 * const anim_0768[];
extern const s32 * const anim_0769[];
extern const s32 * const anim_0770[];
extern const s32 * const anim_0771[];
extern const s32 * const anim_0772[];
extern const s32 * const anim_0773[];
extern const s32 * const anim_0774[];
extern const s32 * const anim_0775[];
extern const s32 * const anim_0776[];
extern const s32 * const anim_0777[];
extern const s32 * const anim_0778[];
extern const s32 * const anim_0779[];
extern const s32 * const anim_0780[];
extern const s32 * const anim_0781[];
extern const s32 * const anim_0782[];
extern const s32 * const anim_0783[];
extern const s32 * const anim_0784[];
extern const s32 * const anim_0785[];
extern const s32 * const anim_0786[];
extern const s32 * const anim_0787[];
extern const s32 * const anim_0788[];
extern const s32 * const anim_0789[];
extern const s32 * const anim_0790[];
extern const s32 * const anim_0791[];
extern const s32 * const anim_0792[];
extern const s32 * const anim_0793[];
extern const s32 * const anim_0794[];
extern const s32 * const anim_0795[];
extern const s32 * const anim_0796[];
extern const s32 * const anim_0797[];
extern const s32 * const anim_0798[];
extern const s32 * const anim_0799[];
extern const s32 * const anim_0800[];
extern const s32 * const anim_0801[];
extern const s32 * const anim_0802[];
extern const s32 * const anim_0803[];
extern const s32 * const anim_0804[];
extern const s32 * const anim_0805[];
extern const s32 * const anim_0806[];
extern const s32 * const anim_0807[];
extern const s32 * const anim_0808[];
extern const s32 * const anim_0809[];
extern const s32 * const anim_0810[];
extern const s32 * const anim_0811[];
extern const s32 * const anim_0812[];
extern const s32 * const anim_0813[];
extern const s32 * const anim_0814[];
extern const s32 * const anim_0815[];
extern const s32 * const anim_0816[];
extern const s32 * const anim_0817[];
extern const s32 * const anim_0818[];
extern const s32 * const anim_0819[];
extern const s32 * const anim_0820[];
extern const s32 * const anim_0821[];
extern const s32 * const anim_0822[];
extern const s32 * const anim_0823[];
extern const s32 * const anim_0824[];
extern const s32 * const anim_0825[];
extern const s32 * const anim_0826[];
extern const s32 * const anim_0827[];
extern const s32 * const anim_0828[];
extern const s32 * const anim_0829[];
extern const s32 * const anim_0830[];
extern const s32 * const anim_0831[];
extern const s32 * const anim_0832[];
extern const s32 * const anim_0833[];
extern const s32 * const anim_0834[];
extern const s32 * const anim_0835[];
extern const s32 * const anim_0836[];
extern const s32 * const anim_0837[];
extern const s32 * const anim_0838[];
extern const s32 * const anim_0839[];
extern const s32 * const anim_0840[];
extern const s32 * const anim_0841[];
extern const s32 * const anim_0842[];
extern const s32 * const anim_0843[];
extern const s32 * const anim_0844[];
extern const s32 * const anim_0845[];
extern const s32 * const anim_0846[];
extern const s32 * const anim_0847[];
extern const s32 * const anim_0848[];
extern const s32 * const anim_0849[];
extern const s32 * const anim_0850[];
extern const s32 * const anim_0851[];
extern const s32 * const anim_0852[];
extern const s32 * const anim_0853[];
extern const s32 * const anim_0854[];
extern const s32 * const anim_0855[];
extern const s32 * const anim_0856[];
extern const s32 * const anim_0857[];
extern const s32 * const anim_0858[];
extern const s32 * const anim_0859[];
extern const s32 * const anim_0860[];
extern const s32 * const anim_0861[];
extern const s32 * const anim_0862[];
extern const s32 * const anim_0863[];
extern const s32 * const anim_0864[];
extern const s32 * const anim_0865[];
extern const s32 * const anim_0866[];
extern const s32 * const anim_0867[];
extern const s32 * const anim_0868[];
extern const s32 * const anim_0869[];
extern const s32 * const anim_0870[];
extern const s32 * const anim_0871[];
extern const s32 * const anim_0872[];
extern const s32 * const anim_0873[];
extern const s32 * const anim_0874[];
extern const s32 * const anim_0875[];
extern const s32 * const anim_0876[];
extern const s32 * const anim_0877[];
extern const s32 * const anim_0878[];
extern const s32 * const anim_0879[];
extern const s32 * const anim_0880[];
extern const s32 * const anim_0881[];
extern const s32 * const anim_0882[];
extern const s32 * const anim_0883[];
extern const s32 * const anim_0884[];
extern const s32 * const anim_0885[];
extern const s32 * const anim_0886[];
extern const s32 * const anim_0887[];
extern const s32 * const anim_0888[];
extern const s32 * const anim_0889[];
extern const s32 * const anim_0890[];
extern const s32 * const anim_0891[];
extern const s32 * const anim_0892[];
extern const s32 * const anim_0893[];
extern const s32 * const anim_0894[];
extern const s32 * const anim_0895[];
extern const s32 * const anim_0896[];
extern const s32 * const anim_0897[];
extern const s32 * const anim_0898[];
extern const s32 * const anim_0899[];
extern const s32 * const anim_0900[];
extern const s32 * const anim_0901[];
extern const s32 * const anim_0902[];
extern const s32 * const anim_0903[];
extern const s32 * const anim_0904[];
extern const s32 * const anim_0905[];
extern const s32 * const anim_0906[];
extern const s32 * const anim_0907[];

const s32 * const *gAnimations[] = {
    anim_0000,
    anim_0001,
    anim_0002,
    anim_0003,
    anim_0004,
    anim_0005,
    anim_0006,
    anim_0007,
    anim_0008,
    anim_0009,
    anim_0010,
    anim_0011,
    anim_0012,
    anim_0013,
    anim_0014,
    ((void*)0),
    ((void*)0),
    anim_0017,
    anim_0018,
    anim_0019,
    ((void*)0),
    anim_0021,
    anim_0022,
    anim_0023,
    anim_0024,
    anim_0025,
    anim_0026,
    anim_0027,
    anim_0028,
    anim_0029,
    anim_0030,
    anim_0031,
    anim_0032,
    anim_0033,
    anim_0034,
    anim_0035,
    anim_0036,
    anim_0037,
    anim_0038,
    anim_0039,
    anim_0040,
    anim_0041,
    anim_0042,
    anim_0043,
    anim_0044,
    anim_0045,
    ((void*)0),
    ((void*)0),
    ((void*)0),
    anim_0049,
    anim_0050,
    anim_0051,
    anim_0052,
    anim_0053,
    ((void*)0),
    anim_0055,
    ((void*)0),
    ((void*)0),
    ((void*)0),
    ((void*)0),
    ((void*)0),
    ((void*)0),
    ((void*)0),
    ((void*)0),
    ((void*)0),
    ((void*)0),
    ((void*)0),
    ((void*)0),
    ((void*)0),
    ((void*)0),
    ((void*)0),
    ((void*)0),
    ((void*)0),
    ((void*)0),
    ((void*)0),
    ((void*)0),
    ((void*)0),
    ((void*)0),
    ((void*)0),
    ((void*)0),
    ((void*)0),
    anim_0081,
    anim_0082,
    anim_0083,
    anim_0084,
    anim_0085,
    anim_0086,
    anim_0087,
    anim_0088,
    anim_0089,
    ((void*)0),
    anim_0091,
    ((void*)0),
    anim_0093,
    ((void*)0),
    ((void*)0),
    anim_0096,
    anim_0097,
    anim_0098,
    anim_0099,
    anim_0100,
    anim_0101,
    anim_0102,
    anim_0103,
    anim_0104,
    anim_0105,
    anim_0106,
    anim_0107,
    anim_0108,
    anim_0109,
    anim_0110,
    anim_0111,
    anim_0112,
    anim_0113,
    ((void*)0),
    ((void*)0),
    anim_0116,
    anim_0117,
    anim_0118,
    ((void*)0),
    anim_0120,
    anim_0121,
    anim_0122,
    anim_0123,
    anim_0124,
    anim_0125,
    anim_0126,
    anim_0127,
    anim_0128,
    anim_0129,
    anim_0130,
    anim_0131,
    anim_0132,
    anim_0133,
    anim_0134,
    anim_0135,
    anim_0136,
    anim_0137,
    anim_0138,
    anim_0139,
    anim_0140,
    anim_0141,
    anim_0142,
    ((void*)0),
    ((void*)0),
    anim_0145,
    anim_0146,
    anim_0147,
    ((void*)0),
    anim_0149,
    ((void*)0),
    ((void*)0),
    ((void*)0),
    ((void*)0),
    ((void*)0),
    anim_0155,
    anim_0156,
    anim_0157,
    anim_0158,
    ((void*)0),
    ((void*)0),
    ((void*)0),
    ((void*)0),
    ((void*)0),
    ((void*)0),
    ((void*)0),
    ((void*)0),
    ((void*)0),
    ((void*)0),
    ((void*)0),
    ((void*)0),
    ((void*)0),
    ((void*)0),
    ((void*)0),
    ((void*)0),
    ((void*)0),
    ((void*)0),
    ((void*)0),
    ((void*)0),
    ((void*)0),
    anim_0180,
    anim_0181,
    anim_0182,
    ((void*)0),
    anim_0184,
    anim_0185,
    anim_0186,
    anim_0187,
    anim_0188,
    ((void*)0),
    anim_0190,
    anim_0191,
    anim_0192,
    ((void*)0),
    ((void*)0),
    anim_0195,
    anim_0196,
    anim_0197,
    anim_0198,
    anim_0199,
    anim_0200,
    anim_0201,
    anim_0202,
    anim_0203,
    anim_0204,
    anim_0205,
    anim_0206,
    anim_0207,
    anim_0208,
    anim_0209,
    anim_0210,
    anim_0211,
    anim_0212,
    anim_0213,
    ((void*)0),
    ((void*)0),
    anim_0216,
    anim_0217,
    anim_0218,
    ((void*)0),
    anim_0220,
    anim_0221,
    anim_0222,
    anim_0223,
    anim_0224,
    anim_0225,
    anim_0226,
    anim_0227,
    anim_0228,
    anim_0229,
    anim_0230,
    anim_0231,
    anim_0232,
    anim_0233,
    anim_0234,
    anim_0235,
    anim_0236,
    anim_0237,
    anim_0238,
    anim_0239,
    anim_0240,
    anim_0241,
    anim_0242,
    ((void*)0),
    ((void*)0),
    anim_0245,
    anim_0246,
    ((void*)0),
    ((void*)0),
    anim_0249,
    anim_0250,
    ((void*)0),
    ((void*)0),
    ((void*)0),
    ((void*)0),
    ((void*)0),
    ((void*)0),
    ((void*)0),
    ((void*)0),
    ((void*)0),
    anim_0260,
    anim_0261,
    anim_0262,
    anim_0263,
    anim_0264,
    anim_0265,
    ((void*)0),
    ((void*)0),
    ((void*)0),
    anim_0269,
    anim_0270,
    anim_0271,
    ((void*)0),
    ((void*)0),
    ((void*)0),
    ((void*)0),
    ((void*)0),
    ((void*)0),
    ((void*)0),
    ((void*)0),
    anim_0280,
    anim_0281,
    anim_0282,
    ((void*)0),
    anim_0284,
    anim_0285,
    anim_0286,
    anim_0287,
    anim_0288,
    ((void*)0),
    ((void*)0),
    ((void*)0),
    anim_0292,
    ((void*)0),
    ((void*)0),
    anim_0295,
    anim_0296,
    anim_0297,
    anim_0298,
    anim_0299,
    anim_0300,
    anim_0301,
    anim_0302,
    anim_0303,
    anim_0304,
    anim_0305,
    anim_0306,
    anim_0307,
    anim_0308,
    anim_0309,
    anim_0310,
    anim_0311,
    anim_0312,
    ((void*)0),
    ((void*)0),
    anim_0315,
    anim_0306,
    anim_0317,
    ((void*)0),
    anim_0319,
    anim_0320,
    anim_0321,
    anim_0322,
    anim_0323,
    anim_0324,
    anim_0325,
    anim_0326,
    anim_0327,
    anim_0328,
    anim_0329,
    anim_0330,
    anim_0331,
    anim_0332,
    anim_0333,
    anim_0334,
    anim_0335,
    anim_0336,
    anim_0337,
    anim_0338,
    anim_0339,
    anim_0340,
    anim_0341,
    anim_0342,
    anim_0343,
    ((void*)0),
    ((void*)0),
    ((void*)0),
    ((void*)0),
    anim_0348,
    ((void*)0),
    ((void*)0),
    ((void*)0),
    ((void*)0),
    anim_0353,
    ((void*)0),
    ((void*)0),
    ((void*)0),
    ((void*)0),
    ((void*)0),
    ((void*)0),
    ((void*)0),
    ((void*)0),
    ((void*)0),
    ((void*)0),
    ((void*)0),
    ((void*)0),
    ((void*)0),
    ((void*)0),
    ((void*)0),
    ((void*)0),
    ((void*)0),
    ((void*)0),
    ((void*)0),
    anim_0373,
    anim_0374,
    anim_0375,
    anim_0376,
    anim_0377,
    anim_0306,
    anim_0379,
    anim_0380,
    anim_0381,
    ((void*)0),
    anim_0383,
    anim_0384,
    anim_0385,
    anim_0386,
    anim_0387,
    ((void*)0),
    ((void*)0),
    ((void*)0),
    anim_0391,
    anim_0392,
    anim_0393,
    anim_0394,
    ((void*)0),
    anim_0396,
    anim_0397,
    anim_0398,
    anim_0399,
    anim_0400,
    anim_0401,
    anim_0402,
    anim_0403,
    anim_0404,
    anim_0405,
    anim_0406,
    anim_0407,
    anim_0408,
    anim_0409,
    anim_0410,
    anim_0411,
    anim_0412,
    anim_0413,
    anim_0414,
    anim_0415,
    anim_0416,
    anim_0417,
    anim_0418,
    anim_0419,
    anim_0420,
    anim_0421,
    anim_0422,
    anim_0423,
    anim_0424,
    anim_0425,
    anim_0426,
    anim_0427,
    anim_0428,
    anim_0429,
    anim_0430,
    anim_0431,
    anim_0432,
    anim_0433,
    anim_0434,
    anim_0435,
    anim_0436,
    anim_0437,
    anim_0438,
    anim_0439,
    anim_0440,
    anim_0441,
    anim_0442,
    anim_0443,
    anim_0444,
    anim_0445,
    anim_0446,
    anim_0447,
    anim_0448,
    anim_0449,
    anim_0450,
    anim_0451,
    anim_0452,
    anim_0453,
    anim_0454,
    anim_0455,
    anim_0456,
    anim_0457,
    anim_0458,
    anim_0459,
    anim_0460,
    anim_0461,
    anim_0462,
    anim_0463,
    anim_0464,
    anim_0465,
    anim_0466,
    anim_0467,
    anim_0468,
    anim_0469,
    anim_0470,
    anim_0471,
    anim_0472,
    anim_0473,
    anim_0474,
    anim_0475,
    anim_0476,
    anim_0477,
    anim_0478,
    anim_0479,
    anim_0480,
    anim_0481,
    anim_0482,
    anim_0483,
    anim_0484,
    anim_0485,
    anim_0486,
    anim_0487,
    anim_0488,
    anim_0489,
    anim_0490,
    anim_0491,
    anim_0492,
    anim_0493,
    anim_0494,
    anim_0495,
    anim_0496,
    anim_0497,
    anim_0498,
    anim_0499,
    anim_0498,
    anim_0501,
    anim_0502,
    anim_0503,
    anim_0504,
    anim_0505,
    anim_0506,
    anim_0507,
    anim_0508,
    anim_0509,
    anim_0510,
    anim_0511,
    anim_0512,
    anim_0513,
    anim_0514,
    anim_0515,
    anim_0516,
    anim_0517,
    anim_0518,
    anim_0519,
    anim_0520,
    anim_0521,
    anim_0522,
    anim_0523,
    anim_0524,
    anim_0525,
    anim_0526,
    anim_0527,
    anim_0528,
    anim_0529,
    anim_0530,
    anim_0531,
    anim_0532,
    anim_0533,
    anim_0534,
    anim_0535,
    anim_0536,
    anim_0537,
    anim_0538,
    anim_0539,
    anim_0540,
    anim_0541,
    anim_0542,
    anim_0543,
    anim_0544,
    anim_0545,
    anim_0546,
    anim_0547,
    anim_0548,
    anim_0549,
    anim_0550,
    anim_0551,
    anim_0552,
    anim_0553,
    anim_0554,
    anim_0555,
    anim_0556,
    anim_0557,
    anim_0558,
    anim_0559,
    anim_0560,
    anim_0561,
    anim_0562,
    anim_0563,
    anim_0564,
    anim_0565,
    anim_0566,
    anim_0567,
    anim_0568,
    anim_0569,
    anim_0570,
    anim_0571,
    anim_0572,
    anim_0573,
    anim_0574,
    anim_0575,
    anim_0576,
    anim_0577,
    anim_0578,
    anim_0579,
    anim_0580,
    anim_0581,
    anim_0582,
    anim_0583,
    anim_0584,
    anim_0585,
    anim_0586,
    anim_0587,
    anim_0588,
    anim_0589,
    anim_0590,
    anim_0591,
    anim_0592,
    anim_0593,
    anim_0594,
    anim_0595,
    anim_0596,
    anim_0597,
    anim_0598,
    anim_0599,
    anim_0600,
    anim_0601,
    anim_0602,
    anim_0603,
    anim_0604,
    anim_0605,
    anim_0606,
    anim_0607,
    anim_0608,
    anim_0609,
    anim_0610,
    anim_0611,
    anim_0612,
    anim_0613,
    anim_0614,
    anim_0615,
    anim_0616,
    anim_0617,
    anim_0618,
    anim_0619,
    anim_0620,
    anim_0621,
    anim_0622,
    anim_0623,
    anim_0624,
    anim_0625,
    anim_0626,
    anim_0627,
    anim_0628,
    anim_0629,
    anim_0630,
    anim_0631,
    anim_0632,
    anim_0633,
    anim_0634,
    anim_0635,
    anim_0636,
    anim_0637,
    anim_0638,
    anim_0639,
    anim_0640,
    anim_0641,
    anim_0642,
    anim_0643,
    anim_0644,
    anim_0645,
    anim_0646,
    anim_0647,
    anim_0648,
    anim_0649,
    anim_0650,
    anim_0651,
    anim_0652,
    anim_0653,
    anim_0654,
    anim_0655,
    anim_0656,
    anim_0657,
    anim_0658,
    anim_0659,
    anim_0660,
    anim_0661,
    anim_0662,
    anim_0663,
    anim_0664,
    anim_0665,
    anim_0666,
    anim_0667,
    anim_0668,
    anim_0669,
    anim_0670,
    anim_0671,
    anim_0672,
    anim_0673,
    anim_0674,
    anim_0675,
    anim_0676,
    anim_0677,
    anim_0678,
    anim_0679,
    anim_0680,
    anim_0681,
    anim_0682,
    anim_0683,
    anim_0684,
    anim_0685,
    anim_0686,
    anim_0687,
    anim_0688,
    anim_0689,
    anim_0690,
    anim_0691,
    anim_0692,
    anim_0693,
    anim_0694,
    anim_0695,
    anim_0696,
    anim_0697,
    anim_0698,
    anim_0699,
    anim_0700,
    anim_0701,
    anim_0702,
    anim_0703,
    anim_0704,
    anim_0705,
    anim_0706,
    anim_0707,
    anim_0708,
    anim_0709,
    anim_0710,
    anim_0711,
    anim_0712,
    anim_0713,
    anim_0714,
    anim_0715,
    anim_0716,
    anim_0717,
    anim_0718,
    anim_0719,
    anim_0720,
    anim_0721,
    anim_0722,
    anim_0723,
    anim_0724,
    anim_0725,
    anim_0726,
    anim_0727,
    anim_0728,
    anim_0729,
    anim_0730,
    anim_0731,
    anim_0732,
    anim_0733,
    anim_0734,
    anim_0735,
    anim_0736,
    anim_0737,
    anim_0738,
    anim_0739,
    anim_0740,
    anim_0741,
    anim_0742,
    anim_0743,
    anim_0744,
    anim_0745,
    anim_0746,
    anim_0747,
    anim_0748,
    anim_0749,
    anim_0750,
    anim_0751,
    anim_0752,
    anim_0753,
    anim_0754,
    anim_0755,
    anim_0756,
    anim_0757,
    anim_0758,
    anim_0759,
    anim_0760,
    anim_0761,
    anim_0762,
    anim_0763,
    anim_0764,
    anim_0765,
    anim_0766,
    anim_0767,
    anim_0768,
    anim_0769,
    anim_0770,
    anim_0771,
    anim_0772,
    anim_0773,
    anim_0774,
    anim_0775,
    anim_0776,
    anim_0777,
    anim_0778,
    anim_0779,
    anim_0780,
    anim_0781,
    anim_0782,
    anim_0783,
    anim_0784,
    anim_0785,
    anim_0786,
    anim_0787,
    anim_0788,
    anim_0789,
    anim_0790,
    anim_0791,
    anim_0792,
    anim_0793,
    anim_0794,
    anim_0795,
    anim_0796,
    anim_0797,
    anim_0798,
    anim_0799,
    anim_0800,
    anim_0801,
    anim_0802,
    anim_0736,
    anim_0735,
    anim_0805,
    anim_0806,
    anim_0807,
    anim_0808,
    anim_0809,
    anim_0810,
    anim_0811,
    anim_0812,
    anim_0813,
    anim_0814,
    anim_0815,
    anim_0816,
    anim_0817,
    anim_0818,
    anim_0819,
    anim_0820,
    anim_0821,
    anim_0822,
    anim_0823,
    anim_0824,
    anim_0825,
    anim_0826,
    anim_0827,
    anim_0828,
    anim_0829,
    anim_0830,
    anim_0831,
    anim_0832,
    anim_0833,
    anim_0834,
    anim_0835,
    anim_0836,
    anim_0837,
    anim_0838,
    anim_0839,
    anim_0840,
    anim_0841,
    anim_0842,
    anim_0843,
    anim_0844,
    anim_0845,
    anim_0846,
    anim_0847,
    anim_0848,
    anim_0849,
    anim_0850,
    anim_0851,
    anim_0852,
    anim_0853,
    anim_0854,
    anim_0855,
    anim_0856,
    anim_0857,
    anim_0858,
    anim_0859,
    anim_0860,
    anim_0861,
    anim_0862,
    anim_0863,
    anim_0864,
    anim_0865,
    anim_0866,
    anim_0867,
    anim_0868,
    anim_0869,
    anim_0870,
    anim_0871,
    anim_0872,
    anim_0873,
    anim_0874,
    anim_0875,
    anim_0876,
    anim_0877,
    anim_0878,
    anim_0879,
    anim_0880,
    anim_0881,
    anim_0882,
    anim_0883,
    anim_0884,
    anim_0885,
    anim_0886,
    anim_0887,
    anim_0888,
    anim_0889,
    anim_0890,
    anim_0891,
    anim_0892,
    anim_0893,
    anim_0894,
    anim_0895,
    anim_0896,
    anim_0897,
    anim_0898,
    anim_0899,
    anim_0900,
    anim_0901,
    anim_0902,
    anim_0903,
    anim_0904,
    anim_0905,
    anim_0906,
    anim_0907,
};
