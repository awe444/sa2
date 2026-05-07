# 1 "/home/awaszczak/git/sa2/sa1/src/data/sa1/animations/animations.c"
# 1 "<built-in>" 1
# 1 "<built-in>" 3
# 384 "<built-in>" 3
# 1 "<command line>" 1
# 1 "<built-in>" 2
# 1 "/home/awaszczak/git/sa2/sa1/src/data/sa1/animations/animations.c" 2
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
# 2 "/home/awaszczak/git/sa2/sa1/src/data/sa1/animations/animations.c" 2
# 1 "/home/awaszczak/git/sa2/sa1/../include/constants/sa1/anim_commands.h" 1
# 3 "/home/awaszczak/git/sa2/sa1/src/data/sa1/animations/animations.c" 2

const s32 anim_0000__v0_l0[] = {
    -2, 0, (((u16)16 << 0) | ((u16)0x0 << 16)), -1, 0x0, 20, -6, 0, (((-6 & 0xFF) << 0) | ((-13 & 0xFF) << 8) | ((6 & 0xFF) << 16) | ((16 & 0xFF) << 24)), 6, 0,

        -1, 0x14, 16, 6, 1,

            -1, 0x24, 16, 6, 2,

                -1, 0x34, 16, 6, 3,

                    -1, 0x44, 20, 6, 4,

                        -1, 0x58, 20, 6, 5,

                            -1, 0x6C, 16, 6, 6,

                                -1, 0x7C, 20, 6, 7,

                                    -1, 0x0, 20, -6, 0, (((-6 & 0xFF) << 0) | ((-13 & 0xFF) << 8) | ((6 & 0xFF) << 16) | ((16 & 0xFF) << 24)), 6, 0,

                                        -1, 0x14, 16, 6, 1,

                                            -1, 0x90, 16, 6, 8,

                                                -1, 0xA0, 16, 6, 9,

                                                    -1, 0x44, 20, 6, 4,

                                                        -1, 0x58, 20, 6, 5,

                                                            -1, 0x6C, 16, 6, 6,

                                                                -1, 0x7C, 20, 6, 7,

                                                                    -1, 0x0, 20, -6, 0, (((-6 & 0xFF) << 0) | ((-13 & 0xFF) << 8) | ((6 & 0xFF) << 16) | ((16 & 0xFF) << 24)), 6, 0,

                                                                        -1, 0x14, 16, 6, 1,

                                                                            -1, 0x24, 16, 6, 2,

                                                                                -1, 0x34, 16, 6, 3,

                                                                                    -1, 0x44, 20, 6, 4,

                                                                                        -1, 0x58, 20, 6, 5,

                                                                                            -1, 0x6C, 16, 6, 6,

                                                                                                -1, 0x7C, 20, 6, 7,

                                                                                                    -1, 0xB0, 20, -6, 0, (((-6 & 0xFF) << 0) | ((-13 & 0xFF) << 8) | ((6 & 0xFF) << 16) | ((16 & 0xFF) << 24)), 6, 10,


                                                                                                        -1, 0xC4, 20, 12, 11,

                                                                                                            -1, 0xD8, 20, 6, 12,


                                                                                                                -1, 0xC4, 20, 6, 11,


                                                                                                                    -1, 0xD8, 20, 6, 12,



                                                                                                                        -1, 0xC4, 20, 12, 11,



                                                                                                                            -1, 0xB0, 20, 8, 10,


                                                                                                                                -1, 0x0, 20, 6, 0,


                                                                                                                                    -1, 0x58, 20, 6, 5,



                                                                                                                                        -1, 0x6C, 16, 6, 6,



                                                                                                                                            -1, 0x7C, 20,


                                                                                                                                                6, 7,



                                                                                                                                                    -3, 190,

};

const s32 *const anim_0000[1] = {
    anim_0000__v0_l0,
};

const s32 anim_0001__v0_l0[] = {
    -2, 0, (((u16)16 << 0) | ((u16)0x0 << 16)), -1, 0xEC, 20, -6, 0, (((-6 & 0xFF) << 0) | ((-13 & 0xFF) << 8) | ((6 & 0xFF) << 16) | ((16 & 0xFF) << 24)), 6, 0,

        -1, 0x100, 20, 30, 1,

            -1, 0x114, 30, 10, 2,

                -1, 0x132, 20, 6, 3,

                    -1, 0x100, 20, 40, 1,

                        -1, 0x146, 20, 6, 4,

                            -1, 0x15A, 25, 8, 5,

                                -1, 0x173, 25, 8, 6,

                                    -1, 0x15A, 25, 8, 5,

                                        -1, 0x173, 25, 8, 6,

                                            -1, 0x15A, 25, 8, 5,

                                                -1, 0x173, 25, 8, 6,

                                                    -1, 0x18C, 20, 6, 7,

                                                        -1, 0x1A0, 20, 12, 8,

                                                            -1, 0x1B4, 20, 6, 9,

                                                                -1, 0x1C8, 20, 6, 10,

                                                                    -1, 0x1DC, 20, 6, 11,

                                                                        -1, 0x1F0, 20, 20, 12,

                                                                            -1, 0x204, 20, -6, 0, (((-6 & 0xFF) << 0) | ((-13 & 0xFF) << 8) | ((6 & 0xFF) << 16) | ((16 & 0xFF) << 24)), 8, 13,

                                                                                -1, 0x218, 20, 30, 14,

                                                                                    -1, 0x204, 20, 8, 13, -1, 0x100, 20, 20, 1,


                                                                                        -1, 0x22C, 20, 8, 15,

                                                                                            -1, 0x240, 20, 12, 16,

                                                                                                -1, 0x254, 20, 8, 17,

                                                                                                    -1, 0x240, 20, 8, 16,

                                                                                                        -1, 0x254, 20, 8, 17,

                                                                                                            -1, 0x240, 20, 20, 16,


                                                                                                                -1, 0x22C, 20, 6, 15,


                                                                                                                    -1, 0x100, 20, 80, 1,



                                                                                                                        -1, 0x22C, 20, 8, 15,



                                                                                                                            -1, 0x240, 20, 12, 16,



                                                                                                                                -1, 0x254, 20, 8, 17,


                                                                                                                                    -1, 0x240, 20, 8, 16,



                                                                                                                                        -1, 0x254, 20, 8, 17,



                                                                                                                                            -1, 0x240, 20, 20, 16,



                                                                                                                                                -1, 0x22C, 20,


                                                                                                                                                    6, 15,



                                                                                                                                                        -3, 80,

};

const s32 *const anim_0001[1] = {
    anim_0001__v0_l0,
};

const s32 anim_0002__v0_l0[] = {
    -2, 0, (((u16)16 << 0) | ((u16)0x0 << 16)), -1, 0x268, 20, -6, 0, (((-6 & 0xFF) << 0) | ((-13 & 0xFF) << 8) | ((6 & 0xFF) << 16) | ((16 & 0xFF) << 24)), 1, 0,

        -1, 0x27C, 20, 1, 1, -1, 0x290, 20, 12, 2,

            -1, 0x2A4, 20, 12, 3,

                -1, 0x290, 20, 12, 2,

                    -1, 0x2B8, 20, 12, 4,

                        -3, 20,
};

const s32 anim_0002__v1_l0[] = {
    -2, 0, (((u16)16 << 0) | ((u16)0x0 << 16)), -1, 0x27C, 20, -6, 0, (((-6 & 0xFF) << 0) | ((-13 & 0xFF) << 8) | ((6 & 0xFF) << 16) | ((16 & 0xFF) << 24)), 1, 1,

        -1, 0x268, 20, 1, 0,

            -4,
};

const s32 *const anim_0002[2] = {
    anim_0002__v0_l0,
    anim_0002__v1_l0,
};

const s32 anim_0003__v0_l0[] = {
    -2, 0, (((u16)16 << 0) | ((u16)0x0 << 16)), -1, 0x2CC, 16, -6, 0, (((-6 & 0xFF) << 0) | ((-6 & 0xFF) << 8) | ((6 & 0xFF) << 16) | ((16 & 0xFF) << 24)), 1, 0,

        -1, 0x2DC, 16, 1, 1,

            -1, 0x2EC, 16, 1, 2, -1, 0x2FC, 16, 1, 3,

                -3, 5,
};

const s32 anim_0003__v1_l0[] = {
    -2, 0, (((u16)16 << 0) | ((u16)0x0 << 16)), -1, 0x2DC, 16, -6, 0, (((-6 & 0xFF) << 0) | ((-6 & 0xFF) << 8) | ((6 & 0xFF) << 16) | ((16 & 0xFF) << 24)), 1, 1,

        -1, 0x2CC, 16, 1, 0,

            -4,
};

const s32 *const anim_0003[2] = {
    anim_0003__v0_l0,
    anim_0003__v1_l0,
};

const s32 anim_0004__v0_l0[] = {
    -2, 0, (((u16)16 << 0) | ((u16)0x0 << 16)), -1, 0x30C, 64, -6, 0, (((-6 & 0xFF) << 0) | ((-13 & 0xFF) << 8) | ((6 & 0xFF) << 16) | ((16 & 0xFF) << 24)), 3, 0,

        -1, 0x34C, 64, 3, 1,

            -1, 0x38C, 64, 3, 2,

                -1, 0x3CC, 64, 3, 3,

                    -1, 0x40C, 64, 3, 4,

                        -1, 0x44C, 64, 3, 5,

                            -1, 0x48C, 64, 3, 6,

                                -1, 0x4CC, 64, 3, 7,

                                    -3, 46,
};

const s32 *const anim_0004[1] = {
    anim_0004__v0_l0,
};

const s32 anim_0005__v0_l0[] = {
    -2, 0, (((u16)16 << 0) | ((u16)0x0 << 16)), -1, 0x50C, 64, -6, 0, (((-6 & 0xFF) << 0) | ((-13 & 0xFF) << 8) | ((6 & 0xFF) << 16) | ((16 & 0xFF) << 24)), 2, 0,

        -1, 0x54C, 64, 2, 1,

            -1, 0x58C, 64, 2, 2,

                -1, 0x5CC, 64, 2, 3,

                    -3, 26,
};

const s32 *const anim_0005[1] = {
    anim_0005__v0_l0,
};

const s32 anim_0006__v0_l0[] = {
    -2, 0, (((u16)16 << 0) | ((u16)0x0 << 16)), -1, 0x60C, 20, -6, 0, (((-6 & 0xFF) << 0) | ((-13 & 0xFF) << 8) | ((6 & 0xFF) << 16) | ((16 & 0xFF) << 24)), 1, 0,

        -1, 0x620, 20, 1, 1,

            -4,
};

const s32 *const anim_0006[1] = {
    anim_0006__v0_l0,
};

const s32 anim_0007__v0_l0[] = {
    -2, 0, (((u16)16 << 0) | ((u16)0x0 << 16)), -1, 0x634, 20, -6, 0, (((-6 & 0xFF) << 0) | ((-13 & 0xFF) << 8) | ((6 & 0xFF) << 16) | ((16 & 0xFF) << 24)), 1, 0,

        -1, 0x648, 20, 1, 1,

            -1, 0x65C, 25, 1, 2,

                -1, 0x675, 20, 1, 3,

                    -4,
};

const s32 *const anim_0007[1] = {
    anim_0007__v0_l0,
};

const s32 anim_0008__v0_l0[] = {
    -2, 0, (((u16)16 << 0) | ((u16)0x0 << 16)), -1, 0x689, 16, -6, 0, (((-8 & 0xFF) << 0) | ((-8 & 0xFF) << 8) | ((8 & 0xFF) << 16) | ((8 & 0xFF) << 24)), -6, 1, (((-8 & 0xFF) << 0) | ((-8 & 0xFF) << 8) | ((8 & 0xFF) << 16) | ((8 & 0xFF) << 24)), 2, 0,

        -1, 0x699, 16, 2, 1,

            -1, 0x6A9, 16, 2, 2,

                -1, 0x6B9, 16, 2, 3,

                    -3, 29,
};

const s32 *const anim_0008[1] = {
    anim_0008__v0_l0,
};

const s32 anim_0009__v0_l0[] = {
    -2, 0, (((u16)16 << 0) | ((u16)0x0 << 16)), -1, 0x6C9, 25, -6, 0, (((-6 & 0xFF) << 0) | ((-13 & 0xFF) << 8) | ((6 & 0xFF) << 16) | ((16 & 0xFF) << 24)), 2, 0, -1, 0x6E2, 25, -6, 0, (((-6 & 0xFF) << 0) | ((-13 & 0xFF) << 8) | ((6 & 0xFF) << 16) | ((16 & 0xFF) << 24)),
        4, 1,

            -1, 0x6FB, 25, 4, 2,

                -3, 13,
};

const s32 anim_0009__v1_l0[] = {
    -2, 0, (((u16)16 << 0) | ((u16)0x0 << 16)), -1, 0x6C9, 25, -6, 0, (((-6 & 0xFF) << 0) | ((-13 & 0xFF) << 8) | ((6 & 0xFF) << 16) | ((16 & 0xFF) << 24)), 4, 0,

        -4,
};

const s32 *const anim_0009[2] = {
    anim_0009__v0_l0,
    anim_0009__v1_l0,
};

const s32 anim_0010__v0_l0[] = {
    -2, 0, (((u16)16 << 0) | ((u16)0x0 << 16)), -1, 0x714, 24, -6, 0, (((-6 & 0xFF) << 0) | ((-16 & 0xFF) << 8) | ((6 & 0xFF) << 16) | ((14 & 0xFF) << 24)), 3, 0, -1, 0x72C, 18, 3, 1,

        -1, 0x73E, 18, 3, 2,

            -1, 0x750, 18, 3, 3,

                -3, 15,
};

const s32 anim_0010__v1_l0[] = {
    -2, 0, (((u16)16 << 0) | ((u16)0x0 << 16)), -1, 0x714, 24, -6, 0, (((-6 & 0xFF) << 0) | ((-16 & 0xFF) << 8) | ((6 & 0xFF) << 16) | ((14 & 0xFF) << 24)), 2, 0,

        -1, 0x762, 20, 2, 4,

            -1, 0x776, 20, 2, 5,

                -1, 0x78A, 20, 3, 6,

                    -1, 0x79E, 20, 3, 7,

                        -1, 0x7B2, 20, 3, 8,

                            -4,
};

const s32 anim_0010__v2_l0[] = {
    -2, 0, (((u16)16 << 0) | ((u16)0x0 << 16)), -1, 0x7C6, 20, -6, 0, (((-6 & 0xFF) << 0) | ((-16 & 0xFF) << 8) | ((6 & 0xFF) << 16) | ((14 & 0xFF) << 24)), 3, 9,

        -1, 0x7DA, 20, 3, 10,

            -1, 0x7EE, 20, 3, 11,

                -3, 21,
};

const s32 anim_0010__v3_l0[] = {
    -2, 0, (((u16)16 << 0) | ((u16)0x0 << 16)), -1, 0x802, 20, -6, 0, (((-6 & 0xFF) << 0) | ((-16 & 0xFF) << 8) | ((6 & 0xFF) << 16) | ((14 & 0xFF) << 24)), 3, 12,

        -1, 0x816, 16, -6, 0, (((-6 & 0xFF) << 0) | ((0 & 0xFF) << 8) | ((6 & 0xFF) << 16) | ((24 & 0xFF) << 24)), 1, 13,

            -1, 0x826, 16, -6, 0, (((-6 & 0xFF) << 0) | ((0 & 0xFF) << 8) | ((6 & 0xFF) << 16) | ((24 & 0xFF) << 24)), 1, 14,

                -1, 0x816, 16, -6, 0, (((-6 & 0xFF) << 0) | ((0 & 0xFF) << 8) | ((6 & 0xFF) << 16) | ((24 & 0xFF) << 24)), 1, 13,

                    -4,
};

const s32 *const anim_0010[4] = {
    anim_0010__v0_l0,
    anim_0010__v1_l0,
    anim_0010__v2_l0,
    anim_0010__v3_l0,
};

const s32 anim_0011__v0_l0[] = {
    -2, 0, (((u16)16 << 0) | ((u16)0x0 << 16)), -1, 0x836, 20, -6, 0, (((-6 & 0xFF) << 0) | ((-16 & 0xFF) << 8) | ((6 & 0xFF) << 16) | ((14 & 0xFF) << 24)), 4, 0,

        -1, 0x84A, 16, 4, 1,

            -1, 0x85A, 20, 4, 2,

                -1, 0x86E, 20, 4, 3,

                    -1, 0x882, 20, 4, 4,

                        -1, 0x896, 20, 4, 5,

                            -1, 0x8AA, 20, 4, 6,

                                -1, 0x8BE, 20, 4, 7,

                                    -1, 0x8D2, 20, 4, 8,

                                        -1, 0x8E6, 16, 4, 9,

                                            -1, 0x8F6, 20, 4, 10,

                                                -4,
};

const s32 *const anim_0011[1] = {
    anim_0011__v0_l0,
};

const s32 anim_0012__v0_l0[] = {
    -2, 0, (((u16)16 << 0) | ((u16)0x0 << 16)), -1, 0x90A, 16, -6, 0, (((-6 & 0xFF) << 0) | ((-13 & 0xFF) << 8) | ((6 & 0xFF) << 16) | ((16 & 0xFF) << 24)), 4, 0, -1, 0x91A, 16, 6, 1,

        -1, 0x92A, 16, 6, 2,

            -1, 0x93A, 16, 6, 3,

                -1, 0x94A, 16, 6, 4,

                    -1, 0x95A, 16, 6, 5,

                        -1, 0x96A, 16, 6, 6,

                            -1, 0x97A, 16, 6, 7,

                                -1, 0x98A, 16, 6, 8,

                                    -3, 40,
};

const s32 anim_0012__v1_l0[] = {
    -2, 0, (((u16)16 << 0) | ((u16)0x0 << 16)), -1, 0x90A, 16, -6, 0, (((-6 & 0xFF) << 0) | ((-13 & 0xFF) << 8) | ((6 & 0xFF) << 16) | ((16 & 0xFF) << 24)), 4, 0,

        -4,
};

const s32 *const anim_0012[2] = {
    anim_0012__v0_l0,
    anim_0012__v1_l0,
};

const s32 anim_0013__v0_l0[] = {
    -2, 0, (((u16)16 << 0) | ((u16)0x0 << 16)), -1, 0x99A, 20, -6, 0, (((-5 & 0xFF) << 0) | ((-13 & 0xFF) << 8) | ((7 & 0xFF) << 16) | ((16 & 0xFF) << 24)), 2, 0, -1, 0x9AE, 25, -6, 0, (((-5 & 0xFF) << 0) | ((-13 & 0xFF) << 8) | ((7 & 0xFF) << 16) | ((16 & 0xFF) << 24)),
        2, 1,

            -1, 0x9C7, 25, 2, 2,

                -1, 0x9E0, 25, 2, 3,

                    -1, 0x9F9, 20, 2, 4,

                        -1, 0xA0D, 25, 2, 5,

                            -1, 0xA26, 25, 2, 6,

                                -1, 0xA3F, 25, 2, 7,

                                    -1, 0xA58, 20, 2, 8,

                                        -3, 43,
};

const s32 anim_0013__v1_l0[] = {
    -2, 0, (((u16)16 << 0) | ((u16)0x0 << 16)), -1, 0xA6C, 20, -6, 0, (((-6 & 0xFF) << 0) | ((-13 & 0xFF) << 8) | ((6 & 0xFF) << 16) | ((16 & 0xFF) << 24)), 2, 9,

        -4,
};

const s32 *const anim_0013[2] = {
    anim_0013__v0_l0,
    anim_0013__v1_l0,
};

const s32 anim_0014__v0_l0[] = {
    -2, 0, (((u16)16 << 0) | ((u16)0x0 << 16)), -1, 0xA80, 25, -6, 0, (((-16 & 0xFF) << 0) | ((-13 & 0xFF) << 8) | ((-4 & 0xFF) << 16) | ((16 & 0xFF) << 24)), 2, 0, -1, 0xA99, 25, -6, 0, (((-16 & 0xFF) << 0) | ((-13 & 0xFF) << 8) | ((-4 & 0xFF) << 16) | ((16 & 0xFF) << 24)),
        3, 1,

            -1, 0xAB2, 25, 3, 2,

                -1, 0xACB, 25, 3, 3,

                    -1, 0xAE4, 20, 3, 4,

                        -1, 0xAF8, 25, 3, 5,

                            -1, 0xB11, 25, 3, 6,

                                -1, 0xB2A, 25, 3, 7,

                                    -1, 0xB43, 30, 3, 8,

                                        -3, 43,
};

const s32 anim_0014__v1_l0[] = {
    -2, 0, (((u16)16 << 0) | ((u16)0x0 << 16)), -1, 0xB61, 25, -6, 0, (((-14 & 0xFF) << 0) | ((-13 & 0xFF) << 8) | ((-2 & 0xFF) << 16) | ((16 & 0xFF) << 24)), 2, 9,

        -4,
};

const s32 *const anim_0014[2] = {
    anim_0014__v0_l0,
    anim_0014__v1_l0,
};

const s32 anim_0017__v0_l0[] = {
    -2, 0, (((u16)16 << 0) | ((u16)0x0 << 16)), -1, 0xB7A, 24, -6, 0, (((-6 & 0xFF) << 0) | ((-14 & 0xFF) << 8) | ((6 & 0xFF) << 16) | ((14 & 0xFF) << 24)), -5, 191, 6, 0,

        -1, 0xB92, 24, 6, 1,

            -4,
};

const s32 *const anim_0017[1] = {
    anim_0017__v0_l0,
};

const s32 anim_0018__v0_l0[] = {
    -2, 0, (((u16)16 << 0) | ((u16)0x0 << 16)), -1, 0xBAA, 16, -6, 0, (((-8 & 0xFF) << 0) | ((-8 & 0xFF) << 8) | ((8 & 0xFF) << 16) | ((8 & 0xFF) << 24)), -6, 1, (((-8 & 0xFF) << 0) | ((-8 & 0xFF) << 8) | ((8 & 0xFF) << 16) | ((8 & 0xFF) << 24)), 2, 0,

        -1, 0xBBA, 16, 2, 1,

            -1, 0xBCA, 16, 2, 2,

                -1, 0xBDA, 16, 2, 3,

                    -3, 29,
};

const s32 anim_0018__v1_l0[] = {
    -2, 0, (((u16)16 << 0) | ((u16)0x0 << 16)), -1, 0xBEA, 16, -6, 0, (((-8 & 0xFF) << 0) | ((-8 & 0xFF) << 8) | ((8 & 0xFF) << 16) | ((8 & 0xFF) << 24)), -6, 1, (((-8 & 0xFF) << 0) | ((-8 & 0xFF) << 8) | ((8 & 0xFF) << 16) | ((8 & 0xFF) << 24)), 2, 4,

        -1, 0xBFA, 16, -6, 0, (((-7 & 0xFF) << 0) | ((-9 & 0xFF) << 8) | ((5 & 0xFF) << 16) | ((8 & 0xFF) << 24)), 2, 5,

            -1, 0xC0A, 16, -6, 0, (((-7 & 0xFF) << 0) | ((-9 & 0xFF) << 8) | ((5 & 0xFF) << 16) | ((8 & 0xFF) << 24)), 2, 6,

                -1, 0xC1A, 16, -6, 0, (((-7 & 0xFF) << 0) | ((-9 & 0xFF) << 8) | ((5 & 0xFF) << 16) | ((8 & 0xFF) << 24)), 2, 7,

                    -4,
};

const s32 *const anim_0018[2] = {
    anim_0018__v0_l0,
    anim_0018__v1_l0,
};

const s32 anim_0019__v0_l0[] = {
    -2, 0, (((u16)16 << 0) | ((u16)0x0 << 16)), -1, 0xC2A, 20, -6, 0, (((-6 & 0xFF) << 0) | ((-13 & 0xFF) << 8) | ((6 & 0xFF) << 16) | ((16 & 0xFF) << 24)), 3, 0,

        -1, 0xC3E, 25, 3, 1,

            -1, 0xC57, 20, 3, 2,

                -1, 0xC6B, 25, 3, 3, -1, 0xC84, 20, 3, 4,

                    -3, 5,
};

const s32 *const anim_0019[1] = {
    anim_0019__v0_l0,
};

const s32 anim_0021__v0_l0[] = {
    -2, 0, (((u16)16 << 0) | ((u16)0x0 << 16)), -1, 0xC98, 20, 3, 0,

        -1, 0xCAC, 25, 3, 1,

            -1, 0xC98, 20, 12, 0,

                -1, 0xCC5, 16, 2, 2, -1, 0xCD5, 20, 3, 3,

                    -1, 0xCE9, 20, 3, 4,

                        -3, 10,
};

const s32 *const anim_0021[1] = {
    anim_0021__v0_l0,
};

const s32 anim_0022__v0_l0[] = {
    -2, 0, (((u16)16 << 0) | ((u16)0x0 << 16)), -1, 0xCFD, 20, 3, 0,

        -1, 0xD11, 20, 3, 1,

            -1, 0xD25, 20, 3, 2,

                -1, 0xD39, 20, 3, 3,

                    -1, 0xD4D, 20, 3, 4,

                        -1, 0xD61, 20, 3, 5,

                            -1, 0xD75, 25, 3, 6,

                                -1, 0xD8E, 25, 3, 7, -1, 0xDA7, 20, 3, 8,

                                    -1, 0xDBB, 20, 3, 9,

                                        -1, 0xDCF, 20, 3, 10,

                                            -1, 0xDE3, 20, 3, 11,

                                                -1, 0xDF7, 20, 3, 12,

                                                    -1, 0xE0B, 20, 3, 13,

                                                        -1, 0xD75, 25, 3, 6,

                                                            -1, 0xE1F, 25, 3, 14,

                                                                -3, 40,
};

const s32 *const anim_0022[1] = {
    anim_0022__v0_l0,
};

const s32 anim_0023__v0_l0[] = {
    -2, 0, (((u16)16 << 0) | ((u16)0x0 << 16)), -1, 0xE38, 20, 4, 0,

        -1, 0xE4C, 20, 4, 1,

            -1, 0xE60, 24, 4, 2,

                -1, 0xE78, 24, 4, 3,

                    -1, 0xE90, 24, 4, 4,

                        -1, 0xEA8, 24, 4, 5,

                            -1, 0xEC0, 20, 4, 6,

                                -1, 0xED4, 20, 4, 7,

                                    -1, 0xEE8, 20, 4, 8,

                                        -1, 0xEFC, 20, 8, 9,

                                            -1, 0xEE8, 20, 4, 8,

                                                -1, 0xF10, 20, 3, 10,

                                                    -1, 0xF24, 20, 3, 11,

                                                        -1, 0xF38, 25, 4, 12,

                                                            -1, 0xF51, 25, 8, 13,

                                                                -1, 0xF6A, 25, 4, 14,

                                                                    -1, 0xF83, 25, 4, 15,

                                                                        -1, 0xF9C, 25, 4, 16,

                                                                            -4,
};

const s32 *const anim_0023[1] = {
    anim_0023__v0_l0,
};

const s32 anim_0024__v0_l0[] = {
    -2, 0, (((u16)16 << 0) | ((u16)0x0 << 16)), -1, 0xFB5, 25, 3, 0,

        -1, 0xFCE, 25, 3, 1,

            -1, 0xFE7, 25, 3, 2,

                -1, 0x1000, 25, 20, 3,

                    -1, 0xFB5, 25, 3, 0,

                        -1, 0x1019, 20, 3, 4,

                            -1, 0x102D, 20, 30, 5,

                                -4,
};

const s32 *const anim_0024[1] = {
    anim_0024__v0_l0,
};

const s32 anim_0025__v0_l0[] = {
    -2, 0, (((u16)16 << 0) | ((u16)0x70 << 16)), -1, 0x1041, 18, 3, 0,

        -1, 0x1053, 24, 3, 1,

            -1, 0x106B, 18, 3, 2,

                -1, 0x107D, 24, 3, 3,

                    -3, 23,
};

const s32 *const anim_0025[1] = {
    anim_0025__v0_l0,
};

const s32 anim_0026__v0_l0[] = {
    -2, 0, (((u16)16 << 0) | ((u16)0x70 << 16)), -1, 0x1095, 35, 20, 0,

        -1, 0x10B8, 36, 10, 1,

            -1, 0x10DC, 42, 8, 2,

                -1, 0x1106, 42, 7, 3,

                    -1, 0x1130, 42, 5, 4,

                        -1, 0x115A, 42, 3, 5, -1, 0x1184, 42, 2, 6,

                            -1, 0x11AE, 42, 2, 7,

                                -1, 0x11D8, 42, 2, 8,

                                    -3, 15,
};

const s32 *const anim_0026[1] = {
    anim_0026__v0_l0,
};

const s32 anim_0027__v0_l0[] = {
    -2, 0, (((u16)16 << 0) | ((u16)0x0 << 16)), -1, 0x1202, 64, -6, 0, (((-10 & 0xFF) << 0) | ((-10 & 0xFF) << 8) | ((10 & 0xFF) << 16) | ((10 & 0xFF) << 24)), 2, 0,

        -1, 0x1242, 64, 2, 1,

            -3, 16,
};

const s32 anim_0027__v1_l0[] = {
    -2, 0, (((u16)16 << 0) | ((u16)0x0 << 16)), -1, 0x1282, 64, -6, 0, (((-10 & 0xFF) << 0) | ((-10 & 0xFF) << 8) | ((10 & 0xFF) << 16) | ((10 & 0xFF) << 24)), 2, 2,

        -1, 0x12C2, 64, 2, 3,

            -3, 16,
};

const s32 anim_0027__v2_l0[] = {
    -2, 0, (((u16)16 << 0) | ((u16)0x0 << 16)), -1, 0x1302, 64, -6, 0, (((-10 & 0xFF) << 0) | ((-10 & 0xFF) << 8) | ((10 & 0xFF) << 16) | ((10 & 0xFF) << 24)), 2, 4,

        -1, 0x1342, 64, 2, 5,

            -3, 16,
};

const s32 anim_0027__v3_l0[] = {
    -2, 0, (((u16)16 << 0) | ((u16)0x0 << 16)), -1, 0x1382, 64, -6, 0, (((-10 & 0xFF) << 0) | ((-10 & 0xFF) << 8) | ((10 & 0xFF) << 16) | ((10 & 0xFF) << 24)), 2, 6,

        -1, 0x13C2, 64, 2, 7,

            -3, 16,
};

const s32 anim_0027__v4_l0[] = {
    -2, 0, (((u16)16 << 0) | ((u16)0x0 << 16)), -1, 0x1402, 64, -6, 0, (((-10 & 0xFF) << 0) | ((-10 & 0xFF) << 8) | ((10 & 0xFF) << 16) | ((10 & 0xFF) << 24)), 2, 8,

        -1, 0x1442, 64, 2, 9,

            -3, 16,
};

const s32 anim_0027__v5_l0[] = {
    -2, 0, (((u16)16 << 0) | ((u16)0x0 << 16)), -1, 0x1482, 64, -6, 0, (((-10 & 0xFF) << 0) | ((-10 & 0xFF) << 8) | ((10 & 0xFF) << 16) | ((10 & 0xFF) << 24)), 2, 10,

        -1, 0x14C2, 64, 2, 11,

            -3, 16,
};

const s32 anim_0027__v6_l0[] = {
    -2, 0, (((u16)16 << 0) | ((u16)0x0 << 16)), -1, 0x1502, 64, -6, 0, (((-10 & 0xFF) << 0) | ((-10 & 0xFF) << 8) | ((10 & 0xFF) << 16) | ((10 & 0xFF) << 24)), 2, 12,

        -1, 0x1542, 64, 2, 13,

            -3, 16,
};

const s32 anim_0027__v7_l0[] = {
    -2, 0, (((u16)16 << 0) | ((u16)0x0 << 16)), -1, 0x1582, 64, -6, 0, (((-10 & 0xFF) << 0) | ((-10 & 0xFF) << 8) | ((10 & 0xFF) << 16) | ((10 & 0xFF) << 24)), 2, 14,

        -1, 0x15C2, 64, 2, 15,

            -3, 16,
};

const s32 anim_0027__v8_l0[] = {
    -2, 0, (((u16)16 << 0) | ((u16)0x0 << 16)), -1, 0x1602, 64, -6, 0, (((-10 & 0xFF) << 0) | ((-10 & 0xFF) << 8) | ((10 & 0xFF) << 16) | ((10 & 0xFF) << 24)), 2, 16,

        -1, 0x1642, 64, 2, 17,

            -3, 16,
};

const s32 *const anim_0027[9] = {
    anim_0027__v0_l0, anim_0027__v1_l0, anim_0027__v2_l0, anim_0027__v3_l0, anim_0027__v4_l0,
    anim_0027__v5_l0, anim_0027__v6_l0, anim_0027__v7_l0, anim_0027__v8_l0,
};

const s32 anim_0028__v0_l0[] = {
    -2, 0, (((u16)16 << 0) | ((u16)0x0 << 16)), -1, 0x1682, 64, -6, 0, (((-10 & 0xFF) << 0) | ((-10 & 0xFF) << 8) | ((10 & 0xFF) << 16) | ((10 & 0xFF) << 24)), 2, 0,

        -1, 0x16C2, 64, 2, 1,

            -3, 16,
};

const s32 anim_0028__v1_l0[] = {
    -2, 0, (((u16)16 << 0) | ((u16)0x0 << 16)), -1, 0x1702, 64, -6, 0, (((-10 & 0xFF) << 0) | ((-10 & 0xFF) << 8) | ((10 & 0xFF) << 16) | ((10 & 0xFF) << 24)), 2, 2,

        -1, 0x1742, 64, 2, 3,

            -3, 16,
};

const s32 anim_0028__v2_l0[] = {
    -2, 0, (((u16)16 << 0) | ((u16)0x0 << 16)), -1, 0x1782, 64, -6, 0, (((-10 & 0xFF) << 0) | ((-10 & 0xFF) << 8) | ((10 & 0xFF) << 16) | ((10 & 0xFF) << 24)), 2, 4,

        -1, 0x17C2, 64, 2, 5,

            -3, 16,
};

const s32 anim_0028__v3_l0[] = {
    -2, 0, (((u16)16 << 0) | ((u16)0x0 << 16)), -1, 0x1802, 64, -6, 0, (((-10 & 0xFF) << 0) | ((-10 & 0xFF) << 8) | ((10 & 0xFF) << 16) | ((10 & 0xFF) << 24)), 2, 6,

        -1, 0x1842, 64, 2, 7,

            -3, 16,
};

const s32 anim_0028__v4_l0[] = {
    -2, 0, (((u16)16 << 0) | ((u16)0x0 << 16)), -1, 0x1882, 64, -6, 0, (((-10 & 0xFF) << 0) | ((-10 & 0xFF) << 8) | ((10 & 0xFF) << 16) | ((10 & 0xFF) << 24)), 2, 8,

        -1, 0x18C2, 64, 2, 9,

            -3, 16,
};

const s32 anim_0028__v5_l0[] = {
    -2, 0, (((u16)16 << 0) | ((u16)0x0 << 16)), -1, 0x1902, 64, -6, 0, (((-10 & 0xFF) << 0) | ((-10 & 0xFF) << 8) | ((10 & 0xFF) << 16) | ((10 & 0xFF) << 24)), 2, 10,

        -1, 0x1942, 64, 2, 11,

            -3, 16,
};

const s32 anim_0028__v6_l0[] = {
    -2, 0, (((u16)16 << 0) | ((u16)0x0 << 16)), -1, 0x1982, 64, -6, 0, (((-10 & 0xFF) << 0) | ((-10 & 0xFF) << 8) | ((10 & 0xFF) << 16) | ((10 & 0xFF) << 24)), 2, 12,

        -1, 0x19C2, 64, 2, 13,

            -3, 16,
};

const s32 anim_0028__v7_l0[] = {
    -2, 0, (((u16)16 << 0) | ((u16)0x0 << 16)), -1, 0x1A02, 64, -6, 0, (((-10 & 0xFF) << 0) | ((-10 & 0xFF) << 8) | ((10 & 0xFF) << 16) | ((10 & 0xFF) << 24)), 2, 14,

        -1, 0x1A42, 64, 2, 15,

            -3, 16,
};

const s32 *const anim_0028[8] = {
    anim_0028__v0_l0, anim_0028__v1_l0, anim_0028__v2_l0, anim_0028__v3_l0,
    anim_0028__v4_l0, anim_0028__v5_l0, anim_0028__v6_l0, anim_0028__v7_l0,
};

const s32 anim_0029__v0_l0[] = {
    -2, 0, (((u16)16 << 0) | ((u16)0x0 << 16)), -1, 0x1A82, 64, -6, 0, (((-10 & 0xFF) << 0) | ((-10 & 0xFF) << 8) | ((10 & 0xFF) << 16) | ((10 & 0xFF) << 24)), 4, 0, -1, 0x1AC2, 64, -6, 0, (((-10 & 0xFF) << 0) | ((-10 & 0xFF) << 8) | ((10 & 0xFF) << 16) | ((10 & 0xFF) << 24)),
        2, 1,

            -1, 0x1B02, 64, 2, 2,

                -3, 13,
};

const s32 anim_0029__v1_l0[] = {
    -2, 0, (((u16)16 << 0) | ((u16)0x0 << 16)), -1, 0x1A82, 64, -6, 0, (((-10 & 0xFF) << 0) | ((-10 & 0xFF) << 8) | ((10 & 0xFF) << 16) | ((10 & 0xFF) << 24)), 4, 0,

        -4,
};

const s32 *const anim_0029[2] = {
    anim_0029__v0_l0,
    anim_0029__v1_l0,
};

const s32 anim_0030__v0_l0[] = {
    -2, 0, (((u16)16 << 0) | ((u16)0x0 << 16)), -1, 0x1B42, 64, -6, 0, (((-22 & 0xFF) << 0) | ((-22 & 0xFF) << 8) | ((22 & 0xFF) << 16) | ((22 & 0xFF) << 24)), 2, 0,

        -1, 0x1B82, 64, 2, 1,

            -1, 0x1BC2, 64, 2, 2,

                -1, 0x1C02, 64, 2, 3,

                    -1, 0x1C42, 64, 2, 4,

                        -1, 0x1C82, 64, 2, 5,

                            -1, 0x1CC2, 64, 2, 6,

                                -1, 0x1D02, 64, 2, 7,

                                    -1, 0x1D42, 64, 2, 8,

                                        -1, 0x1D82, 64, 2, 9,

                                            -1, 0x1DC2, 64, 2, 10,

                                                -3, 61,
};

const s32 *const anim_0030[1] = {
    anim_0030__v0_l0,
};

const s32 anim_0031__v0_l0[] = {
    -2, 0, (((u16)16 << 0) | ((u16)0x0 << 16)), -1, 0x1E02, 64, -6, 0, (((-20 & 0xFF) << 0) | ((-20 & 0xFF) << 8) | ((20 & 0xFF) << 16) | ((20 & 0xFF) << 24)), 2, 0,

        -1, 0x1E42, 64, 2, 1,

            -1, 0x1E82, 64, 2, 2,

                -1, 0x1EC2, 64, 3, 3,

                    -1, 0x1F02, 64, 3, 4,

                        -1, 0x1F42, 64, 3, 5,

                            -1, 0x1F82, 64, 3, 6,

                                -1, 0x1FC2, 64, 3, 7,

                                    -1, 0x2002, 64, 3, 8,

                                        -1, 0x2042, 64, 3, 9,

                                            -1, 0x2082, 64, 3, 10,

                                                -1, 0x1EC2, 64, 3, 3,

                                                    -1, 0x20C2, 64, 3, 11,

                                                        -1, 0x2102, 64, 3, 12,

                                                            -1, 0x2142, 64, 3, 13,

                                                                -4,
};


const s32 anim_0031__v0_l1[] = {

};

const s32 *const anim_0031[2] = {
    anim_0031__v0_l0,
    anim_0031__v0_l1,
};

const s32 anim_0032__v0_l0[] = {
    -2, 0, (((u16)16 << 0) | ((u16)0x0 << 16)), -1, 0x2182, 64, -6, 0, (((-10 & 0xFF) << 0) | ((-10 & 0xFF) << 8) | ((10 & 0xFF) << 16) | ((10 & 0xFF) << 24)), 3, 0,

        -1, 0x21C2, 64, 3, 1,

            -1, 0x2202, 64, 3, 2,

                -1, 0x2242, 64, 3, 3,

                    -1, 0x2282, 64, 3, 4,

                        -1, 0x22C2, 64, 3, 5,

                            -1, 0x2302, 64, 3, 6,

                                -3, 41,
};

const s32 *const anim_0032[1] = {
    anim_0032__v0_l0,
};

const s32 anim_0033__v0_l0[] = {
    -2, 0, (((u16)16 << 0) | ((u16)0x0 << 16)), -1, 0x2342, 64, 6, 0, -1, 0x2382, 64, 3, 1,

        -1, 0x23C2, 64, 3, 2,

            -3, 10,
};

const s32 anim_0033__v1_l0[] = {
    -2, 0, (((u16)16 << 0) | ((u16)0x0 << 16)), -1, 0x2342, 64, 6, 0,

        -4,
};

const s32 *const anim_0033[2] = {
    anim_0033__v0_l0,
    anim_0033__v1_l0,
};

const s32 anim_0034__v0_l0[] = {
    -2, 0, (((u16)16 << 0) | ((u16)0x0 << 16)), -1, 0x2402, 64, -6, 0, (((-10 & 0xFF) << 0) | ((-10 & 0xFF) << 8) | ((10 & 0xFF) << 16) | ((10 & 0xFF) << 24)), 2, 0,

        -1, 0x2442, 64, 2, 1,

            -3, 16,
};

const s32 anim_0034__v1_l0[] = {
    -2, 0, (((u16)16 << 0) | ((u16)0x0 << 16)), -1, 0x2482, 64, 2, 2,

        -1, 0x24C2, 64, 2, 3,

            -1, 0x2502, 64, 2, 4,

                -1, 0x2542, 64, 2, 5,

                    -1, 0x2582, 64, 2, 6,

                        -1, 0x25C2, 64, 2, 7,

                            -3, 33,
};

const s32 *const anim_0034[2] = {
    anim_0034__v0_l0,
    anim_0034__v1_l0,
};

const s32 anim_0035__v0_l0[] = {
    -2, 0, (((u16)16 << 0) | ((u16)0x70 << 16)), -1, 0x2602, 16, 1, 0,

        -1, 0x2612, 16, 1, 1,

            -1, 0x2622, 16, 16, 2,

                -1, 0x2612, 16, 1, 1,

                    -1, 0x2602, 16, 2, 0,

                        -1, 0x2632, 20, 2, 3,

                            -1, 0x2646, 25, 20, 4, -1, 0x265F, 20, 6, 5,

                                -1, 0x2673, 25, 6, 6,

                                    -1, 0x268C, 25, 6, 7,

                                        -1, 0x26A5, 20, 6, 8,

                                            -1, 0x26B9, 20, 6, 9,

                                                -1, 0x2646, 25, 6, 4,

                                                    -3, 30,
};

const s32 *const anim_0035[1] = {
    anim_0035__v0_l0,
};

const s32 anim_0036__v0_l0[] = {
    -2, 0, (((u16)16 << 0) | ((u16)0x0 << 16)), -1, 0x26CD, 16, -6, 0, (((-6 & 0xFF) << 0) | ((-13 & 0xFF) << 8) | ((6 & 0xFF) << 16) | ((16 & 0xFF) << 24)), 3, 0,

        -1, 0x26DD, 16, 3, 1,

            -1, 0x26ED, 16, 3, 2,

                -1, 0x26FD, 16, 3, 3,

                    -1, 0x270D, 16, 3, 4,

                        -1, 0x271D, 16, 3, 5,

                            -1, 0x272D, 16, 3, 6,

                                -1, 0x273D, 16, 3, 7,

                                    -3, 46,
};

const s32 anim_0036__v1_l0[] = {
    -2, 0, (((u16)16 << 0) | ((u16)0x0 << 16)), -1, 0x274D, 20, -6, 0, (((-6 & 0xFF) << 0) | ((-13 & 0xFF) << 8) | ((6 & 0xFF) << 16) | ((16 & 0xFF) << 24)), 3, 8,

        -1, 0x2761, 20, 3, 9,

            -1, 0x2775, 16, 3, 10,

                -1, 0x2785, 20, 3, 11,

                    -1, 0x2799, 20, 3, 12,

                        -1, 0x27AD, 20, 3, 13,

                            -1, 0x27C1, 20, 3, 14,

                                -1, 0x27D5, 20, 3, 15,

                                    -3, 46,
};

const s32 anim_0036__v2_l0[] = {
    -2, 0, (((u16)16 << 0) | ((u16)0x0 << 16)), -1, 0x27E9, 20, -6, 0, (((-6 & 0xFF) << 0) | ((-13 & 0xFF) << 8) | ((6 & 0xFF) << 16) | ((16 & 0xFF) << 24)), 3, 16,

        -1, 0x27FD, 20, 3, 17,

            -1, 0x2811, 25, 3, 18,

                -1, 0x282A, 20, 3, 19,

                    -1, 0x283E, 20, 3, 20,

                        -1, 0x2852, 20, 3, 21,

                            -1, 0x2866, 16, 3, 22,

                                -1, 0x2876, 20, 3, 23,

                                    -3, 46,
};

const s32 *const anim_0036[3] = {
    anim_0036__v0_l0,
    anim_0036__v1_l0,
    anim_0036__v2_l0,
};

const s32 anim_0037__v0_l0[] = {
    -2, 0, (((u16)16 << 0) | ((u16)0x0 << 16)), -1, 0x288A, 20, -6, 0, (((-6 & 0xFF) << 0) | ((-13 & 0xFF) << 8) | ((6 & 0xFF) << 16) | ((16 & 0xFF) << 24)), 2, 0,

        -1, 0x289E, 25, 2, 1,

            -1, 0x28B7, 25, 4, 2,

                -1, 0x28D0, 25, 1, 3,

                    -1, 0x28E9, 20, 1, 4, -1, 0x28FD, 30, -6, 0, (((-6 & 0xFF) << 0) | ((-13 & 0xFF) << 8) | ((6 & 0xFF) << 16) | ((16 & 0xFF) << 24)), 1, 5,

                        -1, 0x291B, 30, 1, 6,

                            -1, 0x2939, 30, 1, 7,

                                -3, 18,
};

const s32 *const anim_0037[1] = {
    anim_0037__v0_l0,
};

const s32 anim_0038__v0_l0[] = {
    -2, 0, (((u16)16 << 0) | ((u16)0x0 << 16)), -1, 0x2957, 30, -6, 0, (((-3 & 0xFF) << 0) | ((-18 & 0xFF) << 8) | ((9 & 0xFF) << 16) | ((14 & 0xFF) << 24)), 3, 0,

        -1, 0x2975, 30, 3, 1,

            -1, 0x2993, 30, 3, 2,

                -1, 0x29B1, 24, -6, 0, (((-3 & 0xFF) << 0) | ((-12 & 0xFF) << 8) | ((9 & 0xFF) << 16) | ((14 & 0xFF) << 24)), 2, 3,

                    -1, 0x29C9, 18, 2, 4,

                        -4,
};

const s32 *const anim_0038[1] = {
    anim_0038__v0_l0,
};

const s32 anim_0039__v0_l0[] = {
    -2, 0, (((u16)16 << 0) | ((u16)0x0 << 16)), -1, 0x29DB, 64, 2, 0,

        -1, 0x2A1B, 64, 2, 1,

            -1, 0x2A5B, 64, 2, 2,

                -1, 0x2A9B, 64, 2, 3,

                    -3, 23,
};

const s32 *const anim_0039[1] = {
    anim_0039__v0_l0,
};

const s32 anim_0040__v0_l0[] = {
    -2, 0, (((u16)16 << 0) | ((u16)0x0 << 16)), -1, 0x2ADB, 28, -6, 0, (((-32 & 0xFF) << 0) | ((-22 & 0xFF) << 8) | ((-8 & 0xFF) << 16) | ((-4 & 0xFF) << 24)), -12, 0x10, 3, 0,

        -1, 0x2AF7, 20, -6, 0, (((-24 & 0xFF) << 0) | ((-22 & 0xFF) << 8) | ((-6 & 0xFF) << 16) | ((-4 & 0xFF) << 24)), -12, 0x10, 3, 1,

            -1, 0x2B0B, 16, -6, 0, (((-8 & 0xFF) << 0) | ((-22 & 0xFF) << 8) | ((0 & 0xFF) << 16) | ((-4 & 0xFF) << 24)), -12, 0x10, 3, 2,

                -1, 0x2B1B, 16, -6, 0, (((2 & 0xFF) << 0) | ((-22 & 0xFF) << 8) | ((10 & 0xFF) << 16) | ((-4 & 0xFF) << 24)), -12, 0x10, 3, 3,

                    -1, 0x2B2B, 24, -6, 0, (((6 & 0xFF) << 0) | ((-22 & 0xFF) << 8) | ((24 & 0xFF) << 16) | ((-4 & 0xFF) << 24)), -12, 0x10, 3, 4,

                        -1, 0x2B43, 28, -6, 0, (((8 & 0xFF) << 0) | ((-22 & 0xFF) << 8) | ((32 & 0xFF) << 16) | ((-4 & 0xFF) << 24)), -12, 0x10, 3, 5,

                            -1, 0x2B5F, 20, -6, 0, (((6 & 0xFF) << 0) | ((-22 & 0xFF) << 8) | ((24 & 0xFF) << 16) | ((-4 & 0xFF) << 24)), -12, 0x13, 3, 6,

                                -1, 0x2B73, 16, -6, 0, (((2 & 0xFF) << 0) | ((-22 & 0xFF) << 8) | ((10 & 0xFF) << 16) | ((-4 & 0xFF) << 24)), -12, 0x13, 3, 7,

                                    -1, 0x2B83, 20, -6, 0, (((-8 & 0xFF) << 0) | ((-22 & 0xFF) << 8) | ((0 & 0xFF) << 16) | ((-4 & 0xFF) << 24)), -12, 0x13, 3, 8,

                                        -1, 0x2B97, 20, -6, 0, (((-24 & 0xFF) << 0) | ((-22 & 0xFF) << 8) | ((-6 & 0xFF) << 16) | ((-4 & 0xFF) << 24)), -12, 0x13, 3, 9,

                                            -3, 103,
};

const s32 anim_0040__v1_l0[] = {
    -2, 0, (((u16)16 << 0) | ((u16)0x0 << 16)), -1, 0x2BAB, 28, -6, 0, (((-8 & 0xFF) << 0) | ((2 & 0xFF) << 8) | ((8 & 0xFF) << 16) | ((36 & 0xFF) << 24)), -11, 0x2, 3, 10,

        -1, 0x2BC7, 20, -6, 0, (((-8 & 0xFF) << 0) | ((2 & 0xFF) << 8) | ((8 & 0xFF) << 16) | ((24 & 0xFF) << 24)), -11, 0x2, 3, 11,

            -1, 0x2BDB, 16, -6, 0, (((-8 & 0xFF) << 0) | ((-2 & 0xFF) << 8) | ((8 & 0xFF) << 16) | ((10 & 0xFF) << 24)), -11, 0x2, 3, 12,

                -1, 0x2BEB, 16, -6, 0, (((-8 & 0xFF) << 0) | ((-10 & 0xFF) << 8) | ((8 & 0xFF) << 16) | ((2 & 0xFF) << 24)), -11, 0x2, 3, 13,

                    -1, 0x2BFB, 24, -6, 0, (((-8 & 0xFF) << 0) | ((-18 & 0xFF) << 8) | ((8 & 0xFF) << 16) | ((0 & 0xFF) << 24)), -11, 0x2, 3, 14,

                        -1, 0x2C13, 28, -6, 0, (((-8 & 0xFF) << 0) | ((-37 & 0xFF) << 8) | ((8 & 0xFF) << 16) | ((-3 & 0xFF) << 24)), -11, 0x2, 3, 15,

                            -1, 0x2C2F, 20, -6, 0, (((-8 & 0xFF) << 0) | ((-22 & 0xFF) << 8) | ((8 & 0xFF) << 16) | ((0 & 0xFF) << 24)), -11, 0x3, 3, 16,

                                -1, 0x2C43, 16, -6, 0, (((-8 & 0xFF) << 0) | ((-10 & 0xFF) << 8) | ((8 & 0xFF) << 16) | ((2 & 0xFF) << 24)), -11, 0x3, 3, 17,

                                    -1, 0x2C53, 20, -6, 0, (((-8 & 0xFF) << 0) | ((-2 & 0xFF) << 8) | ((8 & 0xFF) << 16) | ((10 & 0xFF) << 24)), -11, 0x3, 3, 18,

                                        -1, 0x2C67, 20, -6, 0, (((-8 & 0xFF) << 0) | ((2 & 0xFF) << 8) | ((8 & 0xFF) << 16) | ((20 & 0xFF) << 24)), -11, 0x3, 3, 19,

                                            -3, 103,
};

const s32 *const anim_0040[2] = {
    anim_0040__v0_l0,
    anim_0040__v1_l0,
};

const s32 anim_0041__v0_l0[] = {
    -2, 0, (((u16)16 << 0) | ((u16)0x0 << 16)), -1, 0x2C7B, 24, -6, 0, (((-6 & 0xFF) << 0) | ((-19 & 0xFF) << 8) | ((6 & 0xFF) << 16) | ((7 & 0xFF) << 24)), 10, 0,

        -1, 0x2C93, 24, 10, 1,

            -1, 0x2CAB, 24, 10, 2,

                -1, 0x2C93, 24, 10, 1,

                    -3, 26,
};

const s32 anim_0041__v1_l0[] = {
    -2, 0, (((u16)16 << 0) | ((u16)0x0 << 16)), -1, 0x2CC3, 24, -6, 0, (((-6 & 0xFF) << 0) | ((-19 & 0xFF) << 8) | ((6 & 0xFF) << 16) | ((7 & 0xFF) << 24)), 5, 3,

        -1, 0x2C93, 24, 5, 1,

            -1, 0x2CDB, 24, 5, 4,

                -1, 0x2C93, 24, 5, 1,

                    -3, 26,
};

const s32 *const anim_0041[2] = {
    anim_0041__v0_l0,
    anim_0041__v1_l0,
};

const s32 anim_0042__v0_l0[] = {
    -2, 0, (((u16)16 << 0) | ((u16)0x0 << 16)), -1, 0x2CF3, 36, -6, 0, (((-6 & 0xFF) << 0) | ((-12 & 0xFF) << 8) | ((6 & 0xFF) << 16) | ((10 & 0xFF) << 24)), 5, 0,

        -1, 0x2D17, 25, 5, 1,

            -1, 0x2D30, 16, 5, 2,

                -1, 0x2D40, 25, 5, 3,

                    -1, 0x2D59, 36, 5, 4,

                        -1, 0x2D7D, 20, 5, 5,

                            -1, 0x2D91, 16, 5, 6,

                                -1, 0x2DA1, 20, 5, 7,

                                    -3, 46,
};

const s32 *const anim_0042[1] = {
    anim_0042__v0_l0,
};

const s32 anim_0043__v0_l0[] = {
    -2, 0, (((u16)16 << 0) | ((u16)0x0 << 16)), -1, 0x2DB5, 30, 8, 0,

        -1, 0x2DD3, 30, 8, 1,

            -1, 0x2DF1, 30, 8, 2,

                -1, 0x2DD3, 30, 8, 1,

                    -3, 23,
};

const s32 *const anim_0043[1] = {
    anim_0043__v0_l0,
};

const s32 anim_0044__v0_l0[] = {
    -2, 0, (((u16)16 << 0) | ((u16)0x0 << 16)), -1, 0x2E0F, 20, -6, 0, (((-6 & 0xFF) << 0) | ((-14 & 0xFF) << 8) | ((6 & 0xFF) << 16) | ((16 & 0xFF) << 24)), 2, 0,

        -1, 0x2E23, 20, 2, 1,

            -3, 16,
};

const s32 anim_0044__v1_l0[] = {
    -2, 0, (((u16)16 << 0) | ((u16)0x0 << 16)), -1, 0x2E37, 30, -6, 0, (((-6 & 0xFF) << 0) | ((-12 & 0xFF) << 8) | ((6 & 0xFF) << 16) | ((14 & 0xFF) << 24)), 2, 2,

        -1, 0x2E55, 28, 2, 3,

            -3, 16,
};

const s32 *const anim_0044[2] = {
    anim_0044__v0_l0,
    anim_0044__v1_l0,
};

const s32 anim_0045__v0_l0[] = {
    -2, 0, (((u16)16 << 0) | ((u16)0x0 << 16)), -1, 0x2E71, 20, -6, 0, (((-6 & 0xFF) << 0) | ((-16 & 0xFF) << 8) | ((6 & 0xFF) << 16) | ((8 & 0xFF) << 24)), 3, 0,

        -1, 0x2E85, 24, 3, 1,

            -1, 0x2E9D, 20, 3, 2,

                -1, 0x2E71, 20, 3, 0,

                    -1, 0x2E85, 24, 3, 1,

                        -1, 0x2E9D, 20, 3, 2,

                            -1, 0x2EB1, 25, 3, 3,

                                -1, 0x2ECA, 20, 3, 4,

                                    -1, 0x2EDE, 25, 3, 5,

                                        -1, 0x2EF7, 20, 3, 6,

                                            -1, 0x2EB1, 25, 3, 3,

                                                -1, 0x2ECA, 20, 3, 4,

                                                    -1, 0x2EDE, 25, 3, 5,

                                                        -1, 0x2EF7, 20, 3, 6,

                                                            -1, 0x2EB1, 25, 3, 3,

                                                                -1, 0x2ECA, 20, 3, 4,

                                                                    -1, 0x2EDE, 25, 3, 5,

                                                                        -1, 0x2EF7, 20, 3, 6, -1, 0x2F0B, 20,
                                                                            -6, 0, (((-6 & 0xFF) << 0) | ((-16 & 0xFF) << 8) | ((6 & 0xFF) << 16) | ((8 & 0xFF) << 24)), 3, 7,

                                                                                -1, 0x2F1F, 20, 3, 8,

                                                                                    -1, 0x2F33, 20, 3, 9,

                                                                                        -3, 18,
};

const s32 anim_0045__v1_l0[] = {
    -2, 0, (((u16)16 << 0) | ((u16)0x0 << 16)), -1, 0x2F47, 20, -6, 0, (((-6 & 0xFF) << 0) | ((-13 & 0xFF) << 8) | ((6 & 0xFF) << 16) | ((16 & 0xFF) << 24)), 3, 10,

        -1, 0x2F5B, 16, 1, 11,

            -1, 0x2F6B, 16, 1, 12,

                -1, 0x2F7B, 16, 4, 13,

                    -1, 0x2F6B, 16, 2, 12,

                        -1, 0x2F5B, 16, 2, 11,

                            -4,
};

const s32 *const anim_0045[2] = {
    anim_0045__v0_l0,
    anim_0045__v1_l0,
};

const s32 anim_0049__v0_l0[] = {
    -2, 0, (((u16)16 << 0) | ((u16)0x0 << 16)), -1, 0x2F8B, 16, -6, 0, (((-6 & 0xFF) << 0) | ((-12 & 0xFF) << 8) | ((6 & 0xFF) << 16) | ((10 & 0xFF) << 24)), 2, 0,

        -1, 0x2F9B, 16, 2, 1,

            -1, 0x2FAB, 16, 2, 2,

                -1, 0x2FBB, 16, 2, 3, -1, 0x2FCB, 20, -6, 0, (((-8 & 0xFF) << 0) | ((-14 & 0xFF) << 8) | ((6 & 0xFF) << 16) | ((12 & 0xFF) << 24)), 2, 4,

                    -1, 0x2FDF, 24, 2, 5,

                        -1, 0x2FF7, 20, 2, 6,

                            -3, 18,
};

const s32 anim_0049__v1_l0[] = {
    -2, 0, (((u16)16 << 0) | ((u16)0x0 << 16)), -1, 0x300B, 25, -6, 0, (((-6 & 0xFF) << 0) | ((-12 & 0xFF) << 8) | ((6 & 0xFF) << 16) | ((12 & 0xFF) << 24)), 2, 7,

        -1, 0x3024, 25, 2, 8,

            -3, 16,
};

const s32 anim_0049__v2_l0[] = {
    -2, 0, (((u16)16 << 0) | ((u16)0x0 << 16)), -1, 0x303D, 25, -6, 0, (((-6 & 0xFF) << 0) | ((-12 & 0xFF) << 8) | ((6 & 0xFF) << 16) | ((12 & 0xFF) << 24)), 2, 9,

        -4,
};

const s32 *const anim_0049[3] = {
    anim_0049__v0_l0,
    anim_0049__v1_l0,
    anim_0049__v2_l0,
};

const s32 anim_0050__v0_l0[] = {
    -2, 0, (((u16)16 << 0) | ((u16)0x0 << 16)), -1, 0x3056, 16, -6, 0, (((-8 & 0xFF) << 0) | ((-8 & 0xFF) << 8) | ((10 & 0xFF) << 16) | ((10 & 0xFF) << 24)), -6, 1, (((-14 & 0xFF) << 0) | ((-14 & 0xFF) << 8) | ((14 & 0xFF) << 16) | ((14 & 0xFF) << 24)), 1, 0,

        -1, 0x3066, 12, 1, 1,

            -1, 0x3072, 16, 1, 2,

                -1, 0x3082, 16, 1, 3,

                    -1, 0x3092, 16, 1, 4,

                        -1, 0x30A2, 12, 1, 5,

                            -1, 0x30AE, 16, 1, 6,

                                -1, 0x30BE, 20, 1, 7, -1, 0x30D2, 16, -6, 0, (((-8 & 0xFF) << 0) | ((-8 & 0xFF) << 8) | ((8 & 0xFF) << 16) | ((8 & 0xFF) << 24)), 2, 8,

                                    -1, 0x30E2, 16, 2, 9,

                                        -1, 0x30F2, 16, 2, 10,

                                            -1, 0x3102, 16, 2, 11,

                                                -3, 23,
};

const s32 anim_0050__v1_l0[] = {
    -2, 1, (((u16)16 << 0) | ((u16)0x50 << 16)), -1, 0x3112, 8, 2, 12,

        -1, 0x311A, 16, 2, 13,

            -1, 0x312A, 16, 2, 14,

                -1, 0x313A, 16, 2, 15,

                    -1, 0x314A, 16, 2, 16,

                        -1, 0x315A, 16, 2, 17,

                            -1, 0x316A, 12, 2, 18,

                                -1, 0x3176, 16, 2, 19,

                                    -4,
};

const s32 *const anim_0050[2] = {
    anim_0050__v0_l0,
    anim_0050__v1_l0,
};

const s32 anim_0051__v0_l0[] = {
    -2, 0, (((u16)16 << 0) | ((u16)0x0 << 16)), -1, 0x3186, 16, -6, 0, (((-8 & 0xFF) << 0) | ((-4 & 0xFF) << 8) | ((6 & 0xFF) << 16) | ((12 & 0xFF) << 24)), -6, 1, (((-10 & 0xFF) << 0) | ((-8 & 0xFF) << 8) | ((12 & 0xFF) << 16) | ((16 & 0xFF) << 24)), 6, 0,

        -1, 0x3196, 16, -6, 0, (((-6 & 0xFF) << 0) | ((-2 & 0xFF) << 8) | ((6 & 0xFF) << 16) | ((16 & 0xFF) << 24)), 6, 1,

            -1, 0x31A6, 16, 6, 2,

                -1, 0x31B6, 12, -6, 0, (((-6 & 0xFF) << 0) | ((-2 & 0xFF) << 8) | ((6 & 0xFF) << 16) | ((16 & 0xFF) << 24)), -6, 1, (((0 & 0xFF) << 0) | ((0 & 0xFF) << 8) | ((0 & 0xFF) << 16) | ((0 & 0xFF) << 24)), 6, 3,

                    -4,
};

const s32 *const anim_0051[1] = {
    anim_0051__v0_l0,
};

const s32 anim_0052__v0_l0[] = {
    -2, 0, (((u16)16 << 0) | ((u16)0x0 << 16)), -1, 0x31C2, 16, -6, 0, (((-6 & 0xFF) << 0) | ((-2 & 0xFF) << 8) | ((6 & 0xFF) << 16) | ((16 & 0xFF) << 24)), 3, 0,

        -1, 0x31D2, 30, -6, 0, (((-14 & 0xFF) << 0) | ((-10 & 0xFF) << 8) | ((14 & 0xFF) << 16) | ((16 & 0xFF) << 24)), -6, 1, (((-23 & 0xFF) << 0) | ((-20 & 0xFF) << 8) | ((6 & 0xFF) << 16) | ((16 & 0xFF) << 24)), 2, 1,

            -1, 0x31F0, 18, 2, 2,

                -1, 0x3202, 24, -6, 0, (((-14 & 0xFF) << 0) | ((-10 & 0xFF) << 8) | ((14 & 0xFF) << 16) | ((16 & 0xFF) << 24)), -6, 1, (((-20 & 0xFF) << 0) | ((-15 & 0xFF) << 8) | ((6 & 0xFF) << 16) | ((16 & 0xFF) << 24)), 2, 3,

                    -1, 0x321A, 30, 2, 4,

                        -1, 0x3238, 30, -6, 0, (((-6 & 0xFF) << 0) | ((-10 & 0xFF) << 8) | ((6 & 0xFF) << 16) | ((16 & 0xFF) << 24)), -6, 1, (((0 & 0xFF) << 0) | ((0 & 0xFF) << 8) | ((0 & 0xFF) << 16) | ((0 & 0xFF) << 24)), 2, 5,

                            -1, 0x3256, 36, 1, 6,

                                -1, 0x327A, 25, 1, 7,

                                    -1, 0x3293, 30, 1, 8,

                                        -1, 0x32B1, 30, 2, 9,

                                            -1, 0x32CF, 20, 3, 10,

                                                -4,
};

const s32 *const anim_0052[1] = {
    anim_0052__v0_l0,
};

const s32 anim_0053__v0_l0[] = {
    -2, 0, (((u16)16 << 0) | ((u16)0x0 << 16)), -1, 0x32E3, 24, -6, 0, (((-14 & 0xFF) << 0) | ((-2 & 0xFF) << 8) | ((14 & 0xFF) << 16) | ((16 & 0xFF) << 24)), -6, 1, (((-21 & 0xFF) << 0) | ((-8 & 0xFF) << 8) | ((3 & 0xFF) << 16) | ((16 & 0xFF) << 24)), 2, 0,

        -1, 0x32FB, 24, 2, 1,

            -1, 0x3313, 24, 2, 2,

                -3, 24,
};

const s32 anim_0053__v1_l0[] = {
    -2, 0, (((u16)16 << 0) | ((u16)0x0 << 16)), -1, 0x332B, 16, -6, 0, (((-6 & 0xFF) << 0) | ((-6 & 0xFF) << 8) | ((6 & 0xFF) << 16) | ((16 & 0xFF) << 24)), 2, 3,

        -1, 0x333B, 16, 2, 4,

            -1, 0x334B, 16, 2, 5,

                -4,
};

const s32 *const anim_0053[2] = {
    anim_0053__v0_l0,
    anim_0053__v1_l0,
};

const s32 anim_0055__v0_l0[] = {
    -2, 0, (((u16)16 << 0) | ((u16)0x0 << 16)), -1, 0x335B, 16, -6, 0, (((-6 & 0xFF) << 0) | ((-8 & 0xFF) << 8) | ((6 & 0xFF) << 16) | ((16 & 0xFF) << 24)), 2, 0,

        -1, 0x336B, 16, 2, 1,

            -1, 0x337B, 16, 2, 2,

                -1, 0x338B, 16, 2, 3,

                    -3, 26,
};

const s32 *const anim_0055[1] = {
    anim_0055__v0_l0,
};

const s32 anim_0081__v0_l0[] = {
    -2, 0, (((u16)16 << 0) | ((u16)0x0 << 16)), -1, 0x339B, 25, -6, 0, (((-6 & 0xFF) << 0) | ((-13 & 0xFF) << 8) | ((6 & 0xFF) << 16) | ((16 & 0xFF) << 24)), 4, 0,

        -1, 0x33B4, 30, 4, 1,

            -1, 0x33D2, 36, 4, 2,

                -1, 0x33F6, 25, 4, 3,

                    -3, 26,
};

const s32 *const anim_0081[1] = {
    anim_0081__v0_l0,
};

const s32 anim_0082__v0_l0[] = {
    -2, 0, (((u16)16 << 0) | ((u16)0x0 << 16)), -1, 0x340F, 30, -6, 0, (((-6 & 0xFF) << 0) | ((-13 & 0xFF) << 8) | ((6 & 0xFF) << 16) | ((16 & 0xFF) << 24)), 4, 0,

        -1, 0x342D, 36, 4, 1,

            -1, 0x3451, 36, 4, 2,

                -1, 0x3475, 24, 4, 3,

                    -3, 26,
};

const s32 *const anim_0082[1] = {
    anim_0082__v0_l0,
};

const s32 anim_0083__v0_l0[] = {
    -2, 0, (((u16)16 << 0) | ((u16)0x0 << 16)), -1, 0x348D, 20, -6, 0, (((-6 & 0xFF) << 0) | ((-12 & 0xFF) << 8) | ((6 & 0xFF) << 16) | ((6 & 0xFF) << 24)), 2, 0,

        -1, 0x34A1, 20, 2, 1,

            -1, 0x34B5, 20, 2, 2,

                -1, 0x34C9, 20, 2, 3,

                    -3, 26,
};

const s32 *const anim_0083[1] = {
    anim_0083__v0_l0,
};

const s32 anim_0084__v0_l0[] = {
    -2, 0, (((u16)16 << 0) | ((u16)0x0 << 16)), -1, 0x34DD, 20, -6, 0, (((-8 & 0xFF) << 0) | ((-8 & 0xFF) << 8) | ((8 & 0xFF) << 16) | ((8 & 0xFF) << 24)), -6, 1, (((-8 & 0xFF) << 0) | ((-8 & 0xFF) << 8) | ((8 & 0xFF) << 16) | ((8 & 0xFF) << 24)), 2, 0,

        -1, 0x34F1, 30, 2, 1,

            -1, 0x350F, 35, 2, 2,

                -1, 0x3532, 16, 2, 3,

                    -4,
};

const s32 *const anim_0084[1] = {
    anim_0084__v0_l0,
};

const s32 anim_0085__v0_l0[] = {
    -2, 0, (((u16)16 << 0) | ((u16)0x70 << 16)), -1, 0x3542, 24, 3, 0,

        -1, 0x355A, 24, 3, 1,

            -3, 13,
};

const s32 *const anim_0085[1] = {
    anim_0085__v0_l0,
};

const s32 anim_0086__v0_l0[] = {
    -2, 0, (((u16)16 << 0) | ((u16)0x70 << 16)), -1, 0x3572, 16, 2, 0,

        -1, 0x3582, 16, 2, 1,

            -4,
};

const s32 anim_0086__v1_l0[] = {
    -2, 0, (((u16)16 << 0) | ((u16)0x70 << 16)), -1, 0x3592, 16, 2, 2,

        -4,
};

const s32 *const anim_0086[2] = {
    anim_0086__v0_l0,
    anim_0086__v1_l0,
};

const s32 anim_0087__v0_l0[] = {
    -2, 0, (((u16)16 << 0) | ((u16)0x0 << 16)), -1, 0x35A2, 15, 3, 0,

        -1, 0x35B1, 15, 3, 1,

            -3, 13,
};

const s32 *const anim_0087[1] = {
    anim_0087__v0_l0,
};

const s32 anim_0088__v0_l0[] = {
    -2, 0, (((u16)16 << 0) | ((u16)0x70 << 16)), -1, 0x35C0, 20, 6, 0,

        -1, 0x35D4, 20, 6, 1,

            -1, 0x35E8, 20, 6, 2, -1, 0x35FC, 20, 3, 3,

                -1, 0x3610, 20, 3, 4,

                    -3, 10,
};

const s32 *const anim_0088[1] = {
    anim_0088__v0_l0,
};

const s32 anim_0089__v0_l0[] = {
    -2, 0, (((u16)16 << 0) | ((u16)0x70 << 16)), -1, 0x3624, 20, 1, 0,

        -4,
};

const s32 anim_0089__v1_l0[] = {
    -2, 0, (((u16)16 << 0) | ((u16)0x70 << 16)), -1, 0x3638, 20, 4, 1,

        -1, 0x364C, 20, 4, 2,

            -1, 0x3660, 20, 4, 3,

                -1, 0x3674, 20, 40, 4,

                    -4,
};

const s32 *const anim_0089[2] = {
    anim_0089__v0_l0,
    anim_0089__v1_l0,
};

const s32 anim_0091__v0_l0[] = {
    -2, 0, (((u16)16 << 0) | ((u16)0x70 << 16)), -1, 0x3688, 16, 3, 0,

        -1, 0x3698, 16, 3, 1,

            -3, 13,
};

const s32 *const anim_0091[1] = {
    anim_0091__v0_l0,
};

const s32 anim_0093__v0_l0[] = {
    -2, 0, (((u16)16 << 0) | ((u16)0x0 << 16)), -1, 0x36A8, 25, -6, 0, (((-6 & 0xFF) << 0) | ((-14 & 0xFF) << 8) | ((6 & 0xFF) << 16) | ((14 & 0xFF) << 24)), 1, 0,

        -4,
};

const s32 anim_0093__v1_l0[] = {
    -2, 0, (((u16)16 << 0) | ((u16)0x0 << 16)), -1, 0x36C1, 16, -6, 0, (((-6 & 0xFF) << 0) | ((-14 & 0xFF) << 8) | ((6 & 0xFF) << 16) | ((14 & 0xFF) << 24)), 1, 1,

        -4,
};

const s32 anim_0093__v2_l0[] = {
    -2, 0, (((u16)16 << 0) | ((u16)0x0 << 16)), -1, 0x36D1, 16, -6, 0, (((-6 & 0xFF) << 0) | ((-14 & 0xFF) << 8) | ((6 & 0xFF) << 16) | ((14 & 0xFF) << 24)), 1, 2,

        -4,
};

const s32 anim_0093__v3_l0[] = {
    -2, 0, (((u16)16 << 0) | ((u16)0x0 << 16)), -1, 0x36E1, 25, -6, 0, (((-6 & 0xFF) << 0) | ((-14 & 0xFF) << 8) | ((6 & 0xFF) << 16) | ((14 & 0xFF) << 24)), 1, 3,

        -4,
};

const s32 anim_0093__v4_l0[] = {
    -2, 0, (((u16)16 << 0) | ((u16)0x0 << 16)), -1, 0x36FA, 20, -6, 0, (((-6 & 0xFF) << 0) | ((-14 & 0xFF) << 8) | ((6 & 0xFF) << 16) | ((14 & 0xFF) << 24)), 1, 4,

        -4,
};

const s32 anim_0093__v5_l0[] = {
    -2, 0, (((u16)16 << 0) | ((u16)0x0 << 16)), -1, 0x370E, 16, -6, 0, (((-6 & 0xFF) << 0) | ((-14 & 0xFF) << 8) | ((6 & 0xFF) << 16) | ((14 & 0xFF) << 24)), 1, 5,

        -4,
};

const s32 anim_0093__v6_l0[] = {
    -2, 0, (((u16)16 << 0) | ((u16)0x0 << 16)), -1, 0x371E, 16, -6, 0, (((-6 & 0xFF) << 0) | ((-14 & 0xFF) << 8) | ((6 & 0xFF) << 16) | ((14 & 0xFF) << 24)), 1, 6,

        -4,
};

const s32 anim_0093__v7_l0[] = {
    -2, 0, (((u16)16 << 0) | ((u16)0x0 << 16)), -1, 0x372E, 20, -6, 0, (((-6 & 0xFF) << 0) | ((-14 & 0xFF) << 8) | ((6 & 0xFF) << 16) | ((14 & 0xFF) << 24)), 1, 7,

        -4,
};

const s32 *const anim_0093[8] = {
    anim_0093__v0_l0, anim_0093__v1_l0, anim_0093__v2_l0, anim_0093__v3_l0,
    anim_0093__v4_l0, anim_0093__v5_l0, anim_0093__v6_l0, anim_0093__v7_l0,
};

const s32 anim_0096__v0_l0[] = {
    -2, 0, (((u16)16 << 0) | ((u16)0x70 << 16)), -1, 0x3742, 64, 2, 0,

        -1, 0x3782, 64, 2, 1,

            -1, 0x37C2, 64, 2, 2,

                -1, 0x3802, 64, 2, 3,

                    -3, 23,
};

const s32 *const anim_0096[1] = {
    anim_0096__v0_l0,
};

const s32 anim_0097__v0_l0[] = {
    -2, 0, (((u16)16 << 0) | ((u16)0x0 << 16)), -1, 0x3842, 8, 1, 0,

        -1, 0x384A, 8, 1, 1,

            -1, 0x3842, 8, 1, 0,

                -1, 0x3852, 12, 1, 2,

                    -4,
};

const s32 *const anim_0097[1] = {
    anim_0097__v0_l0,
};

const s32 anim_0098__v0_l0[] = {
    -2, 0, (((u16)16 << 0) | ((u16)0x0 << 16)), -1, 0x385E, 64, 3, 0,

        -4,
};

const s32 *const anim_0098[1] = {
    anim_0098__v0_l0,
};

const s32 anim_0099__v0_l0[] = {
    -2, 2, (((u16)16 << 0) | ((u16)0x10 << 16)), -1, 0x389E, 24, -6, 0, (((-6 & 0xFF) << 0) | ((-10 & 0xFF) << 8) | ((6 & 0xFF) << 16) | ((16 & 0xFF) << 24)), 8, 0,

        -1, 0x38B6, 24, 8, 1,

            -1, 0x38CE, 30, 8, 2,

                -1, 0x38EC, 24, 8, 3,

                    -1, 0x3904, 24, 8, 4,

                        -1, 0x391C, 24, 8, 5,

                            -1, 0x3934, 30, 8, 6,

                                -1, 0x3952, 24, 8, 7,

                                    -1, 0x389E, 24, 8, 0,

                                        -1, 0x396A, 24, 8, 8,

                                            -1, 0x3982, 30, 8, 9,

                                                -1, 0x39A0, 24, 8, 10,

                                                    -1, 0x3904, 24, 8, 4,

                                                        -1, 0x391C, 24, 8, 5,

                                                            -1, 0x3934, 30, 8, 6,

                                                                -1, 0x3952, 24, 8, 7,

                                                                    -3, 86,
};

const s32 *const anim_0099[1] = {
    anim_0099__v0_l0,
};

const s32 anim_0100__v0_l0[] = {
    -2, 2, (((u16)16 << 0) | ((u16)0x10 << 16)), -1, 0x39B8, 20, -6, 0, (((-6 & 0xFF) << 0) | ((-10 & 0xFF) << 8) | ((6 & 0xFF) << 16) | ((16 & 0xFF) << 24)), 4, 0,

        -1, 0x39CC, 36, 10, 1,

            -1, 0x39F0, 20, -6, 0, (((-6 & 0xFF) << 0) | ((-10 & 0xFF) << 8) | ((6 & 0xFF) << 16) | ((16 & 0xFF) << 24)), 12, 2,

                -1, 0x3A04, 20, 10, 3,

                    -1, 0x3A18, 20, 10, 4,

                        -1, 0x3A04, 20, 10, 3,

                            -1, 0x39F0, 20, -6, 0, (((-6 & 0xFF) << 0) | ((-10 & 0xFF) << 8) | ((6 & 0xFF) << 16) | ((16 & 0xFF) << 24)), 10, 2,

                                -1, 0x3A04, 20, 10, 3,

                                    -1, 0x3A18, 20, 10, 4,

                                        -1, 0x3A04, 20, 10, 3,

                                            -1, 0x3A2C, 16, -6, 0, (((-6 & 0xFF) << 0) | ((-10 & 0xFF) << 8) | ((6 & 0xFF) << 16) | ((16 & 0xFF) << 24)), 6, 5,

                                                -1, 0x3A3C, 12, 6, 6,

                                                    -1, 0x3A2C, 16, 6, 5,

                                                        -1, 0x3A48, 20, 6, 7,

                                                            -1, 0x3A5C, 16, 6, 8,

                                                                -1, 0x3A6C, 16, 6, 9,

                                                                    -1, 0x3A5C, 16, 6, 8,

                                                                        -1, 0x3A48, 20, 6, 7,

                                                                            -1, 0x3A2C, 16, -6, 0, (((-6 & 0xFF) << 0) | ((-10 & 0xFF) << 8) | ((6 & 0xFF) << 16) | ((16 & 0xFF) << 24)), 6, 5,

                                                                                -1, 0x3A3C, 12, 6, 6,

                                                                                    -1, 0x3A2C, 16, 6, 5,

                                                                                        -1, 0x3A48, 20, 6, 7,

                                                                                            -1, 0x3A5C, 16, 6, 8,

                                                                                                -1, 0x3A6C, 16, 6, 9,

                                                                                                    -1, 0x3A5C, 16, 6, 8,

                                                                                                        -1, 0x3A48, 20, 30, 7,

                                                                                                            -1, 0x3A7C, 20, 10, 10,


                                                                                                                -1, 0x3A90, 20, 10, 11,


                                                                                                                    -1, 0x3AA4, 24, 6, 12,


                                                                                                                        -1, 0x3ABC, 28, -6, 0, (((-6 & 0xFF) << 0) | ((-10 & 0xFF) << 8) | ((6 & 0xFF) << 16) | ((16 & 0xFF) << 24)), 6, 13,





                                                                                                                            -1, 0x3AD8, 28, 6, 14,


                                                                                                                                -1, 0x3AF4, 28, 6, 15,


                                                                                                                                    -1, 0x3B10, 28, 6, 16,



                                                                                                                                        -1, 0x3B2C, 28,


                                                                                                                                            6, 17,



                                                                                                                                                -1, 0x3B48, 28,


                                                                                                                                                    6, 18,



                                                                                                                                                        -1, 0x3B64, 28,

                                                                                                                                                            6, 19,



                                                                                                                                                                -1, 0x3B80, 28,

                                                                                                                                                                    6, 20,



                                                                                                                                                                        -1, 0x3ABC, 28,

                                                                                                                                                                            6, 13,



                                                                                                                                                                                -1, 0x3B9C, 28,

                                                                                                                                                                                    6, 21,



                                                                                                                                                                                        -1, 0x3BB8, 28,

                                                                                                                                                                                            6, 22,



                                                                                                                                                                                                -1, 0x3BD4, 28,

                                                                                                                                                                                                    6, 23,



                                                                                                                                                                                                        -1, 0x3B2C, 28,

                                                                                                                                                                                                            6, 17,

                                                                                                                                                                                                                -1, 0x3B48, 28, 6, 18,



                                                                                                                                                                                                                    -1, 0x3B64, 28, 6, 19,



                                                                                                                                                                                                                        -1, 0x3BF0, 28,


                                                                                                                                                                                                                            6, 24,



                                                                                                                                                                                                                                -3, 83,

};

const s32 *const anim_0100[1] = {
    anim_0100__v0_l0,
};

const s32 anim_0101__v0_l0[] = {
    -2, 2, (((u16)16 << 0) | ((u16)0x10 << 16)), -1, 0x3C0C, 20, -6, 0, (((-6 & 0xFF) << 0) | ((-10 & 0xFF) << 8) | ((6 & 0xFF) << 16) | ((16 & 0xFF) << 24)), 2, 0,

        -1, 0x3C20, 25, 2, 1, -1, 0x3C39, 25, -6, 0, (((-6 & 0xFF) << 0) | ((-10 & 0xFF) << 8) | ((6 & 0xFF) << 16) | ((16 & 0xFF) << 24)), 10, 2,

            -1, 0x3C52, 25, 10, 3,

                -1, 0x3C6B, 25, 10, 4,

                    -1, 0x3C84, 25, 10, 5,

                        -3, 23,
};

const s32 anim_0101__v1_l0[] = {
    -2, 2, (((u16)16 << 0) | ((u16)0x10 << 16)), -1, 0x3C20, 25, -6, 0, (((-6 & 0xFF) << 0) | ((-10 & 0xFF) << 8) | ((6 & 0xFF) << 16) | ((16 & 0xFF) << 24)), 2, 1,

        -1, 0x3C0C, 20, 2, 0,

            -4,
};

const s32 *const anim_0101[2] = {
    anim_0101__v0_l0,
    anim_0101__v1_l0,
};

const s32 anim_0102__v0_l0[] = {
    -2, 2, (((u16)16 << 0) | ((u16)0x10 << 16)), -1, 0x3C9D, 20, -6, 0, (((-6 & 0xFF) << 0) | ((-4 & 0xFF) << 8) | ((6 & 0xFF) << 16) | ((16 & 0xFF) << 24)), 1, 0,

        -1, 0x3CB1, 24, 1, 1, -1, 0x3CC9, 18, 6, 2,

            -1, 0x3CDB, 18, 6, 3,

                -1, 0x3CED, 18, 6, 4,

                    -1, 0x3CFF, 18, 6, 5,

                        -1, 0x3D11, 18, 6, 6,

                            -1, 0x3D23, 18, 6, 7,

                                -1, 0x3D35, 18, 6, 8,

                                    -1, 0x3D47, 18, 6, 9,

                                        -1, 0x3CC9, 18, 6, 2,

                                            -1, 0x3D59, 18, 6, 10,

                                                -1, 0x3D6B, 18, 6, 11,

                                                    -1, 0x3D7D, 18, 6, 12,

                                                        -1, 0x3D11, 18, 6, 6,

                                                            -1, 0x3D23, 18, 6, 7,

                                                                -1, 0x3D35, 18, 6, 8,

                                                                    -1, 0x3D47, 18, 6, 9,

                                                                        -3, 80,
};

const s32 anim_0102__v1_l0[] = {
    -2, 2, (((u16)16 << 0) | ((u16)0x10 << 16)), -1, 0x3CB1, 24, -6, 0, (((-6 & 0xFF) << 0) | ((-4 & 0xFF) << 8) | ((6 & 0xFF) << 16) | ((16 & 0xFF) << 24)), 1, 1,

        -1, 0x3C9D, 20, 1, 0,

            -4,
};

const s32 *const anim_0102[2] = {
    anim_0102__v0_l0,
    anim_0102__v1_l0,
};

const s32 anim_0103__v0_l0[] = {
    -2, 2, (((u16)16 << 0) | ((u16)0x10 << 16)), -1, 0x3D8F, 64, -6, 0, (((-6 & 0xFF) << 0) | ((-10 & 0xFF) << 8) | ((6 & 0xFF) << 16) | ((16 & 0xFF) << 24)), 3, 0,

        -1, 0x3DCF, 64, 3, 1,

            -1, 0x3E0F, 64, 3, 2,

                -1, 0x3E4F, 64, 3, 3,

                    -1, 0x3E8F, 64, 3, 4,

                        -1, 0x3ECF, 64, 3, 5,

                            -1, 0x3F0F, 64, 3, 6,

                                -1, 0x3F4F, 64, 3, 7,

                                    -1, 0x3D8F, 64, 3, 0,

                                        -1, 0x3F8F, 64, 3, 8,

                                            -1, 0x3FCF, 64, 3, 9,

                                                -1, 0x400F, 64, 3, 10,

                                                    -1, 0x3E8F, 64, 3, 4,

                                                        -1, 0x3ECF, 64, 3, 5,

                                                            -1, 0x3F0F, 64, 3, 6,

                                                                -1, 0x3F4F, 64, 3, 7,

                                                                    -3, 86,
};

const s32 *const anim_0103[1] = {
    anim_0103__v0_l0,
};

const s32 anim_0104__v0_l0[] = {
    -2, 2, (((u16)16 << 0) | ((u16)0x10 << 16)), -1, 0x404F, 64, -6, 0, (((-6 & 0xFF) << 0) | ((-10 & 0xFF) << 8) | ((6 & 0xFF) << 16) | ((16 & 0xFF) << 24)), 2, 0,

        -1, 0x408F, 64, 2, 1,

            -1, 0x40CF, 64, 2, 2,

                -1, 0x410F, 64, 2, 3,

                    -1, 0x414F, 64, 2, 4,

                        -1, 0x418F, 64, 2, 5,

                            -1, 0x41CF, 64, 2, 6,

                                -1, 0x420F, 64, 2, 7,

                                    -1, 0x404F, 64, 2, 0,

                                        -1, 0x424F, 64, 2, 8,

                                            -1, 0x428F, 64, 2, 9,

                                                -1, 0x42CF, 64, 2, 10,

                                                    -1, 0x414F, 64, 2, 4,

                                                        -1, 0x418F, 64, 2, 5,

                                                            -1, 0x41CF, 64, 2, 6,

                                                                -1, 0x420F, 64, 2, 7,

                                                                    -3, 86,
};

const s32 *const anim_0104[1] = {
    anim_0104__v0_l0,
};

const s32 anim_0105__v0_l0[] = {
    -2, 2, (((u16)16 << 0) | ((u16)0x10 << 16)), -1, 0x430F, 20, -6, 0, (((-6 & 0xFF) << 0) | ((-10 & 0xFF) << 8) | ((6 & 0xFF) << 16) | ((16 & 0xFF) << 24)), 1, 0,

        -1, 0x4323, 20, 1, 1,

            -4,
};

const s32 *const anim_0105[1] = {
    anim_0105__v0_l0,
};

const s32 anim_0106__v0_l0[] = {
    -2, 2, (((u16)16 << 0) | ((u16)0x10 << 16)), -1, 0x4337, 20, -6, 0, (((-6 & 0xFF) << 0) | ((-10 & 0xFF) << 8) | ((6 & 0xFF) << 16) | ((16 & 0xFF) << 24)), 1, 0,

        -1, 0x434B, 20, 1, 1,

            -1, 0x435F, 16, 1, 2,

                -1, 0x436F, 24, 1, 3,

                    -4,
};

const s32 *const anim_0106[1] = {
    anim_0106__v0_l0,
};

const s32 anim_0107__v0_l0[] = {
    -2, 2, (((u16)16 << 0) | ((u16)0x10 << 16)), -1, 0x4387, 16, -6, 0, (((-8 & 0xFF) << 0) | ((-8 & 0xFF) << 8) | ((8 & 0xFF) << 16) | ((8 & 0xFF) << 24)), -6, 1, (((-8 & 0xFF) << 0) | ((-8 & 0xFF) << 8) | ((8 & 0xFF) << 16) | ((8 & 0xFF) << 24)), 2, 0,

        -1, 0x4397, 16, 2, 1,

            -1, 0x43A7, 16, 2, 2,

                -1, 0x43B7, 16, 2, 3,

                    -1, 0x4387, 16, 2, 0,

                        -1, 0x4397, 16, 2, 1,

                            -1, 0x43A7, 16, 2, 2,

                                -1, 0x43B7, 16, 2, 3,

                                    -3, 49,
};

const s32 anim_0107__v1_l0[] = {
    -2, 2, (((u16)16 << 0) | ((u16)0x10 << 16)), -1, 0x43C7, 16, 2, 4,

        -1, 0x43D7, 16, 2, 5,

            -1, 0x43E7, 16, 2, 6,

                -1, 0x43F7, 16, 2, 7,

                    -1, 0x4407, 16, 2, 8,

                        -1, 0x4417, 16, 2, 9,

                            -1, 0x4427, 16, 2, 10,

                                -1, 0x4437, 16, 2, 11,

                                    -3, 43,
};

const s32 *const anim_0107[2] = {
    anim_0107__v0_l0,
    anim_0107__v1_l0,
};

const s32 anim_0108__v0_l0[] = {
    -2, 2, (((u16)16 << 0) | ((u16)0x10 << 16)), -1, 0x4447, 20, -6, 0, (((-6 & 0xFF) << 0) | ((-10 & 0xFF) << 8) | ((6 & 0xFF) << 16) | ((16 & 0xFF) << 24)), 2, 0, -1, 0x445B, 20, 4, 1,

        -1, 0x446F, 20, 4, 2,

            -3, 10,
};

const s32 anim_0108__v1_l0[] = {
    -2, 2, (((u16)16 << 0) | ((u16)0x10 << 16)), -1, 0x4483, 20, -6, 0, (((-6 & 0xFF) << 0) | ((-10 & 0xFF) << 8) | ((6 & 0xFF) << 16) | ((16 & 0xFF) << 24)), 4, 3,

        -4,
};

const s32 *const anim_0108[2] = {
    anim_0108__v0_l0,
    anim_0108__v1_l0,
};

const s32 anim_0109__v0_l0[] = {
    -2, 2, (((u16)16 << 0) | ((u16)0x10 << 16)), -1, 0x4497, 21, -6, 0, (((-6 & 0xFF) << 0) | ((-12 & 0xFF) << 8) | ((6 & 0xFF) << 16) | ((10 & 0xFF) << 24)), 2, 0,

        -1, 0x44AC, 21, 2, 1,

            -1, 0x44C1, 21, 2, 2,

                -3, 21,
};

const s32 anim_0109__v1_l0[] = {
    -2, 2, (((u16)16 << 0) | ((u16)0x10 << 16)), -1, 0x44D6, 18, -6, 0, (((-6 & 0xFF) << 0) | ((-12 & 0xFF) << 8) | ((6 & 0xFF) << 16) | ((10 & 0xFF) << 24)), 2, 3,

        -1, 0x44E8, 24, -6, 0, (((-6 & 0xFF) << 0) | ((-14 & 0xFF) << 8) | ((6 & 0xFF) << 16) | ((8 & 0xFF) << 24)), 3, 4,

            -1, 0x4500, 20, 3, 5,

                -1, 0x4514, 20, 4, 6,

                    -1, 0x4528, 20, -6, 0, (((-6 & 0xFF) << 0) | ((-16 & 0xFF) << 8) | ((6 & 0xFF) << 16) | ((6 & 0xFF) << 24)), 4, 7,

                        -1, 0x453C, 25, -6, 0, (((-6 & 0xFF) << 0) | ((-14 & 0xFF) << 8) | ((6 & 0xFF) << 16) | ((6 & 0xFF) << 24)), 4, 8,

                            -4,
};

const s32 anim_0109__v2_l0[] = {
    -2, 2, (((u16)16 << 0) | ((u16)0x10 << 16)), -1, 0x4555, 28, -6, 0, (((-6 & 0xFF) << 0) | ((-16 & 0xFF) << 8) | ((6 & 0xFF) << 16) | ((6 & 0xFF) << 24)), 3, 9,

        -1, 0x4571, 28, 3, 10,

            -1, 0x458D, 28, 3, 11,

                -3, 21,
};

const s32 anim_0109__v3_l0[] = {
    -2, 2, (((u16)16 << 0) | ((u16)0x10 << 16)), -1, 0x45A9, 20, 2, 12,

        -1, 0x45BD, 24, 1, 13,

            -1, 0x45D5, 18, 1, 14,

                -1, 0x45BD, 24, 1, 13,

                    -4,
};

const s32 *const anim_0109[4] = {
    anim_0109__v0_l0,
    anim_0109__v1_l0,
    anim_0109__v2_l0,
    anim_0109__v3_l0,
};

const s32 anim_0110__v0_l0[] = {
    -2, 2, (((u16)16 << 0) | ((u16)0x10 << 16)), -1, 0x45E7, 25, -6, 0, (((-6 & 0xFF) << 0) | ((-11 & 0xFF) << 8) | ((6 & 0xFF) << 16) | ((11 & 0xFF) << 24)), 4, 0,

        -1, 0x4600, 25, 4, 1,

            -1, 0x4619, 24, 4, 2,

                -1, 0x4631, 24, 4, 3,

                    -1, 0x4649, 20, 4, 4,

                        -1, 0x465D, 20, 4, 5,

                            -1, 0x4671, 20, 4, 6,

                                -1, 0x4685, 20, 4, 7,

                                    -1, 0x4699, 20, 4, 8,

                                        -1, 0x46AD, 20, 4, 9,

                                            -1, 0x46C1, 25, 4, 10,

                                                -4,
};

const s32 *const anim_0110[1] = {
    anim_0110__v0_l0,
};

const s32 anim_0111__v0_l0[] = {
    -2, 2, (((u16)16 << 0) | ((u16)0x10 << 16)), -1, 0x46DA, 24, -6, 0, (((-6 & 0xFF) << 0) | ((-10 & 0xFF) << 8) | ((6 & 0xFF) << 16) | ((16 & 0xFF) << 24)), 4, 0, -1, 0x46F2, 30, 7, 1,

        -1, 0x4710, 30, 7, 2,

            -1, 0x472E, 30, 7, 3,

                -1, 0x474C, 24, 7, 4,

                    -1, 0x4764, 24, 7, 5,

                        -1, 0x477C, 24, 7, 6,

                            -1, 0x4794, 24, 7, 7,

                                -1, 0x47AC, 24, 7, 8,

                                    -3, 40,
};

const s32 anim_0111__v1_l0[] = {
    -2, 2, (((u16)16 << 0) | ((u16)0x10 << 16)), -1, 0x46DA, 24, -6, 0, (((-6 & 0xFF) << 0) | ((-10 & 0xFF) << 8) | ((6 & 0xFF) << 16) | ((16 & 0xFF) << 24)), 4, 0,

        -4,
};

const s32 *const anim_0111[2] = {
    anim_0111__v0_l0,
    anim_0111__v1_l0,
};

const s32 anim_0112__v0_l0[] = {
    -2, 2, (((u16)16 << 0) | ((u16)0x10 << 16)), -1, 0x47C4, 20, -6, 0, (((-3 & 0xFF) << 0) | ((-10 & 0xFF) << 8) | ((9 & 0xFF) << 16) | ((16 & 0xFF) << 24)), 2, 0, -1, 0x47D8, 28, -6, 0, (((-3 & 0xFF) << 0) | ((-10 & 0xFF) << 8) | ((9 & 0xFF) << 16) | ((16 & 0xFF) << 24)),
        2, 1,

            -1, 0x47F4, 30, 2, 2,

                -1, 0x4812, 35, 2, 3,

                    -1, 0x4835, 28, 2, 4,

                        -1, 0x4851, 24, 2, 5,

                            -1, 0x4869, 24, 2, 6,

                                -1, 0x4881, 30, 2, 7,

                                    -1, 0x489F, 28, 2, 8,

                                        -3, 43,
};

const s32 anim_0112__v1_l0[] = {
    -2, 2, (((u16)16 << 0) | ((u16)0x10 << 16)), -1, 0x48BB, 20, -6, 0, (((-6 & 0xFF) << 0) | ((-10 & 0xFF) << 8) | ((6 & 0xFF) << 16) | ((16 & 0xFF) << 24)), 2, 9,

        -4,
};

const s32 *const anim_0112[2] = {
    anim_0112__v0_l0,
    anim_0112__v1_l0,
};

const s32 anim_0113__v0_l0[] = {
    -2, 2, (((u16)16 << 0) | ((u16)0x10 << 16)), -1, 0x48CF, 30, -6, 0, (((-13 & 0xFF) << 0) | ((-10 & 0xFF) << 8) | ((-1 & 0xFF) << 16) | ((16 & 0xFF) << 24)), 4, 0,

        -1, 0x48ED, 36, 4, 1,

            -1, 0x4911, 42, 4, 2,

                -1, 0x493B, 24, 4, 3,

                    -1, 0x4953, 35, 4, 4,

                        -1, 0x4976, 35, 4, 5,

                            -1, 0x4999, 30, 4, 6,

                                -1, 0x49B7, 30, 4, 7,

                                    -3, 46,
};

const s32 anim_0113__v1_l0[] = {
    -2, 2, (((u16)16 << 0) | ((u16)0x10 << 16)), -1, 0x49D5, 24, -6, 0, (((-6 & 0xFF) << 0) | ((-10 & 0xFF) << 8) | ((6 & 0xFF) << 16) | ((16 & 0xFF) << 24)), 1, 8,

        -4,
};

const s32 *const anim_0113[2] = {
    anim_0113__v0_l0,
    anim_0113__v1_l0,
};

const s32 anim_0116__v0_l0[] = {
    -2, 2, (((u16)16 << 0) | ((u16)0x10 << 16)), -1, 0x49ED, 20, -6, 0, (((-6 & 0xFF) << 0) | ((-10 & 0xFF) << 8) | ((6 & 0xFF) << 16) | ((16 & 0xFF) << 24)), -5, 191, 6, 0,

        -1, 0x4A01, 20, 6, 1,

            -4,
};

const s32 *const anim_0116[1] = {
    anim_0116__v0_l0,
};

const s32 anim_0117__v0_l0[] = {
    -2, 2, (((u16)16 << 0) | ((u16)0x10 << 16)), -1, 0x4A15, 24, -6, 0, (((-8 & 0xFF) << 0) | ((-8 & 0xFF) << 8) | ((8 & 0xFF) << 16) | ((8 & 0xFF) << 24)), -6, 1, (((-8 & 0xFF) << 0) | ((-8 & 0xFF) << 8) | ((8 & 0xFF) << 16) | ((8 & 0xFF) << 24)), 2, 0,

        -1, 0x4A2D, 24, 2, 1,

            -1, 0x4A45, 24, 2, 2,

                -1, 0x4A5D, 28, 2, 3,

                    -1, 0x4A79, 24, 2, 4,

                        -1, 0x4A91, 24, 2, 5,

                            -1, 0x4AA9, 24, 2, 6,

                                -1, 0x4AC1, 28, 2, 7,

                                    -3, 49,
};

const s32 *const anim_0117[1] = {
    anim_0117__v0_l0,
};

const s32 anim_0118__v0_l0[] = {
    -2, 2, (((u16)16 << 0) | ((u16)0x10 << 16)), -1, 0x4ADD, 20, -6, 0, (((-6 & 0xFF) << 0) | ((-10 & 0xFF) << 8) | ((6 & 0xFF) << 16) | ((16 & 0xFF) << 24)), 3, 0,

        -1, 0x4AF1, 20, 3, 1,

            -1, 0x4B05, 20, 3, 2,

                -1, 0x4B19, 20, 3, 3,

                    -1, 0x4B2D, 20, 3, 4,

                        -4,
};

const s32 *const anim_0118[1] = {
    anim_0118__v0_l0,
};

const s32 anim_0120__v0_l0[] = {
    -2, 2, (((u16)16 << 0) | ((u16)0x10 << 16)), -1, 0x4B41, 25, 3, 0,

        -1, 0x4B5A, 20, 3, 1,

            -1, 0x4B41, 25, 3, 0,

                -1, 0x4B6E, 20, 3, 2, -1, 0x4B82, 20, 3, 3,

                    -1, 0x4B96, 15, 3, 4,

                        -3, 10,
};

const s32 *const anim_0120[1] = {
    anim_0120__v0_l0,
};

const s32 anim_0121__v0_l0[] = {
    -2, 2, (((u16)16 << 0) | ((u16)0x10 << 16)), -1, 0x4BA5, 24, 3, 0,

        -1, 0x4BBD, 24, 3, 1,

            -1, 0x4BD5, 24, 3, 2,

                -1, 0x4BED, 24, 3, 3, -1, 0x4C05, 24, 3, 4,

                    -1, 0x4C1D, 24, 3, 5,

                        -1, 0x4C35, 24, 3, 6,

                            -1, 0x4C4D, 24, 3, 7,

                                -1, 0x4C65, 24, 3, 8,

                                    -1, 0x4C7D, 24, 3, 9,

                                        -1, 0x4C95, 24, 3, 10,

                                            -1, 0x4CAD, 24, 3, 11,

                                                -3, 40,
};

const s32 *const anim_0121[1] = {
    anim_0121__v0_l0,
};

const s32 anim_0122__v0_l0[] = {
    -2, 2, (((u16)16 << 0) | ((u16)0x10 << 16)), -1, 0x4CC5, 20, 6, 0,

        -1, 0x4CD9, 30, 8, 1,

            -1, 0x4CF7, 20, 4, 2,

                -1, 0x4D0B, 12, 4, 3,

                    -1, 0x4D17, 16, 6, 4,

                        -1, 0x4D27, 25, 8, 5,

                            -1, 0x4D40, 24, 4, 6,

                                -1, 0x4D58, 12, 4, 7,

                                    -1, 0x4D64, 16, 4, 8,

                                        -1, 0x4D74, 20, 4, 9,

                                            -1, 0x4D88, 20, 4, 10,

                                                -1, 0x4D9C, 16, 4, 11,

                                                    -1, 0x4DAC, 20, 4, 12,

                                                        -1, 0x4DC0, 16, 4, 13,

                                                            -1, 0x4DD0, 20, 4, 14,

                                                                -1, 0x4DE4, 25, 2, 15,

                                                                    -1, 0x4DFD, 15, 4, 16,

                                                                        -1, 0x4E0C, 16, 4, 17,

                                                                            -1, 0x4E1C, 20, 6, 18,

                                                                                -1, 0x4E30, 20, 6, 19,

                                                                                    -1, 0x4E44, 20, 6, 20, -1, 0x4E58, 30,
                                                                                        6, 21,

                                                                                            -1, 0x4E76, 35, 6, 22,

                                                                                                -1, 0x4E99, 35, 6, 23,

                                                                                                    -1, 0x4EBC, 30, 6, 24,

                                                                                                        -1, 0x4EDA, 30, 6, 25,

                                                                                                            -1, 0x4EF8, 35,
                                                                                                                6, 26,

                                                                                                                    -1, 0x4F1B, 30,
                                                                                                                        6, 27,

                                                                                                                            -3, 35,
};

const s32 *const anim_0122[1] = {
    anim_0122__v0_l0,
};

const s32 anim_0123__v0_l0[] = {
    -2, 2, (((u16)16 << 0) | ((u16)0x10 << 16)), -1, 0x4F39, 35, 4, 0,

        -1, 0x4F5C, 20, 15, 1,

            -1, 0x4F70, 20, 4, 2,

                -1, 0x4F84, 20, 4, 3,

                    -1, 0x4F98, 30, 4, 4,

                        -1, 0x4FB6, 25, 4, 5,

                            -1, 0x4FCF, 30, 4, 6,

                                -1, 0x4FED, 24, 4, 7,

                                    -1, 0x4F98, 30, 4, 4,

                                        -1, 0x5005, 25, 4, 8,

                                            -1, 0x501E, 30, 4, 9,

                                                -1, 0x503C, 24, 4, 10,

                                                    -1, 0x4F98, 30, 4, 4,

                                                        -1, 0x4FB6, 25, 4, 5,

                                                            -1, 0x4FCF, 30, 4, 6,

                                                                -1, 0x4FED, 24, 4, 7,

                                                                    -1, 0x4F98, 30, 4, 4,

                                                                        -1, 0x5005, 25, 4, 8,

                                                                            -1, 0x501E, 30, 4, 9,

                                                                                -1, 0x503C, 24, 4, 10,

                                                                                    -1, 0x5054, 20, 4, 11,

                                                                                        -1, 0x5068, 20, 4, 12,

                                                                                            -4,
};

const s32 *const anim_0123[1] = {
    anim_0123__v0_l0,
};

const s32 anim_0124__v0_l0[] = {
    -2, 2, (((u16)16 << 0) | ((u16)0x80 << 16)), -1, 0x507C, 21, -6, 0, (((-6 & 0xFF) << 0) | ((-14 & 0xFF) << 8) | ((6 & 0xFF) << 16) | ((8 & 0xFF) << 24)), 3, 0,

        -1, 0x5091, 21, 3, 1,

            -1, 0x50A6, 21, 3, 2,

                -1, 0x50BB, 24, 3, 3,

                    -3, 26,
};

const s32 *const anim_0124[1] = {
    anim_0124__v0_l0,
};

const s32 anim_0125__v0_l0[] = {
    -2, 2, (((u16)16 << 0) | ((u16)0x80 << 16)), -1, 0x50D3, 35, 20, 0,

        -1, 0x50F6, 30, 10, 1,

            -1, 0x5114, 36, 8, 2,

                -1, 0x5138, 35, 7, 3,

                    -1, 0x515B, 42, 5, 4,

                        -1, 0x5185, 42, 3, 5, -1, 0x51AF, 56, 2, 6,

                            -1, 0x51E7, 56, 2, 7,

                                -1, 0x521F, 56, 2, 8,

                                    -3, 15,
};

const s32 *const anim_0125[1] = {
    anim_0125__v0_l0,
};

const s32 anim_0126__v0_l0[] = {
    -2, 2, (((u16)16 << 0) | ((u16)0x10 << 16)), -1, 0x5257, 64, -6, 0, (((-10 & 0xFF) << 0) | ((-10 & 0xFF) << 8) | ((10 & 0xFF) << 16) | ((10 & 0xFF) << 24)), 2, 0,

        -1, 0x5297, 64, 2, 1,

            -3, 16,
};

const s32 anim_0126__v1_l0[] = {
    -2, 2, (((u16)16 << 0) | ((u16)0x10 << 16)), -1, 0x52D7, 64, -6, 0, (((-10 & 0xFF) << 0) | ((-10 & 0xFF) << 8) | ((10 & 0xFF) << 16) | ((10 & 0xFF) << 24)), 2, 2,

        -1, 0x5317, 64, 2, 3,

            -3, 16,
};

const s32 anim_0126__v2_l0[] = {
    -2, 2, (((u16)16 << 0) | ((u16)0x10 << 16)), -1, 0x5357, 64, -6, 0, (((-10 & 0xFF) << 0) | ((-10 & 0xFF) << 8) | ((10 & 0xFF) << 16) | ((10 & 0xFF) << 24)), 2, 4,

        -1, 0x5397, 64, 2, 5,

            -3, 16,
};

const s32 anim_0126__v3_l0[] = {
    -2, 2, (((u16)16 << 0) | ((u16)0x10 << 16)), -1, 0x53D7, 64, -6, 0, (((-10 & 0xFF) << 0) | ((-10 & 0xFF) << 8) | ((10 & 0xFF) << 16) | ((10 & 0xFF) << 24)), 2, 6,

        -1, 0x5417, 64, 2, 7,

            -3, 16,
};

const s32 anim_0126__v4_l0[] = {
    -2, 2, (((u16)16 << 0) | ((u16)0x10 << 16)), -1, 0x5457, 64, -6, 0, (((-10 & 0xFF) << 0) | ((-10 & 0xFF) << 8) | ((10 & 0xFF) << 16) | ((10 & 0xFF) << 24)), 2, 8,

        -1, 0x5497, 64, 2, 9,

            -3, 16,
};

const s32 anim_0126__v5_l0[] = {
    -2, 2, (((u16)16 << 0) | ((u16)0x10 << 16)), -1, 0x54D7, 64, -6, 0, (((-10 & 0xFF) << 0) | ((-10 & 0xFF) << 8) | ((10 & 0xFF) << 16) | ((10 & 0xFF) << 24)), 2, 10,

        -1, 0x5517, 64, 2, 11,

            -3, 16,
};

const s32 anim_0126__v6_l0[] = {
    -2, 2, (((u16)16 << 0) | ((u16)0x10 << 16)), -1, 0x5557, 64, -6, 0, (((-10 & 0xFF) << 0) | ((-10 & 0xFF) << 8) | ((10 & 0xFF) << 16) | ((10 & 0xFF) << 24)), 2, 12,

        -1, 0x5597, 64, 2, 13,

            -3, 16,
};

const s32 anim_0126__v7_l0[] = {
    -2, 2, (((u16)16 << 0) | ((u16)0x10 << 16)), -1, 0x55D7, 64, -6, 0, (((-10 & 0xFF) << 0) | ((-10 & 0xFF) << 8) | ((10 & 0xFF) << 16) | ((10 & 0xFF) << 24)), 2, 14,

        -1, 0x5617, 64, 2, 15,

            -3, 16,
};

const s32 anim_0126__v8_l0[] = {
    -2, 2, (((u16)16 << 0) | ((u16)0x10 << 16)), -1, 0x5657, 64, -6, 0, (((-10 & 0xFF) << 0) | ((-10 & 0xFF) << 8) | ((10 & 0xFF) << 16) | ((10 & 0xFF) << 24)), 2, 16,

        -1, 0x5697, 64, 2, 17,

            -3, 16,
};

const s32 *const anim_0126[9] = {
    anim_0126__v0_l0, anim_0126__v1_l0, anim_0126__v2_l0, anim_0126__v3_l0, anim_0126__v4_l0,
    anim_0126__v5_l0, anim_0126__v6_l0, anim_0126__v7_l0, anim_0126__v8_l0,
};

const s32 anim_0127__v0_l0[] = {
    -2, 2, (((u16)16 << 0) | ((u16)0x10 << 16)), -1, 0x56D7, 64, -6, 0, (((-10 & 0xFF) << 0) | ((-10 & 0xFF) << 8) | ((10 & 0xFF) << 16) | ((10 & 0xFF) << 24)), 1, 0,

        -1, 0x5717, 64, 1, 1,

            -3, 16,
};

const s32 anim_0127__v1_l0[] = {
    -2, 2, (((u16)16 << 0) | ((u16)0x10 << 16)), -1, 0x5757, 64, -6, 0, (((-10 & 0xFF) << 0) | ((-10 & 0xFF) << 8) | ((10 & 0xFF) << 16) | ((10 & 0xFF) << 24)), 2, 2,

        -1, 0x5797, 64, 2, 3,

            -3, 16,
};

const s32 anim_0127__v2_l0[] = {
    -2, 2, (((u16)16 << 0) | ((u16)0x10 << 16)), -1, 0x57D7, 64, -6, 0, (((-10 & 0xFF) << 0) | ((-10 & 0xFF) << 8) | ((10 & 0xFF) << 16) | ((10 & 0xFF) << 24)), 2, 4,

        -1, 0x5817, 64, 2, 5,

            -3, 16,
};

const s32 anim_0127__v3_l0[] = {
    -2, 2, (((u16)16 << 0) | ((u16)0x10 << 16)), -1, 0x5857, 64, -6, 0, (((-10 & 0xFF) << 0) | ((-10 & 0xFF) << 8) | ((10 & 0xFF) << 16) | ((10 & 0xFF) << 24)), 2, 6,

        -1, 0x5897, 64, 2, 7,

            -3, 16,
};

const s32 anim_0127__v4_l0[] = {
    -2, 2, (((u16)16 << 0) | ((u16)0x10 << 16)), -1, 0x58D7, 64, -6, 0, (((-10 & 0xFF) << 0) | ((-10 & 0xFF) << 8) | ((10 & 0xFF) << 16) | ((10 & 0xFF) << 24)), 2, 8,

        -1, 0x5917, 64, 2, 9,

            -3, 16,
};

const s32 anim_0127__v5_l0[] = {
    -2, 2, (((u16)16 << 0) | ((u16)0x10 << 16)), -1, 0x5957, 64, -6, 0, (((-10 & 0xFF) << 0) | ((-10 & 0xFF) << 8) | ((10 & 0xFF) << 16) | ((10 & 0xFF) << 24)), 2, 10,

        -1, 0x5997, 64, 2, 11,

            -3, 16,
};

const s32 anim_0127__v6_l0[] = {
    -2, 2, (((u16)16 << 0) | ((u16)0x10 << 16)), -1, 0x59D7, 64, -6, 0, (((-10 & 0xFF) << 0) | ((-10 & 0xFF) << 8) | ((10 & 0xFF) << 16) | ((10 & 0xFF) << 24)), 2, 12,

        -1, 0x5A17, 64, 2, 13,

            -3, 16,
};

const s32 anim_0127__v7_l0[] = {
    -2, 2, (((u16)16 << 0) | ((u16)0x10 << 16)), -1, 0x5A57, 64, -6, 0, (((-10 & 0xFF) << 0) | ((-10 & 0xFF) << 8) | ((10 & 0xFF) << 16) | ((10 & 0xFF) << 24)), 2, 14,

        -1, 0x5A97, 64, 2, 15,

            -3, 16,
};

const s32 *const anim_0127[8] = {
    anim_0127__v0_l0, anim_0127__v1_l0, anim_0127__v2_l0, anim_0127__v3_l0,
    anim_0127__v4_l0, anim_0127__v5_l0, anim_0127__v6_l0, anim_0127__v7_l0,
};

const s32 anim_0128__v0_l0[] = {
    -2, 2, (((u16)16 << 0) | ((u16)0x10 << 16)), -1, 0x5AD7, 64, -6, 0, (((-10 & 0xFF) << 0) | ((-10 & 0xFF) << 8) | ((10 & 0xFF) << 16) | ((10 & 0xFF) << 24)), 4, 0, -1, 0x5B17, 64, -6, 0, (((-10 & 0xFF) << 0) | ((-10 & 0xFF) << 8) | ((10 & 0xFF) << 16) | ((10 & 0xFF) << 24)),
        2, 1,

            -1, 0x5B57, 64, 2, 2,

                -3, 13,
};

const s32 anim_0128__v1_l0[] = {
    -2, 2, (((u16)16 << 0) | ((u16)0x10 << 16)), -1, 0x5AD7, 64, -6, 0, (((-10 & 0xFF) << 0) | ((-10 & 0xFF) << 8) | ((10 & 0xFF) << 16) | ((10 & 0xFF) << 24)), 4, 0,

        -4,
};

const s32 *const anim_0128[2] = {
    anim_0128__v0_l0,
    anim_0128__v1_l0,
};

const s32 anim_0129__v0_l0[] = {
    -2, 2, (((u16)16 << 0) | ((u16)0x10 << 16)), -1, 0x5B97, 64, -6, 0, (((-20 & 0xFF) << 0) | ((-20 & 0xFF) << 8) | ((20 & 0xFF) << 16) | ((20 & 0xFF) << 24)), 2, 0,

        -1, 0x5BD7, 64, 2, 1,

            -1, 0x5C17, 64, 2, 2,

                -1, 0x5C57, 64, 2, 3,

                    -1, 0x5C97, 64, 2, 4,

                        -1, 0x5CD7, 64, 2, 5,

                            -1, 0x5D17, 64, 2, 6,

                                -1, 0x5D57, 64, 2, 7,

                                    -1, 0x5D97, 64, 2, 8,

                                        -1, 0x5DD7, 64, 2, 9,

                                            -1, 0x5E17, 64, 2, 10,

                                                -3, 61,
};

const s32 *const anim_0129[1] = {
    anim_0129__v0_l0,
};

const s32 anim_0130__v0_l0[] = {
    -2, 2, (((u16)16 << 0) | ((u16)0x10 << 16)), -1, 0x5E57, 64, -6, 0, (((-14 & 0xFF) << 0) | ((-14 & 0xFF) << 8) | ((14 & 0xFF) << 16) | ((14 & 0xFF) << 24)), 5, 0,

        -1, 0x5E97, 64, 2, 1,

            -1, 0x5ED7, 64, 2, 2,

                -1, 0x5F17, 64, 2, 3,

                    -1, 0x5F57, 64, 2, 4,

                        -1, 0x5F97, 64, 2, 5,

                            -1, 0x5FD7, 64, 2, 6,

                                -1, 0x6017, 64, 2, 7,

                                    -1, 0x6057, 64, 2, 8,

                                        -1, 0x5E97, 64, 2, 1,

                                            -1, 0x5ED7, 64, 2, 2,

                                                -1, 0x5F17, 64, 2, 3,

                                                    -1, 0x5F57, 64, 2, 4,

                                                        -1, 0x5F97, 64, 2, 5,

                                                            -1, 0x5FD7, 64, 2, 6,

                                                                -1, 0x6017, 64, 2, 7,

                                                                    -1, 0x6057, 64, 2, 8,

                                                                        -1, 0x5E57, 64, -6, 0, (((0 & 0xFF) << 0) | ((0 & 0xFF) << 8) | ((0 & 0xFF) << 16) | ((0 & 0xFF) << 24)), 5, 0,

                                                                            -4,
};

const s32 *const anim_0130[1] = {
    anim_0130__v0_l0,
};

const s32 anim_0131__v0_l0[] = {
    -2, 2, (((u16)16 << 0) | ((u16)0x10 << 16)), -1, 0x6097, 64, 3, 0,

        -1, 0x60D7, 64, 3, 1,

            -1, 0x6117, 64, 3, 2,

                -1, 0x6157, 64, 3, 3,

                    -1, 0x6197, 64, 3, 4,

                        -1, 0x61D7, 64, 3, 5,

                            -1, 0x6217, 64, 3, 6,

                                -1, 0x6257, 64, 3, 7,

                                    -3, 43,
};

const s32 *const anim_0131[1] = {
    anim_0131__v0_l0,
};

const s32 anim_0132__v0_l0[] = {
    -2, 2, (((u16)16 << 0) | ((u16)0x10 << 16)), -1, 0x6297, 64, -6, 0, (((-10 & 0xFF) << 0) | ((-10 & 0xFF) << 8) | ((10 & 0xFF) << 16) | ((10 & 0xFF) << 24)), 6, 0, -1, 0x62D7, 64, -6, 0, (((-10 & 0xFF) << 0) | ((-10 & 0xFF) << 8) | ((10 & 0xFF) << 16) | ((10 & 0xFF) << 24)),
        4, 1,

            -1, 0x6317, 64, 4, 2,

                -1, 0x6357, 64, 4, 3,

                    -1, 0x6397, 64, 4, 4,

                        -1, 0x63D7, 64, 4, 5,

                            -1, 0x6417, 64, 4, 6,

                                -1, 0x6457, 64, 4, 7,

                                    -1, 0x6497, 64, 4, 8,

                                        -1, 0x64D7, 64, 4, 9,

                                            -1, 0x6317, 64, 4, 2,

                                                -3, 53,
};

const s32 anim_0132__v1_l0[] = {
    -2, 2, (((u16)16 << 0) | ((u16)0x10 << 16)), -1, 0x6297, 64, -6, 0, (((-10 & 0xFF) << 0) | ((-10 & 0xFF) << 8) | ((10 & 0xFF) << 16) | ((10 & 0xFF) << 24)), 6, 0,

        -4,
};

const s32 *const anim_0132[2] = {
    anim_0132__v0_l0,
    anim_0132__v1_l0,
};

const s32 anim_0133__v0_l0[] = {
    -2, 2, (((u16)16 << 0) | ((u16)0x10 << 16)), -1, 0x6517, 64, -6, 0, (((-10 & 0xFF) << 0) | ((-10 & 0xFF) << 8) | ((10 & 0xFF) << 16) | ((10 & 0xFF) << 24)), 2, 0,

        -1, 0x6557, 64, 2, 1,

            -3, 16,
};

const s32 anim_0133__v1_l0[] = {
    -2, 2, (((u16)16 << 0) | ((u16)0x10 << 16)), -1, 0x6597, 64, 2, 2,

        -1, 0x65D7, 64, 2, 3,

            -1, 0x6617, 64, 2, 4,

                -1, 0x6657, 64, 2, 5,

                    -1, 0x6697, 64, 2, 6,

                        -1, 0x66D7, 64, 2, 7,

                            -3, 33,
};

const s32 *const anim_0133[2] = {
    anim_0133__v0_l0,
    anim_0133__v1_l0,
};

const s32 anim_0134__v0_l0[] = {
    -2, 2, (((u16)16 << 0) | ((u16)0x10 << 16)), -1, 0x6717, 16, 3, 0,

        -1, 0x6727, 20, 3, 1,

            -3, 13,
};

const s32 anim_0134__v1_l0[] = {
    -2, 2, (((u16)16 << 0) | ((u16)0x10 << 16)), -1, 0x673B, 20, 2, 2,

        -1, 0x674F, 24, 2, 3,

            -1, 0x6767, 18, 3, 4,

                -1, 0x6779, 20, 3, 5,

                    -1, 0x678D, 24, 3, 6, -1, 0x67A5, 28, 6, 7,

                        -1, 0x67C1, 24, 6, 8,

                            -1, 0x67D9, 28, 6, 9,

                                -1, 0x67F5, 28, 6, 10,

                                    -1, 0x6811, 28, 6, 11,

                                        -1, 0x682D, 24, 6, 12,

                                            -1, 0x6845, 28, 6, 13,

                                                -1, 0x6861, 28, 6, 14,

                                                    -1, 0x687D, 28, 6, 15,

                                                        -1, 0x6899, 24, 6, 16,

                                                            -1, 0x68B1, 28, 6, 17,

                                                                -1, 0x67F5, 28, 6, 10,

                                                                    -1, 0x6811, 28, 6, 11,

                                                                        -1, 0x682D, 24, 6, 12,

                                                                            -1, 0x6845, 28, 6, 13,

                                                                                -1, 0x6861, 28, 6, 14,

                                                                                    -3, 80,
};

const s32 *const anim_0134[2] = {
    anim_0134__v0_l0,
    anim_0134__v1_l0,
};

const s32 anim_0135__v0_l0[] = {
    -2, 2, (((u16)16 << 0) | ((u16)0x10 << 16)), -1, 0x68CD, 30, -6, 0, (((-6 & 0xFF) << 0) | ((-10 & 0xFF) << 8) | ((6 & 0xFF) << 16) | ((16 & 0xFF) << 24)), 3, 0,

        -1, 0x68EB, 30, 3, 1,

            -1, 0x6909, 30, 3, 2,

                -1, 0x6927, 35, 3, 3,

                    -1, 0x694A, 30, 3, 4,

                        -1, 0x6968, 30, 3, 5,

                            -1, 0x6986, 30, 3, 6,

                                -1, 0x69A4, 35, 3, 7,

                                    -3, 46,
};

const s32 anim_0135__v1_l0[] = {
    -2, 2, (((u16)16 << 0) | ((u16)0x10 << 16)), -1, 0x69C7, 30, -6, 0, (((-4 & 0xFF) << 0) | ((-8 & 0xFF) << 8) | ((8 & 0xFF) << 16) | ((20 & 0xFF) << 24)), 3, 8,

        -1, 0x69E5, 30, 3, 9,

            -1, 0x6A03, 28, 3, 10,

                -1, 0x6A1F, 30, 3, 11,

                    -1, 0x6A3D, 30, 3, 12,

                        -1, 0x6A5B, 30, 3, 13,

                            -1, 0x6A79, 35, 3, 14,

                                -1, 0x6A9C, 30, 3, 15,

                                    -3, 46,
};

const s32 anim_0135__v2_l0[] = {
    -2, 2, (((u16)16 << 0) | ((u16)0x10 << 16)), -1, 0x6ABA, 30, -6, 0, (((-4 & 0xFF) << 0) | ((-10 & 0xFF) << 8) | ((8 & 0xFF) << 16) | ((18 & 0xFF) << 24)), 3, 16,

        -1, 0x6AD8, 30, 3, 17,

            -1, 0x6AF6, 35, 3, 18,

                -1, 0x6B19, 30, 3, 19,

                    -1, 0x6B37, 30, 3, 20,

                        -1, 0x6B55, 35, 3, 21,

                            -1, 0x6B78, 32, 3, 22,

                                -1, 0x6B98, 30, 3, 23,

                                    -3, 46,
};

const s32 *const anim_0135[3] = {
    anim_0135__v0_l0,
    anim_0135__v1_l0,
    anim_0135__v2_l0,
};

const s32 anim_0136__v0_l0[] = {
    -2, 2, (((u16)16 << 0) | ((u16)0x10 << 16)), -1, 0x6BB6, 20, -6, 0, (((-6 & 0xFF) << 0) | ((-10 & 0xFF) << 8) | ((6 & 0xFF) << 16) | ((16 & 0xFF) << 24)), 2, 0,

        -1, 0x6BCA, 24, 2, 1,

            -1, 0x6BE2, 28, 4, 2,

                -1, 0x6BFE, 24, 1, 3,

                    -1, 0x6C16, 28, 1, 4, -1, 0x6C32, 24, -6, 0, (((-14 & 0xFF) << 0) | ((-10 & 0xFF) << 8) | ((-2 & 0xFF) << 16) | ((16 & 0xFF) << 24)), 2, 5,

                        -1, 0x6C4A, 24, 2, 6,

                            -1, 0x6C62, 24, 2, 7,

                                -3, 18,
};

const s32 *const anim_0136[1] = {
    anim_0136__v0_l0,
};

const s32 anim_0137__v0_l0[] = {
    -2, 2, (((u16)16 << 0) | ((u16)0x10 << 16)), -1, 0x6C7A, 28, -6, 0, (((-6 & 0xFF) << 0) | ((-14 & 0xFF) << 8) | ((6 & 0xFF) << 16) | ((8 & 0xFF) << 24)), 3, 0,

        -1, 0x6C96, 28, 3, 1,

            -1, 0x6CB2, 28, 3, 2,

                -1, 0x6CCE, 32, -6, 0, (((-6 & 0xFF) << 0) | ((-14 & 0xFF) << 8) | ((6 & 0xFF) << 16) | ((8 & 0xFF) << 24)), 2, 3,

                    -1, 0x6CEE, 32, -6, 0, (((-6 & 0xFF) << 0) | ((-14 & 0xFF) << 8) | ((6 & 0xFF) << 16) | ((8 & 0xFF) << 24)), 2, 4,

                        -4,
};

const s32 *const anim_0137[1] = {
    anim_0137__v0_l0,
};

const s32 anim_0138__v0_l0[] = {
    -2, 2, (((u16)16 << 0) | ((u16)0x10 << 16)), -1, 0x6D0E, 64, 2, 0,

        -1, 0x6D4E, 64, 2, 1,

            -1, 0x6D8E, 64, 2, 2,

                -1, 0x6DCE, 64, 2, 3,

                    -1, 0x6D0E, 64, 2, 0,

                        -1, 0x6D4E, 64, 2, 1,

                            -1, 0x6D8E, 64, 2, 2,

                                -1, 0x6DCE, 64, 2, 3,

                                    -3, 43,
};

const s32 anim_0138__v1_l0[] = {
    -2, 2, (((u16)16 << 0) | ((u16)0x10 << 16)), -1, 0x6E0E, 64, 2, 4,

        -1, 0x6E4E, 64, 2, 5,

            -1, 0x6E8E, 64, 2, 6,

                -1, 0x6ECE, 64, 2, 7,

                    -1, 0x6F0E, 64, 2, 8,

                        -1, 0x6F4E, 64, 2, 9,

                            -1, 0x6F8E, 64, 2, 10,

                                -1, 0x6FCE, 64, 2, 11,

                                    -3, 43,
};

const s32 *const anim_0138[2] = {
    anim_0138__v0_l0,
    anim_0138__v1_l0,
};

const s32 anim_0139__v0_l0[] = {
    -2, 2, (((u16)16 << 0) | ((u16)0x10 << 16)), -1, 0x700E, 24, -6, 0, (((-32 & 0xFF) << 0) | ((-20 & 0xFF) << 8) | ((-4 & 0xFF) << 16) | ((-6 & 0xFF) << 24)), -12, 0x10, 3, 0,

        -1, 0x7026, 20, -6, 0, (((-20 & 0xFF) << 0) | ((-20 & 0xFF) << 8) | ((-2 & 0xFF) << 16) | ((-6 & 0xFF) << 24)), -12, 0x10, 3, 1,

            -1, 0x703A, 20, -6, 0, (((-12 & 0xFF) << 0) | ((-20 & 0xFF) << 8) | ((0 & 0xFF) << 16) | ((-6 & 0xFF) << 24)), -12, 0x10, 3, 2,

                -1, 0x704E, 24, -6, 0, (((2 & 0xFF) << 0) | ((-20 & 0xFF) << 8) | ((14 & 0xFF) << 16) | ((-6 & 0xFF) << 24)), -12, 0x10, 3, 3,

                    -1, 0x7066, 24, -6, 0, (((3 & 0xFF) << 0) | ((-20 & 0xFF) << 8) | ((21 & 0xFF) << 16) | ((-6 & 0xFF) << 24)), -12, 0x10, 3, 4,

                        -1, 0x707E, 24, -6, 0, (((4 & 0xFF) << 0) | ((-20 & 0xFF) << 8) | ((32 & 0xFF) << 16) | ((-6 & 0xFF) << 24)), -12, 0x10, 3, 5,

                            -1, 0x7096, 20, -6, 0, (((4 & 0xFF) << 0) | ((-20 & 0xFF) << 8) | ((22 & 0xFF) << 16) | ((-6 & 0xFF) << 24)), -12, 0x13, 3, 6,

                                -1, 0x70AA, 24, -6, 0, (((1 & 0xFF) << 0) | ((-20 & 0xFF) << 8) | ((13 & 0xFF) << 16) | ((-6 & 0xFF) << 24)), -12, 0x13, 3, 7,

                                    -1, 0x70C2, 24, -6, 0, (((-15 & 0xFF) << 0) | ((-20 & 0xFF) << 8) | ((-3 & 0xFF) << 16) | ((-6 & 0xFF) << 24)), -12, 0x13, 3, 8,

                                        -1, 0x70DA, 24, -6, 0, (((-21 & 0xFF) << 0) | ((-20 & 0xFF) << 8) | ((-3 & 0xFF) << 16) | ((-6 & 0xFF) << 24)), -12, 0x13, 3, 9,

                                            -3, 103,
};

const s32 anim_0139__v1_l0[] = {
    -2, 2, (((u16)16 << 0) | ((u16)0x10 << 16)), -1, 0x70F2, 24, -6, 0, (((-7 & 0xFF) << 0) | ((4 & 0xFF) << 8) | ((5 & 0xFF) << 16) | ((30 & 0xFF) << 24)), -11, 0x2, 3, 10,

        -1, 0x710A, 20, -6, 0, (((-7 & 0xFF) << 0) | ((0 & 0xFF) << 8) | ((5 & 0xFF) << 16) | ((24 & 0xFF) << 24)), -11, 0x2, 3, 11,

            -1, 0x711E, 20, -6, 0, (((-7 & 0xFF) << 0) | ((-5 & 0xFF) << 8) | ((7 & 0xFF) << 16) | ((11 & 0xFF) << 24)), -11, 0x2, 3, 12,

                -1, 0x7132, 24, -6, 0, (((-6 & 0xFF) << 0) | ((-9 & 0xFF) << 8) | ((6 & 0xFF) << 16) | ((5 & 0xFF) << 24)), -11, 0x2, 3, 13,

                    -1, 0x714A, 24, -6, 0, (((-6 & 0xFF) << 0) | ((-15 & 0xFF) << 8) | ((6 & 0xFF) << 16) | ((1 & 0xFF) << 24)), -11, 0x2, 3, 14,

                        -1, 0x7162, 24, -6, 0, (((-6 & 0xFF) << 0) | ((-29 & 0xFF) << 8) | ((6 & 0xFF) << 16) | ((-3 & 0xFF) << 24)), -11, 0x2, 3, 15,

                            -1, 0x717A, 20, -6, 0, (((-6 & 0xFF) << 0) | ((-26 & 0xFF) << 8) | ((6 & 0xFF) << 16) | ((-2 & 0xFF) << 24)), -11, 0x3, 3, 16,

                                -1, 0x718E, 24, -6, 0, (((-6 & 0xFF) << 0) | ((-16 & 0xFF) << 8) | ((6 & 0xFF) << 16) | ((0 & 0xFF) << 24)), -11, 0x3, 3, 17,

                                    -1, 0x71A6, 24, -6, 0, (((-6 & 0xFF) << 0) | ((-6 & 0xFF) << 8) | ((6 & 0xFF) << 16) | ((8 & 0xFF) << 24)), -11, 0x3, 3, 18,

                                        -1, 0x71BE, 24, -6, 0, (((-6 & 0xFF) << 0) | ((2 & 0xFF) << 8) | ((6 & 0xFF) << 16) | ((18 & 0xFF) << 24)), -11, 0x3, 3, 19,

                                            -3, 103,
};

const s32 *const anim_0139[2] = {
    anim_0139__v0_l0,
    anim_0139__v1_l0,
};

const s32 anim_0140__v0_l0[] = {
    -2, 2, (((u16)16 << 0) | ((u16)0x10 << 16)), -1, 0x71D6, 28, -6, 0, (((-6 & 0xFF) << 0) | ((-18 & 0xFF) << 8) | ((6 & 0xFF) << 16) | ((4 & 0xFF) << 24)), 10, 0,

        -1, 0x71F2, 28, 10, 1,

            -1, 0x720E, 28, 10, 2,

                -1, 0x71F2, 28, 10, 1,

                    -3, 26,
};

const s32 anim_0140__v1_l0[] = {
    -2, 2, (((u16)16 << 0) | ((u16)0x10 << 16)), -1, 0x722A, 28, -6, 0, (((-6 & 0xFF) << 0) | ((-18 & 0xFF) << 8) | ((6 & 0xFF) << 16) | ((4 & 0xFF) << 24)), 5, 3,

        -1, 0x7246, 28, 5, 4,

            -1, 0x7262, 28, 5, 5,

                -1, 0x7246, 28, 5, 4,

                    -3, 26,
};

const s32 *const anim_0140[2] = {
    anim_0140__v0_l0,
    anim_0140__v1_l0,
};

const s32 anim_0141__v0_l0[] = {
    -2, 2, (((u16)16 << 0) | ((u16)0x10 << 16)), -1, 0x727E, 24, -6, 0, (((-10 & 0xFF) << 0) | ((-6 & 0xFF) << 8) | ((10 & 0xFF) << 16) | ((10 & 0xFF) << 24)), 5, 0,

        -1, 0x7296, 24, 5, 1,

            -1, 0x72AE, 20, 5, 2,

                -1, 0x72C2, 24, 5, 3,

                    -1, 0x72DA, 24, 5, 4,

                        -1, 0x72F2, 24, 5, 5,

                            -1, 0x730A, 30, 5, 6,

                                -1, 0x7328, 24, 5, 7,

                                    -3, 46,
};

const s32 *const anim_0141[1] = {
    anim_0141__v0_l0,
};

const s32 anim_0142__v0_l0[] = {
    -2, 2, (((u16)16 << 0) | ((u16)0x10 << 16)), -1, 0x7340, 28, 8, 0,

        -1, 0x735C, 28, 8, 1,

            -1, 0x7378, 28, 8, 2,

                -1, 0x735C, 28, 8, 1,

                    -3, 23,
};

const s32 *const anim_0142[1] = {
    anim_0142__v0_l0,
};

const s32 anim_0145__v0_l0[] = {
    -2, 2, (((u16)16 << 0) | ((u16)0x10 << 16)), -1, 0x7394, 24, -6, 0, (((-6 & 0xFF) << 0) | ((-12 & 0xFF) << 8) | ((6 & 0xFF) << 16) | ((14 & 0xFF) << 24)), 3, 0, -1, 0x73AC, 30, -6, 0, (((-6 & 0xFF) << 0) | ((-10 & 0xFF) << 8) | ((6 & 0xFF) << 16) | ((10 & 0xFF) << 24)),
        3, 1,

            -1, 0x73CA, 30, 3, 2,

                -1, 0x73E8, 30, 3, 3,

                    -1, 0x7406, 30, 3, 4,

                        -1, 0x7424, 24, 3, 5,

                            -1, 0x743C, 30, 3, 6,

                                -1, 0x745A, 30, 3, 7,

                                    -1, 0x7478, 30, 3, 8,

                                        -3, 43,
};

const s32 *const anim_0145[1] = {
    anim_0145__v0_l0,
};

const s32 anim_0146__v0_l0[] = {
    -2, 2, (((u16)16 << 0) | ((u16)0x10 << 16)), -1, 0x7496, 20, -6, 0, (((-6 & 0xFF) << 0) | ((-10 & 0xFF) << 8) | ((6 & 0xFF) << 16) | ((10 & 0xFF) << 24)), 1, 0,

        -1, 0x74AA, 20, -6, 0, (((-6 & 0xFF) << 0) | ((-10 & 0xFF) << 8) | ((6 & 0xFF) << 16) | ((10 & 0xFF) << 24)), 1, 1,

            -4,
};

const s32 *const anim_0146[1] = {
    anim_0146__v0_l0,
};

const s32 anim_0147__v0_l0[] = {
    -2, 2, (((u16)16 << 0) | ((u16)0x10 << 16)), -1, 0x74BE, 35, -6, 0, (((-6 & 0xFF) << 0) | ((-10 & 0xFF) << 8) | ((6 & 0xFF) << 16) | ((10 & 0xFF) << 24)), 6, 0, -1, 0x74E1, 35, -6, 0, (((-6 & 0xFF) << 0) | ((-10 & 0xFF) << 8) | ((6 & 0xFF) << 16) | ((10 & 0xFF) << 24)),
        6, 1,

            -1, 0x7504, 42, 6, 2,

                -1, 0x752E, 42, 6, 3,

                    -1, 0x7558, 42, 6, 4,

                        -1, 0x7582, 30, 6, 5,

                            -1, 0x75A0, 42, 6, 6,

                                -1, 0x75CA, 42, 6, 7,

                                    -1, 0x75F4, 35, 6, 8,

                                        -3, 43,
};

const s32 *const anim_0147[1] = {
    anim_0147__v0_l0,
};

const s32 anim_0149__v0_l0[] = {
    -2, 2, (((u16)16 << 0) | ((u16)0x10 << 16)), -1, 0x7617, 20, -6, 0, (((-6 & 0xFF) << 0) | ((-10 & 0xFF) << 8) | ((6 & 0xFF) << 16) | ((16 & 0xFF) << 24)), 3, 0,

        -1, 0x762B, 20, -6, 0, (((-10 & 0xFF) << 0) | ((-10 & 0xFF) << 8) | ((2 & 0xFF) << 16) | ((16 & 0xFF) << 24)), 3, 1,

            -1, 0x763F, 24, -6, 0, (((-12 & 0xFF) << 0) | ((-10 & 0xFF) << 8) | ((0 & 0xFF) << 16) | ((16 & 0xFF) << 24)), -5, 121, 3, 2,

                -1, 0x7657, 24, -6, 0, (((-6 & 0xFF) << 0) | ((-10 & 0xFF) << 8) | ((6 & 0xFF) << 16) | ((16 & 0xFF) << 24)), -6, 1, (((-20 & 0xFF) << 0) | ((-10 & 0xFF) << 8) | ((-6 & 0xFF) << 16) | ((16 & 0xFF) << 24)), 3, 3,

                    -1, 0x766F, 28, -6, 0, (((-14 & 0xFF) << 0) | ((-10 & 0xFF) << 8) | ((-2 & 0xFF) << 16) | ((16 & 0xFF) << 24)), -6, 1, (((-48 & 0xFF) << 0) | ((-10 & 0xFF) << 8) | ((-12 & 0xFF) << 16) | ((16 & 0xFF) << 24)), 3, 4,

                        -1, 0x768B, 28, -6, 0, (((-14 & 0xFF) << 0) | ((-10 & 0xFF) << 8) | ((-2 & 0xFF) << 16) | ((16 & 0xFF) << 24)), -6, 1, (((-40 & 0xFF) << 0) | ((-10 & 0xFF) << 8) | ((-14 & 0xFF) << 16) | ((16 & 0xFF) << 24)), 3, 5,

                            -1, 0x76A7, 24, -6, 0, (((-6 & 0xFF) << 0) | ((-10 & 0xFF) << 8) | ((6 & 0xFF) << 16) | ((16 & 0xFF) << 24)), 4, 6,

                                -1, 0x76BF, 16, -6, 0, (((-8 & 0xFF) << 0) | ((-10 & 0xFF) << 8) | ((4 & 0xFF) << 16) | ((16 & 0xFF) << 24)), 4, 7,

                                    -1, 0x76CF, 20, -6, 0, (((-6 & 0xFF) << 0) | ((-10 & 0xFF) << 8) | ((6 & 0xFF) << 16) | ((16 & 0xFF) << 24)), 4, 8,

                                        -4,
};

const s32 *const anim_0149[1] = {
    anim_0149__v0_l0,
};

const s32 anim_0155__v0_l0[] = {
    -2, 2, (((u16)16 << 0) | ((u16)0x10 << 16)), -1, 0x76E3, 20, -6, 0, (((-6 & 0xFF) << 0) | ((-10 & 0xFF) << 8) | ((6 & 0xFF) << 16) | ((10 & 0xFF) << 24)), -6, 1, (((-21 & 0xFF) << 0) | ((-19 & 0xFF) << 8) | ((22 & 0xFF) << 16) | ((-11 & 0xFF) << 24)), 2, 0,

        -1, 0x76F7, 20, 2, 1,

            -1, 0x770B, 30, 2, 2,

                -1, 0x7729, 25, 2, 3,

                    -1, 0x7742, 20, 2, 4,

                        -1, 0x7756, 20, 2, 5,

                            -1, 0x776A, 30, 2, 6,

                                -1, 0x7788, 25, 2, 7,

                                    -1, 0x76E3, 20, 2, 0,

                                        -1, 0x76F7, 20, 2, 1,

                                            -1, 0x770B, 30, 2, 2,

                                                -1, 0x7729, 25, 2, 3,

                                                    -1, 0x77A1, 20, 2, 8,

                                                        -1, 0x77B5, 20, 2, 9,

                                                            -1, 0x77C9, 30, 2, 10,

                                                                -1, 0x7788, 25, 2, 7,

                                                                    -3, 89,
};

const s32 *const anim_0155[1] = {
    anim_0155__v0_l0,
};

const s32 anim_0156__v0_l0[] = {
    -2, 2, (((u16)16 << 0) | ((u16)0x10 << 16)), -1, 0x77E7, 25, -6, 0, (((-6 & 0xFF) << 0) | ((-10 & 0xFF) << 8) | ((6 & 0xFF) << 16) | ((10 & 0xFF) << 24)), -6, 1, (((-17 & 0xFF) << 0) | ((-19 & 0xFF) << 8) | ((17 & 0xFF) << 16) | ((-11 & 0xFF) << 24)), 1, 0,

        -1, 0x7800, 25, -6, 0, (((-6 & 0xFF) << 0) | ((-10 & 0xFF) << 8) | ((6 & 0xFF) << 16) | ((10 & 0xFF) << 24)), -6, 1, (((-17 & 0xFF) << 0) | ((-19 & 0xFF) << 8) | ((17 & 0xFF) << 16) | ((-11 & 0xFF) << 24)), 1, 1,

            -4,
};

const s32 *const anim_0156[1] = {
    anim_0156__v0_l0,
};

const s32 anim_0157__v0_l0[] = {
    -2, 2, (((u16)16 << 0) | ((u16)0x10 << 16)), -1, 0x7819, 20, -6, 0, (((-6 & 0xFF) << 0) | ((-10 & 0xFF) << 8) | ((6 & 0xFF) << 16) | ((10 & 0xFF) << 24)), 6, 0,

        -1, 0x782D, 30, 3, 1, -1, 0x784B, 30, -6, 0, (((-6 & 0xFF) << 0) | ((-10 & 0xFF) << 8) | ((6 & 0xFF) << 16) | ((10 & 0xFF) << 24)), 6, 2,

            -1, 0x7869, 30, 6, 3,

                -1, 0x7887, 30, 6, 4,

                    -1, 0x78A5, 30, 6, 5,

                        -1, 0x78C3, 30, 6, 6,

                            -1, 0x78E1, 30, 6, 7,

                                -1, 0x78FF, 30, 6, 8,

                                    -1, 0x791D, 30, 6, 9,

                                        -3, 43,
};

const s32 *const anim_0157[1] = {
    anim_0157__v0_l0,
};

const s32 anim_0158__v0_l0[] = {
    -2, 2, (((u16)16 << 0) | ((u16)0x10 << 16)), -1, 0x793B, 30, -6, 0, (((-6 & 0xFF) << 0) | ((-10 & 0xFF) << 8) | ((6 & 0xFF) << 16) | ((10 & 0xFF) << 24)), 3, 0,

        -1, 0x7959, 20, -6, 0, (((-10 & 0xFF) << 0) | ((-10 & 0xFF) << 8) | ((2 & 0xFF) << 16) | ((10 & 0xFF) << 24)), 3, 1, -1, 0x796D, 16, 3, 2,

            -1, 0x797D, 20, 3, 3,

                -3, 10,
};

const s32 anim_0158__v1_l0[] = {
    -2, 2, (((u16)16 << 0) | ((u16)0x10 << 16)), -1, 0x7991, 20, -6, 0, (((-6 & 0xFF) << 0) | ((-6 & 0xFF) << 8) | ((6 & 0xFF) << 16) | ((16 & 0xFF) << 24)), 2, 4,

        -1, 0x79A5, 24, 2, 5,

            -1, 0x79BD, 18, 3, 6,

                -1, 0x79A5, 24, 2, 5,

                    -4,
};

const s32 *const anim_0158[2] = {
    anim_0158__v0_l0,
    anim_0158__v1_l0,
};

const s32 anim_0180__v0_l0[] = {
    -2, 2, (((u16)16 << 0) | ((u16)0x10 << 16)), -1, 0x79CF, 36, -6, 0, (((-6 & 0xFF) << 0) | ((-10 & 0xFF) << 8) | ((6 & 0xFF) << 16) | ((16 & 0xFF) << 24)), 4, 0,

        -1, 0x79F3, 36, 4, 1,

            -1, 0x7A17, 36, 4, 2,

                -1, 0x79F3, 36, 4, 1,

                    -3, 26,
};

const s32 *const anim_0180[1] = {
    anim_0180__v0_l0,
};

const s32 anim_0181__v0_l0[] = {
    -2, 2, (((u16)16 << 0) | ((u16)0x10 << 16)), -1, 0x7A3B, 25, -6, 0, (((-6 & 0xFF) << 0) | ((-10 & 0xFF) << 8) | ((6 & 0xFF) << 16) | ((16 & 0xFF) << 24)), 4, 0,

        -1, 0x7A54, 25, 4, 1,

            -1, 0x7A6D, 25, 4, 2,

                -1, 0x7A54, 25, 4, 1,

                    -3, 26,
};

const s32 *const anim_0181[1] = {
    anim_0181__v0_l0,
};

const s32 anim_0182__v0_l0[] = {
    -2, 2, (((u16)16 << 0) | ((u16)0x10 << 16)), -1, 0x7A86, 25, -6, 0, (((-6 & 0xFF) << 0) | ((-11 & 0xFF) << 8) | ((6 & 0xFF) << 16) | ((8 & 0xFF) << 24)), 2, 0,

        -1, 0x7A9F, 25, 2, 1,

            -1, 0x7AB8, 25, 2, 2,

                -1, 0x7A9F, 25, 2, 1,

                    -3, 26,
};

const s32 *const anim_0182[1] = {
    anim_0182__v0_l0,
};

const s32 anim_0184__v0_l0[] = {
    -2, 3, (((u16)16 << 0) | ((u16)0x80 << 16)), -1, 0x7AD1, 21, 3, 0,

        -1, 0x7AE6, 21, 3, 1,

            -3, 13,
};

const s32 *const anim_0184[1] = {
    anim_0184__v0_l0,
};

const s32 anim_0185__v0_l0[] = {
    -2, 3, (((u16)16 << 0) | ((u16)0x80 << 16)), -1, 0x7AFB, 20, 2, 0,

        -1, 0x7B0F, 24, 2, 1,

            -4,
};

const s32 anim_0185__v1_l0[] = {
    -2, 3, (((u16)16 << 0) | ((u16)0x80 << 16)), -1, 0x7B27, 18, 2, 2,

        -3, 8,
};

const s32 *const anim_0185[2] = {
    anim_0185__v0_l0,
    anim_0185__v1_l0,
};

const s32 anim_0186__v0_l0[] = {
    -2, 3, (((u16)16 << 0) | ((u16)0x80 << 16)), -1, 0x7B39, 24, 3, 0,

        -1, 0x7B51, 24, 3, 1,

            -1, 0x7B69, 24, 3, 2,

                -1, 0x7B81, 24, 3, 3,

                    -1, 0x7B99, 24, 3, 4,

                        -1, 0x7BB1, 24, 3, 5,

                            -1, 0x7BC9, 24, 3, 6,

                                -1, 0x7BE1, 24, 3, 7,

                                    -3, 43,
};

const s32 *const anim_0186[1] = {
    anim_0186__v0_l0,
};

const s32 anim_0187__v0_l0[] = {
    -2, 3, (((u16)16 << 0) | ((u16)0x80 << 16)), -1, 0x7BF9, 24, 6, 0,

        -1, 0x7C11, 20, 6, 1,

            -1, 0x7C25, 16, 6, 2, -1, 0x7C35, 16, 3, 3,

                -1, 0x7C45, 16, 3, 4,

                    -3, 10,
};

const s32 *const anim_0187[1] = {
    anim_0187__v0_l0,
};

const s32 anim_0188__v0_l0[] = {
    -2, 3, (((u16)16 << 0) | ((u16)0x80 << 16)), -1, 0x7C55, 30, 1, 0,

        -4,
};

const s32 anim_0188__v1_l0[] = {
    -2, 3, (((u16)16 << 0) | ((u16)0x80 << 16)), -1, 0x7C73, 24, 4, 1,

        -1, 0x7C8B, 24, 4, 2,

            -1, 0x7CA3, 24, 40, 3,

                -4,
};

const s32 *const anim_0188[2] = {
    anim_0188__v0_l0,
    anim_0188__v1_l0,
};

const s32 anim_0190__v0_l0[] = {
    -2, 3, (((u16)16 << 0) | ((u16)0x80 << 16)), -1, 0x7CBB, 9, 3, 0,

        -1, 0x7CC4, 9, 3, 1,

            -3, 13,
};

const s32 *const anim_0190[1] = {
    anim_0190__v0_l0,
};

const s32 anim_0191__v0_l0[] = {
    -2, 3, (((u16)16 << 0) | ((u16)0x80 << 16)), -1, 0x7CCD, 9, 10, 0,

        -1, 0x7CD6, 9, 10, 1,

            -1, 0x7CDF, 9, 10, 2,

                -1, 0x7CE8, 6, 16, 3,

                    -1, 0x7CDF, 9, 10, 2,

                        -1, 0x7CD6, 9, 10, 1,

                            -1, 0x7CCD, 9, 10, 0,

                                -1, 0x7CEE, 9, 16, 4,

                                    -3, 43,
};

const s32 anim_0191__v1_l0[] = {
    -2, 3, (((u16)16 << 0) | ((u16)0x80 << 16)), -1, 0x7CDF, 9, 1, 2,

        -4,
};

const s32 *const anim_0191[2] = {
    anim_0191__v0_l0,
    anim_0191__v1_l0,
};

const s32 anim_0192__v0_l0[] = {
    -2, 4, (((u16)16 << 0) | ((u16)0x10 << 16)), -1, 0x7CF7, 24, -6, 0, (((-6 & 0xFF) << 0) | ((-10 & 0xFF) << 8) | ((6 & 0xFF) << 16) | ((10 & 0xFF) << 24)), 1, 0,

        -4,
};

const s32 anim_0192__v1_l0[] = {
    -2, 4, (((u16)16 << 0) | ((u16)0x10 << 16)), -1, 0x7D0F, 28, -6, 0, (((-6 & 0xFF) << 0) | ((-10 & 0xFF) << 8) | ((6 & 0xFF) << 16) | ((10 & 0xFF) << 24)), 1, 1,

        -4,
};

const s32 anim_0192__v2_l0[] = {
    -2, 4, (((u16)16 << 0) | ((u16)0x10 << 16)), -1, 0x7D2B, 24, -6, 0, (((-6 & 0xFF) << 0) | ((-10 & 0xFF) << 8) | ((6 & 0xFF) << 16) | ((10 & 0xFF) << 24)), 1, 2,

        -4,
};

const s32 anim_0192__v3_l0[] = {
    -2, 4, (((u16)16 << 0) | ((u16)0x10 << 16)), -1, 0x7D43, 28, -6, 0, (((-6 & 0xFF) << 0) | ((-10 & 0xFF) << 8) | ((6 & 0xFF) << 16) | ((10 & 0xFF) << 24)), 1, 3,

        -4,
};

const s32 anim_0192__v4_l0[] = {
    -2, 4, (((u16)16 << 0) | ((u16)0x10 << 16)), -1, 0x7D5F, 28, -6, 0, (((-6 & 0xFF) << 0) | ((-10 & 0xFF) << 8) | ((6 & 0xFF) << 16) | ((10 & 0xFF) << 24)), 1, 4,

        -4,
};

const s32 anim_0192__v5_l0[] = {
    -2, 4, (((u16)16 << 0) | ((u16)0x10 << 16)), -1, 0x7D7B, 24, -6, 0, (((-6 & 0xFF) << 0) | ((-10 & 0xFF) << 8) | ((6 & 0xFF) << 16) | ((10 & 0xFF) << 24)), 1, 5,

        -4,
};

const s32 anim_0192__v6_l0[] = {
    -2, 4, (((u16)16 << 0) | ((u16)0x10 << 16)), -1, 0x7D93, 24, -6, 0, (((-6 & 0xFF) << 0) | ((-10 & 0xFF) << 8) | ((6 & 0xFF) << 16) | ((10 & 0xFF) << 24)), 1, 6,

        -4,
};

const s32 anim_0192__v7_l0[] = {
    -2, 4, (((u16)16 << 0) | ((u16)0x10 << 16)), -1, 0x7DAB, 24, -6, 0, (((-6 & 0xFF) << 0) | ((-10 & 0xFF) << 8) | ((6 & 0xFF) << 16) | ((10 & 0xFF) << 24)), 1, 7,

        -4,
};

const s32 *const anim_0192[8] = {
    anim_0192__v0_l0, anim_0192__v1_l0, anim_0192__v2_l0, anim_0192__v3_l0,
    anim_0192__v4_l0, anim_0192__v5_l0, anim_0192__v6_l0, anim_0192__v7_l0,
};

const s32 anim_0195__v0_l0[] = {
    -2, 3, (((u16)16 << 0) | ((u16)0x80 << 16)), -1, 0x7DC3, 64, 2, 0,

        -1, 0x7E03, 64, 2, 1,

            -1, 0x7E43, 64, 2, 2,

                -1, 0x7E83, 64, 2, 3,

                    -3, 23,
};

const s32 *const anim_0195[1] = {
    anim_0195__v0_l0,
};

const s32 anim_0196__v0_l0[] = {
    -2, 2, (((u16)16 << 0) | ((u16)0x10 << 16)), -1, 0x7EC3, 12, 1, 0,

        -1, 0x7ECF, 12, 1, 1,

            -1, 0x7EC3, 12, 1, 0,

                -1, 0x7EDB, 15, 1, 2,

                    -4,
};

const s32 *const anim_0196[1] = {
    anim_0196__v0_l0,
};

const s32 anim_0197__v0_l0[] = {
    -2, 2, (((u16)16 << 0) | ((u16)0x10 << 16)), -1, 0x7EEA, 64, 3, 0,

        -4,
};

const s32 *const anim_0197[1] = {
    anim_0197__v0_l0,
};

const s32 anim_0198__v0_l0[] = {
    -2, 2, (((u16)16 << 0) | ((u16)0x10 << 16)), -1, 0x7F2A, 20, 6, 0,

        -1, 0x7F3E, 25, 4, 1,

            -1, 0x7F57, 25, 4, 2,

                -1, 0x7F70, 25, 4, 3,

                    -4,
};

const s32 *const anim_0198[1] = {
    anim_0198__v0_l0,
};

const s32 anim_0199__v0_l0[] = {
    -2, 5, (((u16)16 << 0) | ((u16)0x20 << 16)), -1, 0x7F89, 20, -6, 0, (((-6 & 0xFF) << 0) | ((-14 & 0xFF) << 8) | ((6 & 0xFF) << 16) | ((16 & 0xFF) << 24)), 5, 0,

        -1, 0x7F9D, 20, 5, 1,

            -1, 0x7FB1, 20, 5, 2,

                -1, 0x7FC5, 16, 5, 3,

                    -1, 0x7FD5, 20, 5, 4,

                        -1, 0x7F89, 20, 5, 0,

                            -1, 0x7F9D, 20, 5, 1,

                                -1, 0x7FB1, 20, 5, 2,

                                    -1, 0x7FC5, 16, 5, 3,

                                        -1, 0x7FD5, 20, 5, 4,

                                            -1, 0x7FE9, 20, 5, 5,

                                                -1, 0x7F89, 20, 5, 0,

                                                    -1, 0x7F9D, 20, 5, 1,

                                                        -1, 0x7FFD, 20, 5, 6,

                                                            -1, 0x8011, 16, 5, 7,

                                                                -1, 0x8021, 20, 5, 8,

                                                                    -1, 0x7FE9, 20, 5, 5,

                                                                        -1, 0x7F89, 20, 5, 0,

                                                                            -1, 0x7F9D, 20, 5, 1,

                                                                                -1, 0x7FB1, 20, 5, 2,

                                                                                    -1, 0x7FC5, 16, 5, 3,

                                                                                        -1, 0x7FD5, 20, -6, 0, (((-6 & 0xFF) << 0) | ((-13 & 0xFF) << 8) | ((8 & 0xFF) << 16) | ((16 & 0xFF) << 24)), 5, 4,


                                                                                            -1, 0x8035, 20, 5, 9,

                                                                                                -1, 0x8049, 20, 10, 10,

                                                                                                    -1, 0x805D, 20, 5, 11,

                                                                                                        -1, 0x8071, 20, 5, 12,

                                                                                                            -1, 0x8085, 20, 5, 13,


                                                                                                                -1, 0x8035, 20, 5, 9,


                                                                                                                    -1, 0x8049, 20, 5, 10,



                                                                                                                        -1, 0x805D, 20, 5, 11,




                                                                                                                            -1, 0x8071, 20, 5, 12,


                                                                                                                                -1, 0x8085, 20, 12, 13,



                                                                                                                                    -1, 0x8035, 20, 6, 9,



                                                                                                                                        -1, 0x7FE9, 20, 5, 5,



                                                                                                                                            -1, 0x7F89, 20, 5, 0,



                                                                                                                                                -1, 0x7F9D, 20, 5, 1,



                                                                                                                                                    -1, 0x7FB1, 20, 5, 2,



                                                                                                                                                        -1, 0x7FC5, 16, 5, 3,



                                                                                                                                                            -1, 0x7FD5, 20,


                                                                                                                                                                5, 4,



                                                                                                                                                                    -3, 204,

};

const s32 *const anim_0199[1] = {
    anim_0199__v0_l0,
};

const s32 anim_0200__v0_l0[] = {
    -2, 5, (((u16)16 << 0) | ((u16)0x20 << 16)), -1, 0x8099, 20, -6, 0, (((-6 & 0xFF) << 0) | ((-14 & 0xFF) << 8) | ((6 & 0xFF) << 16) | ((16 & 0xFF) << 24)), 10, 0,

        -1, 0x80AD, 15, 10, 1,

            -1, 0x80BC, 24, 20, 2,

                -1, 0x80D4, 15, 30, 3,

                    -1, 0x80E3, 15, 8, 4,

                        -1, 0x80D4, 15, 8, 3,

                            -1, 0x80E3, 15, 8, 4,

                                -1, 0x80D4, 15, 8, 3,

                                    -1, 0x80E3, 15, 8, 4,

                                        -1, 0x80D4, 15, 30, 3,

                                            -1, 0x80F2, 15, 4, 5,

                                                -1, 0x8101, 20, 10, 6,

                                                    -1, 0x80F2, 15, 4, 5,

                                                        -1, 0x8115, 15, 10, 7,

                                                            -1, 0x80F2, 15, 60, 5,

                                                                -1, 0x8124, 15, 6, 8,

                                                                    -1, 0x8133, 15, 6, 9,

                                                                        -1, 0x8142, 15, 4, 10,

                                                                            -1, 0x8133, 15, 16, 9,

                                                                                -1, 0x8124, 15, 6, 8,

                                                                                    -1, 0x80D4, 15, 8, 3,

                                                                                        -1, 0x8151, 20, 10, 11,

                                                                                            -1, 0x8165, 20, 10, 12,

                                                                                                -1, 0x8151, 20, 10, 11,

                                                                                                    -1, 0x8165, 20, 10, 12,

                                                                                                        -1, 0x8151, 20, 40, 11,
                                                                                                            -1, 0x80D4, 15, 8, 3,


                                                                                                                -1, 0x80E3, 15, 8, 4,


                                                                                                                    -1, 0x80D4, 15,
                                                                                                                        8, 3,

                                                                                                                            -3, 15,
};

const s32 *const anim_0200[1] = {
    anim_0200__v0_l0,
};

const s32 anim_0201__v0_l0[] = {
    -2, 5, (((u16)16 << 0) | ((u16)0x20 << 16)), -1, 0x8179, 20, -6, 0, (((-6 & 0xFF) << 0) | ((-14 & 0xFF) << 8) | ((6 & 0xFF) << 16) | ((16 & 0xFF) << 24)), 2, 0,

        -1, 0x818D, 20, 2, 1,

            -1, 0x81A1, 20, 2, 2,

                -4,
};

const s32 anim_0201__v1_l0[] = {
    -2, 5, (((u16)16 << 0) | ((u16)0x20 << 16)), -1, 0x818D, 20, -6, 0, (((-6 & 0xFF) << 0) | ((-14 & 0xFF) << 8) | ((6 & 0xFF) << 16) | ((16 & 0xFF) << 24)), 1, 1,

        -1, 0x8179, 20, 1, 0,

            -4,
};

const s32 *const anim_0201[2] = {
    anim_0201__v0_l0,
    anim_0201__v1_l0,
};

const s32 anim_0202__v0_l0[] = {
    -2, 5, (((u16)16 << 0) | ((u16)0x20 << 16)), -1, 0x81B5, 16, -6, 0, (((-6 & 0xFF) << 0) | ((-6 & 0xFF) << 8) | ((6 & 0xFF) << 16) | ((16 & 0xFF) << 24)), 1, 0,

        -1, 0x81C5, 16, 1, 1,

            -1, 0x81D5, 12, 1, 2,

                -1, 0x81E1, 16, 1, 3,

                    -4,
};

const s32 anim_0202__v1_l0[] = {
    -2, 5, (((u16)16 << 0) | ((u16)0x20 << 16)), -1, 0x81C5, 16, -6, 0, (((-6 & 0xFF) << 0) | ((-6 & 0xFF) << 8) | ((6 & 0xFF) << 16) | ((16 & 0xFF) << 24)), 1, 1,

        -1, 0x81B5, 16, 1, 0,

            -4,
};

const s32 *const anim_0202[2] = {
    anim_0202__v0_l0,
    anim_0202__v1_l0,
};

const s32 anim_0203__v0_l0[] = {
    -2, 5, (((u16)16 << 0) | ((u16)0x20 << 16)), -1, 0x81F1, 64, -6, 0, (((-6 & 0xFF) << 0) | ((-14 & 0xFF) << 8) | ((6 & 0xFF) << 16) | ((16 & 0xFF) << 24)), 3, 0,

        -1, 0x8231, 64, 3, 1,

            -1, 0x8271, 64, 3, 2,

                -1, 0x82B1, 64, 3, 3,

                    -1, 0x82F1, 64, 3, 4,

                        -1, 0x8331, 64, 3, 5,

                            -1, 0x8371, 64, 3, 6,

                                -1, 0x83B1, 64, 3, 7,

                                    -3, 46,
};

const s32 *const anim_0203[1] = {
    anim_0203__v0_l0,
};

const s32 anim_0204__v0_l0[] = {
    -2, 5, (((u16)16 << 0) | ((u16)0x20 << 16)), -1, 0x83F1, 64, -6, 0, (((-6 & 0xFF) << 0) | ((-14 & 0xFF) << 8) | ((6 & 0xFF) << 16) | ((16 & 0xFF) << 24)), 2, 0,

        -1, 0x8431, 64, 2, 1,

            -1, 0x8471, 64, 2, 2,

                -1, 0x84B1, 64, 2, 3,

                    -1, 0x84F1, 64, 2, 4,

                        -1, 0x8531, 64, 2, 5,

                            -1, 0x8571, 64, 2, 6,

                                -1, 0x85B1, 64, 2, 7,

                                    -3, 46,
};

const s32 *const anim_0204[1] = {
    anim_0204__v0_l0,
};

const s32 anim_0205__v0_l0[] = {
    -2, 5, (((u16)16 << 0) | ((u16)0x20 << 16)), -1, 0x85F1, 20, -6, 0, (((-6 & 0xFF) << 0) | ((-14 & 0xFF) << 8) | ((6 & 0xFF) << 16) | ((16 & 0xFF) << 24)), 1, 0,

        -1, 0x8605, 20, 1, 1,

            -4,
};

const s32 *const anim_0205[1] = {
    anim_0205__v0_l0,
};

const s32 anim_0206__v0_l0[] = {
    -2, 5, (((u16)16 << 0) | ((u16)0x20 << 16)), -1, 0x8619, 20, -6, 0, (((-6 & 0xFF) << 0) | ((-14 & 0xFF) << 8) | ((6 & 0xFF) << 16) | ((16 & 0xFF) << 24)), 1, 0,

        -1, 0x862D, 30, 1, 1,

            -1, 0x864B, 30, 1, 2,

                -1, 0x8669, 25, 1, 3,

                    -4,
};

const s32 *const anim_0206[1] = {
    anim_0206__v0_l0,
};

const s32 anim_0207__v0_l0[] = {
    -2, 5, (((u16)16 << 0) | ((u16)0x20 << 16)), -1, 0x8682, 16, -6, 0, (((-8 & 0xFF) << 0) | ((-8 & 0xFF) << 8) | ((8 & 0xFF) << 16) | ((8 & 0xFF) << 24)), -6, 1, (((-8 & 0xFF) << 0) | ((-8 & 0xFF) << 8) | ((8 & 0xFF) << 16) | ((8 & 0xFF) << 24)), 2, 0,

        -1, 0x8692, 16, 2, 1,

            -1, 0x86A2, 16, 2, 2,

                -1, 0x86B2, 16, 2, 3,

                    -3, 29,
};

const s32 *const anim_0207[1] = {
    anim_0207__v0_l0,
};

const s32 anim_0208__v0_l0[] = {
    -2, 5, (((u16)16 << 0) | ((u16)0x20 << 16)), -1, 0x86C2, 20, -6, 0, (((-6 & 0xFF) << 0) | ((-14 & 0xFF) << 8) | ((6 & 0xFF) << 16) | ((16 & 0xFF) << 24)), 2, 0,

        -1, 0x86D6, 30, 2, 1, -1, 0x86F4, 30, 2, 2,

            -3, 5,
};

const s32 anim_0208__v1_l0[] = {
    -2, 5, (((u16)16 << 0) | ((u16)0x20 << 16)), -1, 0x8712, 30, -6, 0, (((-6 & 0xFF) << 0) | ((-14 & 0xFF) << 8) | ((6 & 0xFF) << 16) | ((16 & 0xFF) << 24)), 2, 3,

        -1, 0x86C2, 20, 2, 0,

            -4,
};

const s32 *const anim_0208[2] = {
    anim_0208__v0_l0,
    anim_0208__v1_l0,
};

const s32 anim_0209__v0_l0[] = {
    -2, 5, (((u16)16 << 0) | ((u16)0x20 << 16)), -1, 0x8730, 20, -6, 0, (((-6 & 0xFF) << 0) | ((-16 & 0xFF) << 8) | ((6 & 0xFF) << 16) | ((14 & 0xFF) << 24)), 3, 0, -1, 0x8744, 20, 3, 1,

        -1, 0x8758, 20, 3, 2,

            -1, 0x876C, 20, 3, 3,

                -3, 15,
};

const s32 anim_0209__v1_l0[] = {
    -2, 5, (((u16)16 << 0) | ((u16)0x20 << 16)), -1, 0x8780, 20, -6, 0, (((-6 & 0xFF) << 0) | ((-16 & 0xFF) << 8) | ((6 & 0xFF) << 16) | ((14 & 0xFF) << 24)), 3, 4,

        -1, 0x8794, 20, 3, 5,

            -1, 0x87A8, 20, 3, 6,

                -1, 0x87BC, 25, 3, 7,

                    -1, 0x87D5, 30, 3, 8,

                        -1, 0x87F3, 30, 3, 9,

                            -4,
};

const s32 anim_0209__v2_l0[] = {
    -2, 5, (((u16)16 << 0) | ((u16)0x20 << 16)), -1, 0x8811, 30, -6, 0, (((-6 & 0xFF) << 0) | ((-16 & 0xFF) << 8) | ((6 & 0xFF) << 16) | ((14 & 0xFF) << 24)), 3, 10,

        -1, 0x882F, 30, 3, 11,

            -1, 0x884D, 30, 3, 12,

                -3, 21,
};

const s32 anim_0209__v3_l0[] = {
    -2, 5, (((u16)16 << 0) | ((u16)0x20 << 16)), -1, 0x886B, 30, -6, 0, (((-6 & 0xFF) << 0) | ((-16 & 0xFF) << 8) | ((6 & 0xFF) << 16) | ((14 & 0xFF) << 24)), 3, 13,

        -1, 0x8889, 16, -6, 0, (((-6 & 0xFF) << 0) | ((-2 & 0xFF) << 8) | ((6 & 0xFF) << 16) | ((28 & 0xFF) << 24)), 1, 14,

            -1, 0x8899, 16, 1, 15,

                -1, 0x8889, 16, 1, 14,

                    -4,
};

const s32 *const anim_0209[4] = {
    anim_0209__v0_l0,
    anim_0209__v1_l0,
    anim_0209__v2_l0,
    anim_0209__v3_l0,
};

const s32 anim_0210__v0_l0[] = {
    -2, 5, (((u16)16 << 0) | ((u16)0x20 << 16)), -1, 0x88A9, 20, -6, 0, (((-6 & 0xFF) << 0) | ((-16 & 0xFF) << 8) | ((6 & 0xFF) << 16) | ((14 & 0xFF) << 24)), 4, 0,

        -1, 0x88BD, 20, 4, 1,

            -1, 0x88D1, 20, 4, 2,

                -1, 0x88E5, 25, 4, 3,

                    -1, 0x88FE, 25, 4, 4,

                        -1, 0x8917, 25, 4, 5,

                            -1, 0x8930, 20, 4, 6,

                                -1, 0x8944, 20, 4, 7,

                                    -1, 0x8958, 25, 4, 8,

                                        -1, 0x8971, 20, 4, 9,

                                            -1, 0x8985, 25, 4, 10,

                                                -4,
};

const s32 *const anim_0210[1] = {
    anim_0210__v0_l0,
};

const s32 anim_0211__v0_l0[] = {
    -2, 5, (((u16)16 << 0) | ((u16)0x20 << 16)), -1, 0x899E, 16, -6, 0, (((-6 & 0xFF) << 0) | ((-14 & 0xFF) << 8) | ((6 & 0xFF) << 16) | ((16 & 0xFF) << 24)), 4, 0, -1, 0x89AE, 16, 6, 1,

        -1, 0x89BE, 16, 6, 2,

            -1, 0x89CE, 16, 6, 3,

                -1, 0x89DE, 16, 6, 4,

                    -1, 0x89EE, 16, 6, 5,

                        -1, 0x89FE, 16, 6, 6,

                            -1, 0x8A0E, 16, 6, 7,

                                -1, 0x8A1E, 16, 6, 8,

                                    -3, 40,
};

const s32 anim_0211__v1_l0[] = {
    -2, 5, (((u16)16 << 0) | ((u16)0x20 << 16)), -1, 0x899E, 16, -6, 0, (((-6 & 0xFF) << 0) | ((-14 & 0xFF) << 8) | ((6 & 0xFF) << 16) | ((16 & 0xFF) << 24)), 4, 0,

        -4,
};

const s32 *const anim_0211[2] = {
    anim_0211__v0_l0,
    anim_0211__v1_l0,
};

const s32 anim_0212__v0_l0[] = {
    -2, 5, (((u16)16 << 0) | ((u16)0x20 << 16)), -1, 0x8A2E, 25, -6, 0, (((-7 & 0xFF) << 0) | ((-14 & 0xFF) << 8) | ((5 & 0xFF) << 16) | ((16 & 0xFF) << 24)), 2, 0, -1, 0x8A47, 30, 3, 1,

        -1, 0x8A65, 36, 3, 2,

            -1, 0x8A89, 36, 3, 3,

                -1, 0x8AAD, 30, 3, 4,

                    -1, 0x8ACB, 30, 3, 5,

                        -1, 0x8AE9, 30, 3, 6,

                            -3, 30,
};

const s32 anim_0212__v1_l0[] = {
    -2, 5, (((u16)16 << 0) | ((u16)0x20 << 16)), -1, 0x8B07, 25, -6, 0, (((2 & 0xFF) << 0) | ((-14 & 0xFF) << 8) | ((14 & 0xFF) << 16) | ((16 & 0xFF) << 24)), 2, 7,

        -4,
};

const s32 *const anim_0212[2] = {
    anim_0212__v0_l0,
    anim_0212__v1_l0,
};

const s32 anim_0213__v0_l0[] = {
    -2, 5, (((u16)16 << 0) | ((u16)0x20 << 16)), -1, 0x8B20, 25, -6, 0, (((-6 & 0xFF) << 0) | ((-14 & 0xFF) << 8) | ((6 & 0xFF) << 16) | ((16 & 0xFF) << 24)), 2, 0, -1, 0x8B39, 30, 4, 1,

        -1, 0x8B57, 30, 4, 2,

            -1, 0x8B75, 25, 4, 3,

                -1, 0x8B8E, 36, 4, 4,

                    -1, 0x8BB2, 36, 4, 5,

                        -1, 0x8BD6, 36, 4, 6,

                            -3, 30,
};

const s32 anim_0213__v1_l0[] = {
    -2, 5, (((u16)16 << 0) | ((u16)0x20 << 16)), -1, 0x8BFA, 25, -6, 0, (((-4 & 0xFF) << 0) | ((-14 & 0xFF) << 8) | ((8 & 0xFF) << 16) | ((16 & 0xFF) << 24)), 2, 7,

        -4,
};

const s32 *const anim_0213[2] = {
    anim_0213__v0_l0,
    anim_0213__v1_l0,
};

const s32 anim_0216__v0_l0[] = {
    -2, 5, (((u16)16 << 0) | ((u16)0x20 << 16)), -1, 0x8C13, 30, -6, 0, (((-6 & 0xFF) << 0) | ((-14 & 0xFF) << 8) | ((6 & 0xFF) << 16) | ((14 & 0xFF) << 24)), -5, 191, 6, 0,

        -1, 0x8C31, 30, 6, 1,

            -4,
};

const s32 *const anim_0216[1] = {
    anim_0216__v0_l0,
};

const s32 anim_0217__v0_l0[] = {
    -2, 5, (((u16)16 << 0) | ((u16)0x20 << 16)), -1, 0x8C4F, 16, -6, 0, (((-8 & 0xFF) << 0) | ((-8 & 0xFF) << 8) | ((8 & 0xFF) << 16) | ((8 & 0xFF) << 24)), -6, 1, (((-8 & 0xFF) << 0) | ((-8 & 0xFF) << 8) | ((8 & 0xFF) << 16) | ((8 & 0xFF) << 24)), 2, 0,

        -1, 0x8C5F, 16, 2, 1,

            -1, 0x8C6F, 16, 2, 2,

                -1, 0x8C7F, 16, 2, 3,

                    -3, 29,
};

const s32 anim_0217__v1_l0[] = {
    -2, 5, (((u16)16 << 0) | ((u16)0x20 << 16)), -1, 0x8C8F, 16, -6, 0, (((-8 & 0xFF) << 0) | ((-8 & 0xFF) << 8) | ((8 & 0xFF) << 16) | ((8 & 0xFF) << 24)), -6, 1, (((-8 & 0xFF) << 0) | ((-8 & 0xFF) << 8) | ((8 & 0xFF) << 16) | ((8 & 0xFF) << 24)), 2, 4,

        -1, 0x8C9F, 16, 2, 5,

            -1, 0x8CAF, 16, 2, 6,

                -1, 0x8CBF, 16, 2, 7,

                    -4,
};

const s32 *const anim_0217[2] = {
    anim_0217__v0_l0,
    anim_0217__v1_l0,
};

const s32 anim_0218__v0_l0[] = {
    -2, 5, (((u16)16 << 0) | ((u16)0x20 << 16)), -1, 0x8CCF, 25, -6, 0, (((-6 & 0xFF) << 0) | ((-14 & 0xFF) << 8) | ((6 & 0xFF) << 16) | ((16 & 0xFF) << 24)), 3, 0,

        -1, 0x8CE8, 20, 3, 1,

            -1, 0x8CFC, 20, 3, 2,

                -1, 0x8D10, 20, 3, 3, -1, 0x8D24, 15, 3, 4,

                    -3, 5,
};

const s32 *const anim_0218[1] = {
    anim_0218__v0_l0,
};

const s32 anim_0220__v0_l0[] = {
    -2, 5, (((u16)16 << 0) | ((u16)0x20 << 16)), -1, 0x8D33, 30, 3, 0,

        -1, 0x8D51, 36, 3, 1,

            -1, 0x8D33, 30, 3, 0,

                -1, 0x8D75, 25, 3, 2, -1, 0x8D8E, 20, 3, 3,

                    -1, 0x8DA2, 20, 3, 4,

                        -3, 10,
};

const s32 *const anim_0220[1] = {
    anim_0220__v0_l0,
};

const s32 anim_0221__v0_l0[] = {
    -2, 5, (((u16)16 << 0) | ((u16)0x20 << 16)), -1, 0x8DB6, 20, 3, 0,

        -1, 0x8DCA, 20, 3, 1,

            -1, 0x8DDE, 24, 3, 2,

                -1, 0x8DF6, 25, 3, 3,

                    -1, 0x8E0F, 20, 3, 4,

                        -1, 0x8E23, 20, 3, 5,

                            -1, 0x8E37, 25, 3, 6,

                                -1, 0x8E50, 25, 3, 7, -1, 0x8E69, 24, 3, 8,

                                    -1, 0x8E81, 30, 3, 9,

                                        -1, 0x8E9F, 30, 3, 10,

                                            -1, 0x8EBD, 24, 3, 11,

                                                -1, 0x8ED5, 24, 3, 12,

                                                    -1, 0x8EED, 24, 3, 13,

                                                        -1, 0x8F05, 30, 3, 14,

                                                            -1, 0x8F23, 30, 3, 15,

                                                                -3, 40,
};

const s32 *const anim_0221[1] = {
    anim_0221__v0_l0,
};

const s32 anim_0222__v0_l0[] = {
    -2, 5, (((u16)16 << 0) | ((u16)0x20 << 16)), -1, 0x8F41, 20, 4, 0,

        -1, 0x8F55, 30, 6, 1,

            -1, 0x8F73, 20, 4, 2,

                -1, 0x8F87, 20, 4, 3,

                    -1, 0x8F9B, 20, 4, 4,

                        -1, 0x8FAF, 15, 6, 5,

                            -1, 0x8FBE, 20, 16, 6,

                                -1, 0x8FD2, 15, 6, 7,

                                    -1, 0x8FE1, 20, 6, 8,

                                        -1, 0x8FF5, 20, 4, 9,

                                            -1, 0x9009, 20, 4, 10,

                                                -1, 0x901D, 20, 4, 11,

                                                    -1, 0x9031, 25, 4, 12,

                                                        -1, 0x904A, 25, 4, 13,

                                                            -1, 0x8FF5, 20, 4, 9,

                                                                -1, 0x9009, 20, 4, 10,

                                                                    -1, 0x901D, 20, 4, 11,

                                                                        -1, 0x9031, 25, 4, 12,

                                                                            -1, 0x904A, 25, 4, 13,

                                                                                -1, 0x8FF5, 20, 12, 9,

                                                                                    -1, 0x9063, 20, 3, 14,

                                                                                        -1, 0x9077, 20, 30, 15,

                                                                                            -4,
};

const s32 *const anim_0222[1] = {
    anim_0222__v0_l0,
};

const s32 anim_0223__v0_l0[] = {
    -2, 5, (((u16)16 << 0) | ((u16)0x20 << 16)), -1, 0x908B, 25, 3, 0,

        -1, 0x90A4, 25, 3, 1,

            -1, 0x90BD, 25, 1, 2,

                -1, 0x90D6, 25, 26, 3,

                    -1, 0x908B, 25, 3, 0,

                        -1, 0x90EF, 20, 10, 4,

                            -1, 0x9103, 20, 1, 5,

                                -1, 0x9117, 30, 2, 6,

                                    -1, 0x9135, 30, 2, 7,

                                        -1, 0x9153, 35, 4, 8,

                                            -1, 0x9117, 30, 2, 6,

                                                -1, 0x9103, 20, 1, 5,

                                                    -1, 0x9176, 20, 6, 9,

                                                        -1, 0x918A, 20, 1, 10,

                                                            -1, 0x919E, 20, 2, 11,

                                                                -1, 0x91B2, 35, 4, 12,

                                                                    -1, 0x91D5, 35, 2, 13,

                                                                        -1, 0x919E, 20, 2, 11,

                                                                            -1, 0x918A, 20, 2, 10,

                                                                                -1, 0x90EF, 20, 2, 4,

                                                                                    -4,
};

const s32 *const anim_0223[1] = {
    anim_0223__v0_l0,
};

const s32 anim_0224__v0_l0[] = {
    -2, 5, (((u16)16 << 0) | ((u16)0x90 << 16)), -1, 0x91F8, 20, 3, 0,

        -1, 0x920C, 20, 3, 1,

            -1, 0x9220, 20, 3, 2,

                -1, 0x9234, 20, 3, 3,

                    -3, 23,
};

const s32 *const anim_0224[1] = {
    anim_0224__v0_l0,
};

const s32 anim_0225__v0_l0[] = {
    -2, 5, (((u16)16 << 0) | ((u16)0x90 << 16)), -1, 0x9248, 30, 20, 0,

        -1, 0x9266, 36, 10, 1,

            -1, 0x928A, 42, 8, 2,

                -1, 0x92B4, 42, 7, 3,

                    -1, 0x92DE, 42, 5, 4,

                        -1, 0x9308, 42, 3, 5, -1, 0x9332, 42, 2, 6,

                            -1, 0x935C, 42, 2, 7,

                                -1, 0x9386, 42, 2, 8,

                                    -3, 15,
};

const s32 *const anim_0225[1] = {
    anim_0225__v0_l0,
};

const s32 anim_0226__v0_l0[] = {
    -2, 5, (((u16)16 << 0) | ((u16)0x20 << 16)), -1, 0x93B0, 64, -6, 0, (((-10 & 0xFF) << 0) | ((-10 & 0xFF) << 8) | ((10 & 0xFF) << 16) | ((10 & 0xFF) << 24)), 2, 0,

        -1, 0x93F0, 64, 2, 1,

            -3, 16,
};

const s32 anim_0226__v1_l0[] = {
    -2, 5, (((u16)16 << 0) | ((u16)0x20 << 16)), -1, 0x9430, 64, -6, 0, (((-10 & 0xFF) << 0) | ((-10 & 0xFF) << 8) | ((10 & 0xFF) << 16) | ((10 & 0xFF) << 24)), 2, 2,

        -1, 0x9470, 64, 2, 3,

            -3, 16,
};

const s32 anim_0226__v2_l0[] = {
    -2, 5, (((u16)16 << 0) | ((u16)0x20 << 16)), -1, 0x94B0, 64, -6, 0, (((-10 & 0xFF) << 0) | ((-10 & 0xFF) << 8) | ((10 & 0xFF) << 16) | ((10 & 0xFF) << 24)), 2, 4,

        -1, 0x94F0, 64, 2, 5,

            -3, 16,
};

const s32 anim_0226__v3_l0[] = {
    -2, 5, (((u16)16 << 0) | ((u16)0x20 << 16)), -1, 0x9530, 64, -6, 0, (((-10 & 0xFF) << 0) | ((-10 & 0xFF) << 8) | ((10 & 0xFF) << 16) | ((10 & 0xFF) << 24)), 2, 6,

        -1, 0x9570, 64, 2, 7,

            -3, 16,
};

const s32 anim_0226__v4_l0[] = {
    -2, 5, (((u16)16 << 0) | ((u16)0x20 << 16)), -1, 0x95B0, 64, -6, 0, (((-10 & 0xFF) << 0) | ((-10 & 0xFF) << 8) | ((10 & 0xFF) << 16) | ((10 & 0xFF) << 24)), 2, 8,

        -1, 0x95F0, 64, 2, 9,

            -3, 16,
};

const s32 anim_0226__v5_l0[] = {
    -2, 5, (((u16)16 << 0) | ((u16)0x20 << 16)), -1, 0x9630, 64, -6, 0, (((-10 & 0xFF) << 0) | ((-10 & 0xFF) << 8) | ((10 & 0xFF) << 16) | ((10 & 0xFF) << 24)), 2, 10,

        -1, 0x9670, 64, 2, 11,

            -3, 16,
};

const s32 anim_0226__v6_l0[] = {
    -2, 5, (((u16)16 << 0) | ((u16)0x20 << 16)), -1, 0x96B0, 64, -6, 0, (((-10 & 0xFF) << 0) | ((-10 & 0xFF) << 8) | ((10 & 0xFF) << 16) | ((10 & 0xFF) << 24)), 2, 12,

        -1, 0x96F0, 64, 2, 13,

            -3, 16,
};

const s32 anim_0226__v7_l0[] = {
    -2, 5, (((u16)16 << 0) | ((u16)0x20 << 16)), -1, 0x9730, 64, -6, 0, (((-10 & 0xFF) << 0) | ((-10 & 0xFF) << 8) | ((10 & 0xFF) << 16) | ((10 & 0xFF) << 24)), 2, 14,

        -1, 0x9770, 64, 2, 15,

            -3, 16,
};

const s32 anim_0226__v8_l0[] = {
    -2, 5, (((u16)16 << 0) | ((u16)0x20 << 16)), -1, 0x97B0, 64, -6, 0, (((-10 & 0xFF) << 0) | ((-10 & 0xFF) << 8) | ((10 & 0xFF) << 16) | ((10 & 0xFF) << 24)), 2, 16,

        -1, 0x97F0, 64, 2, 17,

            -3, 16,
};

const s32 *const anim_0226[9] = {
    anim_0226__v0_l0, anim_0226__v1_l0, anim_0226__v2_l0, anim_0226__v3_l0, anim_0226__v4_l0,
    anim_0226__v5_l0, anim_0226__v6_l0, anim_0226__v7_l0, anim_0226__v8_l0,
};

const s32 anim_0227__v0_l0[] = {
    -2, 5, (((u16)16 << 0) | ((u16)0x20 << 16)), -1, 0x9830, 64, -6, 0, (((-10 & 0xFF) << 0) | ((-10 & 0xFF) << 8) | ((10 & 0xFF) << 16) | ((10 & 0xFF) << 24)), 2, 0,

        -1, 0x9870, 64, 2, 1,

            -3, 16,
};

const s32 anim_0227__v1_l0[] = {
    -2, 5, (((u16)16 << 0) | ((u16)0x20 << 16)), -1, 0x98B0, 64, -6, 0, (((-10 & 0xFF) << 0) | ((-10 & 0xFF) << 8) | ((10 & 0xFF) << 16) | ((10 & 0xFF) << 24)), 2, 2,

        -1, 0x98F0, 64, 2, 3,

            -3, 16,
};

const s32 anim_0227__v2_l0[] = {
    -2, 5, (((u16)16 << 0) | ((u16)0x20 << 16)), -1, 0x9930, 64, -6, 0, (((-10 & 0xFF) << 0) | ((-10 & 0xFF) << 8) | ((10 & 0xFF) << 16) | ((10 & 0xFF) << 24)), 2, 4,

        -1, 0x9970, 64, 2, 5,

            -3, 16,
};

const s32 anim_0227__v3_l0[] = {
    -2, 5, (((u16)16 << 0) | ((u16)0x20 << 16)), -1, 0x99B0, 64, -6, 0, (((-10 & 0xFF) << 0) | ((-10 & 0xFF) << 8) | ((10 & 0xFF) << 16) | ((10 & 0xFF) << 24)), 2, 6,

        -1, 0x99F0, 64, 2, 7,

            -3, 16,
};

const s32 anim_0227__v4_l0[] = {
    -2, 5, (((u16)16 << 0) | ((u16)0x20 << 16)), -1, 0x9A30, 64, -6, 0, (((-10 & 0xFF) << 0) | ((-10 & 0xFF) << 8) | ((10 & 0xFF) << 16) | ((10 & 0xFF) << 24)), 2, 8,

        -1, 0x9A70, 64, 2, 9,

            -3, 16,
};

const s32 anim_0227__v5_l0[] = {
    -2, 5, (((u16)16 << 0) | ((u16)0x20 << 16)), -1, 0x9AB0, 64, -6, 0, (((-10 & 0xFF) << 0) | ((-10 & 0xFF) << 8) | ((10 & 0xFF) << 16) | ((10 & 0xFF) << 24)), 2, 10,

        -1, 0x9AB0, 64, 2, 10,

            -3, 16,
};

const s32 anim_0227__v6_l0[] = {
    -2, 5, (((u16)16 << 0) | ((u16)0x20 << 16)), -1, 0x9AF0, 64, -6, 0, (((-10 & 0xFF) << 0) | ((-10 & 0xFF) << 8) | ((10 & 0xFF) << 16) | ((10 & 0xFF) << 24)), 2, 11,

        -1, 0x9B30, 64, 2, 12,

            -3, 16,
};

const s32 anim_0227__v7_l0[] = {
    -2, 5, (((u16)16 << 0) | ((u16)0x20 << 16)), -1, 0x9B70, 64, -6, 0, (((-10 & 0xFF) << 0) | ((-10 & 0xFF) << 8) | ((10 & 0xFF) << 16) | ((10 & 0xFF) << 24)), 2, 13,

        -1, 0x9BB0, 64, 2, 14,

            -3, 16,
};

const s32 *const anim_0227[8] = {
    anim_0227__v0_l0, anim_0227__v1_l0, anim_0227__v2_l0, anim_0227__v3_l0,
    anim_0227__v4_l0, anim_0227__v5_l0, anim_0227__v6_l0, anim_0227__v7_l0,
};

const s32 anim_0228__v0_l0[] = {
    -2, 5, (((u16)16 << 0) | ((u16)0x20 << 16)), -1, 0x9BF0, 64, -6, 0, (((-10 & 0xFF) << 0) | ((-10 & 0xFF) << 8) | ((10 & 0xFF) << 16) | ((10 & 0xFF) << 24)), 4, 0, -1, 0x9C30, 64, -6, 0, (((-10 & 0xFF) << 0) | ((-10 & 0xFF) << 8) | ((10 & 0xFF) << 16) | ((10 & 0xFF) << 24)),
        2, 1,

            -1, 0x9C70, 64, 2, 2,

                -3, 13,
};

const s32 anim_0228__v1_l0[] = {
    -2, 5, (((u16)16 << 0) | ((u16)0x20 << 16)), -1, 0x9BF0, 64, -6, 0, (((-10 & 0xFF) << 0) | ((-10 & 0xFF) << 8) | ((10 & 0xFF) << 16) | ((10 & 0xFF) << 24)), 4, 0,

        -4,
};

const s32 *const anim_0228[2] = {
    anim_0228__v0_l0,
    anim_0228__v1_l0,
};

const s32 anim_0229__v0_l0[] = {
    -2, 5, (((u16)16 << 0) | ((u16)0x20 << 16)), -1, 0x9CB0, 64, -6, 0, (((-20 & 0xFF) << 0) | ((-20 & 0xFF) << 8) | ((20 & 0xFF) << 16) | ((20 & 0xFF) << 24)), 2, 0,

        -1, 0x9CF0, 64, 2, 1,

            -1, 0x9D30, 64, 2, 2,

                -1, 0x9D70, 64, 2, 3,

                    -1, 0x9DB0, 64, 2, 4,

                        -1, 0x9DF0, 64, 2, 5,

                            -1, 0x9E30, 64, 2, 6,

                                -1, 0x9E70, 64, 2, 7,

                                    -1, 0x9EB0, 64, 2, 8,

                                        -1, 0x9EF0, 64, 2, 9,

                                            -1, 0x9F30, 64, 2, 10,

                                                -3, 61,
};

const s32 *const anim_0229[1] = {
    anim_0229__v0_l0,
};

const s32 anim_0230__v0_l0[] = {
    -2, 5, (((u16)16 << 0) | ((u16)0x20 << 16)), -1, 0x9F70, 64, -6, 0, (((-14 & 0xFF) << 0) | ((-14 & 0xFF) << 8) | ((14 & 0xFF) << 16) | ((14 & 0xFF) << 24)), 3, 0,

        -1, 0x9FB0, 64, 3, 1,

            -1, 0x9FF0, 64, 3, 2,

                -1, 0xA030, 64, 3, 3,

                    -1, 0xA070, 64, 3, 4,

                        -1, 0xA0B0, 64, 3, 5,

                            -1, 0xA0F0, 64, 3, 6,

                                -1, 0xA130, 64, 3, 7,

                                    -1, 0xA170, 64, 3, 8,

                                        -1, 0xA1B0, 64, 3, 9,

                                            -1, 0xA1F0, 64, 3, 10,

                                                -1, 0xA230, 64, 3, 11,

                                                    -1, 0xA270, 64, 3, 12,

                                                        -1, 0xA2B0, 64, 3, 13,

                                                            -4,
};

const s32 *const anim_0230[1] = {
    anim_0230__v0_l0,
};

const s32 anim_0231__v0_l0[] = {
    -2, 5, (((u16)16 << 0) | ((u16)0x20 << 16)), -1, 0xA2F0, 64, -6, 0, (((-10 & 0xFF) << 0) | ((-10 & 0xFF) << 8) | ((10 & 0xFF) << 16) | ((10 & 0xFF) << 24)), 3, 0,

        -1, 0xA330, 64, 3, 1,

            -1, 0xA370, 64, 3, 2,

                -1, 0xA3B0, 64, 3, 3,

                    -1, 0xA3F0, 64, 3, 4,

                        -1, 0xA430, 64, 3, 5,

                            -1, 0xA470, 64, 3, 6,

                                -3, 41,
};

const s32 *const anim_0231[1] = {
    anim_0231__v0_l0,
};

const s32 anim_0232__v0_l0[] = {
    -2, 5, (((u16)16 << 0) | ((u16)0x20 << 16)), -1, 0xA4B0, 64, 6, 0, -1, 0xA4F0, 64, 3, 1,

        -1, 0xA530, 64, 3, 2,

            -3, 10,
};

const s32 anim_0232__v1_l0[] = {
    -2, 5, (((u16)16 << 0) | ((u16)0x20 << 16)), -1, 0xA4B0, 64, 6, 0,

        -4,
};

const s32 *const anim_0232[2] = {
    anim_0232__v0_l0,
    anim_0232__v1_l0,
};

const s32 anim_0233__v0_l0[] = {
    -2, 5, (((u16)16 << 0) | ((u16)0x20 << 16)), -1, 0xA570, 64, -6, 0, (((-10 & 0xFF) << 0) | ((-10 & 0xFF) << 8) | ((10 & 0xFF) << 16) | ((10 & 0xFF) << 24)), 2, 0,

        -1, 0xA5B0, 64, 2, 1,

            -3, 16,
};

const s32 anim_0233__v1_l0[] = {
    -2, 5, (((u16)16 << 0) | ((u16)0x20 << 16)), -1, 0xA5F0, 64, 2, 2,

        -1, 0xA630, 64, 2, 3,

            -1, 0xA670, 64, 2, 4,

                -1, 0xA6B0, 64, 2, 5,

                    -1, 0xA6F0, 64, 2, 6,

                        -1, 0xA730, 64, 2, 7,

                            -3, 33,
};

const s32 *const anim_0233[2] = {
    anim_0233__v0_l0,
    anim_0233__v1_l0,
};

const s32 anim_0234__v0_l0[] = {
    -2, 5, (((u16)16 << 0) | ((u16)0x90 << 16)), -1, 0xA770, 16, 1, 0,

        -1, 0xA780, 16, 1, 1,

            -1, 0xA790, 16, 16, 2,

                -1, 0xA7A0, 16, 4, 3,

                    -1, 0xA7B0, 16, 4, 4,

                        -1, 0xA7C0, 20, 4, 5,

                            -1, 0xA7D4, 20, 4, 6,

                                -1, 0xA7E8, 25, 30, 7,

                                    -4,
};

const s32 *const anim_0234[1] = {
    anim_0234__v0_l0,
};

const s32 anim_0235__v0_l0[] = {
    -2, 5, (((u16)16 << 0) | ((u16)0x20 << 16)), -1, 0xA801, 16, -6, 0, (((-6 & 0xFF) << 0) | ((-14 & 0xFF) << 8) | ((6 & 0xFF) << 16) | ((16 & 0xFF) << 24)), 3, 0,

        -1, 0xA811, 16, 3, 1,

            -1, 0xA821, 20, 3, 2,

                -1, 0xA835, 16, 3, 3,

                    -1, 0xA845, 16, 3, 4,

                        -1, 0xA855, 16, 3, 5,

                            -1, 0xA865, 16, 3, 6,

                                -1, 0xA875, 16, 3, 7,

                                    -3, 46,
};

const s32 anim_0235__v1_l0[] = {
    -2, 5, (((u16)16 << 0) | ((u16)0x20 << 16)), -1, 0xA885, 30, -6, 0, (((-6 & 0xFF) << 0) | ((-16 & 0xFF) << 8) | ((6 & 0xFF) << 16) | ((16 & 0xFF) << 24)), 3, 8,

        -1, 0xA8A3, 25, 3, 9,

            -1, 0xA8BC, 20, 3, 10,

                -1, 0xA8D0, 25, 3, 11,

                    -1, 0xA8E9, 30, 3, 12,

                        -1, 0xA907, 25, 3, 13,

                            -1, 0xA920, 30, 3, 14,

                                -1, 0xA93E, 25, 3, 15,

                                    -3, 46,
};

const s32 anim_0235__v2_l0[] = {
    -2, 5, (((u16)16 << 0) | ((u16)0x20 << 16)), -1, 0xA957, 30, -6, 0, (((-6 & 0xFF) << 0) | ((-16 & 0xFF) << 8) | ((6 & 0xFF) << 16) | ((16 & 0xFF) << 24)), 3, 16,

        -1, 0xA975, 25, 3, 17,

            -1, 0xA98E, 30, 3, 18,

                -1, 0xA9AC, 25, 3, 19,

                    -1, 0xA9C5, 30, 3, 20,

                        -1, 0xA9E3, 30, 3, 21,

                            -1, 0xAA01, 25, 3, 22,

                                -1, 0xAA1A, 30, 3, 23,

                                    -3, 46,
};

const s32 *const anim_0235[3] = {
    anim_0235__v0_l0,
    anim_0235__v1_l0,
    anim_0235__v2_l0,
};

const s32 anim_0236__v0_l0[] = {
    -2, 5, (((u16)16 << 0) | ((u16)0x20 << 16)), -1, 0xAA38, 25, -6, 0, (((-6 & 0xFF) << 0) | ((-14 & 0xFF) << 8) | ((6 & 0xFF) << 16) | ((16 & 0xFF) << 24)), 2, 0,

        -1, 0xAA51, 24, 2, 1,

            -1, 0xAA69, 20, 4, 2,

                -1, 0xAA7D, 25, 1, 3,

                    -1, 0xAA96, 25, 1, 4,

                        -1, 0xAAAF, 30, -6, 0, (((-8 & 0xFF) << 0) | ((-14 & 0xFF) << 8) | ((4 & 0xFF) << 16) | ((16 & 0xFF) << 24)), 2, 5,

                            -1, 0xAACD, 30, 2, 6,

                                -1, 0xAAEB, 30, 2, 7,

                                    -4,
};

const s32 *const anim_0236[1] = {
    anim_0236__v0_l0,
};

const s32 anim_0237__v0_l0[] = {
    -2, 5, (((u16)16 << 0) | ((u16)0x20 << 16)), -1, 0xAB09, 30, -6, 0, (((-6 & 0xFF) << 0) | ((-18 & 0xFF) << 8) | ((8 & 0xFF) << 16) | ((14 & 0xFF) << 24)), 3, 0,

        -1, 0xAB27, 30, 3, 1,

            -1, 0xAB45, 30, 3, 2,

                -1, 0xAB63, 24, 2, 3,

                    -1, 0xAB7B, 20, -6, 0, (((-6 & 0xFF) << 0) | ((-16 & 0xFF) << 8) | ((6 & 0xFF) << 16) | ((14 & 0xFF) << 24)), 2, 4,

                        -4,
};

const s32 *const anim_0237[1] = {
    anim_0237__v0_l0,
};

const s32 anim_0238__v0_l0[] = {
    -2, 5, (((u16)16 << 0) | ((u16)0x20 << 16)), -1, 0xAB8F, 64, 2, 0,

        -1, 0xABCF, 64, 2, 1,

            -1, 0xAC0F, 64, 2, 2,

                -1, 0xAC4F, 64, 2, 3,

                    -3, 23,
};

const s32 *const anim_0238[1] = {
    anim_0238__v0_l0,
};

const s32 anim_0239__v0_l0[] = {
    -2, 5, (((u16)16 << 0) | ((u16)0x20 << 16)), -1, 0xAC8F, 28, -6, 0, (((-30 & 0xFF) << 0) | ((-24 & 0xFF) << 8) | ((-6 & 0xFF) << 16) | ((-6 & 0xFF) << 24)), -12, 0x10, 3, 0,

        -1, 0xACAB, 20, -6, 0, (((-22 & 0xFF) << 0) | ((-24 & 0xFF) << 8) | ((-4 & 0xFF) << 16) | ((-6 & 0xFF) << 24)), -12, 0x10, 3, 1,

            -1, 0xACBF, 12, -6, 0, (((-6 & 0xFF) << 0) | ((-24 & 0xFF) << 8) | ((2 & 0xFF) << 16) | ((-6 & 0xFF) << 24)), -12, 0x10, 3, 2,

                -1, 0xACCB, 20, -6, 0, (((-2 & 0xFF) << 0) | ((-24 & 0xFF) << 8) | ((6 & 0xFF) << 16) | ((-6 & 0xFF) << 24)), -12, 0x10, 3, 3,

                    -1, 0xACDF, 20, -6, 0, (((8 & 0xFF) << 0) | ((-24 & 0xFF) << 8) | ((26 & 0xFF) << 16) | ((-6 & 0xFF) << 24)), -12, 0x10, 3, 4,

                        -1, 0xACF3, 28, -6, 0, (((6 & 0xFF) << 0) | ((-24 & 0xFF) << 8) | ((34 & 0xFF) << 16) | ((-6 & 0xFF) << 24)), -12, 0x10, 3, 5,

                            -1, 0xAD0F, 20, -6, 0, (((8 & 0xFF) << 0) | ((-24 & 0xFF) << 8) | ((26 & 0xFF) << 16) | ((-6 & 0xFF) << 24)), -12, 0x13, 3, 6,

                                -1, 0xAD23, 16, -6, 0, (((2 & 0xFF) << 0) | ((-24 & 0xFF) << 8) | ((10 & 0xFF) << 16) | ((-6 & 0xFF) << 24)), -12, 0x13, 3, 7,

                                    -1, 0xAD33, 16, -6, 0, (((-8 & 0xFF) << 0) | ((-24 & 0xFF) << 8) | ((0 & 0xFF) << 16) | ((-6 & 0xFF) << 24)), -12, 0x13, 3, 8,

                                        -1, 0xAD43, 24, -6, 0, (((-22 & 0xFF) << 0) | ((-24 & 0xFF) << 8) | ((-4 & 0xFF) << 16) | ((-6 & 0xFF) << 24)), -12, 0x13, 3, 9,

                                            -3, 103,
};

const s32 anim_0239__v1_l0[] = {
    -2, 5, (((u16)16 << 0) | ((u16)0x20 << 16)), -1, 0xAD5B, 28, -6, 0, (((-8 & 0xFF) << 0) | ((1 & 0xFF) << 8) | ((8 & 0xFF) << 16) | ((35 & 0xFF) << 24)), -11, 0x2, 3, 10,

        -1, 0xAD77, 20, -6, 0, (((-8 & 0xFF) << 0) | ((1 & 0xFF) << 8) | ((8 & 0xFF) << 16) | ((23 & 0xFF) << 24)), -11, 0x2, 3, 11,

            -1, 0xAD8B, 12, -6, 0, (((-8 & 0xFF) << 0) | ((-3 & 0xFF) << 8) | ((8 & 0xFF) << 16) | ((9 & 0xFF) << 24)), -11, 0x2, 3, 12,

                -1, 0xAD97, 20, -6, 0, (((-8 & 0xFF) << 0) | ((-12 & 0xFF) << 8) | ((8 & 0xFF) << 16) | ((0 & 0xFF) << 24)), -11, 0x2, 3, 13,

                    -1, 0xADAB, 20, -6, 0, (((-8 & 0xFF) << 0) | ((-20 & 0xFF) << 8) | ((8 & 0xFF) << 16) | ((-2 & 0xFF) << 24)), -11, 0x2, 3, 14,

                        -1, 0xADBF, 28, -6, 0, (((-8 & 0xFF) << 0) | ((-40 & 0xFF) << 8) | ((8 & 0xFF) << 16) | ((-6 & 0xFF) << 24)), -11, 0x2, 3, 15,

                            -1, 0xADDB, 20, -6, 0, (((-8 & 0xFF) << 0) | ((-24 & 0xFF) << 8) | ((8 & 0xFF) << 16) | ((-2 & 0xFF) << 24)), -11, 0x3, 3, 16,

                                -1, 0xADEF, 16, -6, 0, (((-8 & 0xFF) << 0) | ((-12 & 0xFF) << 8) | ((8 & 0xFF) << 16) | ((0 & 0xFF) << 24)), -11, 0x3, 3, 17,

                                    -1, 0xADFF, 16, -6, 0, (((-8 & 0xFF) << 0) | ((-3 & 0xFF) << 8) | ((8 & 0xFF) << 16) | ((9 & 0xFF) << 24)), -11, 0x3, 3, 18,

                                        -1, 0xAE0F, 24, -6, 0, (((-8 & 0xFF) << 0) | ((1 & 0xFF) << 8) | ((8 & 0xFF) << 16) | ((19 & 0xFF) << 24)), -11, 0x3, 3, 19,

                                            -3, 103,
};

const s32 *const anim_0239[2] = {
    anim_0239__v0_l0,
    anim_0239__v1_l0,
};

const s32 anim_0240__v0_l0[] = {
    -2, 5, (((u16)16 << 0) | ((u16)0x20 << 16)), -1, 0xAE27, 24, -6, 0, (((-6 & 0xFF) << 0) | ((-19 & 0xFF) << 8) | ((6 & 0xFF) << 16) | ((7 & 0xFF) << 24)), 10, 0,

        -1, 0xAE3F, 24, 10, 1,

            -1, 0xAE57, 24, 10, 2,

                -1, 0xAE3F, 24, 10, 1,

                    -3, 26,
};

const s32 anim_0240__v1_l0[] = {
    -2, 5, (((u16)16 << 0) | ((u16)0x20 << 16)), -1, 0xAE6F, 24, -6, 0, (((-6 & 0xFF) << 0) | ((-19 & 0xFF) << 8) | ((6 & 0xFF) << 16) | ((7 & 0xFF) << 24)), 5, 3,

        -1, 0xAE87, 24, 5, 4,

            -1, 0xAE9F, 24, 5, 5,

                -1, 0xAE87, 24, 5, 4,

                    -3, 26,
};

const s32 *const anim_0240[2] = {
    anim_0240__v0_l0,
    anim_0240__v1_l0,
};

const s32 anim_0241__v0_l0[] = {
    -2, 5, (((u16)16 << 0) | ((u16)0x20 << 16)), -1, 0xAEB7, 36, -6, 0, (((-6 & 0xFF) << 0) | ((-12 & 0xFF) << 8) | ((6 & 0xFF) << 16) | ((10 & 0xFF) << 24)), 5, 0,

        -1, 0xAEDB, 30, 5, 1,

            -1, 0xAEF9, 20, 5, 2,

                -1, 0xAF0D, 30, 5, 3,

                    -1, 0xAF2B, 36, 5, 4,

                        -1, 0xAF4F, 20, 5, 5,

                            -1, 0xAF63, 25, 5, 6,

                                -1, 0xAF7C, 20, 5, 7,

                                    -3, 46,
};

const s32 *const anim_0241[1] = {
    anim_0241__v0_l0,
};

const s32 anim_0242__v0_l0[] = {
    -2, 5, (((u16)16 << 0) | ((u16)0x20 << 16)), -1, 0xAF90, 30, 8, 0,

        -1, 0xAFAE, 30, 8, 1,

            -1, 0xAFCC, 30, 8, 2,

                -1, 0xAFAE, 30, 8, 1,

                    -3, 23,
};

const s32 *const anim_0242[1] = {
    anim_0242__v0_l0,
};

const s32 anim_0245__v0_l0[] = {
    -2, 5, (((u16)16 << 0) | ((u16)0x20 << 16)), -1, 0xAFEA, 20, -6, 0, (((-4 & 0xFF) << 0) | ((-8 & 0xFF) << 8) | ((18 & 0xFF) << 16) | ((6 & 0xFF) << 24)), 6, 0,

        -1, 0xAFFE, 20, 4, 1,

            -1, 0xB012, 20, 4, 2,

                -1, 0xB026, 15, 6, 3,

                    -1, 0xB035, 20, 6, 4,

                        -1, 0xB049, 16, 6, 5,

                            -3, 36,
};

const s32 *const anim_0245[1] = {
    anim_0245__v0_l0,
};

const s32 anim_0246__v0_l0[] = {
    -2, 5, (((u16)16 << 0) | ((u16)0x20 << 16)), -1, 0xB059, 24, -6, 0, (((-12 & 0xFF) << 0) | ((-8 & 0xFF) << 8) | ((10 & 0xFF) << 16) | ((6 & 0xFF) << 24)), 1, 0,

        -4,
};

const s32 anim_0246__v1_l0[] = {
    -2, 5, (((u16)16 << 0) | ((u16)0x20 << 16)), -1, 0xB071, 24, -6, 0, (((-12 & 0xFF) << 0) | ((-8 & 0xFF) << 8) | ((10 & 0xFF) << 16) | ((6 & 0xFF) << 24)), 1, 1,

        -4,
};

const s32 anim_0246__v2_l0[] = {
    -2, 5, (((u16)16 << 0) | ((u16)0x20 << 16)), -1, 0xB089, 24, -6, 0, (((-12 & 0xFF) << 0) | ((-8 & 0xFF) << 8) | ((10 & 0xFF) << 16) | ((6 & 0xFF) << 24)), 1, 2,

        -4,
};

const s32 anim_0246__v3_l0[] = {
    -2, 5, (((u16)16 << 0) | ((u16)0x20 << 16)), -1, 0xB0A1, 24, -6, 0, (((-12 & 0xFF) << 0) | ((-8 & 0xFF) << 8) | ((10 & 0xFF) << 16) | ((6 & 0xFF) << 24)), 1, 3,

        -4,
};

const s32 *const anim_0246[4] = {
    anim_0246__v0_l0,
    anim_0246__v1_l0,
    anim_0246__v2_l0,
    anim_0246__v3_l0,
};

const s32 anim_0249__v0_l0[] = {
    -2, 5, (((u16)16 << 0) | ((u16)0x20 << 16)), -1, 0xB0B9, 20, -6, 0, (((-6 & 0xFF) << 0) | ((-14 & 0xFF) << 8) | ((6 & 0xFF) << 16) | ((16 & 0xFF) << 24)), 2, 0,

        -1, 0xB0B9, 20, 2, 0,

            -1, 0xB0CD, 30, -6, 0, (((-16 & 0xFF) << 0) | ((-14 & 0xFF) << 8) | ((2 & 0xFF) << 16) | ((16 & 0xFF) << 24)), -6, 1, (((-32 & 0xFF) << 0) | ((-12 & 0xFF) << 8) | ((-14 & 0xFF) << 16) | ((16 & 0xFF) << 24)), -5, 126, 2, 1,

                -1, 0xB0EB, 35, -6, 0, (((-6 & 0xFF) << 0) | ((-14 & 0xFF) << 8) | ((6 & 0xFF) << 16) | ((16 & 0xFF) << 24)), -6, 1, (((0 & 0xFF) << 0) | ((0 & 0xFF) << 8) | ((0 & 0xFF) << 16) | ((0 & 0xFF) << 24)), 4, 2,

                    -1, 0xB10E, 30, -6, 0, (((-6 & 0xFF) << 0) | ((-14 & 0xFF) << 8) | ((6 & 0xFF) << 16) | ((16 & 0xFF) << 24)), -6, 1, (((0 & 0xFF) << 0) | ((0 & 0xFF) << 8) | ((0 & 0xFF) << 16) | ((0 & 0xFF) << 24)), 2, 3,

                        -1, 0xB0B9, 20, -6, 0, (((-6 & 0xFF) << 0) | ((-14 & 0xFF) << 8) | ((6 & 0xFF) << 16) | ((16 & 0xFF) << 24)), 2, 0,

                            -4,
};

const s32 anim_0249__v1_l0[] = {
    -2, 5, (((u16)16 << 0) | ((u16)0x20 << 16)), -1, 0xB12C, 20, -6, 0, (((-6 & 0xFF) << 0) | ((-14 & 0xFF) << 8) | ((6 & 0xFF) << 16) | ((16 & 0xFF) << 24)), 2, 4,

        -1, 0xB140, 20, 2, 5,

            -1, 0xB154, 35, -6, 0, (((-17 & 0xFF) << 0) | ((-14 & 0xFF) << 8) | ((6 & 0xFF) << 16) | ((16 & 0xFF) << 24)), -6, 1, (((-32 & 0xFF) << 0) | ((-12 & 0xFF) << 8) | ((-14 & 0xFF) << 16) | ((16 & 0xFF) << 24)), 2, 6,

                -1, 0xB177, 35, -6, 0, (((-17 & 0xFF) << 0) | ((-14 & 0xFF) << 8) | ((6 & 0xFF) << 16) | ((16 & 0xFF) << 24)), -6, 1, (((0 & 0xFF) << 0) | ((0 & 0xFF) << 8) | ((0 & 0xFF) << 16) | ((0 & 0xFF) << 24)), 6, 7,

                    -1, 0xB140, 20, -6, 0, (((-6 & 0xFF) << 0) | ((-14 & 0xFF) << 8) | ((6 & 0xFF) << 16) | ((16 & 0xFF) << 24)), 2, 5,

                        -1, 0xB12C, 20, 2, 4,

                            -4,
};

const s32 *const anim_0249[2] = {
    anim_0249__v0_l0,
    anim_0249__v1_l0,
};

const s32 anim_0250__v0_l0[] = {
    -2, 5, (((u16)16 << 0) | ((u16)0x20 << 16)), -1, 0xB19A, 25, -6, 0, (((-6 & 0xFF) << 0) | ((-14 & 0xFF) << 8) | ((6 & 0xFF) << 16) | ((16 & 0xFF) << 24)), 2, 0,

        -1, 0xB1B3, 25, 2, 1,

            -4,
};

const s32 anim_0250__v1_l0[] = {
    -2, 5, (((u16)16 << 0) | ((u16)0x20 << 16)), -1, 0xB1CC, 28, -6, 0, (((-6 & 0xFF) << 0) | ((-20 & 0xFF) << 8) | ((6 & 0xFF) << 16) | ((2 & 0xFF) << 24)), -6, 1, (((-16 & 0xFF) << 0) | ((-35 & 0xFF) << 8) | ((0 & 0xFF) << 16) | ((16 & 0xFF) << 24)), 6, 2,

        -1, 0xB1E8, 24, -6, 0, (((-6 & 0xFF) << 0) | ((-20 & 0xFF) << 8) | ((6 & 0xFF) << 16) | ((2 & 0xFF) << 24)), -6, 1, (((0 & 0xFF) << 0) | ((0 & 0xFF) << 8) | ((0 & 0xFF) << 16) | ((0 & 0xFF) << 24)), 5, 3,

            -1, 0xB200, 30, 4, 4,

                -1, 0xB21E, 30, 3, 5, -1, 0xB23C, 30, 2, 6,

                    -1, 0xB25A, 30, 2, 7,

                        -1, 0xB278, 30, 2, 8,

                            -3, 15,
};

const s32 anim_0250__v2_l0[] = {
    -2, 5, (((u16)16 << 0) | ((u16)0x20 << 16)), -1, 0xB296, 16, -6, 0, (((-6 & 0xFF) << 0) | ((-6 & 0xFF) << 8) | ((6 & 0xFF) << 16) | ((16 & 0xFF) << 24)), 1, 9,

        -1, 0xB2A6, 16, 1, 10,

            -1, 0xB296, 16, 1, 9,

                -4,
};

const s32 anim_0250__v3_l0[] = {
    -2, 6, (((u16)16 << 0) | ((u16)0x40 << 16)), -1, 0xB2B6, 6, 2, 11,

        -1, 0xB2BC, 12, 2, 12,

            -1, 0xB2C8, 20, 2, 13,

                -1, 0xB2DC, 20, 2, 14,

                    -1, 0xB2F0, 24, 3, 15,

                        -1, 0xB308, 24, 3, 16,

                            -1, 0xB320, 24, 3, 17,

                                -1, 0xB338, 9, 3, 18,

                                    -4,
};

const s32 *const anim_0250[4] = {
    anim_0250__v0_l0,
    anim_0250__v1_l0,
    anim_0250__v2_l0,
    anim_0250__v3_l0,
};

const s32 anim_0260__v0_l0[] = {
    -2, 5, (((u16)16 << 0) | ((u16)0x20 << 16)), -1, 0xB341, 24, -6, 0, (((-6 & 0xFF) << 0) | ((-8 & 0xFF) << 8) | ((16 & 0xFF) << 16) | ((6 & 0xFF) << 24)), -6, 1, (((-12 & 0xFF) << 0) | ((-12 & 0xFF) << 8) | ((2 & 0xFF) << 16) | ((9 & 0xFF) << 24)), 3, 0,

        -1, 0xB359, 24, 3, 1,

            -3, 19,
};

const s32 *const anim_0260[1] = {
    anim_0260__v0_l0,
};

const s32 anim_0261__v0_l0[] = {
    -2, 5, (((u16)16 << 0) | ((u16)0x20 << 16)), -1, 0xB371, 24, -6, 0, (((-6 & 0xFF) << 0) | ((-8 & 0xFF) << 8) | ((16 & 0xFF) << 16) | ((6 & 0xFF) << 24)), -6, 1, (((-12 & 0xFF) << 0) | ((-12 & 0xFF) << 8) | ((2 & 0xFF) << 16) | ((9 & 0xFF) << 24)), 1, 0,

        -4,
};

const s32 anim_0261__v1_l0[] = {
    -2, 5, (((u16)16 << 0) | ((u16)0x20 << 16)), -1, 0xB389, 24, -6, 0, (((-10 & 0xFF) << 0) | ((-8 & 0xFF) << 8) | ((12 & 0xFF) << 16) | ((6 & 0xFF) << 24)), -6, 1, (((-16 & 0xFF) << 0) | ((-12 & 0xFF) << 8) | ((-2 & 0xFF) << 16) | ((9 & 0xFF) << 24)), 1, 1,

        -4,
};

const s32 anim_0261__v2_l0[] = {
    -2, 5, (((u16)16 << 0) | ((u16)0x20 << 16)), -1, 0xB3A1, 24, -6, 0, (((-14 & 0xFF) << 0) | ((-8 & 0xFF) << 8) | ((8 & 0xFF) << 16) | ((6 & 0xFF) << 24)), -6, 1, (((2 & 0xFF) << 0) | ((-12 & 0xFF) << 8) | ((16 & 0xFF) << 16) | ((9 & 0xFF) << 24)), 1, 2,

        -4,
};

const s32 anim_0261__v3_l0[] = {
    -2, 5, (((u16)16 << 0) | ((u16)0x20 << 16)), -1, 0xB3B9, 24, -6, 0, (((-18 & 0xFF) << 0) | ((-8 & 0xFF) << 8) | ((4 & 0xFF) << 16) | ((6 & 0xFF) << 24)), -6, 1, (((-2 & 0xFF) << 0) | ((-12 & 0xFF) << 8) | ((12 & 0xFF) << 16) | ((9 & 0xFF) << 24)), 1, 3,

        -4,
};

const s32 *const anim_0261[4] = {
    anim_0261__v0_l0,
    anim_0261__v1_l0,
    anim_0261__v2_l0,
    anim_0261__v3_l0,
};

const s32 anim_0262__v0_l0[] = {
    -2, 5, (((u16)16 << 0) | ((u16)0x20 << 16)), -1, 0xB3D1, 15, -6, 0, (((-5 & 0xFF) << 0) | ((-6 & 0xFF) << 8) | ((21 & 0xFF) << 16) | ((7 & 0xFF) << 24)), -6, 1, (((-11 & 0xFF) << 0) | ((-10 & 0xFF) << 8) | ((2 & 0xFF) << 16) | ((10 & 0xFF) << 24)), 2, 0,

        -1, 0xB3E0, 15, 2, 1,

            -3, 19,
};

const s32 *const anim_0262[1] = {
    anim_0262__v0_l0,
};

const s32 anim_0263__v0_l0[] = {
    -2, 5, (((u16)16 << 0) | ((u16)0x20 << 16)), -1, 0xB3EF, 20, -6, 0, (((-6 & 0xFF) << 0) | ((-16 & 0xFF) << 8) | ((6 & 0xFF) << 16) | ((14 & 0xFF) << 24)), 3, 0,

        -1, 0xB403, 25, 3, 1,

            -1, 0xB41C, 30, 3, 2,

                -1, 0xB43A, 30, 3, 3,

                    -1, 0xB458, 30, 3, 4,

                        -1, 0xB476, 30, 3, 5, -1, 0xB494, 30, 3, 6,

                            -3, 5,
};

const s32 anim_0263__v1_l0[] = {
    -2, 5, (((u16)16 << 0) | ((u16)0x20 << 16)), -1, 0xB4B2, 30, -6, 0, (((-6 & 0xFF) << 0) | ((-16 & 0xFF) << 8) | ((6 & 0xFF) << 16) | ((14 & 0xFF) << 24)), 3, 7,

        -1, 0xB4D0, 16, -6, 0, (((-6 & 0xFF) << 0) | ((-6 & 0xFF) << 8) | ((6 & 0xFF) << 16) | ((16 & 0xFF) << 24)), 1, 8,

            -1, 0xB4E0, 16, 1, 9,

                -1, 0xB4F0, 16, 6, 10,

                    -1, 0xB4E0, 16, 1, 9,

                        -1, 0xB4D0, 16, 1, 8,

                            -4,
};

const s32 *const anim_0263[2] = {
    anim_0263__v0_l0,
    anim_0263__v1_l0,
};

const s32 anim_0264__v0_l0[] = {
    -2, 5, (((u16)16 << 0) | ((u16)0x20 << 16)), -1, 0xB500, 30, -6, 0, (((-2 & 0xFF) << 0) | ((-14 & 0xFF) << 8) | ((10 & 0xFF) << 16) | ((10 & 0xFF) << 24)), 2, 0,

        -1, 0xB51E, 20, -6, 0, (((-6 & 0xFF) << 0) | ((-10 & 0xFF) << 8) | ((10 & 0xFF) << 16) | ((15 & 0xFF) << 24)), 2, 1,

            -1, 0xB532, 16, -6, 0, (((-9 & 0xFF) << 0) | ((-9 & 0xFF) << 8) | ((-9 & 0xFF) << 16) | ((-9 & 0xFF) << 24)), 2, 2,

                -4,
};

const s32 *const anim_0264[1] = {
    anim_0264__v0_l0,
};

const s32 anim_0265__v0_l0[] = {
    -2, 5, (((u16)16 << 0) | ((u16)0x20 << 16)), -1, 0xB542, 20, -6, 0, (((-6 & 0xFF) << 0) | ((-10 & 0xFF) << 8) | ((10 & 0xFF) << 16) | ((15 & 0xFF) << 24)), 4, 0,

        -1, 0xB556, 24, -5, 125, 4, 1,

            -1, 0xB56E, 20, 4, 2,

                -1, 0xB582, 20, 4, 3,

                    -1, 0xB596, 24, -5, 125, 4, 4,

                        -1, 0xB5AE, 20, 4, 5,

                            -3, 40,
};

const s32 anim_0265__v1_l0[] = {
    -2, 5, (((u16)16 << 0) | ((u16)0x20 << 16)), -1, 0xB5AE, 20, -6, 0, (((-6 & 0xFF) << 0) | ((-10 & 0xFF) << 8) | ((10 & 0xFF) << 16) | ((15 & 0xFF) << 24)), 4, 5,

        -1, 0xB596, 24, 4, 4,

            -1, 0xB582, 20, -5, 125, 4, 3,

                -1, 0xB56E, 20, 4, 2,

                    -1, 0xB556, 24, 4, 1,

                        -1, 0xB542, 20, -5, 125, 4, 0,

                            -3, 40,
};

const s32 anim_0265__v2_l0[] = {
    -2, 5, (((u16)16 << 0) | ((u16)0x20 << 16)), -1, 0xB5C2, 16, -6, 0, (((-6 & 0xFF) << 0) | ((-10 & 0xFF) << 8) | ((10 & 0xFF) << 16) | ((15 & 0xFF) << 24)), 1, 6,

        -4,
};

const s32 anim_0265__v3_l0[] = {
    -2, 5, (((u16)16 << 0) | ((u16)0x20 << 16)), -1, 0xB5D2, 20, -6, 0, (((-9 & 0xFF) << 0) | ((-8 & 0xFF) << 8) | ((7 & 0xFF) << 16) | ((15 & 0xFF) << 24)), 4, 7,

        -1, 0xB5E6, 18, -6, 0, (((-15 & 0xFF) << 0) | ((-16 & 0xFF) << 8) | ((1 & 0xFF) << 16) | ((10 & 0xFF) << 24)), 4, 8,

            -1, 0xB5F8, 24, -6, 0, (((-17 & 0xFF) << 0) | ((-20 & 0xFF) << 8) | ((-7 & 0xFF) << 16) | ((6 & 0xFF) << 24)), 4, 9,

                -1, 0xB610, 24, 4, 10,

                    -1, 0xB628, 20, -6, 0, (((-19 & 0xFF) << 0) | ((-20 & 0xFF) << 8) | ((-7 & 0xFF) << 16) | ((0 & 0xFF) << 24)), 4, 11,

                        -4,
};

const s32 anim_0265__v4_l0[] = {
    -2, 5, (((u16)16 << 0) | ((u16)0x20 << 16)), -1, 0xB63C, 16, -6, 0, (((-6 & 0xFF) << 0) | ((-6 & 0xFF) << 8) | ((6 & 0xFF) << 16) | ((16 & 0xFF) << 24)), 4, 12,

        -1, 0xB64C, 16, 4, 13,

            -4,
};

const s32 *const anim_0265[5] = {
    anim_0265__v0_l0, anim_0265__v1_l0, anim_0265__v2_l0, anim_0265__v3_l0, anim_0265__v4_l0,
};

const s32 anim_0269__v0_l0[] = {
    -2, 5, (((u16)16 << 0) | ((u16)0x20 << 16)), -1, 0xB65C, 30, -6, 0, (((-6 & 0xFF) << 0) | ((-17 & 0xFF) << 8) | ((6 & 0xFF) << 16) | ((9 & 0xFF) << 24)), 6, 0,

        -1, 0xB67A, 24, 4, 1,

            -1, 0xB692, 24, 4, 2,

                -1, 0xB6AA, 24, 6, 3,

                    -1, 0xB6C2, 24, 6, 4,

                        -1, 0xB6DA, 24, 6, 5,

                            -3, 36,
};

const s32 *const anim_0269[1] = {
    anim_0269__v0_l0,
};

const s32 anim_0270__v0_l0[] = {
    -2, 5, (((u16)16 << 0) | ((u16)0x20 << 16)), -1, 0xB6F2, 24, -6, 0, (((-6 & 0xFF) << 0) | ((-17 & 0xFF) << 8) | ((6 & 0xFF) << 16) | ((9 & 0xFF) << 24)), 2, 0,

        -1, 0xB70A, 24, 2, 1,

            -4,
};

const s32 *const anim_0270[1] = {
    anim_0270__v0_l0,
};

const s32 anim_0271__v0_l0[] = {
    -2, 5, (((u16)16 << 0) | ((u16)0x20 << 16)), -1, 0xB722, 30, -6, 0, (((-6 & 0xFF) << 0) | ((-17 & 0xFF) << 8) | ((6 & 0xFF) << 16) | ((9 & 0xFF) << 24)), 6, 0,

        -1, 0xB740, 24, 6, 1,

            -1, 0xB758, 24, 6, 2,

                -1, 0xB770, 24, 6, 3,

                    -1, 0xB788, 24, 6, 4,

                        -1, 0xB7A0, 24, 6, 5,

                            -3, 36,
};

const s32 *const anim_0271[1] = {
    anim_0271__v0_l0,
};

const s32 anim_0280__v0_l0[] = {
    -2, 5, (((u16)16 << 0) | ((u16)0x20 << 16)), -1, 0xB7B8, 30, -6, 0, (((-4 & 0xFF) << 0) | ((-14 & 0xFF) << 8) | ((8 & 0xFF) << 16) | ((16 & 0xFF) << 24)), 4, 0,

        -1, 0xB7D6, 36, 4, 1,

            -1, 0xB7FA, 36, 4, 2,

                -1, 0xB81E, 25, 4, 3,

                    -3, 26,
};

const s32 *const anim_0280[1] = {
    anim_0280__v0_l0,
};

const s32 anim_0281__v0_l0[] = {
    -2, 5, (((u16)16 << 0) | ((u16)0x20 << 16)), -1, 0xB837, 30, -6, 0, (((-6 & 0xFF) << 0) | ((-14 & 0xFF) << 8) | ((6 & 0xFF) << 16) | ((16 & 0xFF) << 24)), 4, 0,

        -1, 0xB855, 36, 4, 1,

            -1, 0xB879, 36, 4, 2,

                -1, 0xB89D, 24, 4, 3,

                    -3, 26,
};

const s32 *const anim_0281[1] = {
    anim_0281__v0_l0,
};

const s32 anim_0282__v0_l0[] = {
    -2, 5, (((u16)16 << 0) | ((u16)0x20 << 16)), -1, 0xB8B5, 25, -6, 0, (((-6 & 0xFF) << 0) | ((-16 & 0xFF) << 8) | ((6 & 0xFF) << 16) | ((2 & 0xFF) << 24)), 2, 0,

        -1, 0xB8CE, 25, 2, 1,

            -1, 0xB8E7, 25, 2, 2,

                -1, 0xB900, 20, 2, 3,

                    -3, 26,
};

const s32 *const anim_0282[1] = {
    anim_0282__v0_l0,
};

const s32 anim_0284__v0_l0[] = {
    -2, 5, (((u16)16 << 0) | ((u16)0x90 << 16)), -1, 0xB914, 24, 3, 0,

        -1, 0xB92C, 24, 3, 1,

            -3, 13,
};

const s32 *const anim_0284[1] = {
    anim_0284__v0_l0,
};

const s32 anim_0285__v0_l0[] = {
    -2, 5, (((u16)16 << 0) | ((u16)0x90 << 16)), -1, 0xB944, 16, 2, 0,

        -1, 0xB954, 16, 2, 1,

            -4,
};

const s32 anim_0285__v1_l0[] = {
    -2, 5, (((u16)16 << 0) | ((u16)0x90 << 16)), -1, 0xB964, 16, 2, 2,

        -4,
};

const s32 *const anim_0285[2] = {
    anim_0285__v0_l0,
    anim_0285__v1_l0,
};

const s32 anim_0286__v0_l0[] = {
    -2, 5, (((u16)16 << 0) | ((u16)0x90 << 16)), -1, 0xB974, 15, 3, 0,

        -1, 0xB983, 20, 3, 1,

            -3, 13,
};

const s32 *const anim_0286[1] = {
    anim_0286__v0_l0,
};

const s32 anim_0287__v0_l0[] = {
    -2, 5, (((u16)16 << 0) | ((u16)0x90 << 16)), -1, 0xB997, 20, 6, 0,

        -1, 0xB9AB, 15, 6, 1,

            -1, 0xB9BA, 20, 6, 2, -1, 0xB9CE, 20, 3, 3,

                -1, 0xB9E2, 20, 3, 4,

                    -3, 10,
};

const s32 *const anim_0287[1] = {
    anim_0287__v0_l0,
};

const s32 anim_0288__v0_l0[] = {
    -2, 5, (((u16)16 << 0) | ((u16)0x90 << 16)), -1, 0xB9F6, 20, 1, 0,

        -4,
};

const s32 anim_0288__v1_l0[] = {
    -2, 5, (((u16)16 << 0) | ((u16)0x90 << 16)), -1, 0xBA0A, 20, 6, 1,

        -1, 0xBA1E, 15, 6, 2,

            -1, 0xBA2D, 15, 40, 3,

                -4,
};

const s32 *const anim_0288[2] = {
    anim_0288__v0_l0,
    anim_0288__v1_l0,
};

const s32 anim_0292__v0_l0[] = {
    -2, 5, (((u16)16 << 0) | ((u16)0x20 << 16)), -1, 0xBA3C, 25, -6, 0, (((-6 & 0xFF) << 0) | ((-14 & 0xFF) << 8) | ((6 & 0xFF) << 16) | ((14 & 0xFF) << 24)), 1, 0,

        -4,
};

const s32 anim_0292__v1_l0[] = {
    -2, 5, (((u16)16 << 0) | ((u16)0x20 << 16)), -1, 0xBA55, 16, -6, 0, (((-6 & 0xFF) << 0) | ((-14 & 0xFF) << 8) | ((6 & 0xFF) << 16) | ((14 & 0xFF) << 24)), 1, 1,

        -4,
};

const s32 anim_0292__v2_l0[] = {
    -2, 5, (((u16)16 << 0) | ((u16)0x20 << 16)), -1, 0xBA65, 16, -6, 0, (((-6 & 0xFF) << 0) | ((-14 & 0xFF) << 8) | ((6 & 0xFF) << 16) | ((14 & 0xFF) << 24)), 1, 2,

        -4,
};

const s32 anim_0292__v3_l0[] = {
    -2, 5, (((u16)16 << 0) | ((u16)0x20 << 16)), -1, 0xBA75, 25, -6, 0, (((-6 & 0xFF) << 0) | ((-14 & 0xFF) << 8) | ((6 & 0xFF) << 16) | ((14 & 0xFF) << 24)), 1, 3,

        -4,
};

const s32 anim_0292__v4_l0[] = {
    -2, 5, (((u16)16 << 0) | ((u16)0x20 << 16)), -1, 0xBA8E, 24, -6, 0, (((-6 & 0xFF) << 0) | ((-14 & 0xFF) << 8) | ((6 & 0xFF) << 16) | ((14 & 0xFF) << 24)), 1, 4,

        -4,
};

const s32 anim_0292__v5_l0[] = {
    -2, 5, (((u16)16 << 0) | ((u16)0x20 << 16)), -1, 0xBAA6, 20, -6, 0, (((-6 & 0xFF) << 0) | ((-14 & 0xFF) << 8) | ((6 & 0xFF) << 16) | ((14 & 0xFF) << 24)), 1, 5,

        -4,
};

const s32 anim_0292__v6_l0[] = {
    -2, 5, (((u16)16 << 0) | ((u16)0x20 << 16)), -1, 0xBABA, 16, -6, 0, (((-6 & 0xFF) << 0) | ((-14 & 0xFF) << 8) | ((6 & 0xFF) << 16) | ((14 & 0xFF) << 24)), 1, 6,

        -4,
};

const s32 anim_0292__v7_l0[] = {
    -2, 5, (((u16)16 << 0) | ((u16)0x20 << 16)), -1, 0xBACA, 25, -6, 0, (((-6 & 0xFF) << 0) | ((-14 & 0xFF) << 8) | ((6 & 0xFF) << 16) | ((14 & 0xFF) << 24)), 1, 7,

        -4,
};

const s32 *const anim_0292[8] = {
    anim_0292__v0_l0, anim_0292__v1_l0, anim_0292__v2_l0, anim_0292__v3_l0,
    anim_0292__v4_l0, anim_0292__v5_l0, anim_0292__v6_l0, anim_0292__v7_l0,
};

const s32 anim_0295__v0_l0[] = {
    -2, 5, (((u16)16 << 0) | ((u16)0x90 << 16)), -1, 0xBAE3, 64, 2, 0,

        -1, 0xBB23, 64, 2, 1,

            -1, 0xBB63, 64, 2, 2,

                -1, 0xBBA3, 64, 2, 3,

                    -3, 23,
};

const s32 *const anim_0295[1] = {
    anim_0295__v0_l0,
};

const s32 anim_0296__v0_l0[] = {
    -2, 5, (((u16)16 << 0) | ((u16)0x20 << 16)), -1, 0xBBE3, 8, 1, 0,

        -1, 0xBBEB, 8, 1, 1,

            -1, 0xBBE3, 8, 1, 0,

                -1, 0xBBF3, 12, 1, 2,

                    -4,
};

const s32 *const anim_0296[1] = {
    anim_0296__v0_l0,
};

const s32 anim_0297__v0_l0[] = {
    -2, 5, (((u16)16 << 0) | ((u16)0x20 << 16)), -1, 0xBBFF, 64, 3, 0,

        -4,
};

const s32 *const anim_0297[1] = {
    anim_0297__v0_l0,
};

const s32 anim_0298__v0_l0[] = {
    -2, 7, (((u16)16 << 0) | ((u16)0x30 << 16)), -1, 0xBC3F, 20, -6, 0, (((-6 & 0xFF) << 0) | ((-12 & 0xFF) << 8) | ((6 & 0xFF) << 16) | ((16 & 0xFF) << 24)), 6, 0,

        -1, 0xBC53, 20, 6, 1,

            -1, 0xBC67, 20, 6, 2,

                -1, 0xBC7B, 20, 6, 3,

                    -1, 0xBC8F, 20, 6, 4,

                        -1, 0xBCA3, 20, 6, 5,

                            -1, 0xBCB7, 20, 6, 6,

                                -1, 0xBCCB, 20, 6, 7,

                                    -1, 0xBC3F, 20, 6, 0,

                                        -1, 0xBCDF, 20, 6, 8,

                                            -1, 0xBCF3, 20, 6, 9,

                                                -1, 0xBD07, 20, 6, 10,

                                                    -1, 0xBC8F, 20, 6, 4,

                                                        -1, 0xBCA3, 20, 6, 5,

                                                            -1, 0xBCB7, 20, 6, 6,

                                                                -1, 0xBCCB, 20, 6, 7,

                                                                    -3, 86,
};

const s32 *const anim_0298[1] = {
    anim_0298__v0_l0,
};

const s32 anim_0299__v0_l0[] = {
    -2, 7, (((u16)16 << 0) | ((u16)0x30 << 16)), -1, 0xBD1B, 30, -6, 0, (((-6 & 0xFF) << 0) | ((-12 & 0xFF) << 8) | ((6 & 0xFF) << 16) | ((16 & 0xFF) << 24)), 20, 0,

        -1, 0xBD39, 20, 4, 1,

            -1, 0xBD4D, 20, -6, 0, (((-6 & 0xFF) << 0) | ((-12 & 0xFF) << 8) | ((6 & 0xFF) << 16) | ((16 & 0xFF) << 24)), 8, 2,

                -1, 0xBD61, 20, 8, 3,

                    -1, 0xBD75, 20, 8, 4,

                        -1, 0xBD61, 20, 8, 3,

                            -1, 0xBD4D, 20, -6, 0, (((-6 & 0xFF) << 0) | ((-12 & 0xFF) << 8) | ((6 & 0xFF) << 16) | ((16 & 0xFF) << 24)), 8, 2,

                                -1, 0xBD61, 20, 8, 3,

                                    -1, 0xBD75, 20, 8, 4,

                                        -1, 0xBD61, 20, 8, 3,

                                            -1, 0xBD4D, 20, -6, 0, (((-6 & 0xFF) << 0) | ((-12 & 0xFF) << 8) | ((6 & 0xFF) << 16) | ((16 & 0xFF) << 24)), 8, 2,

                                                -1, 0xBD61, 20, 8, 3,

                                                    -1, 0xBD75, 20, 8, 4,

                                                        -1, 0xBD61, 20, 8, 3,

                                                            -1, 0xBD89, 20, -6, 0, (((-6 & 0xFF) << 0) | ((-12 & 0xFF) << 8) | ((6 & 0xFF) << 16) | ((16 & 0xFF) << 24)), 8, 5,

                                                                -1, 0xBD9D, 20, 8, 6,

                                                                    -1, 0xBDB1, 20, 8, 7,

                                                                        -1, 0xBD9D, 20, 60, 6,

                                                                            -1, 0xBDC5, 16, -6, 0, (((-6 & 0xFF) << 0) | ((-12 & 0xFF) << 8) | ((6 & 0xFF) << 16) | ((16 & 0xFF) << 24)), 4, 8,

                                                                                -1, 0xBDD5, 20, 8, 9,

                                                                                    -1, 0xBDE9, 16, 10, 10,

                                                                                        -1, 0xBDF9, 16, 8, 11,

                                                                                            -1, 0xBE09, 16, 4, 12,

                                                                                                -1, 0xBE19, 16, 4, 13,

                                                                                                    -1, 0xBE29, 16, 4, 14,

                                                                                                        -1, 0xBE39, 16, 4, 15,

                                                                                                            -1, 0xBE29, 16, 4, 14,


                                                                                                                -1, 0xBE49, 16, 4, 16,


                                                                                                                    -1, 0xBE29, 16, 4, 14,



                                                                                                                        -1, 0xBE39, 16, 60, 15,



                                                                                                                            -1, 0xBE59, 20, 8, 17,


                                                                                                                                -1, 0xBE6D, 16, 6, 18,


                                                                                                                                    -1, 0xBE7D, 20, 6, 19,



                                                                                                                                        -1, 0xBE91, 20, 6, 20,



                                                                                                                                            -1, 0xBEA5, 20, 6, 21,



                                                                                                                                                -1, 0xBEB9, 16, 60, 22,



                                                                                                                                                    -1, 0xBEC9, 16, -6, 0, (((-6 & 0xFF) << 0) | ((-12 & 0xFF) << 8) | ((6 & 0xFF) << 16) | ((16 & 0xFF) << 24)), 2, 23,






                                                                                                                                                        -1, 0xBED9, 20, 5, 24,



                                                                                                                                                            -1, 0xBEED, 20, 5, 25,



                                                                                                                                                                -1, 0xBF01, 20, 5, 26,



                                                                                                                                                                    -1, 0xBEED, 20, 5, 25,



                                                                                                                                                                        -1, 0xBF01, 20,


                                                                                                                                                                            5, 26,



                                                                                                                                                                                -1, 0xBEED, 20,


                                                                                                                                                                                    5, 25,



                                                                                                                                                                                        -1, 0xBF01, 20, 30, 26,

                                                                                                                                                                                            -1, 0xBF15, 16,


                                                                                                                                                                                                2, 27,


                                                                                                                                                                                                    -1, 0xBF25, 30,


                                                                                                                                                                                                        -6, 0, (((-6 & 0xFF) << 0) | ((-12 & 0xFF) << 8) | ((6 & 0xFF) << 16) | ((16 & 0xFF) << 24)),



                                                                                                                                                                                                            5, 28,



                                                                                                                                                                                                                -1, 0xBF43, 30,

                                                                                                                                                                                                                    4, 29,



                                                                                                                                                                                                                        -1, 0xBF61, 20, 5, 30,


                                                                                                                                                                                                                            -1, 0xBF43, 30,


                                                                                                                                                                                                                                4, 29,



                                                                                                                                                                                                                                    -3, 23,

};

const s32 *const anim_0299[1] = {
    anim_0299__v0_l0,
};

const s32 anim_0300__v0_l0[] = {
    -2, 7, (((u16)16 << 0) | ((u16)0x30 << 16)), -1, 0xBF75, 20, -6, 0, (((-6 & 0xFF) << 0) | ((-12 & 0xFF) << 8) | ((6 & 0xFF) << 16) | ((16 & 0xFF) << 24)), 2, 0,

        -1, 0xBF89, 15, 2, 1, -1, 0xBF98, 15, -6, 0, (((-6 & 0xFF) << 0) | ((-12 & 0xFF) << 8) | ((6 & 0xFF) << 16) | ((16 & 0xFF) << 24)), 12, 2,

            -1, 0xBFA7, 15, 4, 3,

                -1, 0xBFB6, 15, 4, 4,

                    -1, 0xBFA7, 15, 4, 3,

                        -3, 23,
};

const s32 anim_0300__v1_l0[] = {
    -2, 7, (((u16)16 << 0) | ((u16)0x30 << 16)), -1, 0xBF89, 15, 1, 1,

        -1, 0xBF75, 20, -6, 0, (((-6 & 0xFF) << 0) | ((-12 & 0xFF) << 8) | ((6 & 0xFF) << 16) | ((16 & 0xFF) << 24)), 1, 0,

            -4,
};

const s32 *const anim_0300[2] = {
    anim_0300__v0_l0,
    anim_0300__v1_l0,
};

const s32 anim_0301__v0_l0[] = {
    -2, 7, (((u16)16 << 0) | ((u16)0x30 << 16)), -1, 0xBFC5, 16, -6, 0, (((-6 & 0xFF) << 0) | ((-6 & 0xFF) << 8) | ((6 & 0xFF) << 16) | ((16 & 0xFF) << 24)), 1, 0,

        -1, 0xBFD5, 16, 1, 1,

            -1, 0xBFE5, 16, 1, 2,

                -4,
};

const s32 anim_0301__v1_l0[] = {
    -2, 7, (((u16)16 << 0) | ((u16)0x30 << 16)), -1, 0xBFF5, 16, -6, 0, (((-6 & 0xFF) << 0) | ((-6 & 0xFF) << 8) | ((6 & 0xFF) << 16) | ((16 & 0xFF) << 24)), 1, 3,

        -1, 0xC005, 16, 1, 4,

            -4,
};

const s32 *const anim_0301[2] = {
    anim_0301__v0_l0,
    anim_0301__v1_l0,
};

const s32 anim_0302__v0_l0[] = {
    -2, 7, (((u16)16 << 0) | ((u16)0x30 << 16)), -1, 0xC015, 64, -6, 0, (((-6 & 0xFF) << 0) | ((-12 & 0xFF) << 8) | ((6 & 0xFF) << 16) | ((16 & 0xFF) << 24)), 3, 0,

        -1, 0xC055, 64, 3, 1,

            -1, 0xC095, 64, 3, 2,

                -1, 0xC0D5, 64, 3, 3,

                    -1, 0xC115, 64, 3, 4,

                        -1, 0xC155, 64, 3, 5,

                            -1, 0xC195, 64, 3, 6,

                                -1, 0xC1D5, 64, 3, 7,

                                    -1, 0xC015, 64, 3, 0,

                                        -1, 0xC215, 64, 3, 8,

                                            -1, 0xC255, 64, 3, 9,

                                                -1, 0xC295, 64, 3, 10,

                                                    -1, 0xC115, 64, 3, 4,

                                                        -1, 0xC155, 64, 3, 5,

                                                            -1, 0xC195, 64, 3, 6,

                                                                -1, 0xC1D5, 64, 3, 7,

                                                                    -3, 86,
};

const s32 *const anim_0302[1] = {
    anim_0302__v0_l0,
};

const s32 anim_0303__v0_l0[] = {
    -2, 7, (((u16)16 << 0) | ((u16)0x30 << 16)), -1, 0xC2D5, 64, -6, 0, (((-6 & 0xFF) << 0) | ((-12 & 0xFF) << 8) | ((6 & 0xFF) << 16) | ((16 & 0xFF) << 24)), 2, 0,

        -1, 0xC315, 64, 2, 1,

            -1, 0xC355, 64, 2, 2,

                -1, 0xC395, 64, 2, 3,

                    -1, 0xC3D5, 64, 2, 4,

                        -1, 0xC415, 64, 2, 5,

                            -3, 36,
};

const s32 *const anim_0303[1] = {
    anim_0303__v0_l0,
};

const s32 anim_0304__v0_l0[] = {
    -2, 7, (((u16)16 << 0) | ((u16)0x30 << 16)), -1, 0xC455, 20, -6, 0, (((-6 & 0xFF) << 0) | ((-12 & 0xFF) << 8) | ((6 & 0xFF) << 16) | ((16 & 0xFF) << 24)), 1, 0,

        -1, 0xC469, 20, 1, 1,

            -4,
};

const s32 *const anim_0304[1] = {
    anim_0304__v0_l0,
};

const s32 anim_0305__v0_l0[] = {
    -2, 7, (((u16)16 << 0) | ((u16)0x30 << 16)), -1, 0xC47D, 16, -6, 0, (((-6 & 0xFF) << 0) | ((-12 & 0xFF) << 8) | ((6 & 0xFF) << 16) | ((16 & 0xFF) << 24)), 1, 0,

        -1, 0xC48D, 20, 1, 1,

            -1, 0xC4A1, 20, 1, 2,

                -1, 0xC4B5, 16, 1, 3,

                    -4,
};

const s32 *const anim_0305[1] = {
    anim_0305__v0_l0,
};

const s32 anim_0306__v0_l0[] = {
    -2, 7, (((u16)16 << 0) | ((u16)0x30 << 16)), -1, 0xC4C5, 12, -6, 0, (((-8 & 0xFF) << 0) | ((-6 & 0xFF) << 8) | ((8 & 0xFF) << 16) | ((10 & 0xFF) << 24)), -5, 133, 2, 0,

        -1, 0xC4D1, 16, 2, 1,

            -1, 0xC4E1, 12, 2, 2,

                -1, 0xC4ED, 16, 2, 3,

                    -3, 28,
};

const s32 *const anim_0306[1] = {
    anim_0306__v0_l0,
};

const s32 anim_0307__v0_l0[] = {
    -2, 7, (((u16)16 << 0) | ((u16)0x30 << 16)), -1, 0xC4FD, 20, -6, 0, (((-6 & 0xFF) << 0) | ((-12 & 0xFF) << 8) | ((6 & 0xFF) << 16) | ((16 & 0xFF) << 24)), 2, 0, -1, 0xC511, 20, 2, 1,

        -1, 0xC525, 20, 2, 2,

            -3, 10,
};

const s32 anim_0307__v1_l0[] = {
    -2, 7, (((u16)16 << 0) | ((u16)0x30 << 16)), -1, 0xC539, 16, -6, 0, (((-6 & 0xFF) << 0) | ((-12 & 0xFF) << 8) | ((6 & 0xFF) << 16) | ((16 & 0xFF) << 24)), 2, 3,

        -4,
};

const s32 *const anim_0307[2] = {
    anim_0307__v0_l0,
    anim_0307__v1_l0,
};

const s32 anim_0308__v0_l0[] = {
    -2, 7, (((u16)16 << 0) | ((u16)0x30 << 16)), -1, 0xC549, 24, -6, 0, (((-6 & 0xFF) << 0) | ((-18 & 0xFF) << 8) | ((6 & 0xFF) << 16) | ((8 & 0xFF) << 24)), 3, 0,

        -1, 0xC561, 24, 3, 1,

            -1, 0xC579, 24, 3, 2,

                -3, 21,
};

const s32 anim_0308__v1_l0[] = {
    -2, 7, (((u16)16 << 0) | ((u16)0x30 << 16)), -1, 0xC591, 20, -6, 0, (((-6 & 0xFF) << 0) | ((-18 & 0xFF) << 8) | ((6 & 0xFF) << 16) | ((8 & 0xFF) << 24)), 3, 3,

        -1, 0xC5A5, 20, 3, 4,

            -1, 0xC5B9, 20, 3, 5,

                -1, 0xC5CD, 20, 4, 6,

                    -1, 0xC5E1, 20, 4, 7,

                        -1, 0xC5F5, 20, 4, 8,

                            -4,
};

const s32 anim_0308__v2_l0[] = {
    -2, 7, (((u16)16 << 0) | ((u16)0x30 << 16)), -1, 0xC609, 30, -6, 0, (((-6 & 0xFF) << 0) | ((-18 & 0xFF) << 8) | ((6 & 0xFF) << 16) | ((8 & 0xFF) << 24)), 3, 9,

        -1, 0xC627, 30, 3, 10,

            -1, 0xC645, 30, 3, 11,

                -3, 21,
};

const s32 anim_0308__v3_l0[] = {
    -2, 7, (((u16)16 << 0) | ((u16)0x30 << 16)), -1, 0xC663, 16, 2, 12,

        -1, 0xC673, 16, 1, 13,

            -1, 0xC683, 16, 1, 14,

                -4,
};

const s32 *const anim_0308[4] = {
    anim_0308__v0_l0,
    anim_0308__v1_l0,
    anim_0308__v2_l0,
    anim_0308__v3_l0,
};

const s32 anim_0309__v0_l0[] = {
    -2, 7, (((u16)16 << 0) | ((u16)0x30 << 16)), -1, 0xC693, 20, -6, 0, (((-6 & 0xFF) << 0) | ((-12 & 0xFF) << 8) | ((6 & 0xFF) << 16) | ((14 & 0xFF) << 24)), 4, 0,

        -1, 0xC6A7, 15, 4, 1,

            -1, 0xC6B6, 12, 4, 2,

                -1, 0xC6C2, 16, 4, 3,

                    -1, 0xC6D2, 16, 4, 4,

                        -1, 0xC6E2, 12, 4, 5,

                            -1, 0xC6EE, 16, 4, 6,

                                -1, 0xC6FE, 16, 4, 7,

                                    -1, 0xC70E, 16, 4, 8,

                                        -1, 0xC71E, 25, 4, 9,

                                            -1, 0xC737, 20, 4, 10,

                                                -4,
};

const s32 *const anim_0309[1] = {
    anim_0309__v0_l0,
};

const s32 anim_0310__v0_l0[] = {
    -2, 7, (((u16)16 << 0) | ((u16)0x30 << 16)), -1, 0xC74B, 20, -6, 0, (((-6 & 0xFF) << 0) | ((-12 & 0xFF) << 8) | ((6 & 0xFF) << 16) | ((16 & 0xFF) << 24)), 4, 0, -1, 0xC75F, 20, -6, 0, (((-6 & 0xFF) << 0) | ((-12 & 0xFF) << 8) | ((6 & 0xFF) << 16) | ((16 & 0xFF) << 24)),
        7, 1,

            -1, 0xC773, 20, 7, 2,

                -1, 0xC787, 20, 7, 3,

                    -1, 0xC79B, 16, 7, 4,

                        -1, 0xC7AB, 16, 7, 5,

                            -1, 0xC7BB, 16, 7, 6,

                                -1, 0xC7CB, 16, 7, 7,

                                    -1, 0xC7DB, 16, 7, 8,

                                        -3, 43,
};

const s32 anim_0310__v1_l0[] = {
    -2, 7, (((u16)16 << 0) | ((u16)0x30 << 16)), -1, 0xC74B, 20, -6, 0, (((-6 & 0xFF) << 0) | ((-12 & 0xFF) << 8) | ((6 & 0xFF) << 16) | ((16 & 0xFF) << 24)), 4, 0,

        -4,
};

const s32 *const anim_0310[2] = {
    anim_0310__v0_l0,
    anim_0310__v1_l0,
};

const s32 anim_0311__v0_l0[] = {
    -2, 7, (((u16)16 << 0) | ((u16)0x30 << 16)), -1, 0xC7EB, 20, -6, 0, (((-3 & 0xFF) << 0) | ((-12 & 0xFF) << 8) | ((9 & 0xFF) << 16) | ((16 & 0xFF) << 24)), 2, 0,

        -1, 0xC7FF, 16, 2, 1,

            -1, 0xC80F, 16, 2, 2, -1, 0xC81F, 20, -6, 0, (((-3 & 0xFF) << 0) | ((-12 & 0xFF) << 8) | ((9 & 0xFF) << 16) | ((16 & 0xFF) << 24)), 5, 3,

                -1, 0xC833, 20, 5, 4,

                    -1, 0xC847, 20, 5, 5,

                        -1, 0xC833, 20, 5, 4,

                            -3, 23,
};

const s32 anim_0311__v1_l0[] = {
    -2, 7, (((u16)16 << 0) | ((u16)0x30 << 16)), -1, 0xC85B, 16, -6, 0, (((-6 & 0xFF) << 0) | ((-12 & 0xFF) << 8) | ((6 & 0xFF) << 16) | ((16 & 0xFF) << 24)), 2, 6,

        -1, 0xC86B, 16, 2, 7,

            -1, 0xC87B, 20, -6, 0, (((-69 & 0xFF) << 0) | ((6 & 0xFF) << 8) | ((-69 & 0xFF) << 16) | ((6 & 0xFF) << 24)), 2, 8,

                -4,
};

const s32 *const anim_0311[2] = {
    anim_0311__v0_l0,
    anim_0311__v1_l0,
};

const s32 anim_0312__v0_l0[] = {
    -2, 7, (((u16)16 << 0) | ((u16)0x30 << 16)), -1, 0xC88F, 15, -6, 0, (((-5 & 0xFF) << 0) | ((-12 & 0xFF) << 8) | ((7 & 0xFF) << 16) | ((16 & 0xFF) << 24)), 1, 0,

        -1, 0xC89E, 15, -6, 0, (((-63 & 0xFF) << 0) | ((-41 & 0xFF) << 8) | ((-63 & 0xFF) << 16) | ((-41 & 0xFF) << 24)), 1, 1,

            -1, 0xC8AD, 15, 2, 2, -1, 0xC8BC, 15, -6, 0, (((0 & 0xFF) << 0) | ((-12 & 0xFF) << 8) | ((12 & 0xFF) << 16) | ((16 & 0xFF) << 24)), 15, 3,

                -1, 0xC8CB, 15, 5, 4,

                    -1, 0xC8DA, 15, 5, 5,

                        -1, 0xC8CB, 15, 5, 4,

                            -3, 23,
};

const s32 anim_0312__v1_l0[] = {
    -2, 7, (((u16)16 << 0) | ((u16)0x30 << 16)), -1, 0xC8E9, 15, -6, 0, (((-4 & 0xFF) << 0) | ((-12 & 0xFF) << 8) | ((8 & 0xFF) << 16) | ((16 & 0xFF) << 24)), 2, 6,

        -1, 0xC8F8, 15, 1, 7,

            -1, 0xC907, 15, 1, 8,

                -4,
};

const s32 *const anim_0312[2] = {
    anim_0312__v0_l0,
    anim_0312__v1_l0,
};

const s32 anim_0315__v0_l0[] = {
    -2, 7, (((u16)16 << 0) | ((u16)0x30 << 16)), -1, 0xC916, 20, -6, 0, (((-6 & 0xFF) << 0) | ((-12 & 0xFF) << 8) | ((6 & 0xFF) << 16) | ((16 & 0xFF) << 24)), -5, 191, 6, 0,

        -1, 0xC92A, 15, 6, 1,

            -4,
};

const s32 *const anim_0315[1] = {
    anim_0315__v0_l0,
};

const s32 anim_0317__v0_l0[] = {
    -2, 7, (((u16)16 << 0) | ((u16)0x30 << 16)), -1, 0xC939, 20, -6, 0, (((-6 & 0xFF) << 0) | ((-12 & 0xFF) << 8) | ((6 & 0xFF) << 16) | ((16 & 0xFF) << 24)), 3, 0,

        -1, 0xC94D, 20, 3, 1,

            -1, 0xC961, 16, 3, 2,

                -1, 0xC971, 16, 3, 3,

                    -4,
};

const s32 *const anim_0317[1] = {
    anim_0317__v0_l0,
};

const s32 anim_0319__v0_l0[] = {
    -2, 7, (((u16)16 << 0) | ((u16)0x30 << 16)), -1, 0xC981, 20, 3, 0,

        -1, 0xC995, 30, 3, 1,

            -1, 0xC9B3, 30, 2, 2, -1, 0xC9D1, 20, 3, 3,

                -1, 0xC9E5, 20, 3, 4,

                    -3, 10,
};

const s32 *const anim_0319[1] = {
    anim_0319__v0_l0,
};

const s32 anim_0320__v0_l0[] = {
    -2, 7, (((u16)16 << 0) | ((u16)0x30 << 16)), -1, 0xC9F9, 20, 3, 0,

        -1, 0xCA0D, 20, 3, 1,

            -1, 0xCA21, 16, 3, 2,

                -1, 0xCA31, 16, 3, 3, -1, 0xCA41, 16, 3, 4,

                    -1, 0xCA51, 20, 3, 5,

                        -1, 0xCA65, 16, 3, 6,

                            -1, 0xCA75, 16, 3, 7,

                                -1, 0xCA85, 16, 3, 8,

                                    -1, 0xCA95, 20, 3, 9,

                                        -1, 0xCAA9, 16, 3, 10,

                                            -1, 0xCAB9, 16, 3, 11,

                                                -1, 0xCAC9, 16, 3, 12,

                                                    -1, 0xCAD9, 20, 3, 13,

                                                        -1, 0xCAED, 16, 3, 14,

                                                            -1, 0xCA75, 16, 3, 7,

                                                                -1, 0xCA85, 16, 3, 8,

                                                                    -1, 0xCA95, 20, 3, 9,

                                                                        -1, 0xCAA9, 16, 3, 10,

                                                                            -1, 0xCAB9, 16, 3, 11,

                                                                                -3, 80,
};

const s32 *const anim_0320[1] = {
    anim_0320__v0_l0,
};

const s32 anim_0321__v0_l0[] = {
    -2, 7, (((u16)16 << 0) | ((u16)0x30 << 16)), -1, 0xCAFD, 15, 3, 0,

        -1, 0xCB0C, 15, 3, 1,

            -1, 0xCB1B, 20, 4, 2,

                -1, 0xCB2F, 20, 4, 3,

                    -1, 0xCB43, 20, 4, 4,

                        -1, 0xCB57, 20, 4, 5,

                            -1, 0xCB6B, 20, 4, 6,

                                -1, 0xCB7F, 15, 4, 7,

                                    -1, 0xCB8E, 20, 4, 8,

                                        -1, 0xCBA2, 20, 4, 9,

                                            -1, 0xCBB6, 20, 4, 10,

                                                -1, 0xCBCA, 20, 4, 11,

                                                    -1, 0xCBDE, 20, 4, 12,

                                                        -1, 0xCBF2, 15, 4, 13,

                                                            -1, 0xCB1B, 20, 4, 2,

                                                                -1, 0xCB2F, 20, 4, 3,

                                                                    -1, 0xCB43, 20, 4, 4,

                                                                        -1, 0xCB57, 20, 4, 5,

                                                                            -1, 0xCB6B, 20, 4, 6,

                                                                                -1, 0xCB7F, 15, 4, 7,

                                                                                    -1, 0xCB8E, 20, 4, 8,

                                                                                        -1, 0xCBA2, 20, 4, 9,

                                                                                            -1, 0xCBB6, 20, 4, 10,

                                                                                                -1, 0xCBCA, 20, 4, 11,

                                                                                                    -1, 0xCBDE, 20, 4, 12,

                                                                                                        -1, 0xCBF2, 15, 4, 13,

                                                                                                            -1, 0xCC01, 16, 4, 14,


                                                                                                                -1, 0xCC11, 15, 4, 15,


                                                                                                                    -1, 0xCC20, 12, 4, 16,



                                                                                                                        -1, 0xCC2C, 15, 4, 17,




                                                                                                                            -1, 0xCC3B, 16, 4, 18,




                                                                                                                                -1, 0xCC4B, 20, 4, 19,


                                                                                                                                    -1, 0xCC5F, 25, 4, 20,



                                                                                                                                        -1, 0xCC78, 16, 4, 21,



                                                                                                                                            -1, 0xCC88, 16, 4, 22,



                                                                                                                                                -1, 0xCC98, 16, 4, 23,



                                                                                                                                                    -1, 0xCCA8, 12, 4, 24,



                                                                                                                                                        -1, 0xCCB4, 12, 4, 25,



                                                                                                                                                            -1, 0xCCC0, 12, 8, 26,



                                                                                                                                                                -1, 0xCCCC, 20, 3, 27,



                                                                                                                                                                    -1, 0xCCE0, 20, 3, 28,



                                                                                                                                                                        -1, 0xCCF4, 16,


                                                                                                                                                                            30, 29,



                                                                                                                                                                                -4,
};

const s32 *const anim_0321[1] = {
    anim_0321__v0_l0,
};

const s32 anim_0322__v0_l0[] = {
    -2, 7, (((u16)16 << 0) | ((u16)0x30 << 16)), -1, 0xCD04, 12, 2, 0,

        -1, 0xCD10, 20, 5, 1,

            -1, 0xCD24, 16, 5, 2,

                -1, 0xCD34, 16, 5, 3,

                    -1, 0xCD44, 12, 20, 4,

                        -1, 0xCD50, 16, 2, 5,

                            -1, 0xCD60, 24, 4, 6,

                                -1, 0xCD78, 24, 4, 7,

                                    -1, 0xCD90, 24, 4, 8,

                                        -1, 0xCD78, 24, 4, 7,

                                            -1, 0xCD60, 24, 4, 6,

                                                -1, 0xCD78, 24, 4, 7,

                                                    -1, 0xCD90, 24, 4, 8,

                                                        -1, 0xCD78, 24, 4, 7,

                                                            -4,
};

const s32 anim_0322__v1_l0[] = {
    -2, 7, (((u16)16 << 0) | ((u16)0x30 << 16)), -1, 0xCDA8, 25, 2, 9,

        -4,
};

const s32 *const anim_0322[2] = {
    anim_0322__v0_l0,
    anim_0322__v1_l0,
};

const s32 anim_0323__v0_l0[] = {
    -2, 7, (((u16)16 << 0) | ((u16)0x90 << 16)), -1, 0xCDC1, 24, 3, 0,

        -1, 0xCDD9, 24, 3, 1,

            -1, 0xCDF1, 24, 3, 2,

                -1, 0xCE09, 24, 3, 3,

                    -3, 23,
};

const s32 *const anim_0323[1] = {
    anim_0323__v0_l0,
};

const s32 anim_0324__v0_l0[] = {
    -2, 7, (((u16)16 << 0) | ((u16)0xA0 << 16)), -1, 0xCE21, 24, 20, 0,

        -1, 0xCE39, 36, 10, 1,

            -1, 0xCE5D, 36, 8, 2,

                -1, 0xCE81, 35, 7, 3,

                    -1, 0xCEA4, 42, 5, 4,

                        -1, 0xCECE, 30, 3, 5, -1, 0xCEEC, 30, 2, 6,

                            -1, 0xCF0A, 30, 2, 7,

                                -1, 0xCF28, 30, 2, 8,

                                    -3, 15,
};

const s32 *const anim_0324[1] = {
    anim_0324__v0_l0,
};

const s32 anim_0325__v0_l0[] = {
    -2, 7, (((u16)16 << 0) | ((u16)0x30 << 16)), -1, 0xCF46, 64, -6, 0, (((-10 & 0xFF) << 0) | ((-10 & 0xFF) << 8) | ((10 & 0xFF) << 16) | ((10 & 0xFF) << 24)), 2, 0,

        -1, 0xCF86, 64, 2, 1,

            -3, 16,
};

const s32 anim_0325__v1_l0[] = {
    -2, 7, (((u16)16 << 0) | ((u16)0x30 << 16)), -1, 0xCFC6, 64, -6, 0, (((-10 & 0xFF) << 0) | ((-10 & 0xFF) << 8) | ((10 & 0xFF) << 16) | ((10 & 0xFF) << 24)), 2, 2,

        -1, 0xD006, 64, 2, 3,

            -3, 16,
};

const s32 anim_0325__v2_l0[] = {
    -2, 7, (((u16)16 << 0) | ((u16)0x30 << 16)), -1, 0xD046, 64, -6, 0, (((-10 & 0xFF) << 0) | ((-10 & 0xFF) << 8) | ((10 & 0xFF) << 16) | ((10 & 0xFF) << 24)), 2, 4,

        -1, 0xD086, 64, 2, 5,

            -3, 16,
};

const s32 anim_0325__v3_l0[] = {
    -2, 7, (((u16)16 << 0) | ((u16)0x30 << 16)), -1, 0xD0C6, 64, -6, 0, (((-10 & 0xFF) << 0) | ((-10 & 0xFF) << 8) | ((10 & 0xFF) << 16) | ((10 & 0xFF) << 24)), 2, 6,

        -1, 0xD106, 64, 2, 7,

            -3, 16,
};

const s32 anim_0325__v4_l0[] = {
    -2, 7, (((u16)16 << 0) | ((u16)0x30 << 16)), -1, 0xD146, 64, -6, 0, (((-10 & 0xFF) << 0) | ((-10 & 0xFF) << 8) | ((10 & 0xFF) << 16) | ((10 & 0xFF) << 24)), 2, 8,

        -1, 0xD186, 64, 2, 9,

            -3, 16,
};

const s32 anim_0325__v5_l0[] = {
    -2, 7, (((u16)16 << 0) | ((u16)0x30 << 16)), -1, 0xD1C6, 64, -6, 0, (((-10 & 0xFF) << 0) | ((-10 & 0xFF) << 8) | ((10 & 0xFF) << 16) | ((10 & 0xFF) << 24)), 2, 10,

        -1, 0xD206, 64, 2, 11,

            -3, 16,
};

const s32 anim_0325__v6_l0[] = {
    -2, 7, (((u16)16 << 0) | ((u16)0x30 << 16)), -1, 0xD246, 64, -6, 0, (((-10 & 0xFF) << 0) | ((-10 & 0xFF) << 8) | ((10 & 0xFF) << 16) | ((10 & 0xFF) << 24)), 2, 12,

        -1, 0xD286, 64, 2, 13,

            -3, 16,
};

const s32 anim_0325__v7_l0[] = {
    -2, 7, (((u16)16 << 0) | ((u16)0x30 << 16)), -1, 0xD2C6, 64, -6, 0, (((-10 & 0xFF) << 0) | ((-10 & 0xFF) << 8) | ((10 & 0xFF) << 16) | ((10 & 0xFF) << 24)), 2, 14,

        -1, 0xD306, 64, 2, 15,

            -3, 16,
};

const s32 anim_0325__v8_l0[] = {
    -2, 7, (((u16)16 << 0) | ((u16)0x30 << 16)), -1, 0xD346, 64, -6, 0, (((-10 & 0xFF) << 0) | ((-10 & 0xFF) << 8) | ((10 & 0xFF) << 16) | ((10 & 0xFF) << 24)), 2, 16,

        -1, 0xD386, 64, 2, 17,

            -3, 16,
};

const s32 *const anim_0325[9] = {
    anim_0325__v0_l0, anim_0325__v1_l0, anim_0325__v2_l0, anim_0325__v3_l0, anim_0325__v4_l0,
    anim_0325__v5_l0, anim_0325__v6_l0, anim_0325__v7_l0, anim_0325__v8_l0,
};

const s32 anim_0326__v0_l0[] = {
    -2, 7, (((u16)16 << 0) | ((u16)0x30 << 16)), -1, 0xD3C6, 64, -6, 0, (((-10 & 0xFF) << 0) | ((-10 & 0xFF) << 8) | ((10 & 0xFF) << 16) | ((10 & 0xFF) << 24)), 2, 0,

        -1, 0xD406, 64, 2, 1,

            -3, 16,
};

const s32 anim_0326__v1_l0[] = {
    -2, 7, (((u16)16 << 0) | ((u16)0x30 << 16)), -1, 0xD446, 64, -6, 0, (((-10 & 0xFF) << 0) | ((-10 & 0xFF) << 8) | ((10 & 0xFF) << 16) | ((10 & 0xFF) << 24)), 2, 2,

        -1, 0xD486, 64, 2, 3,

            -3, 16,
};

const s32 anim_0326__v2_l0[] = {
    -2, 7, (((u16)16 << 0) | ((u16)0x30 << 16)), -1, 0xD4C6, 64, -6, 0, (((-10 & 0xFF) << 0) | ((-10 & 0xFF) << 8) | ((10 & 0xFF) << 16) | ((10 & 0xFF) << 24)), 2, 4,

        -1, 0xD506, 64, 2, 5,

            -3, 16,
};

const s32 anim_0326__v3_l0[] = {
    -2, 7, (((u16)16 << 0) | ((u16)0x30 << 16)), -1, 0xD546, 64, -6, 0, (((-10 & 0xFF) << 0) | ((-10 & 0xFF) << 8) | ((10 & 0xFF) << 16) | ((10 & 0xFF) << 24)), 2, 6,

        -1, 0xD586, 64, 2, 7,

            -3, 16,
};

const s32 anim_0326__v4_l0[] = {
    -2, 7, (((u16)16 << 0) | ((u16)0x30 << 16)), -1, 0xD5C6, 64, -6, 0, (((-10 & 0xFF) << 0) | ((-10 & 0xFF) << 8) | ((10 & 0xFF) << 16) | ((10 & 0xFF) << 24)), 2, 8,

        -1, 0xD606, 64, 2, 9,

            -3, 16,
};

const s32 anim_0326__v5_l0[] = {
    -2, 7, (((u16)16 << 0) | ((u16)0x30 << 16)), -1, 0xD646, 64, -6, 0, (((-10 & 0xFF) << 0) | ((-10 & 0xFF) << 8) | ((10 & 0xFF) << 16) | ((10 & 0xFF) << 24)), 2, 10,

        -1, 0xD686, 64, 2, 11,

            -3, 16,
};

const s32 anim_0326__v6_l0[] = {
    -2, 7, (((u16)16 << 0) | ((u16)0x30 << 16)), -1, 0xD6C6, 64, -6, 0, (((-10 & 0xFF) << 0) | ((-10 & 0xFF) << 8) | ((10 & 0xFF) << 16) | ((10 & 0xFF) << 24)), 2, 12,

        -1, 0xD706, 64, 2, 13,

            -3, 16,
};

const s32 anim_0326__v7_l0[] = {
    -2, 7, (((u16)16 << 0) | ((u16)0x30 << 16)), -1, 0xD746, 64, -6, 0, (((-10 & 0xFF) << 0) | ((-10 & 0xFF) << 8) | ((10 & 0xFF) << 16) | ((10 & 0xFF) << 24)), 2, 14,

        -1, 0xD786, 64, 2, 15,

            -3, 16,
};

const s32 *const anim_0326[8] = {
    anim_0326__v0_l0, anim_0326__v1_l0, anim_0326__v2_l0, anim_0326__v3_l0,
    anim_0326__v4_l0, anim_0326__v5_l0, anim_0326__v6_l0, anim_0326__v7_l0,
};

const s32 anim_0327__v0_l0[] = {
    -2, 7, (((u16)16 << 0) | ((u16)0x30 << 16)), -1, 0xD7C6, 64, -6, 0, (((-10 & 0xFF) << 0) | ((-10 & 0xFF) << 8) | ((10 & 0xFF) << 16) | ((10 & 0xFF) << 24)), 4, 0, -1, 0xD806, 64, -6, 0, (((-10 & 0xFF) << 0) | ((-10 & 0xFF) << 8) | ((10 & 0xFF) << 16) | ((10 & 0xFF) << 24)),
        2, 1,

            -1, 0xD846, 64, 2, 2,

                -3, 13,
};

const s32 anim_0327__v1_l0[] = {
    -2, 7, (((u16)16 << 0) | ((u16)0x30 << 16)), -1, 0xD7C6, 64, -6, 0, (((-10 & 0xFF) << 0) | ((-10 & 0xFF) << 8) | ((10 & 0xFF) << 16) | ((10 & 0xFF) << 24)), 4, 0,

        -4,
};

const s32 *const anim_0327[2] = {
    anim_0327__v0_l0,
    anim_0327__v1_l0,
};

const s32 anim_0328__v0_l0[] = {
    -2, 7, (((u16)16 << 0) | ((u16)0x30 << 16)), -1, 0xD886, 64, -6, 0, (((-20 & 0xFF) << 0) | ((-20 & 0xFF) << 8) | ((20 & 0xFF) << 16) | ((20 & 0xFF) << 24)), 2, 0,

        -1, 0xD8C6, 64, 2, 1,

            -1, 0xD906, 64, 2, 2,

                -1, 0xD946, 64, 2, 3,

                    -1, 0xD986, 64, 2, 4,

                        -1, 0xD9C6, 64, 2, 5,

                            -1, 0xDA06, 64, 2, 6,

                                -1, 0xDA46, 64, 2, 7,

                                    -1, 0xDA86, 64, 2, 8,

                                        -1, 0xDAC6, 64, 2, 9,

                                            -1, 0xDB06, 64, 2, 10,

                                                -3, 61,
};

const s32 *const anim_0328[1] = {
    anim_0328__v0_l0,
};

const s32 anim_0329__v0_l0[] = {
    -2, 7, (((u16)16 << 0) | ((u16)0x30 << 16)), -1, 0xDB46, 64, -6, 0, (((-14 & 0xFF) << 0) | ((-14 & 0xFF) << 8) | ((14 & 0xFF) << 16) | ((14 & 0xFF) << 24)), 1, 0,

        -1, 0xDB86, 64, 2, 1,

            -1, 0xDBC6, 64, 2, 2,

                -1, 0xDC06, 64, 2, 3,

                    -1, 0xDC46, 64, 2, 4,

                        -1, 0xDC86, 64, 2, 5,

                            -1, 0xDCC6, 64, 2, 6,

                                -1, 0xDD06, 64, 2, 7,

                                    -1, 0xDD46, 64, 2, 8,

                                        -1, 0xDD86, 64, 2, 9,

                                            -1, 0xDDC6, 64, 2, 10,

                                                -1, 0xDE06, 64, 2, 11,

                                                    -1, 0xDE46, 64, 2, 12,

                                                        -1, 0xDB86, 64, 2, 1,

                                                            -1, 0xDBC6, 64, 2, 2,

                                                                -1, 0xDC06, 64, 2, 3,

                                                                    -1, 0xDC46, 64, 2, 4,

                                                                        -1, 0xDC86, 64, 2, 5,

                                                                            -1, 0xDCC6, 64, 2, 6,

                                                                                -1, 0xDD06, 64, 2, 7,

                                                                                    -1, 0xDD46, 64, 2, 8,

                                                                                        -1, 0xDD86, 64, 2, 9,

                                                                                            -1, 0xDE86, 64, -6, 0, (((0 & 0xFF) << 0) | ((0 & 0xFF) << 8) | ((0 & 0xFF) << 16) | ((0 & 0xFF) << 24)),
                                                                                                1, 13,

                                                                                                    -4,
};

const s32 *const anim_0329[1] = {
    anim_0329__v0_l0,
};

const s32 anim_0330__v0_l0[] = {
    -2, 7, (((u16)16 << 0) | ((u16)0x30 << 16)), -1, 0xDEC6, 64, -6, 0, (((-10 & 0xFF) << 0) | ((-10 & 0xFF) << 8) | ((10 & 0xFF) << 16) | ((10 & 0xFF) << 24)), 3, 0,

        -1, 0xDF06, 64, 3, 1,

            -1, 0xDF46, 64, 3, 2,

                -1, 0xDF86, 64, 3, 3,

                    -1, 0xDFC6, 64, 3, 4,

                        -1, 0xE006, 64, 3, 5,

                            -1, 0xE046, 64, 3, 6,

                                -3, 41,
};

const s32 *const anim_0330[1] = {
    anim_0330__v0_l0,
};

const s32 anim_0331__v0_l0[] = {
    -2, 7, (((u16)16 << 0) | ((u16)0x30 << 16)), -1, 0xE086, 64, 6, 0,

        -1, 0xE0C6, 64, 3, 1,

            -1, 0xE106, 64, 8, 2,

                -1, 0xE146, 64, 5, 3, -1, 0xE186, 64, 3, 4,

                    -1, 0xE1C6, 64, 3, 5,

                        -3, 10,
};

const s32 anim_0331__v1_l0[] = {
    -2, 7, (((u16)16 << 0) | ((u16)0x30 << 16)), -1, 0xE086, 64, 6, 0,

        -4,
};

const s32 *const anim_0331[2] = {
    anim_0331__v0_l0,
    anim_0331__v1_l0,
};

const s32 anim_0332__v0_l0[] = {
    -2, 7, (((u16)16 << 0) | ((u16)0x30 << 16)), -1, 0xE206, 64, -6, 0, (((-10 & 0xFF) << 0) | ((-10 & 0xFF) << 8) | ((10 & 0xFF) << 16) | ((10 & 0xFF) << 24)), 2, 0,

        -1, 0xE246, 64, 2, 1,

            -3, 16,
};

const s32 anim_0332__v1_l0[] = {
    -2, 7, (((u16)16 << 0) | ((u16)0x30 << 16)), -1, 0xE286, 64, 2, 2,

        -1, 0xE2C6, 64, 2, 3,

            -1, 0xE306, 64, 2, 4,

                -1, 0xE346, 64, 2, 5,

                    -1, 0xE386, 64, 2, 6,

                        -1, 0xE3C6, 64, 2, 7,

                            -3, 33,
};

const s32 *const anim_0332[2] = {
    anim_0332__v0_l0,
    anim_0332__v1_l0,
};

const s32 anim_0333__v0_l0[] = {
    -2, 7, (((u16)16 << 0) | ((u16)0xA0 << 16)), -1, 0xE406, 18, 3, 0,

        -1, 0xE418, 18, 3, 1,

            -3, 13,
};

const s32 anim_0333__v1_l0[] = {
    -2, 7, (((u16)16 << 0) | ((u16)0xA0 << 16)), -1, 0xE42A, 15, 3, 2,

        -1, 0xE439, 20, 3, 3,

            -1, 0xE44D, 16, 3, 4,

                -1, 0xE45D, 16, 15, 5,

                    -1, 0xE46D, 15, 3, 6,

                        -1, 0xE47C, 15, 3, 7,

                            -1, 0xE48B, 15, 3, 8,

                                -1, 0xE49A, 20, 3, 9,

                                    -1, 0xE4AE, 20, 3, 10, -1, 0xE4C2, 25, 25, 11,

                                        -1, 0xE4DB, 25, 6, 12,

                                            -1, 0xE4F4, 25, 6, 13,

                                                -1, 0xE4DB, 25, 6, 12,

                                                    -3, 20,
};

const s32 *const anim_0333[2] = {
    anim_0333__v0_l0,
    anim_0333__v1_l0,
};

const s32 anim_0334__v0_l0[] = {
    -2, 7, (((u16)16 << 0) | ((u16)0x30 << 16)), -1, 0xE50D, 16, -6, 0, (((-6 & 0xFF) << 0) | ((-12 & 0xFF) << 8) | ((6 & 0xFF) << 16) | ((16 & 0xFF) << 24)), 3, 0,

        -1, 0xE51D, 16, 3, 1,

            -1, 0xE52D, 16, 3, 2,

                -1, 0xE53D, 16, 3, 3,

                    -1, 0xE54D, 16, 3, 4,

                        -1, 0xE55D, 16, 3, 5,

                            -1, 0xE56D, 16, 3, 6,

                                -1, 0xE57D, 16, 3, 7,

                                    -3, 46,
};

const s32 anim_0334__v1_l0[] = {
    -2, 7, (((u16)16 << 0) | ((u16)0x30 << 16)), -1, 0xE58D, 20, -6, 0, (((-6 & 0xFF) << 0) | ((-10 & 0xFF) << 8) | ((6 & 0xFF) << 16) | ((10 & 0xFF) << 24)), 3, 8,

        -1, 0xE5A1, 20, 3, 9,

            -1, 0xE5B5, 20, 3, 10,

                -1, 0xE5C9, 20, 3, 11,

                    -1, 0xE5DD, 20, 3, 12,

                        -1, 0xE5F1, 20, 3, 13,

                            -1, 0xE605, 20, 3, 14,

                                -1, 0xE619, 20, 3, 15,

                                    -3, 46,
};

const s32 anim_0334__v2_l0[] = {
    -2, 7, (((u16)16 << 0) | ((u16)0x30 << 16)), -1, 0xE62D, 20, -6, 0, (((-6 & 0xFF) << 0) | ((-18 & 0xFF) << 8) | ((6 & 0xFF) << 16) | ((10 & 0xFF) << 24)), 3, 16,

        -1, 0xE641, 20, 3, 17,

            -1, 0xE655, 20, 3, 18,

                -1, 0xE669, 20, 3, 19,

                    -1, 0xE67D, 20, 3, 20,

                        -1, 0xE691, 20, 3, 21,

                            -1, 0xE6A5, 20, 3, 22,

                                -1, 0xE6B9, 20, 3, 23,

                                    -3, 46,
};

const s32 *const anim_0334[3] = {
    anim_0334__v0_l0,
    anim_0334__v1_l0,
    anim_0334__v2_l0,
};

const s32 anim_0335__v0_l0[] = {
    -2, 7, (((u16)16 << 0) | ((u16)0x30 << 16)), -1, 0xE6CD, 16, -6, 0, (((-6 & 0xFF) << 0) | ((-12 & 0xFF) << 8) | ((6 & 0xFF) << 16) | ((16 & 0xFF) << 24)), 2, 0,

        -1, 0xE6DD, 16, 2, 1,

            -1, 0xE6ED, 16, -6, 0, (((-74 & 0xFF) << 0) | ((29 & 0xFF) << 8) | ((-74 & 0xFF) << 16) | ((29 & 0xFF) << 24)), 4, 2,

                -1, 0xE6FD, 16, -6, 0, (((-6 & 0xFF) << 0) | ((-12 & 0xFF) << 8) | ((6 & 0xFF) << 16) | ((16 & 0xFF) << 24)), 1, 3,

                    -1, 0xE70D, 12, -6, 0, (((-6 & 0xFF) << 0) | ((-12 & 0xFF) << 8) | ((6 & 0xFF) << 16) | ((16 & 0xFF) << 24)), 1, 4, -1, 0xE719, 20, -6, 0, (((-4 & 0xFF) << 0) | ((-12 & 0xFF) << 8) | ((6 & 0xFF) << 16) | ((16 & 0xFF) << 24)),
                        2, 5,

                            -1, 0xE72D, 20, 2, 6,

                                -1, 0xE741, 20, -6, 0, (((-57 & 0xFF) << 0) | ((26 & 0xFF) << 8) | ((-57 & 0xFF) << 16) | ((26 & 0xFF) << 24)), 2, 7,

                                    -3, 21,
};

const s32 *const anim_0335[1] = {
    anim_0335__v0_l0,
};

const s32 anim_0336__v0_l0[] = {
    -2, 7, (((u16)16 << 0) | ((u16)0x30 << 16)), -1, 0xE755, 24, -6, 0, (((-6 & 0xFF) << 0) | ((-14 & 0xFF) << 8) | ((4 & 0xFF) << 16) | ((14 & 0xFF) << 24)), 3, 0,

        -1, 0xE76D, 24, 3, 1,

            -1, 0xE785, 24, 3, 2,

                -1, 0xE79D, 20, -6, 0, (((-6 & 0xFF) << 0) | ((-14 & 0xFF) << 8) | ((6 & 0xFF) << 16) | ((12 & 0xFF) << 24)), 2, 3,

                    -1, 0xE7B1, 24, -6, 0, (((-6 & 0xFF) << 0) | ((-14 & 0xFF) << 8) | ((6 & 0xFF) << 16) | ((14 & 0xFF) << 24)), 2, 4,

                        -4,
};

const s32 *const anim_0336[1] = {
    anim_0336__v0_l0,
};

const s32 anim_0337__v0_l0[] = {
    -2, 7, (((u16)16 << 0) | ((u16)0x30 << 16)), -1, 0xE7C9, 64, 2, 0,

        -1, 0xE809, 64, 2, 1,

            -1, 0xE849, 64, 2, 2,

                -1, 0xE889, 64, 2, 3,

                    -3, 23,
};

const s32 *const anim_0337[1] = {
    anim_0337__v0_l0,
};

const s32 anim_0338__v0_l0[] = {
    -2, 7, (((u16)16 << 0) | ((u16)0x30 << 16)), -1, 0xE8C9, 24, -6, 0, (((-30 & 0xFF) << 0) | ((-20 & 0xFF) << 8) | ((-4 & 0xFF) << 16) | ((-4 & 0xFF) << 24)), -12, 0x10, 3, 0,

        -1, 0xE8E1, 20, -6, 0, (((-22 & 0xFF) << 0) | ((-20 & 0xFF) << 8) | ((-2 & 0xFF) << 16) | ((-4 & 0xFF) << 24)), -12, 0x10, 3, 1,

            -1, 0xE8F5, 16, -6, 0, (((-4 & 0xFF) << 0) | ((-20 & 0xFF) << 8) | ((2 & 0xFF) << 16) | ((-4 & 0xFF) << 24)), -12, 0x10, 3, 2,

                -1, 0xE905, 16, -6, 0, (((2 & 0xFF) << 0) | ((-20 & 0xFF) << 8) | ((8 & 0xFF) << 16) | ((-4 & 0xFF) << 24)), -12, 0x10, 3, 3,

                    -1, 0xE915, 16, -6, 0, (((3 & 0xFF) << 0) | ((-20 & 0xFF) << 8) | ((23 & 0xFF) << 16) | ((-4 & 0xFF) << 24)), -12, 0x10, 3, 4,

                        -1, 0xE925, 20, -6, 0, (((4 & 0xFF) << 0) | ((-20 & 0xFF) << 8) | ((30 & 0xFF) << 16) | ((-4 & 0xFF) << 24)), -12, 0x10, 3, 5,

                            -1, 0xE939, 20, -6, 0, (((4 & 0xFF) << 0) | ((-20 & 0xFF) << 8) | ((24 & 0xFF) << 16) | ((-4 & 0xFF) << 24)), -12, 0x13, 3, 6,

                                -1, 0xE94D, 12, -6, 0, (((3 & 0xFF) << 0) | ((-20 & 0xFF) << 8) | ((9 & 0xFF) << 16) | ((-4 & 0xFF) << 24)), -12, 0x13, 3, 7,

                                    -1, 0xE959, 16, -6, 0, (((-8 & 0xFF) << 0) | ((-20 & 0xFF) << 8) | ((-2 & 0xFF) << 16) | ((-4 & 0xFF) << 24)), -12, 0x13, 3, 8,

                                        -1, 0xE969, 20, -6, 0, (((-22 & 0xFF) << 0) | ((-20 & 0xFF) << 8) | ((-2 & 0xFF) << 16) | ((-4 & 0xFF) << 24)), -12, 0x13, 3, 9,

                                            -3, 103,
};

const s32 anim_0338__v1_l0[] = {
    -2, 7, (((u16)16 << 0) | ((u16)0x30 << 16)), -1, 0xE97D, 24, -6, 0, (((-8 & 0xFF) << 0) | ((32 & 0xFF) << 8) | ((8 & 0xFF) << 16) | ((8 & 0xFF) << 24)), -11, 0x2, 3, 10,

        -1, 0xE995, 20, -6, 0, (((-8 & 0xFF) << 0) | ((23 & 0xFF) << 8) | ((8 & 0xFF) << 16) | ((9 & 0xFF) << 24)), -11, 0x2, 3, 11,

            -1, 0xE9A9, 16, -6, 0, (((-8 & 0xFF) << 0) | ((9 & 0xFF) << 8) | ((8 & 0xFF) << 16) | ((-3 & 0xFF) << 24)), -11, 0x2, 3, 12,

                -1, 0xE9B9, 16, -6, 0, (((-8 & 0xFF) << 0) | ((2 & 0xFF) << 8) | ((8 & 0xFF) << 16) | ((-10 & 0xFF) << 24)), -11, 0x2, 3, 13,

                    -1, 0xE9C9, 16, -6, 0, (((-8 & 0xFF) << 0) | ((1 & 0xFF) << 8) | ((8 & 0xFF) << 16) | ((-17 & 0xFF) << 24)), -11, 0x2, 3, 14,

                        -1, 0xE9D9, 20, -6, 0, (((-8 & 0xFF) << 0) | ((-4 & 0xFF) << 8) | ((8 & 0xFF) << 16) | ((-28 & 0xFF) << 24)), -11, 0x2, 3, 15,

                            -1, 0xE9ED, 20, -6, 0, (((-8 & 0xFF) << 0) | ((-8 & 0xFF) << 8) | ((8 & 0xFF) << 16) | ((-22 & 0xFF) << 24)), -11, 0x3, 3, 16,

                                -1, 0xEA01, 12, -6, 0, (((-8 & 0xFF) << 0) | ((2 & 0xFF) << 8) | ((8 & 0xFF) << 16) | ((-10 & 0xFF) << 24)), -11, 0x3, 3, 17,

                                    -1, 0xEA0D, 16, -6, 0, (((-9 & 0xFF) << 0) | ((9 & 0xFF) << 8) | ((7 & 0xFF) << 16) | ((-3 & 0xFF) << 24)), -11, 0x3, 3, 18,

                                        -1, 0xEA1D, 20, -6, 0, (((-8 & 0xFF) << 0) | ((20 & 0xFF) << 8) | ((8 & 0xFF) << 16) | ((2 & 0xFF) << 24)), -11, 0x3, 3, 19,

                                            -3, 103,
};

const s32 *const anim_0338[2] = {
    anim_0338__v0_l0,
    anim_0338__v1_l0,
};

const s32 anim_0339__v0_l0[] = {
    -2, 7, (((u16)16 << 0) | ((u16)0x30 << 16)), -1, 0xEA31, 24, -6, 0, (((-6 & 0xFF) << 0) | ((-18 & 0xFF) << 8) | ((6 & 0xFF) << 16) | ((8 & 0xFF) << 24)), 10, 0,

        -1, 0xEA49, 24, 10, 1,

            -1, 0xEA61, 24, 10, 2,

                -1, 0xEA49, 24, 10, 1,

                    -3, 26,
};

const s32 anim_0339__v1_l0[] = {
    -2, 7, (((u16)16 << 0) | ((u16)0x30 << 16)), -1, 0xEA79, 24, -6, 0, (((-6 & 0xFF) << 0) | ((-18 & 0xFF) << 8) | ((6 & 0xFF) << 16) | ((8 & 0xFF) << 24)), 5, 3,

        -1, 0xEA91, 24, 5, 4,

            -1, 0xEAA9, 24, 5, 5,

                -1, 0xEA91, 24, 5, 4,

                    -3, 26,
};

const s32 *const anim_0339[2] = {
    anim_0339__v0_l0,
    anim_0339__v1_l0,
};

const s32 anim_0340__v0_l0[] = {
    -2, 7, (((u16)16 << 0) | ((u16)0x30 << 16)), -1, 0xEAC1, 25, -6, 0, (((-6 & 0xFF) << 0) | ((-12 & 0xFF) << 8) | ((6 & 0xFF) << 16) | ((8 & 0xFF) << 24)), 5, 0,

        -1, 0xEADA, 20, 5, 1,

            -1, 0xEAEE, 20, 5, 2,

                -1, 0xEB02, 16, 5, 3,

                    -1, 0xEB12, 25, 5, 4,

                        -1, 0xEB2B, 20, 5, 5,

                            -1, 0xEB3F, 20, 5, 6,

                                -1, 0xEB53, 20, 5, 7,

                                    -3, 46,
};

const s32 *const anim_0340[1] = {
    anim_0340__v0_l0,
};

const s32 anim_0341__v0_l0[] = {
    -2, 7, (((u16)16 << 0) | ((u16)0x30 << 16)), -1, 0xEB67, 24, 8, 0,

        -1, 0xEB7F, 24, 8, 1,

            -1, 0xEB97, 24, 8, 2,

                -1, 0xEB7F, 24, 8, 1,

                    -3, 23,
};

const s32 *const anim_0341[1] = {
    anim_0341__v0_l0,
};

const s32 anim_0342__v0_l0[] = {
    -2, 7, (((u16)16 << 0) | ((u16)0x30 << 16)), -1, 0xEBAF, 25, -6, 0, (((-6 & 0xFF) << 0) | ((-4 & 0xFF) << 8) | ((6 & 0xFF) << 16) | ((16 & 0xFF) << 24)), 2, 0,

        -1, 0xEBC8, 25, 2, 1,

            -3, 16,
};

const s32 anim_0342__v1_l0[] = {
    -2, 7, (((u16)16 << 0) | ((u16)0x30 << 16)), -1, 0xEBE1, 25, -6, 0, (((-6 & 0xFF) << 0) | ((-2 & 0xFF) << 8) | ((6 & 0xFF) << 16) | ((16 & 0xFF) << 24)), 2, 2,

        -1, 0xEBFA, 25, 2, 3,

            -3, 16,
};

const s32 *const anim_0342[2] = {
    anim_0342__v0_l0,
    anim_0342__v1_l0,
};

const s32 anim_0343__v0_l0[] = {
    -2, 7, (((u16)16 << 0) | ((u16)0x30 << 16)), -1, 0xEC13, 20, -6, 0, (((-6 & 0xFF) << 0) | ((-16 & 0xFF) << 8) | ((6 & 0xFF) << 16) | ((6 & 0xFF) << 24)), 2, 0,

        -1, 0xEC27, 20, -6, 0, (((-6 & 0xFF) << 0) | ((-20 & 0xFF) << 8) | ((6 & 0xFF) << 16) | ((6 & 0xFF) << 24)), 8, 1,

            -1, 0xEC3B, 20, 1, 2,

                -1, 0xEC4F, 25, -6, 0, (((-6 & 0xFF) << 0) | ((-14 & 0xFF) << 8) | ((6 & 0xFF) << 16) | ((12 & 0xFF) << 24)), 3, 3,

                    -1, 0xEC68, 25, 3, 4,

                        -1, 0xEC81, 25, 3, 5,

                            -1, 0xEC4F, 25, -6, 0, (((-6 & 0xFF) << 0) | ((-14 & 0xFF) << 8) | ((6 & 0xFF) << 16) | ((12 & 0xFF) << 24)), 3, 3,

                                -1, 0xEC68, 25, 3, 4,

                                    -1, 0xEC81, 25, 3, 5,

                                        -1, 0xEC4F, 25, -6, 0, (((-6 & 0xFF) << 0) | ((-14 & 0xFF) << 8) | ((6 & 0xFF) << 16) | ((12 & 0xFF) << 24)), 3, 3,

                                            -1, 0xEC68, 25, 3, 4,

                                                -1, 0xEC81, 25, 3, 5,

                                                    -1, 0xEC9A, 20, -6, 0, (((-6 & 0xFF) << 0) | ((-12 & 0xFF) << 8) | ((6 & 0xFF) << 16) | ((14 & 0xFF) << 24)), 1, 6, -1, 0xECAE, 30,
                                                        -6, 0, (((-6 & 0xFF) << 0) | ((-12 & 0xFF) << 8) | ((6 & 0xFF) << 16) | ((14 & 0xFF) << 24)), 3, 7,

                                                            -1, 0xECCC, 30, 3, 8,

                                                                -1, 0xECEA, 30, 3, 9,

                                                                    -3, 18,
};

const s32 *const anim_0343[1] = {
    anim_0343__v0_l0,
};

const s32 anim_0348__v0_l0[] = {
    -2, 7, (((u16)16 << 0) | ((u16)0x30 << 16)), -1, 0xED08, 20, -6, 0, (((-6 & 0xFF) << 0) | ((-12 & 0xFF) << 8) | ((6 & 0xFF) << 16) | ((16 & 0xFF) << 24)), 1, 0,

        -1, 0xED1C, 24, -6, 0, (((0 & 0xFF) << 0) | ((-12 & 0xFF) << 8) | ((14 & 0xFF) << 16) | ((16 & 0xFF) << 24)), 1, 1,

            -1, 0xED34, 20, -6, 0, (((2 & 0xFF) << 0) | ((-12 & 0xFF) << 8) | ((14 & 0xFF) << 16) | ((16 & 0xFF) << 24)), 1, 2,

                -1, 0xED48, 35, -6, 0, (((6 & 0xFF) << 0) | ((-12 & 0xFF) << 8) | ((18 & 0xFF) << 16) | ((16 & 0xFF) << 24)), 1, 3,

                    -1, 0xED6B, 35, 2, 4,

                        -1, 0xED8E, 30, 3, 5,

                            -1, 0xEDAC, 30, -6, 0, (((2 & 0xFF) << 0) | ((-12 & 0xFF) << 8) | ((14 & 0xFF) << 16) | ((16 & 0xFF) << 24)), 1, 6,

                                -1, 0xEDCA, 24, -6, 0, (((0 & 0xFF) << 0) | ((-12 & 0xFF) << 8) | ((12 & 0xFF) << 16) | ((16 & 0xFF) << 24)), -6, 1, (((-20 & 0xFF) << 0) | ((-35 & 0xFF) << 8) | ((10 & 0xFF) << 16) | ((-2 & 0xFF) << 24)), 1, 7,

                                    -1, 0xEDE2, 42, -6, 0, (((-6 & 0xFF) << 0) | ((-12 & 0xFF) << 8) | ((6 & 0xFF) << 16) | ((16 & 0xFF) << 24)), -6, 1, (((-32 & 0xFF) << 0) | ((-23 & 0xFF) << 8) | ((0 & 0xFF) << 16) | ((16 & 0xFF) << 24)), -5, 128, 2, 8,

                                        -1, 0xEE0C, 35, 2, 9,

                                            -1, 0xEE2F, 35, 2, 10,

                                                -1, 0xEE52, 28, 2, 11,

                                                    -1, 0xEE6E, 16, -6, 0, (((-6 & 0xFF) << 0) | ((-12 & 0xFF) << 8) | ((6 & 0xFF) << 16) | ((16 & 0xFF) << 24)), -6, 1, (((0 & 0xFF) << 0) | ((0 & 0xFF) << 8) | ((0 & 0xFF) << 16) | ((0 & 0xFF) << 24)), 3, 12,

                                                        -1, 0xEE7E, 20, 3, 13,

                                                            -1, 0xEE92, 16, 3, 14,

                                                                -4,
};

const s32 *const anim_0348[1] = {
    anim_0348__v0_l0,
};

const s32 anim_0353__v0_l0[] = {
    -2, 7, (((u16)16 << 0) | ((u16)0x30 << 16)), -1, 0xEEA2, 20, -6, 0, (((-6 & 0xFF) << 0) | ((-12 & 0xFF) << 8) | ((6 & 0xFF) << 16) | ((16 & 0xFF) << 24)), 1, 0,

        -1, 0xEEB6, 20, 1, 1,

            -1, 0xEECA, 25, 1, 2,

                -1, 0xEEE3, 30, 1, 3,

                    -1, 0xEF01, 30, 3, 4,

                        -1, 0xEF1F, 36, 4, 5,

                            -1, 0xEF43, 36, 2, 6,

                                -1, 0xEF67, 35, 1, 7,

                                    -1, 0xEF8A, 42, -6, 0, (((-6 & 0xFF) << 0) | ((-12 & 0xFF) << 8) | ((6 & 0xFF) << 16) | ((16 & 0xFF) << 24)), -6, 1, (((-32 & 0xFF) << 0) | ((-42 & 0xFF) << 8) | ((0 & 0xFF) << 16) | ((0 & 0xFF) << 24)), 1, 8,

                                        -1, 0xEFB4, 42, -6, 0, (((-14 & 0xFF) << 0) | ((-12 & 0xFF) << 8) | ((-2 & 0xFF) << 16) | ((16 & 0xFF) << 24)), -6, 1, (((-40 & 0xFF) << 0) | ((-34 & 0xFF) << 8) | ((-7 & 0xFF) << 16) | ((6 & 0xFF) << 24)), 1, 9,

                                            -1, 0xEFDE, 42, -6, 0, (((-14 & 0xFF) << 0) | ((-12 & 0xFF) << 8) | ((-2 & 0xFF) << 16) | ((16 & 0xFF) << 24)), -6, 1, (((-44 & 0xFF) << 0) | ((-23 & 0xFF) << 8) | ((-11 & 0xFF) << 16) | ((16 & 0xFF) << 24)), -5, 128, 1, 10,


                                                -1, 0xF008, 42, 2, 11,

                                                    -1, 0xF032, 42, 2, 12,

                                                        -1, 0xF05C, 28, 2, 13,

                                                            -1, 0xF078, 28, 8, 14,

                                                                -1, 0xF094, 16, -6, 0, (((-8 & 0xFF) << 0) | ((-12 & 0xFF) << 8) | ((4 & 0xFF) << 16) | ((16 & 0xFF) << 24)), -6, 1, (((0 & 0xFF) << 0) | ((0 & 0xFF) << 8) | ((0 & 0xFF) << 16) | ((0 & 0xFF) << 24)),
                                                                    3, 15,

                                                                        -1, 0xF0A4, 16, -6, 0, (((-4 & 0xFF) << 0) | ((-12 & 0xFF) << 8) | ((8 & 0xFF) << 16) | ((16 & 0xFF) << 24)), 3, 16,

                                                                            -1, 0xF0B4, 12, -6, 0, (((-2 & 0xFF) << 0) | ((-12 & 0xFF) << 8) | ((10 & 0xFF) << 16) | ((16 & 0xFF) << 24)), 3, 17,

                                                                                -4,
};

const s32 *const anim_0353[1] = {
    anim_0353__v0_l0,
};

const s32 anim_0373__v0_l0[] = {
    -2, 7, (((u16)16 << 0) | ((u16)0x30 << 16)), -1, 0xF0C0, 30, -6, 0, (((-6 & 0xFF) << 0) | ((-12 & 0xFF) << 8) | ((6 & 0xFF) << 16) | ((16 & 0xFF) << 24)), 1, 0,

        -1, 0xF0DE, 24, 1, 1,

            -1, 0xF0F6, 28, 2, 2,

                -1, 0xF112, 20, -6, 0, (((-9 & 0xFF) << 0) | ((-19 & 0xFF) << 8) | ((8 & 0xFF) << 16) | ((13 & 0xFF) << 24)), 1, 3,

                    -1, 0xF126, 25, -6, 0, (((-6 & 0xFF) << 0) | ((-12 & 0xFF) << 8) | ((6 & 0xFF) << 16) | ((14 & 0xFF) << 24)), 2, 4,

                        -1, 0xF13F, 18, 2, 5,

                            -1, 0xF151, 25, 2, 6,

                                -1, 0xF16A, 18, 2, 7,

                                    -1, 0xF17C, 20, 2, 8,

                                        -1, 0xF190, 15, 2, 9,

                                            -1, 0xF19F, 25, 2, 10,

                                                -1, 0xF1B8, 15, 2, 11,

                                                    -1, 0xF126, 25, -6, 0, (((-6 & 0xFF) << 0) | ((-12 & 0xFF) << 8) | ((6 & 0xFF) << 16) | ((14 & 0xFF) << 24)), 2, 4,

                                                        -1, 0xF13F, 18, 2, 5,

                                                            -1, 0xF151, 25, 2, 6,

                                                                -1, 0xF16A, 18, 2, 7,

                                                                    -1, 0xF17C, 20, 2, 8,

                                                                        -1, 0xF190, 15, 2, 9, -1, 0xF1C7, 30,
                                                                            -6, 0, (((-6 & 0xFF) << 0) | ((-12 & 0xFF) << 8) | ((6 & 0xFF) << 16) | ((14 & 0xFF) << 24)), 3, 12,

                                                                                -1, 0xF1E5, 30, 3, 13,

                                                                                    -1, 0xF203, 30, 3, 14,

                                                                                        -3, 18,
};

const s32 *const anim_0373[1] = {
    anim_0373__v0_l0,
};

const s32 anim_0374__v0_l0[] = {
    -2, 7, (((u16)16 << 0) | ((u16)0x30 << 16)), -1, 0xF221, 16, -6, 0, (((-6 & 0xFF) << 0) | ((-12 & 0xFF) << 8) | ((6 & 0xFF) << 16) | ((16 & 0xFF) << 24)), 1, 0,

        -1, 0xF231, 16, 1, 1,

            -1, 0xF241, 16, 2, 2, -1, 0xF251, 20, -6, 0, (((-6 & 0xFF) << 0) | ((-12 & 0xFF) << 8) | ((6 & 0xFF) << 16) | ((16 & 0xFF) << 24)), 2, 3,

                -1, 0xF265, 20, 2, 4,

                    -1, 0xF279, 20, 2, 5,

                        -3, 18,
};

const s32 anim_0374__v1_l0[] = {
    -2, 7, (((u16)16 << 0) | ((u16)0x30 << 16)), -1, 0xF28D, 20, -6, 0, (((-6 & 0xFF) << 0) | ((-12 & 0xFF) << 8) | ((6 & 0xFF) << 16) | ((16 & 0xFF) << 24)), 1, 6, -1, 0xF2A1, 20, 2, 7,

        -1, 0xF2B5, 20, 2, 8,

            -3, 10,
};

const s32 anim_0374__v2_l0[] = {
    -2, 7, (((u16)16 << 0) | ((u16)0x30 << 16)), -1, 0xF2C9, 16, -6, 0, (((-6 & 0xFF) << 0) | ((-12 & 0xFF) << 8) | ((6 & 0xFF) << 16) | ((16 & 0xFF) << 24)), 1, 9,

        -4,
};

const s32 *const anim_0374[3] = {
    anim_0374__v0_l0,
    anim_0374__v1_l0,
    anim_0374__v2_l0,
};

const s32 anim_0375__v0_l0[] = {
    -2, 7, (((u16)16 << 0) | ((u16)0x30 << 16)), -1, 0xF2D9, 16, -6, 0, (((-6 & 0xFF) << 0) | ((-12 & 0xFF) << 8) | ((6 & 0xFF) << 16) | ((16 & 0xFF) << 24)), 2, 0,

        -1, 0xF2E9, 20, -6, 0, (((-6 & 0xFF) << 0) | ((-8 & 0xFF) << 8) | ((8 & 0xFF) << 16) | ((16 & 0xFF) << 24)), -6, 1, (((-16 & 0xFF) << 0) | ((-14 & 0xFF) << 8) | ((0 & 0xFF) << 16) | ((16 & 0xFF) << 24)), 2, 1,

            -1, 0xF2FD, 20, 2, 2,

                -1, 0xF311, 20, -6, 0, (((-6 & 0xFF) << 0) | ((-2 & 0xFF) << 8) | ((8 & 0xFF) << 16) | ((16 & 0xFF) << 24)), -6, 1, (((-16 & 0xFF) << 0) | ((-2 & 0xFF) << 8) | ((0 & 0xFF) << 16) | ((16 & 0xFF) << 24)), 2, 3, -1, 0xF325, 20,
                    -6, 1, (((-16 & 0xFF) << 0) | ((-2 & 0xFF) << 8) | ((0 & 0xFF) << 16) | ((16 & 0xFF) << 24)), 3, 4,

                        -1, 0xF339, 24, 3, 5,

                            -3, 13,
};

const s32 anim_0375__v1_l0[] = {
    -2, 7, (((u16)16 << 0) | ((u16)0x30 << 16)), -1, 0xF351, 18, -6, 0, (((-6 & 0xFF) << 0) | ((-4 & 0xFF) << 8) | ((6 & 0xFF) << 16) | ((16 & 0xFF) << 24)), -6, 1, (((0 & 0xFF) << 0) | ((0 & 0xFF) << 8) | ((0 & 0xFF) << 16) | ((0 & 0xFF) << 24)), 6, 6,

        -1, 0xF363, 20, 2, 7,

            -1, 0xF377, 20, 2, 8,

                -1, 0xF38B, 15, -6, 0, (((-6 & 0xFF) << 0) | ((-4 & 0xFF) << 8) | ((6 & 0xFF) << 16) | ((16 & 0xFF) << 24)), 6, 9,

                    -1, 0xF39A, 15, 6, 10,

                        -1, 0xF38B, 15, 6, 9,

                            -1, 0xF39A, 15, 6, 10,

                                -1, 0xF38B, 15, 6, 9,

                                    -1, 0xF3A9, 15, -6, 0, (((-6 & 0xFF) << 0) | ((-6 & 0xFF) << 8) | ((6 & 0xFF) << 16) | ((16 & 0xFF) << 24)), 1, 11,

                                        -1, 0xF3B8, 16, 1, 12,

                                            -4,
};

const s32 *const anim_0375[2] = {
    anim_0375__v0_l0,
    anim_0375__v1_l0,
};

const s32 anim_0376__v0_l0[] = {
    -2, 7, (((u16)16 << 0) | ((u16)0x30 << 16)), -1, 0xF3C8, 24, -6, 0, (((-6 & 0xFF) << 0) | ((-12 & 0xFF) << 8) | ((6 & 0xFF) << 16) | ((14 & 0xFF) << 24)), 3, 0,

        -1, 0xF3E0, 35, 4, 1,

            -1, 0xF403, 30, -6, 0, (((-6 & 0xFF) << 0) | ((-12 & 0xFF) << 8) | ((6 & 0xFF) << 16) | ((14 & 0xFF) << 24)), -6, 1, (((-24 & 0xFF) << 0) | ((-27 & 0xFF) << 8) | ((21 & 0xFF) << 16) | ((12 & 0xFF) << 24)), 3, 2,

                -1, 0xF421, 30, -6, 0, (((-6 & 0xFF) << 0) | ((-12 & 0xFF) << 8) | ((6 & 0xFF) << 16) | ((14 & 0xFF) << 24)), -6, 1, (((-39 & 0xFF) << 0) | ((-25 & 0xFF) << 8) | ((17 & 0xFF) << 16) | ((28 & 0xFF) << 24)), 3, 3,

                    -1, 0xF43F, 42, -6, 0, (((-6 & 0xFF) << 0) | ((-12 & 0xFF) << 8) | ((8 & 0xFF) << 16) | ((14 & 0xFF) << 24)), -6, 1, (((-29 & 0xFF) << 0) | ((-23 & 0xFF) << 8) | ((14 & 0xFF) << 16) | ((33 & 0xFF) << 24)), 3, 4,

                        -1, 0xF469, 30, -6, 0, (((-6 & 0xFF) << 0) | ((-4 & 0xFF) << 8) | ((6 & 0xFF) << 16) | ((22 & 0xFF) << 24)), -6, 1, (((0 & 0xFF) << 0) | ((0 & 0xFF) << 8) | ((0 & 0xFF) << 16) | ((0 & 0xFF) << 24)), 3, 5,

                            -1, 0xF487, 20, 3, 6,

                                -1, 0xF49B, 20, 3, 7,

                                    -1, 0xF4AF, 24, 3, 8,

                                        -1, 0xF4C7, 16, 3, 9,

                                            -1, 0xF4D7, 20, 4, 10, -1, 0xF4EB, 30, 3, 11,

                                                -1, 0xF509, 30, 3, 12,

                                                    -1, 0xF527, 30, 3, 13,

                                                        -3, 15,
};

const s32 *const anim_0376[1] = {
    anim_0376__v0_l0,
};

const s32 anim_0377__v0_l0[] = {
    -2, 7, (((u16)16 << 0) | ((u16)0x30 << 16)), -1, 0xF545, 20, -6, 0, (((-6 & 0xFF) << 0) | ((-12 & 0xFF) << 8) | ((6 & 0xFF) << 16) | ((14 & 0xFF) << 24)), 3, 0,

        -1, 0xF559, 20, 4, 1,

            -1, 0xF56D, 20, 3, 2, -1, 0xF581, 30, -6, 0, (((-6 & 0xFF) << 0) | ((-12 & 0xFF) << 8) | ((6 & 0xFF) << 16) | ((14 & 0xFF) << 24)), -6, 1, (((-24 & 0xFF) << 0) | ((-6 & 0xFF) << 8) | ((24 & 0xFF) << 16) | ((14 & 0xFF) << 24)), 2, 3,

                -1, 0xF59F, 20, 2, 4,

                    -1, 0xF5B3, 30, 2, 5,

                        -1, 0xF5D1, 20, 2, 6,

                            -1, 0xF5E5, 16, 2, 7,

                                -1, 0xF5F5, 24, 2, 8,

                                    -3, 36,
};

const s32 anim_0377__v1_l0[] = {
    -2, 7, (((u16)16 << 0) | ((u16)0x30 << 16)), -1, 0xF60D, 20, -6, 0, (((-6 & 0xFF) << 0) | ((-12 & 0xFF) << 8) | ((6 & 0xFF) << 16) | ((14 & 0xFF) << 24)), -6, 1, (((0 & 0xFF) << 0) | ((0 & 0xFF) << 8) | ((0 & 0xFF) << 16) | ((0 & 0xFF) << 24)), 4, 9, -1, 0xF621, 30,
        3, 10,

            -1, 0xF63F, 30, 3, 11,

                -1, 0xF65D, 30, 3, 12,

                    -3, 15,
};

const s32 *const anim_0377[2] = {
    anim_0377__v0_l0,
    anim_0377__v1_l0,
};

const s32 anim_0379__v0_l0[] = {
    -2, 7, (((u16)16 << 0) | ((u16)0x30 << 16)), -1, 0xF67B, 24, -6, 0, (((-6 & 0xFF) << 0) | ((-12 & 0xFF) << 8) | ((6 & 0xFF) << 16) | ((16 & 0xFF) << 24)), 3, 0,

        -1, 0xF693, 24, 3, 1,

            -1, 0xF6AB, 24, 3, 2,

                -1, 0xF693, 24, 3, 1,

                    -3, 26,
};

const s32 *const anim_0379[1] = {
    anim_0379__v0_l0,
};

const s32 anim_0380__v0_l0[] = {
    -2, 7, (((u16)16 << 0) | ((u16)0x30 << 16)), -1, 0xF6C3, 30, -6, 0, (((-6 & 0xFF) << 0) | ((-12 & 0xFF) << 8) | ((6 & 0xFF) << 16) | ((16 & 0xFF) << 24)), 3, 0,

        -1, 0xF6E1, 24, 3, 1,

            -1, 0xF6F9, 24, 3, 2,

                -1, 0xF6E1, 24, 3, 1,

                    -3, 26,
};

const s32 *const anim_0380[1] = {
    anim_0380__v0_l0,
};

const s32 anim_0381__v0_l0[] = {
    -2, 7, (((u16)16 << 0) | ((u16)0x30 << 16)), -1, 0xF711, 20, -6, 0, (((-6 & 0xFF) << 0) | ((-18 & 0xFF) << 8) | ((6 & 0xFF) << 16) | ((8 & 0xFF) << 24)), 3, 0,

        -1, 0xF725, 25, 3, 1,

            -1, 0xF73E, 25, 3, 2,

                -1, 0xF725, 25, 3, 1,

                    -3, 26,
};

const s32 *const anim_0381[1] = {
    anim_0381__v0_l0,
};

const s32 anim_0383__v0_l0[] = {
    -2, 7, (((u16)16 << 0) | ((u16)0xA0 << 16)), -1, 0xF757, 18, 3, 0,

        -1, 0xF769, 18, 3, 1,

            -3, 13,
};

const s32 *const anim_0383[1] = {
    anim_0383__v0_l0,
};

const s32 anim_0384__v0_l0[] = {
    -2, 7, (((u16)16 << 0) | ((u16)0xA0 << 16)), -1, 0xF77B, 16, 2, 0,

        -1, 0xF78B, 16, 2, 1,

            -4,
};

const s32 anim_0384__v1_l0[] = {
    -2, 7, (((u16)16 << 0) | ((u16)0xA0 << 16)), -1, 0xF79B, 16, 2, 2,

        -3, 8,
};

const s32 *const anim_0384[2] = {
    anim_0384__v0_l0,
    anim_0384__v1_l0,
};

const s32 anim_0385__v0_l0[] = {
    -2, 7, (((u16)16 << 0) | ((u16)0xA0 << 16)), -1, 0xF7AB, 15, 3, 0,

        -1, 0xF7BA, 15, 3, 1,

            -3, 13,
};

const s32 *const anim_0385[1] = {
    anim_0385__v0_l0,
};

const s32 anim_0386__v0_l0[] = {
    -2, 7, (((u16)16 << 0) | ((u16)0xA0 << 16)), -1, 0xF7C9, 25, 8, 0, -1, 0xF7E2, 25, 3, 1,

        -1, 0xF7FB, 25, 3, 2,

            -3, 10,
};

const s32 *const anim_0386[1] = {
    anim_0386__v0_l0,
};

const s32 anim_0387__v0_l0[] = {
    -2, 7, (((u16)16 << 0) | ((u16)0xA0 << 16)), -1, 0xF814, 20, 1, 0,

        -4,
};

const s32 anim_0387__v1_l0[] = {
    -2, 7, (((u16)16 << 0) | ((u16)0xA0 << 16)), -1, 0xF828, 20, 4, 1,

        -1, 0xF83C, 20, 4, 2,

            -1, 0xF850, 20, 40, 3,

                -4,
};

const s32 *const anim_0387[2] = {
    anim_0387__v0_l0,
    anim_0387__v1_l0,
};

const s32 anim_0391__v0_l0[] = {
    -2, 8, (((u16)16 << 0) | ((u16)0x30 << 16)), -1, 0xF864, 16, -6, 0, (((-6 & 0xFF) << 0) | ((-10 & 0xFF) << 8) | ((6 & 0xFF) << 16) | ((10 & 0xFF) << 24)), 1, 0,

        -4,
};

const s32 anim_0391__v1_l0[] = {
    -2, 8, (((u16)16 << 0) | ((u16)0x30 << 16)), -1, 0xF874, 16, -6, 0, (((-6 & 0xFF) << 0) | ((-10 & 0xFF) << 8) | ((6 & 0xFF) << 16) | ((10 & 0xFF) << 24)), 1, 1,

        -4,
};

const s32 anim_0391__v2_l0[] = {
    -2, 8, (((u16)16 << 0) | ((u16)0x30 << 16)), -1, 0xF884, 16, -6, 0, (((-6 & 0xFF) << 0) | ((-10 & 0xFF) << 8) | ((6 & 0xFF) << 16) | ((10 & 0xFF) << 24)), 1, 2,

        -4,
};

const s32 anim_0391__v3_l0[] = {
    -2, 8, (((u16)16 << 0) | ((u16)0x30 << 16)), -1, 0xF894, 20, -6, 0, (((-6 & 0xFF) << 0) | ((-10 & 0xFF) << 8) | ((6 & 0xFF) << 16) | ((10 & 0xFF) << 24)), 1, 3,

        -4,
};

const s32 anim_0391__v4_l0[] = {
    -2, 8, (((u16)16 << 0) | ((u16)0x30 << 16)), -1, 0xF8A8, 20, -6, 0, (((-6 & 0xFF) << 0) | ((-10 & 0xFF) << 8) | ((6 & 0xFF) << 16) | ((10 & 0xFF) << 24)), 1, 4,

        -4,
};

const s32 anim_0391__v5_l0[] = {
    -2, 8, (((u16)16 << 0) | ((u16)0x30 << 16)), -1, 0xF8BC, 16, -6, 0, (((-6 & 0xFF) << 0) | ((-10 & 0xFF) << 8) | ((6 & 0xFF) << 16) | ((10 & 0xFF) << 24)), 1, 5,

        -4,
};

const s32 anim_0391__v6_l0[] = {
    -2, 8, (((u16)16 << 0) | ((u16)0x30 << 16)), -1, 0xF8CC, 16, -6, 0, (((-6 & 0xFF) << 0) | ((-10 & 0xFF) << 8) | ((6 & 0xFF) << 16) | ((10 & 0xFF) << 24)), 1, 6,

        -4,
};

const s32 anim_0391__v7_l0[] = {
    -2, 8, (((u16)16 << 0) | ((u16)0x30 << 16)), -1, 0xF8DC, 20, -6, 0, (((-6 & 0xFF) << 0) | ((-10 & 0xFF) << 8) | ((6 & 0xFF) << 16) | ((10 & 0xFF) << 24)), 1, 7,

        -4,
};

const s32 *const anim_0391[8] = {
    anim_0391__v0_l0, anim_0391__v1_l0, anim_0391__v2_l0, anim_0391__v3_l0,
    anim_0391__v4_l0, anim_0391__v5_l0, anim_0391__v6_l0, anim_0391__v7_l0,
};

const s32 anim_0392__v0_l0[] = {
    -2, 7, (((u16)16 << 0) | ((u16)0x30 << 16)), -1, 0xF8F0, 16, -6, 0, (((-8 & 0xFF) << 0) | ((-8 & 0xFF) << 8) | ((8 & 0xFF) << 16) | ((8 & 0xFF) << 24)), -6, 1, (((-8 & 0xFF) << 0) | ((-8 & 0xFF) << 8) | ((8 & 0xFF) << 16) | ((8 & 0xFF) << 24)), 3, 0,

        -1, 0xF900, 16, 3, 1,

            -1, 0xF910, 16, 3, 2,

                -1, 0xF920, 16, 3, 3,

                    -3, 29,
};

const s32 *const anim_0392[1] = {
    anim_0392__v0_l0,
};

const s32 anim_0393__v0_l0[] = {
    -2, 7, (((u16)16 << 0) | ((u16)0x30 << 16)), -1, 0xF930, 16, -6, 0, (((-8 & 0xFF) << 0) | ((-7 & 0xFF) << 8) | ((8 & 0xFF) << 16) | ((9 & 0xFF) << 24)), -6, 1, (((-8 & 0xFF) << 0) | ((-7 & 0xFF) << 8) | ((8 & 0xFF) << 16) | ((9 & 0xFF) << 24)), 3, 0,

        -1, 0xF940, 12, 3, 1,

            -1, 0xF94C, 12, 3, 2,

                -3, 24,
};

const s32 *const anim_0393[1] = {
    anim_0393__v0_l0,
};

const s32 anim_0394__v0_l0[] = {
    -2, 7, (((u16)16 << 0) | ((u16)0xA0 << 16)), -1, 0xF958, 64, 2, 0,

        -1, 0xF998, 64, 2, 1,

            -1, 0xF9D8, 64, 2, 2,

                -1, 0xFA18, 64, 2, 3,

                    -1, 0xFA58, 64, 2, 4,

                        -1, 0xFA98, 64, 2, 5,

                            -1, 0xFAD8, 64, 2, 6,

                                -1, 0xFB18, 64, 2, 7,

                                    -1, 0xFB58, 64, 2, 8,

                                        -1, 0xFB98, 64, 2, 9,

                                            -3, 53,
};

const s32 *const anim_0394[1] = {
    anim_0394__v0_l0,
};

const s32 anim_0396__v0_l0[] = {
    -2, 7, (((u16)16 << 0) | ((u16)0x30 << 16)), -1, 0xFBD8, 64, 2, 0,

        -4,
};

const s32 *const anim_0396[1] = {
    anim_0396__v0_l0,
};

const s32 anim_0397__v0_l0[] = {
    -2, 0, (((u16)16 << 0) | ((u16)0x0 << 16)), -1, 0xFC18, 20, 4, 0,

        -1, 0xFC2C, 20, 4, 1,

            -1, 0xFC40, 20, 4, 2,

                -4,
};

const s32 *const anim_0397[1] = {
    anim_0397__v0_l0,
};

const s32 anim_0398__v0_l0[] = {
    -2, 0, (((u16)16 << 0) | ((u16)0x0 << 16)), -1, 0xFC54, 16, 4, 0,

        -1, 0xFC64, 16, 10, 1,

            -1, 0xFC74, 16, 2, 2,

                -1, 0xFC54, 16, 4, 0,

                    -1, 0xFC84, 20, 3, 3,

                        -1, 0xFC98, 20, 3, 4,

                            -1, 0xFCAC, 24, 3, 5,

                                -1, 0xFCC4, 24, 3, 6,

                                    -2, 9, (((u16)16 << 0) | ((u16)0x0 << 16)), -1, 0xFCDC, 24, 3, 7,

                                        -2, 10, (((u16)16 << 0) | ((u16)0x0 << 16)), -1, 0xFCF4, 24, 3, 8, -2, 11, (((u16)16 << 0) | ((u16)0x0 << 16)), -1, 0xFD0C, 24,
                                            1, 9,

                                                -2, 12, (((u16)16 << 0) | ((u16)0x30 << 16)), -1, 0xFD24, 24, 1, 10,

                                                    -2, 11, (((u16)16 << 0) | ((u16)0x0 << 16)), -1, 0xFD3C, 24, 1, 11,

                                                        -2, 12, (((u16)16 << 0) | ((u16)0x30 << 16)), -1, 0xFD54, 24, 1, 12,

                                                            -3, 32,
};

const s32 anim_0398__v1_l0[] = {
    -2, 13, (((u16)16 << 0) | ((u16)0x50 << 16)), -1, 0xFD6C, 36, 3, 13,

        -1, 0xFD90, 56, 3, 14,

            -3, 13,
};

const s32 *const anim_0398[2] = {
    anim_0398__v0_l0,
    anim_0398__v1_l0,
};

const s32 anim_0399__v0_l0[] = {
    -2, 11, (((u16)16 << 0) | ((u16)0x0 << 16)), -1, 0xFDC8, 24, -6, 0, (((-14 & 0xFF) << 0) | ((-10 & 0xFF) << 8) | ((13 & 0xFF) << 16) | ((6 & 0xFF) << 24)), -6, 1, (((-14 & 0xFF) << 0) | ((-10 & 0xFF) << 8) | ((13 & 0xFF) << 16) | ((6 & 0xFF) << 24)), 2, 0,

        -2, 12, (((u16)16 << 0) | ((u16)0x30 << 16)), -1, 0xFDE0, 24, 2, 1,

            -2, 11, (((u16)16 << 0) | ((u16)0x0 << 16)), -1, 0xFDF8, 24, 2, 2,

                -2, 12, (((u16)16 << 0) | ((u16)0x30 << 16)), -1, 0xFE10, 24, 2, 3,

                    -3, 38,
};

const s32 anim_0399__v1_l0[] = {
    -2, 11, (((u16)16 << 0) | ((u16)0x0 << 16)), -1, 0xFE28, 24, -6, 0, (((-14 & 0xFF) << 0) | ((-10 & 0xFF) << 8) | ((13 & 0xFF) << 16) | ((6 & 0xFF) << 24)), -6, 1, (((-20 & 0xFF) << 0) | ((-15 & 0xFF) << 8) | ((3 & 0xFF) << 16) | ((11 & 0xFF) << 24)), 2, 4,

        -2, 12, (((u16)16 << 0) | ((u16)0x30 << 16)), -1, 0xFE40, 24, 2, 5,

            -2, 11, (((u16)16 << 0) | ((u16)0x0 << 16)), -1, 0xFE58, 24, 2, 6,

                -2, 12, (((u16)16 << 0) | ((u16)0x30 << 16)), -1, 0xFE70, 24, 2, 7,

                    -3, 38,
};

const s32 anim_0399__v2_l0[] = {
    -2, 11, (((u16)16 << 0) | ((u16)0x0 << 16)), -1, 0xFE88, 64, 1, 8,

        -4,
};

const s32 *const anim_0399[3] = {
    anim_0399__v0_l0,
    anim_0399__v1_l0,
    anim_0399__v2_l0,
};

const s32 anim_0400__v0_l0[] = {
    -2, 14, (((u16)16 << 0) | ((u16)0x20 << 16)), -1, 0xFEC8, 40, 2, 0,

        -1, 0xFEF0, 40, 2, 1,

            -1, 0xFF18, 40, 2, 2,

                -1, 0xFF40, 40, 2, 3,

                    -3, 23,
};

const s32 anim_0400__v1_l0[] = {
    -2, 14, (((u16)16 << 0) | ((u16)0x20 << 16)), -1, 0xFF68, 40, 3, 4,

        -1, 0xFF90, 40, 3, 5,

            -1, 0xFFB8, 40, 3, 6,

                -4,
};

const s32 *const anim_0400[2] = {
    anim_0400__v0_l0,
    anim_0400__v1_l0,
};

const s32 anim_0401__v0_l0[] = {
    -2, 15, (((u16)16 << 0) | ((u16)0xC0 << 16)), -1, 0xFFE0, 20, -6, 0, (((-13 & 0xFF) << 0) | ((-22 & 0xFF) << 8) | ((10 & 0xFF) << 16) | ((5 & 0xFF) << 24)), 1, 0,

        -4,
};

const s32 anim_0401__v1_l0[] = {
    -2, 15, (((u16)16 << 0) | ((u16)0xC0 << 16)), -1, 0xFFF4, 20, -6, 0, (((-13 & 0xFF) << 0) | ((-22 & 0xFF) << 8) | ((10 & 0xFF) << 16) | ((6 & 0xFF) << 24)), 8, 1,

        -1, 0x10008, 20, 8, 2,

            -1, 0xFFE0, 20, 8, 0,

                -3, 21,
};

const s32 anim_0401__v2_l0[] = {
    -2, 15, (((u16)16 << 0) | ((u16)0xC0 << 16)), -1, 0x1001C, 20, -6, 0, (((-8 & 0xFF) << 0) | ((-20 & 0xFF) << 8) | ((7 & 0xFF) << 16) | ((3 & 0xFF) << 24)), 6, 3,

        -1, 0x10030, 20, -6, 0, (((-9 & 0xFF) << 0) | ((-20 & 0xFF) << 8) | ((11 & 0xFF) << 16) | ((0 & 0xFF) << 24)), 8, 4,

            -1, 0x10044, 20, -6, 0, (((-7 & 0xFF) << 0) | ((-19 & 0xFF) << 8) | ((7 & 0xFF) << 16) | ((2 & 0xFF) << 24)), 8, 5,

                -4,
};

const s32 *const anim_0401[3] = {
    anim_0401__v0_l0,
    anim_0401__v1_l0,
    anim_0401__v2_l0,
};

const s32 anim_0402__v0_l0[] = {
    -2, 16, (((u16)16 << 0) | ((u16)0x70 << 16)), -1, 0x10058, 16, -6, 0, (((-10 & 0xFF) << 0) | ((-7 & 0xFF) << 8) | ((9 & 0xFF) << 16) | ((10 & 0xFF) << 24)), 4, 0,

        -1, 0x10068, 16, -6, 0, (((-8 & 0xFF) << 0) | ((-5 & 0xFF) << 8) | ((7 & 0xFF) << 16) | ((9 & 0xFF) << 24)), 4, 1,

            -1, 0x10078, 16, -6, 0, (((-5 & 0xFF) << 0) | ((-5 & 0xFF) << 8) | ((6 & 0xFF) << 16) | ((6 & 0xFF) << 24)), 4, 2,

                -1, 0x10088, 12, 4, 3,

                    -4,
};

const s32 *const anim_0402[1] = {
    anim_0402__v0_l0,
};

const s32 anim_0403__v0_l0[] = {
    -2, 17, (((u16)16 << 0) | ((u16)0xC0 << 16)), -1, 0x10094, 20, -6, 0, (((-10 & 0xFF) << 0) | ((-27 & 0xFF) << 8) | ((12 & 0xFF) << 16) | ((-2 & 0xFF) << 24)), 2, 0,

        -1, 0x100A8, 20, -6, 0, (((-10 & 0xFF) << 0) | ((-27 & 0xFF) << 8) | ((12 & 0xFF) << 16) | ((-2 & 0xFF) << 24)), 2, 1,

            -3, 19,
};

const s32 anim_0403__v1_l0[] = {
    -2, 17, (((u16)16 << 0) | ((u16)0xC0 << 16)), -1, 0x100BC, 20, -6, 0, (((-9 & 0xFF) << 0) | ((-26 & 0xFF) << 8) | ((10 & 0xFF) << 16) | ((-3 & 0xFF) << 24)), 3, 2,

        -1, 0x100D0, 20, -6, 0, (((-9 & 0xFF) << 0) | ((-26 & 0xFF) << 8) | ((10 & 0xFF) << 16) | ((-3 & 0xFF) << 24)), 4, 3,

            -3, 19,
};

const s32 anim_0403__v2_l0[] = {
    -2, 17, (((u16)16 << 0) | ((u16)0xC0 << 16)), -1, 0x100E4, 20, -6, 0, (((-5 & 0xFF) << 0) | ((-30 & 0xFF) << 8) | ((7 & 0xFF) << 16) | ((-3 & 0xFF) << 24)), 5, 4,

        -4,
};

const s32 *const anim_0403[3] = {
    anim_0403__v0_l0,
    anim_0403__v1_l0,
    anim_0403__v2_l0,
};

const s32 anim_0404__v0_l0[] = {
    -2, 15, (((u16)16 << 0) | ((u16)0xC0 << 16)), -1, 0x100F8, 24, -6, 0, (((-13 & 0xFF) << 0) | ((-21 & 0xFF) << 8) | ((13 & 0xFF) << 16) | ((-4 & 0xFF) << 24)), 5, 0,

        -1, 0x10110, 30, -6, 0, (((-13 & 0xFF) << 0) | ((-21 & 0xFF) << 8) | ((13 & 0xFF) << 16) | ((-4 & 0xFF) << 24)), 5, 1,

            -1, 0x1012E, 24, -6, 0, (((-13 & 0xFF) << 0) | ((-21 & 0xFF) << 8) | ((13 & 0xFF) << 16) | ((-4 & 0xFF) << 24)), 5, 2,

                -1, 0x10110, 30, -6, 0, (((-13 & 0xFF) << 0) | ((-21 & 0xFF) << 8) | ((13 & 0xFF) << 16) | ((-4 & 0xFF) << 24)), 5, 1,

                    -3, 35,
};

const s32 anim_0404__v1_l0[] = {
    -2, 15, (((u16)16 << 0) | ((u16)0xC0 << 16)), -1, 0x10146, 30, -6, 0, (((-13 & 0xFF) << 0) | ((-21 & 0xFF) << 8) | ((13 & 0xFF) << 16) | ((-4 & 0xFF) << 24)), 10, 3,

        -1, 0x10164, 30, -6, 0, (((-13 & 0xFF) << 0) | ((-21 & 0xFF) << 8) | ((13 & 0xFF) << 16) | ((-4 & 0xFF) << 24)), 10, 4,

            -4,
};

const s32 *const anim_0404[2] = {
    anim_0404__v0_l0,
    anim_0404__v1_l0,
};

const s32 anim_0405__v0_l0[] = {
    -2, 18, (((u16)16 << 0) | ((u16)0xD0 << 16)), -1, 0x10182, 20, -6, 0, (((-14 & 0xFF) << 0) | ((-26 & 0xFF) << 8) | ((14 & 0xFF) << 16) | ((2 & 0xFF) << 24)), 4, 0,

        -1, 0x10196, 20, 4, 1,

            -1, 0x101AA, 20, 4, 2,

                -3, 21,
};

const s32 anim_0405__v1_l0[] = {
    -2, 18, (((u16)16 << 0) | ((u16)0xD0 << 16)), -1, 0x10182, 20, -6, 0, (((-14 & 0xFF) << 0) | ((-26 & 0xFF) << 8) | ((14 & 0xFF) << 16) | ((2 & 0xFF) << 24)), 3, 0,

        -1, 0x101BE, 20, 3, 3,

            -3, 16,
};

const s32 anim_0405__v2_l0[] = {
    -2, 18, (((u16)16 << 0) | ((u16)0xD0 << 16)), -1, 0x101D2, 20, -6, 0, (((-14 & 0xFF) << 0) | ((-26 & 0xFF) << 8) | ((14 & 0xFF) << 16) | ((2 & 0xFF) << 24)), 12, 4,

        -1, 0x101E6, 20, 12, 5,

            -4,
};

const s32 *const anim_0405[3] = {
    anim_0405__v0_l0,
    anim_0405__v1_l0,
    anim_0405__v2_l0,
};

const s32 anim_0406__v0_l0[] = {
    -2, 19, (((u16)16 << 0) | ((u16)0xE0 << 16)), -1, 0x101FA, 16, -6, 0, (((-8 & 0xFF) << 0) | ((-19 & 0xFF) << 8) | ((6 & 0xFF) << 16) | ((-2 & 0xFF) << 24)), 4, 0,

        -1, 0x1020A, 12, -6, 0, (((-10 & 0xFF) << 0) | ((-18 & 0xFF) << 8) | ((8 & 0xFF) << 16) | ((-3 & 0xFF) << 24)), 4, 1,

            -1, 0x10216, 20, -6, 0, (((-10 & 0xFF) << 0) | ((-31 & 0xFF) << 8) | ((12 & 0xFF) << 16) | ((-7 & 0xFF) << 24)), 6, 2,

                -1, 0x1022A, 20, -6, 0, (((-13 & 0xFF) << 0) | ((-22 & 0xFF) << 8) | ((10 & 0xFF) << 16) | ((-5 & 0xFF) << 24)), 20, 3,

                    -1, 0x1020A, 12, -6, 0, (((-11 & 0xFF) << 0) | ((-18 & 0xFF) << 8) | ((9 & 0xFF) << 16) | ((-2 & 0xFF) << 24)), 4, 1,

                        -4,
};

const s32 anim_0406__v1_l0[] = {
    -2, 19, (((u16)16 << 0) | ((u16)0xE0 << 16)), -1, 0x1023E, 16, -6, 0, (((-10 & 0xFF) << 0) | ((-21 & 0xFF) << 8) | ((7 & 0xFF) << 16) | ((-1 & 0xFF) << 24)), 7, 4,

        -1, 0x1024E, 16, -6, 0, (((-10 & 0xFF) << 0) | ((-19 & 0xFF) << 8) | ((7 & 0xFF) << 16) | ((-2 & 0xFF) << 24)), 7, 5,

            -3, 19,
};

const s32 *const anim_0406[2] = {
    anim_0406__v0_l0,
    anim_0406__v1_l0,
};

const s32 anim_0407__v0_l0[] = {
    -1, 0x1025E, 64, -2, 20, (((u16)16 << 0) | ((u16)0x90 << 16)), -6, 0, (((-15 & 0xFF) << 0) | ((-29 & 0xFF) << 8) | ((14 & 0xFF) << 16) | ((-1 & 0xFF) << 24)), 6, 0,

        -6, 0, (((-15 & 0xFF) << 0) | ((-29 & 0xFF) << 8) | ((14 & 0xFF) << 16) | ((-1 & 0xFF) << 24)), 6, 1,

            -6, 0, (((-15 & 0xFF) << 0) | ((-29 & 0xFF) << 8) | ((14 & 0xFF) << 16) | ((-1 & 0xFF) << 24)), 6, 2,

                -6, 0, (((-15 & 0xFF) << 0) | ((-29 & 0xFF) << 8) | ((14 & 0xFF) << 16) | ((-1 & 0xFF) << 24)), 6, 3,

                    -4,
};

const s32 *const anim_0407[1] = {
    anim_0407__v0_l0,
};

const s32 anim_0408__v0_l0[] = {
    -2, 17, (((u16)16 << 0) | ((u16)0xC0 << 16)), -1, 0x1029E, 4, -6, 0, (((-4 & 0xFF) << 0) | ((-4 & 0xFF) << 8) | ((4 & 0xFF) << 16) | ((5 & 0xFF) << 24)), 1, 0,

        -4,
};

const s32 *const anim_0408[1] = {
    anim_0408__v0_l0,
};

const s32 anim_0409__v0_l0[] = {
    -2, 17, (((u16)16 << 0) | ((u16)0xC0 << 16)), -1, 0x102A2, 1, -6, 0, (((-3 & 0xFF) << 0) | ((-3 & 0xFF) << 8) | ((3 & 0xFF) << 16) | ((3 & 0xFF) << 24)), 1, 0,

        -4,
};

const s32 *const anim_0409[1] = {
    anim_0409__v0_l0,
};

const s32 anim_0410__v0_l0[] = {
    -2, 17, (((u16)16 << 0) | ((u16)0xC0 << 16)), -1, 0x102A3, 4, -6, 0, (((-3 & 0xFF) << 0) | ((-3 & 0xFF) << 8) | ((3 & 0xFF) << 16) | ((3 & 0xFF) << 24)), 3, 0,

        -1, 0x102A7, 4, -6, 0, (((-3 & 0xFF) << 0) | ((-3 & 0xFF) << 8) | ((3 & 0xFF) << 16) | ((3 & 0xFF) << 24)), 3, 1,

            -3, 19,
};

const s32 *const anim_0410[1] = {
    anim_0410__v0_l0,
};

const s32 anim_0411__v0_l0[] = {
    -2, 21, (((u16)16 << 0) | ((u16)0xE0 << 16)), -1, 0x102AB, 8, -6, 0, (((-6 & 0xFF) << 0) | ((-14 & 0xFF) << 8) | ((6 & 0xFF) << 16) | ((-2 & 0xFF) << 24)), 5, 0,

        -1, 0x102B3, 8, 5, 1,

            -3, 16,
};

const s32 anim_0411__v1_l0[] = {
    -2, 21, (((u16)16 << 0) | ((u16)0xE0 << 16)), -1, 0x102BB, 16, -6, 0, (((-10 & 0xFF) << 0) | ((-18 & 0xFF) << 8) | ((10 & 0xFF) << 16) | ((2 & 0xFF) << 24)), 5, 2,

        -1, 0x102CB, 16, 5, 3,

            -3, 16,
};

const s32 *const anim_0411[2] = {
    anim_0411__v0_l0,
    anim_0411__v1_l0,
};

const s32 anim_0412__v0_l0[] = {
    -2, 22, (((u16)16 << 0) | ((u16)0xD0 << 16)), -1, 0x102DB, 4, -6, 0, (((-8 & 0xFF) << 0) | ((-1 & 0xFF) << 8) | ((8 & 0xFF) << 16) | ((13 & 0xFF) << 24)), 30, 0,

        -4,
};

const s32 anim_0412__v1_l0[] = {
    -2, 22, (((u16)16 << 0) | ((u16)0xD0 << 16)), -1, 0x102DF, 6, -6, 0, (((-8 & 0xFF) << 0) | ((2 & 0xFF) << 8) | ((8 & 0xFF) << 16) | ((16 & 0xFF) << 24)), 3, 1,

        -1, 0x102E5, 6, 3, 2,

            -3, 16,
};

const s32 anim_0412__v2_l0[] = {
    -2, 22, (((u16)16 << 0) | ((u16)0xD0 << 16)), -1, 0x102EB, 4, -6, 0, (((-8 & 0xFF) << 0) | ((-1 & 0xFF) << 8) | ((8 & 0xFF) << 16) | ((13 & 0xFF) << 24)), 20, 3,

        -4,
};

const s32 *const anim_0412[3] = {
    anim_0412__v0_l0,
    anim_0412__v1_l0,
    anim_0412__v2_l0,
};

const s32 anim_0413__v0_l0[] = {
    -2, 23, (((u16)16 << 0) | ((u16)0xC0 << 16)), -1, 0x102EF, 4, -6, 0, (((-6 & 0xFF) << 0) | ((-22 & 0xFF) << 8) | ((6 & 0xFF) << 16) | ((-5 & 0xFF) << 24)), 4, 0,

        -1, 0x102F3, 4, 4, 1,

            -1, 0x102F7, 8, 4, 2,

                -3, 21,
};

const s32 anim_0413__v1_l0[] = {
    -2, 23, (((u16)16 << 0) | ((u16)0xC0 << 16)), -1, 0x102FF, 6, 5, 3,

        -1, 0x10305, 6, 5, 4,

            -4,
};

const s32 *const anim_0413[2] = {
    anim_0413__v0_l0,
    anim_0413__v1_l0,
};

const s32 anim_0414__v0_l0[] = {
    -2, 23, (((u16)16 << 0) | ((u16)0xC0 << 16)), -1, 0x1030B, 1, -6, 0, (((-3 & 0xFF) << 0) | ((-3 & 0xFF) << 8) | ((3 & 0xFF) << 16) | ((3 & 0xFF) << 24)), 3, 0,

        -1, 0x1030C, 1, 3, 1,

            -3, 16,
};

const s32 *const anim_0414[1] = {
    anim_0414__v0_l0,
};

const s32 anim_0415__v0_l0[] = {
    -2, 24, (((u16)16 << 0) | ((u16)0xD0 << 16)), -1, 0x1030D, 16, -6, 0, (((-10 & 0xFF) << 0) | ((-26 & 0xFF) << 8) | ((10 & 0xFF) << 16) | ((2 & 0xFF) << 24)), 5, 0,

        -1, 0x1031D, 16, -6, 0, (((-10 & 0xFF) << 0) | ((-26 & 0xFF) << 8) | ((10 & 0xFF) << 16) | ((2 & 0xFF) << 24)), 5, 1,

            -3, 19,
};

const s32 anim_0415__v1_l0[] = {
    -2, 24, (((u16)16 << 0) | ((u16)0xD0 << 16)), -1, 0x1032D, 20, -6, 0, (((-10 & 0xFF) << 0) | ((-26 & 0xFF) << 8) | ((10 & 0xFF) << 16) | ((2 & 0xFF) << 24)), 5, 2,

        -1, 0x10341, 20, -6, 0, (((-10 & 0xFF) << 0) | ((-26 & 0xFF) << 8) | ((10 & 0xFF) << 16) | ((2 & 0xFF) << 24)), 10, 3,

            -1, 0x1032D, 20, -6, 0, (((-10 & 0xFF) << 0) | ((-26 & 0xFF) << 8) | ((10 & 0xFF) << 16) | ((2 & 0xFF) << 24)), 5, 2,

                -4,
};

const s32 *const anim_0415[2] = {
    anim_0415__v0_l0,
    anim_0415__v1_l0,
};

const s32 anim_0416__v0_l0[] = {
    -2, 25, (((u16)16 << 0) | ((u16)0xD0 << 16)), -1, 0x10355, 1, -6, 0, (((-6 & 0xFF) << 0) | ((-6 & 0xFF) << 8) | ((7 & 0xFF) << 16) | ((7 & 0xFF) << 24)), 4, 0,

        -1, 0x10356, 4, -6, 0, (((-16 & 0xFF) << 0) | ((-16 & 0xFF) << 8) | ((16 & 0xFF) << 16) | ((16 & 0xFF) << 24)), 4, 1,

            -1, 0x1035A, 9, -6, 0, (((-16 & 0xFF) << 0) | ((-16 & 0xFF) << 8) | ((16 & 0xFF) << 16) | ((16 & 0xFF) << 24)), 4, 2,

                -1, 0x10363, 16, -6, 0, (((-24 & 0xFF) << 0) | ((-24 & 0xFF) << 8) | ((24 & 0xFF) << 16) | ((24 & 0xFF) << 24)), 4, 3,

                    -1, 0x10373, 16, -6, 0, (((-24 & 0xFF) << 0) | ((-24 & 0xFF) << 8) | ((24 & 0xFF) << 16) | ((24 & 0xFF) << 24)), 4, 4,

                        -4,
};

const s32 *const anim_0416[1] = {
    anim_0416__v0_l0,
};

const s32 anim_0417__v0_l0[] = {
    -2, 26, (((u16)16 << 0) | ((u16)0xE0 << 16)), -1, 0x10383, 15, -6, 0, (((-21 & 0xFF) << 0) | ((-29 & 0xFF) << 8) | ((21 & 0xFF) << 16) | ((-8 & 0xFF) << 24)), 4, 0,

        -1, 0x10392, 15, 4, 1,

            -1, 0x103A1, 15, 4, 2,

                -3, 21,
};

const s32 anim_0417__v1_l0[] = {
    -2, 26, (((u16)16 << 0) | ((u16)0xE0 << 16)), -1, 0x103B0, 12, -6, 0, (((-21 & 0xFF) << 0) | ((-29 & 0xFF) << 8) | ((21 & 0xFF) << 16) | ((-8 & 0xFF) << 24)), 4, 3,

        -1, 0x103BC, 12, 4, 4,

            -1, 0x103C8, 15, 4, 5,

                -4,
};

const s32 *const anim_0417[2] = {
    anim_0417__v0_l0,
    anim_0417__v1_l0,
};

const s32 anim_0418__v0_l0[] = {
    -2, 24, (((u16)16 << 0) | ((u16)0xC0 << 16)), -1, 0x103D7, 36, -6, 0, (((-10 & 0xFF) << 0) | ((-42 & 0xFF) << 8) | ((10 & 0xFF) << 16) | ((-22 & 0xFF) << 24)), -6, 1, (((-14 & 0xFF) << 0) | ((-22 & 0xFF) << 8) | ((14 & 0xFF) << 16) | ((2 & 0xFF) << 24)), 5, 0,

        -1, 0x103FB, 36, 5, 1,

            -1, 0x1041F, 24, 5, 2,

                -1, 0x10437, 36, 5, 3,

                    -3, 29,
};

const s32 *const anim_0418[1] = {
    anim_0418__v0_l0,
};

const s32 anim_0419__v0_l0[] = {
    -2, 24, (((u16)16 << 0) | ((u16)0xD0 << 16)), -1, 0x1045B, 4, -6, 0, (((-3 & 0xFF) << 0) | ((-3 & 0xFF) << 8) | ((3 & 0xFF) << 16) | ((3 & 0xFF) << 24)), 4, 0,

        -1, 0x1045F, 4, -6, 0, (((-3 & 0xFF) << 0) | ((-3 & 0xFF) << 8) | ((3 & 0xFF) << 16) | ((3 & 0xFF) << 24)), 4, 1,

            -3, 19,
};

const s32 *const anim_0419[1] = {
    anim_0419__v0_l0,
};

const s32 anim_0420__v0_l0[] = {
    -2, 26, (((u16)16 << 0) | ((u16)0xE0 << 16)), -1, 0x10463, 4, -6, 0, (((-6 & 0xFF) << 0) | ((-5 & 0xFF) << 8) | ((6 & 0xFF) << 16) | ((6 & 0xFF) << 24)), 1, 0,

        -4,
};

const s32 *const anim_0420[1] = {
    anim_0420__v0_l0,
};

const s32 anim_0421__v0_l0[] = {
    -2, 26, (((u16)16 << 0) | ((u16)0xE0 << 16)), -1, 0x10467, 1, 1, 0,

        -4,
};

const s32 *const anim_0421[1] = {
    anim_0421__v0_l0,
};

const s32 anim_0422__v0_l0[] = {
    -2, 27, (((u16)16 << 0) | ((u16)0xC0 << 16)), -1, 0x10468, 6, -6, 0, (((-6 & 0xFF) << 0) | ((-20 & 0xFF) << 8) | ((6 & 0xFF) << 16) | ((1 & 0xFF) << 24)), 10, 0,

        -1, 0x1046E, 6, -6, 0, (((-6 & 0xFF) << 0) | ((-19 & 0xFF) << 8) | ((6 & 0xFF) << 16) | ((1 & 0xFF) << 24)), 3, 1,

            -1, 0x10474, 8, -6, 0, (((-6 & 0xFF) << 0) | ((-20 & 0xFF) << 8) | ((6 & 0xFF) << 16) | ((1 & 0xFF) << 24)), 6, 2,

                -4,
};

const s32 anim_0422__v1_l0[] = {
    -2, 27, (((u16)16 << 0) | ((u16)0xC0 << 16)), -1, 0x10468, 6, -6, 0, (((-6 & 0xFF) << 0) | ((-20 & 0xFF) << 8) | ((6 & 0xFF) << 16) | ((1 & 0xFF) << 24)), 6, 0,

        -1, 0x1047C, 8, -6, 0, (((-6 & 0xFF) << 0) | ((-20 & 0xFF) << 8) | ((6 & 0xFF) << 16) | ((1 & 0xFF) << 24)), 6, 3,

            -1, 0x10468, 6, -6, 0, (((-6 & 0xFF) << 0) | ((-20 & 0xFF) << 8) | ((6 & 0xFF) << 16) | ((1 & 0xFF) << 24)), 6, 0,

                -1, 0x10484, 8, -6, 0, (((-6 & 0xFF) << 0) | ((-21 & 0xFF) << 8) | ((6 & 0xFF) << 16) | ((1 & 0xFF) << 24)), 6, 4,

                    -3, 35,
};

const s32 *const anim_0422[2] = {
    anim_0422__v0_l0,
    anim_0422__v1_l0,
};

const s32 anim_0423__v0_l0[] = {
    -2, 27, (((u16)16 << 0) | ((u16)0xC0 << 16)), -1, 0x1048C, 6, -6, 0, (((-20 & 0xFF) << 0) | ((-6 & 0xFF) << 8) | ((1 & 0xFF) << 16) | ((6 & 0xFF) << 24)), 10, 0,

        -1, 0x10492, 6, -6, 0, (((-19 & 0xFF) << 0) | ((-6 & 0xFF) << 8) | ((1 & 0xFF) << 16) | ((6 & 0xFF) << 24)), 3, 1,

            -1, 0x10498, 8, -6, 0, (((-21 & 0xFF) << 0) | ((-6 & 0xFF) << 8) | ((1 & 0xFF) << 16) | ((6 & 0xFF) << 24)), 6, 2,

                -4,
};

const s32 anim_0423__v1_l0[] = {
    -2, 27, (((u16)16 << 0) | ((u16)0xC0 << 16)), -1, 0x1048C, 6, -6, 0, (((-19 & 0xFF) << 0) | ((-6 & 0xFF) << 8) | ((1 & 0xFF) << 16) | ((6 & 0xFF) << 24)), 5, 0,

        -1, 0x104A0, 8, -6, 0, (((-21 & 0xFF) << 0) | ((-6 & 0xFF) << 8) | ((1 & 0xFF) << 16) | ((6 & 0xFF) << 24)), 5, 3,

            -1, 0x1048C, 6, -6, 0, (((-20 & 0xFF) << 0) | ((-6 & 0xFF) << 8) | ((1 & 0xFF) << 16) | ((6 & 0xFF) << 24)), 5, 0,

                -1, 0x104A8, 8, -6, 0, (((-21 & 0xFF) << 0) | ((-6 & 0xFF) << 8) | ((1 & 0xFF) << 16) | ((6 & 0xFF) << 24)), 5, 4,

                    -3, 35,
};

const s32 *const anim_0423[2] = {
    anim_0423__v0_l0,
    anim_0423__v1_l0,
};

const s32 anim_0424__v0_l0[] = {
    -2, 27, (((u16)16 << 0) | ((u16)0xC0 << 16)), -1, 0x104B0, 10, -6, 0, (((-14 & 0xFF) << 0) | ((-5 & 0xFF) << 8) | ((14 & 0xFF) << 16) | ((3 & 0xFF) << 24)), 4, 0,

        -1, 0x104BA, 10, 4, 1,

            -1, 0x104C4, 10, 4, 2,

                -3, 21,
};

const s32 *const anim_0424[1] = {
    anim_0424__v0_l0,
};

const s32 anim_0425__v0_l0[] = {
    -2, 28, (((u16)16 << 0) | ((u16)0xE0 << 16)), -1, 0x104CE, 6, -6, 0, (((-6 & 0xFF) << 0) | ((-8 & 0xFF) << 8) | ((6 & 0xFF) << 16) | ((6 & 0xFF) << 24)), 6, 0,

        -1, 0x104D4, 8, 6, 1,

            -1, 0x104DC, 3, 6, 2,

                -3, 21,
};

const s32 anim_0425__v1_l0[] = {
    -2, 28, (((u16)16 << 0) | ((u16)0xE0 << 16)), -1, 0x104DF, 15, -6, 0, (((-16 & 0xFF) << 0) | ((-16 & 0xFF) << 8) | ((16 & 0xFF) << 16) | ((16 & 0xFF) << 24)), 2, 3,

        -1, 0x104EE, 15, 2, 4,

            -1, 0x104FD, 15, 2, 5,

                -3, 21,
};

const s32 *const anim_0425[2] = {
    anim_0425__v0_l0,
    anim_0425__v1_l0,
};

const s32 anim_0426__v0_l0[] = {
    -2, 29, (((u16)16 << 0) | ((u16)0xD0 << 16)), -1, 0x1050C, 8, -6, 0, (((-5 & 0xFF) << 0) | ((-23 & 0xFF) << 8) | ((7 & 0xFF) << 16) | ((1 & 0xFF) << 24)), 5, 0,

        -1, 0x10514, 6, 5, 1,

            -1, 0x1051A, 8, 5, 2,

                -1, 0x10514, 6, 5, 1,

                    -3, 26,
};

const s32 anim_0426__v1_l0[] = {
    -2, 29, (((u16)16 << 0) | ((u16)0xD0 << 16)), -1, 0x10522, 6, -6, 0, (((-6 & 0xFF) << 0) | ((-23 & 0xFF) << 8) | ((6 & 0xFF) << 16) | ((1 & 0xFF) << 24)), 13, 3,

        -1, 0x10528, 6, 5, 4,

            -4,
};

const s32 *const anim_0426[2] = {
    anim_0426__v0_l0,
    anim_0426__v1_l0,
};

const s32 anim_0427__v0_l0[] = {
    -2, 27, (((u16)16 << 0) | ((u16)0xC0 << 16)), -1, 0x1052E, 1, -6, 0, (((-3 & 0xFF) << 0) | ((-3 & 0xFF) << 8) | ((3 & 0xFF) << 16) | ((3 & 0xFF) << 24)), 1, 0,

        -4,
};

const s32 *const anim_0427[1] = {
    anim_0427__v0_l0,
};

const s32 anim_0428__v0_l0[] = {
    -2, 29, (((u16)16 << 0) | ((u16)0xD0 << 16)), -1, 0x1052F, 4, -6, 0, (((-5 & 0xFF) << 0) | ((-10 & 0xFF) << 8) | ((5 & 0xFF) << 16) | ((1 & 0xFF) << 24)), 1, 0,

        -4,
};

const s32 *const anim_0428[1] = {
    anim_0428__v0_l0,
};

const s32 anim_0429__v0_l0[] = {
    -2, 29, (((u16)16 << 0) | ((u16)0xD0 << 16)), -1, 0x10533, 1, 1, 0,

        -4,
};

const s32 anim_0429__v1_l0[] = {
    -2, 29, (((u16)16 << 0) | ((u16)0xD0 << 16)), -1, 0x10534, 1, 1, 1,

        -4,
};

const s32 *const anim_0429[2] = {
    anim_0429__v0_l0,
    anim_0429__v1_l0,
};

const s32 anim_0430__v0_l0[] = {
    -2, 30, (((u16)16 << 0) | ((u16)0xE0 << 16)), -1, 0x10535, 18, -6, 0, (((-12 & 0xFF) << 0) | ((-16 & 0xFF) << 8) | ((12 & 0xFF) << 16) | ((2 & 0xFF) << 24)), 5, 0,

        -1, 0x10547, 18, 5, 1,

            -1, 0x10535, 18, 5, 0,

                -1, 0x10559, 18, 5, 2,

                    -3, 26,
};

const s32 anim_0430__v1_l0[] = {
    -2, 30, (((u16)16 << 0) | ((u16)0xE0 << 16)), -1, 0x1056B, 18, -6, 0, (((-12 & 0xFF) << 0) | ((-16 & 0xFF) << 8) | ((12 & 0xFF) << 16) | ((2 & 0xFF) << 24)), 13, 3,

        -1, 0x1057D, 21, 2, 4,

            -1, 0x10592, 24, -6, 0, (((-12 & 0xFF) << 0) | ((-16 & 0xFF) << 8) | ((12 & 0xFF) << 16) | ((2 & 0xFF) << 24)), -6, 1, (((-38 & 0xFF) << 0) | ((-16 & 0xFF) << 8) | ((-12 & 0xFF) << 16) | ((2 & 0xFF) << 24)), 12, 5,

                -1, 0x1057D, 21, 2, 4,

                    -1, 0x1056B, 18, -6, 0, (((-12 & 0xFF) << 0) | ((-16 & 0xFF) << 8) | ((12 & 0xFF) << 16) | ((2 & 0xFF) << 24)), 2, 3,

                        -4,
};

const s32 anim_0430__v2_l0[] = {
    -2, 30, (((u16)16 << 0) | ((u16)0xE0 << 16)), -1, 0x105AA, 18, -6, 0, (((-12 & 0xFF) << 0) | ((-16 & 0xFF) << 8) | ((12 & 0xFF) << 16) | ((2 & 0xFF) << 24)), 7, 6,

        -1, 0x105BC, 18, -6, 0, (((-14 & 0xFF) << 0) | ((-16 & 0xFF) << 8) | ((12 & 0xFF) << 16) | ((2 & 0xFF) << 24)), 7, 7,

            -4,
};

const s32 *const anim_0430[3] = {
    anim_0430__v0_l0,
    anim_0430__v1_l0,
    anim_0430__v2_l0,
};

const s32 anim_0431__v0_l0[] = {
    -2, 18, (((u16)16 << 0) | ((u16)0xD0 << 16)), -1, 0x105CE, 4, -6, 0, (((-6 & 0xFF) << 0) | ((-6 & 0xFF) << 8) | ((6 & 0xFF) << 16) | ((6 & 0xFF) << 24)), 1, 0,

        -4,
};

const s32 anim_0431__v1_l0[] = {
    -2, 18, (((u16)16 << 0) | ((u16)0xD0 << 16)), -1, 0x105D2, 4, -6, 0, (((-6 & 0xFF) << 0) | ((-6 & 0xFF) << 8) | ((6 & 0xFF) << 16) | ((6 & 0xFF) << 24)), 1, 1,

        -4,
};

const s32 anim_0431__v2_l0[] = {
    -2, 18, (((u16)16 << 0) | ((u16)0xD0 << 16)), -1, 0x105D6, 4, -6, 0, (((-5 & 0xFF) << 0) | ((-5 & 0xFF) << 8) | ((5 & 0xFF) << 16) | ((5 & 0xFF) << 24)), 1, 2,

        -4,
};

const s32 *const anim_0431[3] = {
    anim_0431__v0_l0,
    anim_0431__v1_l0,
    anim_0431__v2_l0,
};

const s32 anim_0432__v0_l0[] = {
    -2, 31, (((u16)16 << 0) | ((u16)0xD0 << 16)), -1, 0x105DA, 16, -6, 0, (((-10 & 0xFF) << 0) | ((-26 & 0xFF) << 8) | ((10 & 0xFF) << 16) | ((-6 & 0xFF) << 24)), 5, 0,

        -1, 0x105EA, 16, 5, 1,

            -1, 0x105FA, 16, 5, 2,

                -3, 21,
};

const s32 anim_0432__v1_l0[] = {
    -2, 31, (((u16)16 << 0) | ((u16)0xD0 << 16)), -1, 0x1060A, 20, -6, 0, (((-10 & 0xFF) << 0) | ((-26 & 0xFF) << 8) | ((10 & 0xFF) << 16) | ((-6 & 0xFF) << 24)), 4, 3,

        -1, 0x1061E, 20, 3, 4,

            -1, 0x1060A, 20, 4, 3,

                -4,
};

const s32 *const anim_0432[2] = {
    anim_0432__v0_l0,
    anim_0432__v1_l0,
};

const s32 anim_0433__v0_l0[] = {
    -2, 31, (((u16)16 << 0) | ((u16)0xD0 << 16)), -1, 0x10632, 8, -6, 0, (((-8 & 0xFF) << 0) | ((-24 & 0xFF) << 8) | ((8 & 0xFF) << 16) | ((-4 & 0xFF) << 24)), 5, 0,

        -1, 0x1063A, 8, 5, 1,

            -1, 0x10642, 8, 5, 2,

                -3, 21,
};

const s32 anim_0433__v1_l0[] = {
    -2, 31, (((u16)16 << 0) | ((u16)0xD0 << 16)), -1, 0x10632, 8, -6, 0, (((-8 & 0xFF) << 0) | ((-24 & 0xFF) << 8) | ((8 & 0xFF) << 16) | ((-4 & 0xFF) << 24)), 5, 0,

        -1, 0x1064A, 8, 3, 3,

            -1, 0x10652, 8, 3, 4,

                -4,
};

const s32 *const anim_0433[2] = {
    anim_0433__v0_l0,
    anim_0433__v1_l0,
};

const s32 anim_0434__v0_l0[] = {
    -2, 21, (((u16)16 << 0) | ((u16)0xE0 << 16)), -1, 0x1065A, 4, 1, 0,

        -4,
};

const s32 anim_0434__v1_l0[] = {
    -2, 21, (((u16)16 << 0) | ((u16)0xE0 << 16)), -1, 0x1065E, 4, 3, 1,

        -1, 0x10662, 12, 3, 2,

            -1, 0x1066E, 16, -6, 0, (((-7 & 0xFF) << 0) | ((-20 & 0xFF) << 8) | ((7 & 0xFF) << 16) | ((2 & 0xFF) << 24)), 50, 3,

                -1, 0x10662, 12, -6, 0, (((-7 & 0xFF) << 0) | ((-13 & 0xFF) << 8) | ((7 & 0xFF) << 16) | ((2 & 0xFF) << 24)), 10, 2,

                    -1, 0x1065E, 4, 6, 1,

                        -4,
};

const s32 *const anim_0434[2] = {
    anim_0434__v0_l0,
    anim_0434__v1_l0,
};

const s32 anim_0435__v0_l0[] = {
    -2, 31, (((u16)16 << 0) | ((u16)0xD0 << 16)), -1, 0x1067E, 4, -6, 0, (((-4 & 0xFF) << 0) | ((-4 & 0xFF) << 8) | ((4 & 0xFF) << 16) | ((4 & 0xFF) << 24)), 3, 0,

        -1, 0x10682, 4, 3, 1,

            -3, 16,
};

const s32 *const anim_0435[1] = {
    anim_0435__v0_l0,
};

const s32 anim_0436__v0_l0[] = {
    -2, 31, (((u16)16 << 0) | ((u16)0xD0 << 16)), -1, 0x10686, 4, -6, 0, (((-4 & 0xFF) << 0) | ((-4 & 0xFF) << 8) | ((4 & 0xFF) << 16) | ((4 & 0xFF) << 24)), 3, 0,

        -1, 0x1068A, 4, -6, 0, (((-4 & 0xFF) << 0) | ((-4 & 0xFF) << 8) | ((4 & 0xFF) << 16) | ((4 & 0xFF) << 24)), 1, 1,

            -3, 19,
};

const s32 *const anim_0436[1] = {
    anim_0436__v0_l0,
};

const s32 anim_0437__v0_l0[] = {
    -2, 32, (((u16)16 << 0) | ((u16)0xF0 << 16)), -1, 0x1068E, 4, 8, 0,

        -1, 0x10692, 4, 8, 1,

            -1, 0x10696, 4, 8, 2,

                -1, 0x10692, 4, 8, 1,

                    -3, 23,
};

const s32 *const anim_0437[1] = {
    anim_0437__v0_l0,
};

const s32 anim_0438__v0_l0[] = {
    -2, 32, (((u16)16 << 0) | ((u16)0xF0 << 16)), -1, 0x1069A, 4, 8, 0,

        -1, 0x1069E, 4, 8, 1,

            -1, 0x106A2, 4, 8, 2,

                -1, 0x1069E, 4, 8, 1,

                    -3, 23,
};

const s32 *const anim_0438[1] = {
    anim_0438__v0_l0,
};

const s32 anim_0439__v0_l0[] = {
    -2, 32, (((u16)16 << 0) | ((u16)0xF0 << 16)), -1, 0x106A6, 4, 8, 0,

        -1, 0x106AA, 4, 8, 1,

            -1, 0x106AE, 4, 8, 2,

                -1, 0x106AA, 4, 8, 1,

                    -3, 23,
};

const s32 *const anim_0439[1] = {
    anim_0439__v0_l0,
};

const s32 anim_0440__v0_l0[] = {
    -2, 32, (((u16)16 << 0) | ((u16)0xF0 << 16)), -1, 0x106B2, 4, 8, 0,

        -1, 0x106B6, 4, 2, 1,

            -1, 0x106BA, 4, 10, 2,

                -1, 0x106B6, 4, 2, 1,

                    -3, 23,
};

const s32 *const anim_0440[1] = {
    anim_0440__v0_l0,
};

const s32 anim_0441__v0_l0[] = {
    -2, 32, (((u16)16 << 0) | ((u16)0xF0 << 16)), -1, 0x106BE, 4, 8, 0,

        -1, 0x106C2, 4, 8, 1,

            -1, 0x106C6, 4, 8, 2,

                -1, 0x106C2, 4, 8, 1,

                    -3, 23,
};

const s32 *const anim_0441[1] = {
    anim_0441__v0_l0,
};

const s32 anim_0442__v0_l0[] = {
    -2, 32, (((u16)16 << 0) | ((u16)0xF0 << 16)), -1, 0x106CA, 4, 3, 0,

        -1, 0x106CE, 4, 3, 1,

            -1, 0x106D2, 4, 3, 2,

                -3, 18,
};

const s32 *const anim_0442[1] = {
    anim_0442__v0_l0,
};

const s32 anim_0443__v0_l0[] = {
    -2, 32, (((u16)16 << 0) | ((u16)0xF0 << 16)), -1, 0x106D6, 4, 8, 0,

        -1, 0x106DA, 4, 8, 1,

            -1, 0x106DE, 4, 8, 2,

                -1, 0x106DA, 4, 8, 1,

                    -3, 23,
};

const s32 *const anim_0443[1] = {
    anim_0443__v0_l0,
};

const s32 anim_0444__v0_l0[] = {
    -2, 32, (((u16)16 << 0) | ((u16)0xF0 << 16)), -1, 0x106E2, 4, 8, 0,

        -1, 0x106E6, 4, 8, 1,

            -1, 0x106EA, 4, 8, 2,

                -1, 0x106E6, 4, 8, 1,

                    -3, 23,
};

const s32 *const anim_0444[1] = {
    anim_0444__v0_l0,
};

const s32 anim_0445__v0_l0[] = {
    -2, 32, (((u16)16 << 0) | ((u16)0xF0 << 16)), -1, 0x106EE, 4, 8, 0,

        -1, 0x106F2, 4, 8, 1,

            -1, 0x106F6, 4, 8, 2,

                -1, 0x106F2, 4, 8, 1,

                    -3, 23,
};

const s32 *const anim_0445[1] = {
    anim_0445__v0_l0,
};

const s32 anim_0446__v0_l0[] = {
    -2, 32, (((u16)16 << 0) | ((u16)0xF0 << 16)), -1, 0x106FA, 4, 8, 0,

        -1, 0x106FE, 4, 8, 1,

            -1, 0x10702, 4, 8, 2,

                -1, 0x106FE, 4, 8, 1,

                    -3, 23,
};

const s32 *const anim_0446[1] = {
    anim_0446__v0_l0,
};

const s32 anim_0447__v0_l0[] = {
    -2, 32, (((u16)16 << 0) | ((u16)0xF0 << 16)), -1, 0x10706, 4, 8, 0,

        -1, 0x1070A, 4, 8, 1,

            -1, 0x1070E, 4, 8, 2,

                -1, 0x1070A, 4, 8, 1,

                    -3, 23,
};

const s32 *const anim_0447[1] = {
    anim_0447__v0_l0,
};

const s32 anim_0448__v0_l0[] = {
    -2, 32, (((u16)16 << 0) | ((u16)0xF0 << 16)), -1, 0x10712, 4, 3, 0,

        -1, 0x10716, 4, 3, 1,

            -1, 0x1071A, 4, 3, 2,

                -3, 18,
};

const s32 *const anim_0448[1] = {
    anim_0448__v0_l0,
};

const s32 anim_0449__v0_l0[] = {
    -2, 32, (((u16)16 << 0) | ((u16)0xF0 << 16)), -1, 0x1071E, 4, 8, 0,

        -1, 0x10722, 4, 8, 1,

            -1, 0x10726, 4, 8, 2,

                -1, 0x10722, 4, 8, 1,

                    -3, 23,
};

const s32 *const anim_0449[1] = {
    anim_0449__v0_l0,
};

const s32 anim_0450__v0_l0[] = {
    -2, 32, (((u16)16 << 0) | ((u16)0xF0 << 16)), -1, 0x1072A, 4, 6, 0,

        -1, 0x1072E, 4, 6, 1,

            -1, 0x10732, 4, 6, 2,

                -1, 0x1072E, 4, 6, 1,

                    -3, 23,
};

const s32 *const anim_0450[1] = {
    anim_0450__v0_l0,
};

const s32 anim_0451__v0_l0[] = {
    -2, 32, (((u16)16 << 0) | ((u16)0xF0 << 16)), -1, 0x10736, 4, 8, 0,

        -1, 0x1073A, 4, 8, 1,

            -1, 0x1073E, 4, 8, 2,

                -1, 0x1073A, 4, 8, 1,

                    -3, 23,
};

const s32 *const anim_0451[1] = {
    anim_0451__v0_l0,
};

const s32 anim_0452__v0_l0[] = {
    -2, 33, (((u16)16 << 0) | ((u16)0x70 << 16)), -1, 0x10742, 12, -6, 0, (((-7 & 0xFF) << 0) | ((-44 & 0xFF) << 8) | ((8 & 0xFF) << 16) | ((5 & 0xFF) << 24)), 3, 0,

        -3, 11,
};

const s32 anim_0452__v1_l0[] = {
    -2, 33, (((u16)16 << 0) | ((u16)0x70 << 16)), -1, 0x1074E, 18, -5, 169, 2, 1,

        -1, 0x10760, 15, 2, 2,

            -1, 0x1076F, 10, 2, 3,

                -1, 0x10779, 15, 2, 4,

                    -1, 0x10788, 18, 2, 5,

                        -1, 0x10742, 12, 2, 0,

                            -4,
};

const s32 anim_0452__v2_l0[] = {
    -2, 33, (((u16)16 << 0) | ((u16)0x70 << 16)), -1, 0x10742, 12, 3, 0,

        -1, 0x1079A, 12, 3, 6,

            -3, 13,
};

const s32 *const anim_0452[3] = {
    anim_0452__v0_l0,
    anim_0452__v1_l0,
    anim_0452__v2_l0,
};

const s32 anim_0453__v0_l0[] = {
    -2, 34, (((u16)16 << 0) | ((u16)0x90 << 16)), -1, 0x107A6, 30, 2, 0,

        -4,
};

const s32 anim_0453__v1_l0[] = {
    -2, 34, (((u16)16 << 0) | ((u16)0x90 << 16)), -1, 0x107C4, 20, 2, 1,

        -1, 0x107D8, 20, 2, 2,

            -1, 0x107EC, 30, 2, 3,

                -1, 0x1080A, 20, 2, 4,

                    -1, 0x1081E, 20, 2, 5,

                        -1, 0x107A6, 30, 2, 0,

                            -3, 33,
};

const s32 anim_0453__v2_l0[] = {
    -2, 34, (((u16)16 << 0) | ((u16)0x90 << 16)), -1, 0x10832, 36, 2, 6,

        -4,
};

const s32 *const anim_0453[3] = {
    anim_0453__v0_l0,
    anim_0453__v1_l0,
    anim_0453__v2_l0,
};

const s32 anim_0454__v0_l0[] = {
    -2, 35, (((u16)16 << 0) | ((u16)0x90 << 16)), -1, 0x10856, 4, 1, 0,

        -4,
};

const s32 anim_0454__v1_l0[] = {
    -2, 35, (((u16)16 << 0) | ((u16)0x90 << 16)), -1, 0x1085A, 8, 1, 1,

        -4,
};

const s32 anim_0454__v2_l0[] = {
    -2, 35, (((u16)16 << 0) | ((u16)0x90 << 16)), -1, 0x10862, 16, -6, 0, (((-16 & 0xFF) << 0) | ((-21 & 0xFF) << 8) | ((15 & 0xFF) << 16) | ((3 & 0xFF) << 24)), 1, 2,

        -4,
};

const s32 anim_0454__v3_l0[] = {
    -2, 35, (((u16)16 << 0) | ((u16)0x90 << 16)), -1, 0x10872, 16, -6, 0, (((-2 & 0xFF) << 0) | ((-30 & 0xFF) << 8) | ((22 & 0xFF) << 16) | ((1 & 0xFF) << 24)), 1, 3,

        -4,
};

const s32 *const anim_0454[4] = {
    anim_0454__v0_l0,
    anim_0454__v1_l0,
    anim_0454__v2_l0,
    anim_0454__v3_l0,
};

const s32 anim_0455__v0_l0[] = {
    -2, 33, (((u16)16 << 0) | ((u16)0x70 << 16)), -1, 0x10882, 12, -6, 0, (((-12 & 0xFF) << 0) | ((-17 & 0xFF) << 8) | ((12 & 0xFF) << 16) | ((-1 & 0xFF) << 24)), 3, 0,

        -4,
};

const s32 anim_0455__v1_l0[] = {
    -2, 33, (((u16)16 << 0) | ((u16)0x70 << 16)), -1, 0x1088E, 12, -6, 0, (((-13 & 0xFF) << 0) | ((-19 & 0xFF) << 8) | ((13 & 0xFF) << 16) | ((-1 & 0xFF) << 24)), 1, 1,

        -1, 0x1089A, 16, -6, 0, (((-13 & 0xFF) << 0) | ((-32 & 0xFF) << 8) | ((13 & 0xFF) << 16) | ((-1 & 0xFF) << 24)), 2, 2,

            -1, 0x108AA, 16, -6, 0, (((-13 & 0xFF) << 0) | ((-28 & 0xFF) << 8) | ((13 & 0xFF) << 16) | ((-1 & 0xFF) << 24)), 1, 3,

                -1, 0x108BA, 16, -6, 0, (((-13 & 0xFF) << 0) | ((-31 & 0xFF) << 8) | ((13 & 0xFF) << 16) | ((-1 & 0xFF) << 24)), 5, 4,

                    -1, 0x108AA, 16, -6, 0, (((-13 & 0xFF) << 0) | ((-28 & 0xFF) << 8) | ((13 & 0xFF) << 16) | ((-1 & 0xFF) << 24)), 3, 3,

                        -4,
};

const s32 anim_0455__v2_l0[] = {
    -2, 33, (((u16)16 << 0) | ((u16)0x70 << 16)), -1, 0x108CA, 12, -6, 0, (((-2 & 0xFF) << 0) | ((-29 & 0xFF) << 8) | ((16 & 0xFF) << 16) | ((0 & 0xFF) << 24)), 3, 5,

        -4,
};

const s32 anim_0455__v3_l0[] = {
    -2, 33, (((u16)16 << 0) | ((u16)0x70 << 16)), -1, 0x108D6, 12, -6, 0, (((-2 & 0xFF) << 0) | ((-29 & 0xFF) << 8) | ((14 & 0xFF) << 16) | ((0 & 0xFF) << 24)), 1, 6,

        -1, 0x108E2, 16, -6, 0, (((-2 & 0xFF) << 0) | ((-29 & 0xFF) << 8) | ((29 & 0xFF) << 16) | ((0 & 0xFF) << 24)), 2, 7,

            -1, 0x108F2, 16, -6, 0, (((-2 & 0xFF) << 0) | ((-29 & 0xFF) << 8) | ((25 & 0xFF) << 16) | ((0 & 0xFF) << 24)), 1, 8,

                -1, 0x10902, 16, -6, 0, (((-2 & 0xFF) << 0) | ((-29 & 0xFF) << 8) | ((28 & 0xFF) << 16) | ((0 & 0xFF) << 24)), 5, 9,

                    -1, 0x108F2, 16, -6, 0, (((-2 & 0xFF) << 0) | ((-29 & 0xFF) << 8) | ((25 & 0xFF) << 16) | ((0 & 0xFF) << 24)), 3, 8,

                        -4,
};

const s32 anim_0455__v4_l0[] = {
    -2, 33, (((u16)16 << 0) | ((u16)0x70 << 16)), -1, 0x10912, 9, -6, 0, (((0 & 0xFF) << 0) | ((-27 & 0xFF) << 8) | ((20 & 0xFF) << 16) | ((-4 & 0xFF) << 24)), -6, 1, (((9 & 0xFF) << 0) | ((-27 & 0xFF) << 8) | ((20 & 0xFF) << 16) | ((-16 & 0xFF) << 24)), 3, 10,

        -4,
};

const s32 anim_0455__v5_l0[] = {
    -2, 33, (((u16)16 << 0) | ((u16)0x70 << 16)), -1, 0x1091B, 9, -6, 0, (((0 & 0xFF) << 0) | ((-26 & 0xFF) << 8) | ((19 & 0xFF) << 16) | ((-4 & 0xFF) << 24)), 1, 11,

        -1, 0x10924, 16, -6, 0, (((0 & 0xFF) << 0) | ((-35 & 0xFF) << 8) | ((28 & 0xFF) << 16) | ((-4 & 0xFF) << 24)), 2, 12,

            -1, 0x10934, 16, -6, 0, (((0 & 0xFF) << 0) | ((-32 & 0xFF) << 8) | ((25 & 0xFF) << 16) | ((-4 & 0xFF) << 24)), 1, 13,

                -1, 0x10944, 16, -6, 0, (((0 & 0xFF) << 0) | ((-34 & 0xFF) << 8) | ((27 & 0xFF) << 16) | ((-4 & 0xFF) << 24)), 5, 14,

                    -1, 0x10934, 16, -6, 0, (((0 & 0xFF) << 0) | ((-32 & 0xFF) << 8) | ((25 & 0xFF) << 16) | ((-4 & 0xFF) << 24)), 3, 13,

                        -4,
};

const s32 anim_0455__v6_l0[] = {
    -2, 33, (((u16)16 << 0) | ((u16)0x70 << 16)), -1, 0x10954, 6, -6, 0, (((0 & 0xFF) << 0) | ((-23 & 0xFF) << 8) | ((20 & 0xFF) << 16) | ((-9 & 0xFF) << 24)), -6, 1, (((9 & 0xFF) << 0) | ((-23 & 0xFF) << 8) | ((20 & 0xFF) << 16) | ((-9 & 0xFF) << 24)), 1, 15,

        -4,
};

const s32 anim_0455__v7_l0[] = {
    -2, 33, (((u16)16 << 0) | ((u16)0x70 << 16)), -1, 0x1095A, 6, 2, 16,

        -1, 0x10960, 12, 1, 17,

            -1, 0x1096C, 12, 5, 18,

                -1, 0x10978, 12, 3, 19,

                    -4,
};

const s32 *const anim_0455[8] = {
    anim_0455__v0_l0, anim_0455__v1_l0, anim_0455__v2_l0, anim_0455__v3_l0,
    anim_0455__v4_l0, anim_0455__v5_l0, anim_0455__v6_l0, anim_0455__v7_l0,
};

const s32 anim_0456__v0_l0[] = {
    -2, 36, (((u16)16 << 0) | ((u16)0x80 << 16)), -1, 0x10984, 2, 1, 0,

        -4,
};

const s32 *const anim_0456[1] = {
    anim_0456__v0_l0,
};

const s32 anim_0457__v0_l0[] = {
    -2, 35, (((u16)16 << 0) | ((u16)0x90 << 16)), -1, 0x10986, 16, -6, 0, (((-14 & 0xFF) << 0) | ((-30 & 0xFF) << 8) | ((13 & 0xFF) << 16) | ((-2 & 0xFF) << 24)), 4, 0,

        -1, 0x10996, 16, -6, 0, (((-14 & 0xFF) << 0) | ((-30 & 0xFF) << 8) | ((13 & 0xFF) << 16) | ((-2 & 0xFF) << 24)), 4, 1,

            -1, 0x109A6, 16, -6, 0, (((-14 & 0xFF) << 0) | ((-30 & 0xFF) << 8) | ((13 & 0xFF) << 16) | ((-2 & 0xFF) << 24)), 4, 2,

                -1, 0x109B6, 16, -6, 0, (((-14 & 0xFF) << 0) | ((-30 & 0xFF) << 8) | ((13 & 0xFF) << 16) | ((-2 & 0xFF) << 24)), 4, 3,

                    -3, 35,
};

const s32 *const anim_0457[1] = {
    anim_0457__v0_l0,
};

const s32 anim_0458__v0_l0[] = {
    -2, 35, (((u16)16 << 0) | ((u16)0x90 << 16)), -1, 0x109C6, 24, -6, 0, (((-16 & 0xFF) << 0) | ((-28 & 0xFF) << 8) | ((16 & 0xFF) << 16) | ((-2 & 0xFF) << 24)), 1, 0,

        -4,
};

const s32 *const anim_0458[1] = {
    anim_0458__v0_l0,
};

const s32 anim_0459__v0_l0[] = {
    -1, 0x109DE, 1, -2, 35, (((u16)16 << 0) | ((u16)0x90 << 16)), 1, 0,

        -4,
};

const s32 *const anim_0459[1] = {
    anim_0459__v0_l0,
};

const s32 anim_0460__v0_l0[] = {
    -1, 0x109DF, 4, -2, 35, (((u16)16 << 0) | ((u16)0x90 << 16)), 1, 0,

        -4,
};

const s32 *const anim_0460[1] = {
    anim_0460__v0_l0,
};

const s32 anim_0461__v0_l0[] = {
    -2, 37, (((u16)16 << 0) | ((u16)0x70 << 16)), -1, 0x109E3, 18, -6, 0, (((-20 & 0xFF) << 0) | ((-11 & 0xFF) << 8) | ((20 & 0xFF) << 16) | ((4 & 0xFF) << 24)), 1, 0,

        -4,
};

const s32 anim_0461__v1_l0[] = {
    -2, 37, (((u16)16 << 0) | ((u16)0x70 << 16)), -1, 0x109F5, 18, -6, 0, (((-20 & 0xFF) << 0) | ((-11 & 0xFF) << 8) | ((20 & 0xFF) << 16) | ((4 & 0xFF) << 24)), 2, 1,

        -1, 0x10A07, 24, 3, 2,

            -1, 0x10A1F, 18, 2, 3,

                -1, 0x10A31, 24, 2, 4,

                    -1, 0x10A49, 18, 2, 5,

                        -1, 0x10A5B, 18, 2, 6,

                            -4,
};

const s32 *const anim_0461[2] = {
    anim_0461__v0_l0,
    anim_0461__v1_l0,
};

const s32 anim_0462__v0_l0[] = {
    -2, 38, (((u16)16 << 0) | ((u16)0xB0 << 16)), -1, 0x10A6D, 12, -6, 0, (((-15 & 0xFF) << 0) | ((-5 & 0xFF) << 8) | ((15 & 0xFF) << 16) | ((11 & 0xFF) << 24)), 1, 0,

        -4,
};

const s32 *const anim_0462[1] = {
    anim_0462__v0_l0,
};

const s32 anim_0463__v0_l0[] = {
    -2, 39, (((u16)16 << 0) | ((u16)0xB0 << 16)), -1, 0x10A79, 18, -6, 0, (((-24 & 0xFF) << 0) | ((-6 & 0xFF) << 8) | ((24 & 0xFF) << 16) | ((-4 & 0xFF) << 24)), 1, 0,

        -4,
};

const s32 *const anim_0463[1] = {
    anim_0463__v0_l0,
};

const s32 anim_0464__v0_l0[] = {
    -2, 33, (((u16)16 << 0) | ((u16)0x70 << 16)), -1, 0x10A8B, 18, 2, 0,

        -1, 0x10A9D, 18, 2, 1,

            -1, 0x10AAF, 18, 2, 2,

                -3, 18,
};

const s32 *const anim_0464[1] = {
    anim_0464__v0_l0,
};

const s32 anim_0465__v0_l0[] = {
    -2, 39, (((u16)16 << 0) | ((u16)0xB0 << 16)), -1, 0x10AC1, 1, -6, 0, (((-12 & 0xFF) << 0) | ((-12 & 0xFF) << 8) | ((12 & 0xFF) << 16) | ((12 & 0xFF) << 24)), 1, 0,

        -4,
};

const s32 anim_0465__v1_l0[] = {
    -2, 39, (((u16)16 << 0) | ((u16)0xB0 << 16)), -1, 0x10AC2, 1, 1, 1,

        -4,
};

const s32 anim_0465__v2_l0[] = {
    -2, 39, (((u16)16 << 0) | ((u16)0xB0 << 16)), -1, 0x10AC3, 1, 1, 2,

        -4,
};

const s32 anim_0465__v3_l0[] = {
    -2, 39, (((u16)16 << 0) | ((u16)0xB0 << 16)), -1, 0x10AC4, 1, 1, 3,

        -4,
};

const s32 anim_0465__v4_l0[] = {
    -2, 39, (((u16)16 << 0) | ((u16)0xB0 << 16)), -1, 0x10AC5, 1, 1, 4,

        -4,
};

const s32 anim_0465__v5_l0[] = {
    -2, 39, (((u16)16 << 0) | ((u16)0xB0 << 16)), -1, 0x10AC6, 1, 1, 5,

        -4,
};

const s32 anim_0465__v6_l0[] = {
    -2, 39, (((u16)16 << 0) | ((u16)0xB0 << 16)), -1, 0x10AC7, 1, -6, 0, (((-12 & 0xFF) << 0) | ((-8 & 0xFF) << 8) | ((12 & 0xFF) << 16) | ((12 & 0xFF) << 24)), 1, 6,

        -4,
};

const s32 anim_0465__v7_l0[] = {
    -2, 39, (((u16)16 << 0) | ((u16)0xB0 << 16)), -1, 0x10AC8, 1, 1, 7,

        -4,
};

const s32 anim_0465__v8_l0[] = {
    -2, 39, (((u16)16 << 0) | ((u16)0xB0 << 16)), -1, 0x10AC9, 1, 1, 8,

        -4,
};

const s32 *const anim_0465[9] = {
    anim_0465__v0_l0, anim_0465__v1_l0, anim_0465__v2_l0, anim_0465__v3_l0, anim_0465__v4_l0,
    anim_0465__v5_l0, anim_0465__v6_l0, anim_0465__v7_l0, anim_0465__v8_l0,
};

const s32 anim_0466__v0_l0[] = {
    -2, 33, (((u16)16 << 0) | ((u16)0x70 << 16)), -1, 0x10ACA, 4, 1, 0,

        -4,
};

const s32 *const anim_0466[1] = {
    anim_0466__v0_l0,
};

const s32 anim_0467__v0_l0[] = {
    -2, 39, (((u16)16 << 0) | ((u16)0xB0 << 16)), -1, 0x10ACE, 4, 6, 0,

        -1, 0x10AD2, 16, 6, 1,

            -1, 0x10AE2, 16, 6, 2,

                -1, 0x10AF2, 12, 7, 3,

                    -1, 0x10AFE, 9, 8, 4,

                        -1, 0x10B07, 9, 8, 5,

                            -1, 0x10B10, 9, 12, 6,

                                -4,
};

const s32 *const anim_0467[1] = {
    anim_0467__v0_l0,
};

const s32 anim_0468__v0_l0[] = {
    -2, 33, (((u16)16 << 0) | ((u16)0x70 << 16)), -1, 0x10B19, 8, -6, 0, (((10 & 0xFF) << 0) | ((5 & 0xFF) << 8) | ((23 & 0xFF) << 16) | ((8 & 0xFF) << 24)), 1, 0,

        -4,
};

const s32 anim_0468__v1_l0[] = {
    -2, 33, (((u16)16 << 0) | ((u16)0x70 << 16)), -1, 0x10B19, 8, 3, 0,

        -1, 0x10B21, 8, 3, 1,

            -1, 0x10B29, 12, 3, 2,

                -1, 0x10B35, 8, 2, 3,

                    -1, 0x10B21, 8, 2, 1,

                        -1, 0x10B3D, 8, 4, 4,

                            -1, 0x10B21, 8, 3, 1,

                                -1, 0x10B3D, 8, 3, 4,

                                    -1, 0x10B19, 8, 6, 0,

                                        -4,
};

const s32 *const anim_0468[2] = {
    anim_0468__v0_l0,
    anim_0468__v1_l0,
};

const s32 anim_0469__v0_l0[] = {
    -2, 33, (((u16)16 << 0) | ((u16)0x70 << 16)), -1, 0x10B45, 12, -6, 0, (((-10 & 0xFF) << 0) | ((-24 & 0xFF) << 8) | ((10 & 0xFF) << 16) | ((2 & 0xFF) << 24)), 6, 0,

        -4,
};

const s32 anim_0469__v1_l0[] = {
    -2, 33, (((u16)16 << 0) | ((u16)0x70 << 16)), -1, 0x10B51, 12, 2, 1,

        -1, 0x10B5D, 12, 2, 2,

            -1, 0x10B69, 12, 4, 3,

                -1, 0x10B75, 12, 1, 4,

                    -1, 0x10B5D, 12, 4, 2,

                        -1, 0x10B81, 12, 4, 5,

                            -1, 0x10B5D, 12, 3, 2,

                                -1, 0x10B81, 12, 3, 5,

                                    -1, 0x10B51, 12, 6, 1,

                                        -4,
};

const s32 *const anim_0469[2] = {
    anim_0469__v0_l0,
    anim_0469__v1_l0,
};

const s32 anim_0470__v0_l0[] = {
    -2, 33, (((u16)16 << 0) | ((u16)0x70 << 16)), -1, 0x10B8D, 12, -6, 0, (((10 & 0xFF) << 0) | ((5 & 0xFF) << 8) | ((23 & 0xFF) << 16) | ((8 & 0xFF) << 24)), 1, 0,

        -4,
};

const s32 anim_0470__v1_l0[] = {
    -2, 33, (((u16)16 << 0) | ((u16)0x70 << 16)), -1, 0x10B8D, 12, 3, 0,

        -1, 0x10B99, 12, 3, 1,

            -1, 0x10BA5, 12, 3, 2,

                -1, 0x10BB1, 12, 2, 3,

                    -1, 0x10B99, 12, 2, 1,

                        -1, 0x10BBD, 12, 4, 4,

                            -1, 0x10B99, 12, 3, 1,

                                -1, 0x10BBD, 12, 3, 4,

                                    -1, 0x10B8D, 12, 6, 0,

                                        -4,
};

const s32 *const anim_0470[2] = {
    anim_0470__v0_l0,
    anim_0470__v1_l0,
};

const s32 anim_0471__v0_l0[] = {
    -2, 40, (((u16)16 << 0) | ((u16)0x70 << 16)), -1, 0x10BC9, 8, -6, 0, (((-15 & 0xFF) << 0) | ((-6 & 0xFF) << 8) | ((7 & 0xFF) << 16) | ((0 & 0xFF) << 24)), 2, 0,

        -1, 0x10BD1, 8, -6, 0, (((-15 & 0xFF) << 0) | ((-6 & 0xFF) << 8) | ((7 & 0xFF) << 16) | ((0 & 0xFF) << 24)), 2, 1,

            -1, 0x10BD9, 8, -6, 0, (((-15 & 0xFF) << 0) | ((-6 & 0xFF) << 8) | ((7 & 0xFF) << 16) | ((0 & 0xFF) << 24)), 2, 2,

                -3, 27,
};

const s32 anim_0471__v1_l0[] = {
    -2, 40, (((u16)16 << 0) | ((u16)0x70 << 16)), -1, 0x10BE1, 12, -6, 0, (((-15 & 0xFF) << 0) | ((-9 & 0xFF) << 8) | ((6 & 0xFF) << 16) | ((2 & 0xFF) << 24)), 2, 3,

        -1, 0x10BED, 12, -6, 0, (((-15 & 0xFF) << 0) | ((-9 & 0xFF) << 8) | ((6 & 0xFF) << 16) | ((2 & 0xFF) << 24)), 2, 4,

            -1, 0x10BF9, 12, -6, 0, (((-15 & 0xFF) << 0) | ((-9 & 0xFF) << 8) | ((6 & 0xFF) << 16) | ((2 & 0xFF) << 24)), 2, 5,

                -3, 27,
};

const s32 anim_0471__v2_l0[] = {
    -2, 40, (((u16)16 << 0) | ((u16)0x70 << 16)), -1, 0x10C05, 12, -6, 0, (((-14 & 0xFF) << 0) | ((-6 & 0xFF) << 8) | ((9 & 0xFF) << 16) | ((1 & 0xFF) << 24)), 2, 6,

        -1, 0x10C11, 12, -6, 0, (((-14 & 0xFF) << 0) | ((-6 & 0xFF) << 8) | ((9 & 0xFF) << 16) | ((1 & 0xFF) << 24)), 2, 7,

            -1, 0x10C1D, 12, -6, 0, (((-14 & 0xFF) << 0) | ((-6 & 0xFF) << 8) | ((9 & 0xFF) << 16) | ((1 & 0xFF) << 24)), 2, 8,

                -3, 27,
};

const s32 *const anim_0471[3] = {
    anim_0471__v0_l0,
    anim_0471__v1_l0,
    anim_0471__v2_l0,
};

const s32 anim_0472__v0_l0[] = {
    -2, 40, (((u16)16 << 0) | ((u16)0x70 << 16)), -1, 0x10C29, 8, -6, 0, (((-12 & 0xFF) << 0) | ((-6 & 0xFF) << 8) | ((0 & 0xFF) << 16) | ((14 & 0xFF) << 24)), 2, 0,

        -1, 0x10C31, 8, -6, 0, (((-16 & 0xFF) << 0) | ((-8 & 0xFF) << 8) | ((0 & 0xFF) << 16) | ((8 & 0xFF) << 24)), 2, 1,

            -1, 0x10C39, 8, -6, 0, (((-16 & 0xFF) << 0) | ((-8 & 0xFF) << 8) | ((0 & 0xFF) << 16) | ((8 & 0xFF) << 24)), 2, 2,

                -3, 27,
};

const s32 *const anim_0472[1] = {
    anim_0472__v0_l0,
};

const s32 anim_0473__v0_l0[] = {
    -2, 33, (((u16)16 << 0) | ((u16)0x70 << 16)), -1, 0x10C41, 49, 2, 0,

        -1, 0x10C72, 49, 2, 1,

            -1, 0x10CA3, 49, 2, 2,

                -3, 18,
};

const s32 *const anim_0473[1] = {
    anim_0473__v0_l0,
};

const s32 anim_0474__v0_l0[] = {
    -2, 33, (((u16)16 << 0) | ((u16)0x70 << 16)), -1, 0x10CD4, 12, 3, 0,

        -1, 0x10CE0, 18, 3, 1,

            -1, 0x10CF2, 12, 3, 2,

                -3, 18,
};

const s32 *const anim_0474[1] = {
    anim_0474__v0_l0,
};

const s32 anim_0475__v0_l0[] = {
    -2, 41, (((u16)16 << 0) | ((u16)0x70 << 16)), -1, 0x10CFE, 36, -6, 0, (((9 & 0xFF) << 0) | ((-39 & 0xFF) << 8) | ((39 & 0xFF) << 16) | ((-9 & 0xFF) << 24)), 1, 0,

        -4,
};

const s32 *const anim_0475[1] = {
    anim_0475__v0_l0,
};

const s32 anim_0476__v0_l0[] = {
    -2, 41, (((u16)16 << 0) | ((u16)0x70 << 16)), -1, 0x10D22, 12, -6, 0, (((-20 & 0xFF) << 0) | ((-4 & 0xFF) << 8) | ((20 & 0xFF) << 16) | ((8 & 0xFF) << 24)), 1, 0,

        -4,
};

const s32 *const anim_0476[1] = {
    anim_0476__v0_l0,
};

const s32 anim_0477__v0_l0[] = {
    -2, 41, (((u16)16 << 0) | ((u16)0x70 << 16)), -1, 0x10D2E, 12, -6, 0, (((-8 & 0xFF) << 0) | ((-18 & 0xFF) << 8) | ((4 & 0xFF) << 16) | ((18 & 0xFF) << 24)), 1, 0,

        -4,
};

const s32 *const anim_0477[1] = {
    anim_0477__v0_l0,
};

const s32 anim_0478__v0_l0[] = {
    -2, 42, (((u16)16 << 0) | ((u16)0x70 << 16)), -1, 0x10D3A, 18, -6, 0, (((-8 & 0xFF) << 0) | ((-8 & 0xFF) << 8) | ((40 & 0xFF) << 16) | ((18 & 0xFF) << 24)), 1, 0,

        -4,
};

const s32 anim_0478__v1_l0[] = {
    -2, 42, (((u16)16 << 0) | ((u16)0x70 << 16)), -1, 0x10D4C, 24, 5, 1,

        -1, 0x10D64, 18, 5, 2,

            -4,
};

const s32 anim_0478__v2_l0[] = {
    -2, 42, (((u16)16 << 0) | ((u16)0x70 << 16)), -1, 0x10D76, 18, -6, 0, (((-8 & 0xFF) << 0) | ((-8 & 0xFF) << 8) | ((9 & 0xFF) << 16) | ((40 & 0xFF) << 24)), 1, 3,

        -4,
};

const s32 anim_0478__v3_l0[] = {
    -2, 42, (((u16)16 << 0) | ((u16)0x70 << 16)), -1, 0x10D88, 30, 5, 4,

        -1, 0x10DA6, 18, 5, 5,

            -4,
};

const s32 *const anim_0478[4] = {
    anim_0478__v0_l0,
    anim_0478__v1_l0,
    anim_0478__v2_l0,
    anim_0478__v3_l0,
};

const s32 anim_0479__v0_l0[] = {
    -2, 43, (((u16)16 << 0) | ((u16)0x70 << 16)), -1, 0x10DB8, 18, -6, 0, (((-6 & 0xFF) << 0) | ((-16 & 0xFF) << 8) | ((6 & 0xFF) << 16) | ((0 & 0xFF) << 24)), 9, 0,

        -1, 0x10DCA, 18, 9, 1,

            -1, 0x10DDC, 18, 9, 2,

                -3, 21,
};

const s32 anim_0479__v1_l0[] = {
    -2, 43, (((u16)16 << 0) | ((u16)0x70 << 16)), -1, 0x10DEE, 18, 6, 3,

        -1, 0x10E00, 18, 3, 4,

            -1, 0x10E12, 12, 6, 5,

                -1, 0x10E1E, 12, 6, 6,

                    -1, 0x10E2A, 12, 6, 7,

                        -1, 0x10E36, 12, 6, 8,

                            -4,
};

const s32 *const anim_0479[2] = {
    anim_0479__v0_l0,
    anim_0479__v1_l0,
};

const s32 anim_0480__v0_l0[] = {
    -2, 43, (((u16)16 << 0) | ((u16)0x70 << 16)), -1, 0x10E42, 18, -6, 0, (((-6 & 0xFF) << 0) | ((-16 & 0xFF) << 8) | ((6 & 0xFF) << 16) | ((0 & 0xFF) << 24)), 9, 0,

        -1, 0x10E54, 18, 9, 1,

            -1, 0x10E66, 18, 9, 2,

                -3, 21,
};

const s32 anim_0480__v1_l0[] = {
    -2, 43, (((u16)16 << 0) | ((u16)0x70 << 16)), -1, 0x10E78, 18, 6, 3,

        -1, 0x10E8A, 18, 3, 4,

            -1, 0x10E9C, 12, 6, 5,

                -1, 0x10EA8, 12, 6, 6,

                    -1, 0x10EB4, 12, 6, 7,

                        -1, 0x10EC0, 12, 6, 8,

                            -4,
};

const s32 *const anim_0480[2] = {
    anim_0480__v0_l0,
    anim_0480__v1_l0,
};

const s32 anim_0481__v0_l0[] = {
    -2, 43, (((u16)16 << 0) | ((u16)0x70 << 16)), -1, 0x10ECC, 18, -6, 0, (((-6 & 0xFF) << 0) | ((-16 & 0xFF) << 8) | ((6 & 0xFF) << 16) | ((0 & 0xFF) << 24)), 9, 0,

        -1, 0x10EDE, 18, 9, 1,

            -1, 0x10EF0, 18, 9, 2,

                -3, 21,
};

const s32 anim_0481__v1_l0[] = {
    -2, 43, (((u16)16 << 0) | ((u16)0x70 << 16)), -1, 0x10F02, 18, 6, 3,

        -1, 0x10F14, 18, 3, 4,

            -1, 0x10F26, 12, 6, 5,

                -1, 0x10F32, 12, 6, 6,

                    -1, 0x10F3E, 12, 6, 7,

                        -1, 0x10F4A, 12, 6, 8,

                            -4,
};

const s32 *const anim_0481[2] = {
    anim_0481__v0_l0,
    anim_0481__v1_l0,
};

const s32 anim_0482__v0_l0[] = {
    -2, 44, (((u16)16 << 0) | ((u16)0x70 << 16)), -1, 0x10F56, 1, 5, 0,

        -1, 0x10F57, 4, 2, 1,

            -1, 0x10F5B, 4, 4, 2,

                -1, 0x10F5F, 9, 6, 3,

                    -1, 0x10F68, 9, 7, 4,

                        -4,
};

const s32 *const anim_0482[1] = {
    anim_0482__v0_l0,
};

const s32 anim_0483__v0_l0[] = {
    -2, 45, (((u16)16 << 0) | ((u16)0x70 << 16)), -1, 0x10F71, 1, 5, 0,

        -1, 0x10F72, 1, 2, 1,

            -1, 0x10F73, 4, 4, 2,

                -1, 0x10F77, 4, 6, 3,

                    -1, 0x10F7B, 4, 7, 4,

                        -4,
};

const s32 *const anim_0483[1] = {
    anim_0483__v0_l0,
};

const s32 anim_0484__v0_l0[] = {
    -2, 41, (((u16)16 << 0) | ((u16)0x70 << 16)), -1, 0x10F7F, 30, -6, 0, (((-22 & 0xFF) << 0) | ((-14 & 0xFF) << 8) | ((22 & 0xFF) << 16) | ((15 & 0xFF) << 24)), 1, 0,

        -4,
};

const s32 *const anim_0484[1] = {
    anim_0484__v0_l0,
};

const s32 anim_0485__v0_l0[] = {
    -2, 41, (((u16)16 << 0) | ((u16)0x70 << 16)), -1, 0x10F9D, 16, -6, 0, (((-11 & 0xFF) << 0) | ((-11 & 0xFF) << 8) | ((11 & 0xFF) << 16) | ((11 & 0xFF) << 24)), 1, 0,

        -4,
};

const s32 *const anim_0485[1] = {
    anim_0485__v0_l0,
};

const s32 anim_0486__v0_l0[] = {
    -2, 33, (((u16)16 << 0) | ((u16)0x70 << 16)), -1, 0x10FAD, 60, -6, 0, (((-48 & 0xFF) << 0) | ((-20 & 0xFF) << 8) | ((47 & 0xFF) << 16) | ((18 & 0xFF) << 24)), 3, 0,

        -1, 0x10FE9, 60, 3, 1,

            -3, 16,
};

const s32 *const anim_0486[1] = {
    anim_0486__v0_l0,
};

const s32 anim_0487__v0_l0[] = {
    -2, 46, (((u16)16 << 0) | ((u16)0x70 << 16)), -1, 0x11025, 60, -6, 0, (((-49 & 0xFF) << 0) | ((10 & 0xFF) << 8) | ((49 & 0xFF) << 16) | ((40 & 0xFF) << 24)), 6, 0,

        -1, 0x11061, 60, 6, 1,

            -3, 16,
};

const s32 *const anim_0487[1] = {
    anim_0487__v0_l0,
};

const s32 anim_0488__v0_l0[] = {
    -2, 47, (((u16)16 << 0) | ((u16)0x70 << 16)), -1, 0x1109D, 16, -6, 0, (((-18 & 0xFF) << 0) | ((-40 & 0xFF) << 8) | ((18 & 0xFF) << 16) | ((16 & 0xFF) << 24)), 1, 0,

        -4,
};

const s32 *const anim_0488[1] = {
    anim_0488__v0_l0,
};

const s32 anim_0489__v0_l0[] = {
    -2, 47, (((u16)16 << 0) | ((u16)0x70 << 16)), -1, 0x110AD, 1, 1, 0,

        -4,
};

const s32 *const anim_0489[1] = {
    anim_0489__v0_l0,
};

const s32 anim_0490__v0_l0[] = {
    -2, 47, (((u16)16 << 0) | ((u16)0x70 << 16)), -1, 0x110AE, 9, -6, 0, (((-10 & 0xFF) << 0) | ((-10 & 0xFF) << 8) | ((10 & 0xFF) << 16) | ((10 & 0xFF) << 24)), 1, 0,

        -4,
};

const s32 *const anim_0490[1] = {
    anim_0490__v0_l0,
};

const s32 anim_0491__v0_l0[] = {
    -2, 47, (((u16)16 << 0) | ((u16)0x70 << 16)), -1, 0x110B7, 30, -6, 0, (((-36 & 0xFF) << 0) | ((0 & 0xFF) << 8) | ((36 & 0xFF) << 16) | ((13 & 0xFF) << 24)), 1, 0,

        -4,
};

const s32 *const anim_0491[1] = {
    anim_0491__v0_l0,
};

const s32 anim_0492__v0_l0[] = {
    -2, 48, (((u16)16 << 0) | ((u16)0x70 << 16)), -1, 0x110D5, 16, -6, 0, (((-12 & 0xFF) << 0) | ((-11 & 0xFF) << 8) | ((13 & 0xFF) << 16) | ((12 & 0xFF) << 24)), 5, 0,

        -1, 0x110E5, 16, 20, 1,

            -1, 0x110D5, 16, 5, 0,

                -1, 0x110E5, 16, 12, 1,

                    -1, 0x110D5, 16, 5, 0,

                        -1, 0x110E5, 16, 8, 1,

                            -1, 0x110D5, 16, 2, 0,

                                -1, 0x110E5, 16, 30, 1,

                                    -1, 0x110F5, 16, 4, 2,

                                        -1, 0x11105, 16, 4, 3,

                                            -1, 0x11115, 16, 4, 4,

                                                -1, 0x110D5, 16, 4, 0,

                                                    -4,
};

const s32 anim_0492__v1_l0[] = {
    -2, 48, (((u16)16 << 0) | ((u16)0x70 << 16)), -1, 0x110E5, 16, -6, 0, (((-12 & 0xFF) << 0) | ((-11 & 0xFF) << 8) | ((13 & 0xFF) << 16) | ((12 & 0xFF) << 24)), 6, 1,

        -1, 0x11115, 16, 2, 4,

            -1, 0x110D5, 16, 30, 0,

                -1, 0x110E5, 16, 6, 1,

                    -1, 0x110D5, 16, 2, 0,

                        -1, 0x110E5, 16, 6, 1,

                            -1, 0x110D5, 16, 2, 0,

                                -1, 0x11115, 16, 1, 4,

                                    -1, 0x11105, 16, 1, 3,

                                        -1, 0x110F5, 16, 1, 2,

                                            -1, 0x110E5, 16, 1, 1,

                                                -4,
};

const s32 anim_0492__v2_l0[] = {
    -2, 48, (((u16)16 << 0) | ((u16)0x70 << 16)), -1, 0x110D5, 16, 1, 0,

        -4,
};

const s32 anim_0492__v3_l0[] = {
    -2, 48, (((u16)16 << 0) | ((u16)0x70 << 16)), -1, 0x110E5, 16, -6, 0, (((-12 & 0xFF) << 0) | ((-11 & 0xFF) << 8) | ((13 & 0xFF) << 16) | ((12 & 0xFF) << 24)), 2, 1, -1, 0x110F5, 16, 2, 2,

        -3, 5,
};

const s32 anim_0492__v4_l0[] = {
    -2, 48, (((u16)16 << 0) | ((u16)0x70 << 16)), -1, 0x11125, 16, -6, 0, (((-12 & 0xFF) << 0) | ((-11 & 0xFF) << 8) | ((13 & 0xFF) << 16) | ((12 & 0xFF) << 24)), 5, 5,

        -1, 0x11135, 16, 20, 6,

            -1, 0x11125, 16, 5, 5,

                -1, 0x11135, 16, 12, 6,

                    -1, 0x11125, 16, 5, 5,

                        -1, 0x11135, 16, 8, 6,

                            -1, 0x11125, 16, 2, 5,

                                -1, 0x11135, 16, 30, 6,

                                    -1, 0x11145, 16, 4, 7,

                                        -1, 0x11155, 16, 4, 8,

                                            -1, 0x11165, 16, 4, 9,

                                                -1, 0x11125, 16, 4, 5,

                                                    -4,
};

const s32 anim_0492__v5_l0[] = {
    -2, 48, (((u16)16 << 0) | ((u16)0x70 << 16)), -1, 0x11135, 16, 6, 6,

        -1, 0x11165, 16, 2, 9,

            -1, 0x11125, 16, 30, 5,

                -1, 0x11135, 16, 6, 6,

                    -1, 0x11125, 16, 2, 5,

                        -1, 0x11135, 16, 6, 6,

                            -1, 0x11125, 16, 2, 5,

                                -1, 0x11165, 16, 1, 9,

                                    -1, 0x11155, 16, 1, 8,

                                        -1, 0x11145, 16, 1, 7,

                                            -1, 0x11135, 16, 1, 6,

                                                -4,
};

const s32 anim_0492__v6_l0[] = {
    -2, 48, (((u16)16 << 0) | ((u16)0x70 << 16)), -1, 0x11125, 16, 1, 5,

        -4,
};

const s32 anim_0492__v7_l0[] = {
    -1, 0x11135, 16, -6, 0, (((-12 & 0xFF) << 0) | ((-11 & 0xFF) << 8) | ((13 & 0xFF) << 16) | ((12 & 0xFF) << 24)), 2, 6, -1, 0x11145, 16, 2, 7,

        -3, 5,
};

const s32 anim_0492__v8_l0[] = {
    -2, 48, (((u16)16 << 0) | ((u16)0x70 << 16)), -1, 0x11175, 16, -6, 0, (((-12 & 0xFF) << 0) | ((-11 & 0xFF) << 8) | ((13 & 0xFF) << 16) | ((12 & 0xFF) << 24)), 5, 10,

        -1, 0x11185, 16, 20, 11,

            -1, 0x11175, 16, 5, 10,

                -1, 0x11185, 16, 12, 11,

                    -1, 0x11175, 16, 5, 10,

                        -1, 0x11185, 16, 8, 11,

                            -1, 0x11175, 16, 2, 10,

                                -1, 0x11185, 16, 30, 11,

                                    -1, 0x11195, 16, 4, 12,

                                        -1, 0x111A5, 16, 4, 13,

                                            -1, 0x111B5, 16, 4, 14,

                                                -1, 0x11175, 16, 4, 10,

                                                    -4,
};

const s32 anim_0492__v9_l0[] = {
    -2, 48, (((u16)16 << 0) | ((u16)0x70 << 16)), -1, 0x11185, 16, 6, 11,

        -1, 0x111B5, 16, 2, 14,

            -1, 0x11175, 16, 30, 10,

                -1, 0x11185, 16, 6, 11,

                    -1, 0x11175, 16, 2, 10,

                        -1, 0x11185, 16, 6, 11,

                            -1, 0x11175, 16, 2, 10,

                                -1, 0x111B5, 16, 1, 14,

                                    -1, 0x111A5, 16, 1, 13,

                                        -1, 0x11195, 16, 1, 12,

                                            -1, 0x11185, 16, 1, 11,

                                                -4,
};

const s32 anim_0492__v10_l0[] = {
    -2, 48, (((u16)16 << 0) | ((u16)0x70 << 16)), -1, 0x11175, 16, 1, 10,

        -4,
};

const s32 anim_0492__v11_l0[] = {
    -2, 48, (((u16)16 << 0) | ((u16)0x70 << 16)), -1, 0x11185, 16, -6, 0, (((-12 & 0xFF) << 0) | ((-11 & 0xFF) << 8) | ((13 & 0xFF) << 16) | ((12 & 0xFF) << 24)), 2, 11, -1, 0x11195, 16, 2, 12,

        -3, 5,
};

const s32 anim_0492__v12_l0[] = {
    -2, 48, (((u16)16 << 0) | ((u16)0x70 << 16)), -1, 0x111C5, 16, -6, 0, (((-12 & 0xFF) << 0) | ((-11 & 0xFF) << 8) | ((13 & 0xFF) << 16) | ((12 & 0xFF) << 24)), 5, 15,

        -1, 0x111D5, 16, 20, 16,

            -1, 0x111C5, 16, 5, 15,

                -1, 0x111D5, 16, 12, 16,

                    -1, 0x111C5, 16, 5, 15,

                        -1, 0x111D5, 16, 8, 16,

                            -1, 0x111C5, 16, 2, 15,

                                -1, 0x111D5, 16, 30, 16,

                                    -1, 0x111E5, 16, 4, 17,

                                        -1, 0x111F5, 16, 4, 18,

                                            -1, 0x11205, 16, 4, 19,

                                                -1, 0x111C5, 16, 4, 15,

                                                    -4,
};

const s32 anim_0492__v13_l0[] = {
    -2, 48, (((u16)16 << 0) | ((u16)0x70 << 16)), -1, 0x111D5, 16, 6, 16,

        -1, 0x11205, 16, 2, 19,

            -1, 0x111C5, 16, 30, 15,

                -1, 0x111D5, 16, 6, 16,

                    -1, 0x111C5, 16, 2, 15,

                        -1, 0x111D5, 16, 6, 16,

                            -1, 0x111C5, 16, 2, 15,

                                -1, 0x11205, 16, 1, 19,

                                    -1, 0x111F5, 16, 1, 18,

                                        -1, 0x111E5, 16, 1, 17,

                                            -1, 0x111D5, 16, 1, 16,

                                                -4,
};

const s32 anim_0492__v14_l0[] = {
    -2, 48, (((u16)16 << 0) | ((u16)0x70 << 16)), -1, 0x111C5, 16, 1, 15,

        -4,
};

const s32 anim_0492__v15_l0[] = {
    -2, 48, (((u16)16 << 0) | ((u16)0x70 << 16)), -1, 0x111D5, 16, -6, 0, (((-12 & 0xFF) << 0) | ((-11 & 0xFF) << 8) | ((13 & 0xFF) << 16) | ((12 & 0xFF) << 24)), 2, 16, -1, 0x111E5, 16, 2, 17,

        -3, 5,
};

const s32 anim_0492__v16_l0[] = {
    -2, 48, (((u16)16 << 0) | ((u16)0x70 << 16)), -1, 0x11215, 16, -6, 0, (((-12 & 0xFF) << 0) | ((-11 & 0xFF) << 8) | ((13 & 0xFF) << 16) | ((12 & 0xFF) << 24)), 5, 20,

        -1, 0x11225, 16, 20, 21,

            -1, 0x11215, 16, 5, 20,

                -1, 0x11225, 16, 12, 21,

                    -1, 0x11215, 16, 5, 20,

                        -1, 0x11225, 16, 8, 21,

                            -1, 0x11215, 16, 2, 20,

                                -1, 0x11225, 16, 30, 21,

                                    -1, 0x11235, 16, 4, 22,

                                        -1, 0x11245, 16, 4, 23,

                                            -1, 0x11255, 16, 4, 24,

                                                -1, 0x11215, 16, 4, 20,

                                                    -4,
};

const s32 anim_0492__v17_l0[] = {
    -2, 48, (((u16)16 << 0) | ((u16)0x70 << 16)), -1, 0x11225, 16, 6, 21,

        -1, 0x11255, 16, 2, 24,

            -1, 0x11215, 16, 30, 20,

                -1, 0x11225, 16, 6, 21,

                    -1, 0x11215, 16, 2, 20,

                        -1, 0x11225, 16, 6, 21,

                            -1, 0x11215, 16, 2, 20,

                                -1, 0x11255, 16, 1, 24,

                                    -1, 0x11245, 16, 1, 23,

                                        -1, 0x11235, 16, 1, 22,

                                            -1, 0x11225, 16, 1, 21,

                                                -4,
};

const s32 anim_0492__v18_l0[] = {
    -2, 48, (((u16)16 << 0) | ((u16)0x70 << 16)), -1, 0x11215, 16, 1, 20,

        -4,
};

const s32 anim_0492__v19_l0[] = {
    -2, 48, (((u16)16 << 0) | ((u16)0x70 << 16)), -1, 0x11225, 16, -6, 0, (((-12 & 0xFF) << 0) | ((-11 & 0xFF) << 8) | ((13 & 0xFF) << 16) | ((12 & 0xFF) << 24)), 2, 21, -1, 0x11235, 16, 2, 22,

        -3, 5,
};

const s32 anim_0492__v20_l0[] = {
    -2, 48, (((u16)16 << 0) | ((u16)0x70 << 16)), -1, 0x11265, 16, -6, 0, (((-12 & 0xFF) << 0) | ((-11 & 0xFF) << 8) | ((13 & 0xFF) << 16) | ((12 & 0xFF) << 24)), 5, 25,

        -1, 0x11275, 16, 20, 26,

            -1, 0x11265, 16, 5, 25,

                -1, 0x11275, 16, 12, 26,

                    -1, 0x11265, 16, 5, 25,

                        -1, 0x11275, 16, 8, 26,

                            -1, 0x11265, 16, 2, 25,

                                -1, 0x11275, 16, 30, 26,

                                    -1, 0x11285, 16, 4, 27,

                                        -1, 0x11295, 16, 4, 28,

                                            -1, 0x112A5, 16, 4, 29,

                                                -1, 0x11265, 16, 4, 25,

                                                    -4,
};

const s32 anim_0492__v21_l0[] = {
    -2, 48, (((u16)16 << 0) | ((u16)0x70 << 16)), -1, 0x11275, 16, 6, 26,

        -1, 0x112A5, 16, 2, 29,

            -1, 0x11265, 16, 30, 25,

                -1, 0x11275, 16, 6, 26,

                    -1, 0x11265, 16, 2, 25,

                        -1, 0x11275, 16, 6, 26,

                            -1, 0x11265, 16, 2, 25,

                                -1, 0x112A5, 16, 1, 29,

                                    -1, 0x11295, 16, 1, 28,

                                        -1, 0x11285, 16, 1, 27,

                                            -1, 0x11275, 16, 1, 26,

                                                -4,
};

const s32 anim_0492__v22_l0[] = {
    -2, 48, (((u16)16 << 0) | ((u16)0x70 << 16)), -1, 0x11265, 16, 1, 25,

        -4,
};

const s32 anim_0492__v23_l0[] = {
    -2, 48, (((u16)16 << 0) | ((u16)0x70 << 16)), -1, 0x11275, 16, -6, 0, (((-12 & 0xFF) << 0) | ((-11 & 0xFF) << 8) | ((13 & 0xFF) << 16) | ((12 & 0xFF) << 24)), 2, 26, -1, 0x11285, 16, 2, 27,

        -3, 5,
};

const s32 anim_0492__v24_l0[] = {
    -2, 48, (((u16)16 << 0) | ((u16)0x70 << 16)), -1, 0x112B5, 16, -6, 0, (((-12 & 0xFF) << 0) | ((-11 & 0xFF) << 8) | ((13 & 0xFF) << 16) | ((12 & 0xFF) << 24)), 5, 30,

        -1, 0x112C5, 16, 20, 31,

            -1, 0x112B5, 16, 5, 30,

                -1, 0x112C5, 16, 12, 31,

                    -1, 0x112B5, 16, 5, 30,

                        -1, 0x112C5, 16, 8, 31,

                            -1, 0x112B5, 16, 2, 30,

                                -1, 0x112C5, 16, 30, 31,

                                    -1, 0x112D5, 16, 4, 32,

                                        -1, 0x112E5, 16, 4, 33,

                                            -1, 0x112F5, 16, 4, 34,

                                                -1, 0x112B5, 16, 4, 30,

                                                    -4,
};

const s32 anim_0492__v25_l0[] = {
    -2, 48, (((u16)16 << 0) | ((u16)0x70 << 16)), -1, 0x112C5, 16, 6, 31,

        -1, 0x112F5, 16, 2, 34,

            -1, 0x112B5, 16, 30, 30,

                -1, 0x112C5, 16, 6, 31,

                    -1, 0x112B5, 16, 2, 30,

                        -1, 0x112C5, 16, 6, 31,

                            -1, 0x112B5, 16, 2, 30,

                                -1, 0x112F5, 16, 1, 34,

                                    -1, 0x112E5, 16, 1, 33,

                                        -1, 0x112D5, 16, 1, 32,

                                            -1, 0x112C5, 16, 1, 31,

                                                -4,
};

const s32 anim_0492__v26_l0[] = {
    -2, 48, (((u16)16 << 0) | ((u16)0x70 << 16)), -1, 0x112B5, 16, 1, 30,

        -4,
};

const s32 anim_0492__v27_l0[] = {
    -2, 48, (((u16)16 << 0) | ((u16)0x70 << 16)), -1, 0x112C5, 16, -6, 0, (((-12 & 0xFF) << 0) | ((-11 & 0xFF) << 8) | ((13 & 0xFF) << 16) | ((12 & 0xFF) << 24)), 2, 31, -1, 0x112D5, 16, 2, 32,

        -3, 5,
};

const s32 anim_0492__v28_l0[] = {
    -2, 48, (((u16)16 << 0) | ((u16)0x70 << 16)), -1, 0x11305, 16, -6, 0, (((-12 & 0xFF) << 0) | ((-11 & 0xFF) << 8) | ((13 & 0xFF) << 16) | ((12 & 0xFF) << 24)), 5, 35,

        -1, 0x11315, 16, 20, 36,

            -1, 0x11305, 16, 5, 35,

                -1, 0x11315, 16, 12, 36,

                    -1, 0x11305, 16, 5, 35,

                        -1, 0x11315, 16, 8, 36,

                            -1, 0x11305, 16, 2, 35,

                                -1, 0x11315, 16, 30, 36,

                                    -1, 0x11325, 16, 4, 37,

                                        -1, 0x11335, 16, 4, 38,

                                            -1, 0x11345, 16, 4, 39,

                                                -1, 0x11305, 16, 4, 35,

                                                    -4,
};

const s32 anim_0492__v29_l0[] = {
    -2, 48, (((u16)16 << 0) | ((u16)0x70 << 16)), -1, 0x11315, 16, 6, 36,

        -1, 0x11345, 16, 2, 39,

            -1, 0x11305, 16, 30, 35,

                -1, 0x11315, 16, 6, 36,

                    -1, 0x11305, 16, 2, 35,

                        -1, 0x11315, 16, 6, 36,

                            -1, 0x11305, 16, 2, 35,

                                -1, 0x11345, 16, 1, 39,

                                    -1, 0x11335, 16, 1, 38,

                                        -1, 0x11325, 16, 1, 37,

                                            -1, 0x11315, 16, 1, 36,

                                                -4,
};

const s32 anim_0492__v30_l0[] = {
    -2, 48, (((u16)16 << 0) | ((u16)0x70 << 16)), -1, 0x11305, 16, 1, 35,

        -4,
};

const s32 anim_0492__v31_l0[] = {
    -2, 48, (((u16)16 << 0) | ((u16)0x70 << 16)), -1, 0x11315, 16, -6, 0, (((-12 & 0xFF) << 0) | ((-11 & 0xFF) << 8) | ((13 & 0xFF) << 16) | ((12 & 0xFF) << 24)), 2, 36, -1, 0x11325, 16, 2, 37,

        -3, 5,
};

const s32 *const anim_0492[32] = {
    anim_0492__v0_l0, anim_0492__v1_l0, anim_0492__v2_l0, anim_0492__v3_l0, anim_0492__v4_l0, anim_0492__v5_l0, anim_0492__v6_l0,
    anim_0492__v7_l0, anim_0492__v8_l0, anim_0492__v9_l0, anim_0492__v10_l0, anim_0492__v11_l0, anim_0492__v12_l0, anim_0492__v13_l0,
    anim_0492__v14_l0, anim_0492__v15_l0, anim_0492__v16_l0, anim_0492__v17_l0, anim_0492__v18_l0, anim_0492__v19_l0, anim_0492__v20_l0,
    anim_0492__v21_l0, anim_0492__v22_l0, anim_0492__v23_l0, anim_0492__v24_l0, anim_0492__v25_l0, anim_0492__v26_l0, anim_0492__v27_l0,
    anim_0492__v28_l0, anim_0492__v29_l0, anim_0492__v30_l0, anim_0492__v31_l0,
};

const s32 anim_0493__v0_l0[] = {
    -2, 47, (((u16)16 << 0) | ((u16)0x70 << 16)), -1, 0x11355, 20, -6, 0, (((-16 & 0xFF) << 0) | ((-18 & 0xFF) << 8) | ((16 & 0xFF) << 16) | ((16 & 0xFF) << 24)), 1, 0,

        -4,
};

const s32 *const anim_0493[1] = {
    anim_0493__v0_l0,
};

const s32 anim_0494__v0_l0[] = {
    -2, 47, (((u16)16 << 0) | ((u16)0x70 << 16)), -1, 0x11369, 36, -6, 0, (((-24 & 0xFF) << 0) | ((-23 & 0xFF) << 8) | ((24 & 0xFF) << 16) | ((24 & 0xFF) << 24)), 1, 0,

        -4,
};

const s32 *const anim_0494[1] = {
    anim_0494__v0_l0,
};

const s32 anim_0495__v0_l0[] = {
    -2, 47, (((u16)16 << 0) | ((u16)0x70 << 16)), -1, 0x1138D, 18, -6, 0, (((-24 & 0xFF) << 0) | ((-10 & 0xFF) << 8) | ((24 & 0xFF) << 16) | ((-4 & 0xFF) << 24)), 1, 0,

        -4,
};

const s32 *const anim_0495[1] = {
    anim_0495__v0_l0,
};

const s32 anim_0496__v0_l0[] = {
    -2, 41, (((u16)16 << 0) | ((u16)0x70 << 16)), -1, 0x1139F, 8, -6, 0, (((-16 & 0xFF) << 0) | ((0 & 0xFF) << 8) | ((7 & 0xFF) << 16) | ((32 & 0xFF) << 24)), 1, 0,

        -4,
};

const s32 anim_0496__v1_l0[] = {
    -2, 41, (((u16)16 << 0) | ((u16)0x70 << 16)), -1, 0x113A7, 8, -6, 0, (((-16 & 0xFF) << 0) | ((0 & 0xFF) << 8) | ((7 & 0xFF) << 16) | ((32 & 0xFF) << 24)), 1, 1,

        -1, 0x113AF, 8, 1, 2,

            -1, 0x113B7, 8, 1, 3,

                -1, 0x113BF, 8, 1, 4,

                    -1, 0x113C7, 8, 1, 5,

                        -1, 0x1139F, 8, 1, 0,

                            -1, 0x113A7, 8, 1, 1,

                                -1, 0x113AF, 8, 1, 2,

                                    -1, 0x113B7, 8, 1, 3,

                                        -1, 0x113BF, 8, 2, 4,

                                            -1, 0x113C7, 8, 2, 5,

                                                -1, 0x1139F, 8, 2, 0,

                                                    -1, 0x113A7, 8, 2, 1,

                                                        -1, 0x113AF, 8, 2, 2,

                                                            -1, 0x113B7, 8, 2, 3,

                                                                -1, 0x113BF, 8, 3, 4,

                                                                    -1, 0x113C7, 8, 3, 5,

                                                                        -1, 0x1139F, 8, 3, 0,

                                                                            -1, 0x113A7, 8, 3, 1,

                                                                                -1, 0x113AF, 8, 3, 2,

                                                                                    -1, 0x113B7, 8, 4, 3,

                                                                                        -1, 0x113BF, 8, 4, 4,

                                                                                            -1, 0x113C7, 8, 4, 5,

                                                                                                -1, 0x1139F, 8, 4, 0,

                                                                                                    -1, 0x113A7, 8, 5, 1,

                                                                                                        -1, 0x113AF, 8, 5, 2,

                                                                                                            -1, 0x113B7, 8, 5, 3,


                                                                                                                -1, 0x113BF, 8, 6, 4,


                                                                                                                    -1, 0x113C7, 8, 6, 5,



                                                                                                                        -1, 0x1139F, 8, 7, 0,




                                                                                                                            -1, 0x113A7, 8, 8, 1,




                                                                                                                                -1, 0x113AF, 8, 9, 2,




                                                                                                                                    -1, 0x113B7, 8, 10, 3,



                                                                                                                                        -1, 0x113BF, 8, 11, 4,



                                                                                                                                            -1, 0x113C7, 8,


                                                                                                                                                12, 5,



                                                                                                                                                    -3, 181,

};

const s32 *const anim_0496[2] = {
    anim_0496__v0_l0,
    anim_0496__v1_l0,
};

const s32 anim_0497__v0_l0[] = {
    -2, 41, (((u16)16 << 0) | ((u16)0x70 << 16)), -1, 0x113CF, 8, -6, 0, (((4 & 0xFF) << 0) | ((-6 & 0xFF) << 8) | ((28 & 0xFF) << 16) | ((6 & 0xFF) << 24)), 1, 0,

        -1, 0x113D7, 8, -6, 0, (((4 & 0xFF) << 0) | ((-6 & 0xFF) << 8) | ((28 & 0xFF) << 16) | ((6 & 0xFF) << 24)), 1, 1,

            -1, 0x113DF, 8, -6, 0, (((4 & 0xFF) << 0) | ((-6 & 0xFF) << 8) | ((28 & 0xFF) << 16) | ((6 & 0xFF) << 24)), 1, 2,

                -1, 0x113E7, 8, -6, 0, (((4 & 0xFF) << 0) | ((-6 & 0xFF) << 8) | ((28 & 0xFF) << 16) | ((6 & 0xFF) << 24)), 1, 3,

                    -1, 0x113EF, 8, -6, 0, (((4 & 0xFF) << 0) | ((-6 & 0xFF) << 8) | ((28 & 0xFF) << 16) | ((6 & 0xFF) << 24)), 1, 4,

                        -1, 0x113F7, 8, -6, 0, (((4 & 0xFF) << 0) | ((-6 & 0xFF) << 8) | ((28 & 0xFF) << 16) | ((6 & 0xFF) << 24)), 1, 5,

                            -1, 0x113CF, 8, -6, 0, (((4 & 0xFF) << 0) | ((-6 & 0xFF) << 8) | ((28 & 0xFF) << 16) | ((6 & 0xFF) << 24)), 1, 0,

                                -1, 0x113D7, 8, -6, 0, (((4 & 0xFF) << 0) | ((-6 & 0xFF) << 8) | ((28 & 0xFF) << 16) | ((6 & 0xFF) << 24)), 1, 1,

                                    -1, 0x113DF, 8, -6, 0, (((4 & 0xFF) << 0) | ((-6 & 0xFF) << 8) | ((28 & 0xFF) << 16) | ((6 & 0xFF) << 24)), 1, 2,

                                        -1, 0x113E7, 8, -6, 0, (((4 & 0xFF) << 0) | ((-6 & 0xFF) << 8) | ((28 & 0xFF) << 16) | ((6 & 0xFF) << 24)), 2, 3,

                                            -1, 0x113EF, 8, -6, 0, (((4 & 0xFF) << 0) | ((-6 & 0xFF) << 8) | ((28 & 0xFF) << 16) | ((6 & 0xFF) << 24)), 2, 4,

                                                -1, 0x113F7, 8, -6, 0, (((4 & 0xFF) << 0) | ((-6 & 0xFF) << 8) | ((28 & 0xFF) << 16) | ((6 & 0xFF) << 24)), 2, 5,

                                                    -1, 0x113CF, 8, -6, 0, (((4 & 0xFF) << 0) | ((-6 & 0xFF) << 8) | ((28 & 0xFF) << 16) | ((6 & 0xFF) << 24)), 2, 0,

                                                        -1, 0x113D7, 8, -6, 0, (((4 & 0xFF) << 0) | ((-6 & 0xFF) << 8) | ((28 & 0xFF) << 16) | ((6 & 0xFF) << 24)), 2, 1,

                                                            -1, 0x113DF, 8, -6, 0, (((4 & 0xFF) << 0) | ((-6 & 0xFF) << 8) | ((28 & 0xFF) << 16) | ((6 & 0xFF) << 24)), 2, 2,

                                                                -1, 0x113E7, 8, -6, 0, (((4 & 0xFF) << 0) | ((-6 & 0xFF) << 8) | ((28 & 0xFF) << 16) | ((6 & 0xFF) << 24)), 3, 3,

                                                                    -1, 0x113EF, 8, -6, 0, (((4 & 0xFF) << 0) | ((-6 & 0xFF) << 8) | ((28 & 0xFF) << 16) | ((6 & 0xFF) << 24)), 3, 4,

                                                                        -1, 0x113F7, 8, -6, 0, (((4 & 0xFF) << 0) | ((-6 & 0xFF) << 8) | ((28 & 0xFF) << 16) | ((6 & 0xFF) << 24)), 3, 5,

                                                                            -1, 0x113CF, 8, -6, 0, (((4 & 0xFF) << 0) | ((-6 & 0xFF) << 8) | ((28 & 0xFF) << 16) | ((6 & 0xFF) << 24)), 3, 0,

                                                                                -1, 0x113D7, 8, -6, 0, (((4 & 0xFF) << 0) | ((-6 & 0xFF) << 8) | ((28 & 0xFF) << 16) | ((6 & 0xFF) << 24)), 3, 1,

                                                                                    -1, 0x113DF, 8, -6, 0, (((4 & 0xFF) << 0) | ((-6 & 0xFF) << 8) | ((28 & 0xFF) << 16) | ((6 & 0xFF) << 24)), 4, 2,


                                                                                        -1, 0x113E7, 8, -6, 0, (((4 & 0xFF) << 0) | ((-6 & 0xFF) << 8) | ((28 & 0xFF) << 16) | ((6 & 0xFF) << 24)), 4, 3,


                                                                                            -1, 0x113EF, 8, -6, 0, (((4 & 0xFF) << 0) | ((-6 & 0xFF) << 8) | ((28 & 0xFF) << 16) | ((6 & 0xFF) << 24)), 4, 4,


                                                                                                -1, 0x113F7, 8, -6, 0, (((4 & 0xFF) << 0) | ((-6 & 0xFF) << 8) | ((28 & 0xFF) << 16) | ((6 & 0xFF) << 24)), 4, 5,


                                                                                                    -1, 0x113CF, 8, -6, 0, (((4 & 0xFF) << 0) | ((-6 & 0xFF) << 8) | ((28 & 0xFF) << 16) | ((6 & 0xFF) << 24)), 5, 0,


                                                                                                        -1, 0x113D7, 8, -6, 0, (((4 & 0xFF) << 0) | ((-6 & 0xFF) << 8) | ((28 & 0xFF) << 16) | ((6 & 0xFF) << 24)), 5, 1,



                                                                                                            -1, 0x113DF, 8, -6, 0, (((4 & 0xFF) << 0) | ((-6 & 0xFF) << 8) | ((28 & 0xFF) << 16) | ((6 & 0xFF) << 24)), 5, 2,



                                                                                                                -1, 0x113E7, 8, -6, 0, (((4 & 0xFF) << 0) | ((-6 & 0xFF) << 8) | ((28 & 0xFF) << 16) | ((6 & 0xFF) << 24)), 6, 3,



                                                                                                                    -1, 0x113EF, 8, -6, 0, (((4 & 0xFF) << 0) | ((-6 & 0xFF) << 8) | ((28 & 0xFF) << 16) | ((6 & 0xFF) << 24)), 6, 4,




                                                                                                                        -1, 0x113F7, 8, -6, 0, (((4 & 0xFF) << 0) | ((-6 & 0xFF) << 8) | ((28 & 0xFF) << 16) | ((6 & 0xFF) << 24)), 7, 5,





                                                                                                                            -1, 0x113CF, 8, -6, 0, (((4 & 0xFF) << 0) | ((-6 & 0xFF) << 8) | ((28 & 0xFF) << 16) | ((6 & 0xFF) << 24)), 8, 0,





                                                                                                                                -1, 0x113D7, 8, -6, 0, (((4 & 0xFF) << 0) | ((-6 & 0xFF) << 8) | ((28 & 0xFF) << 16) | ((6 & 0xFF) << 24)), 9, 1,






                                                                                                                                    -1, 0x113DF, 8, -6, 0, (((4 & 0xFF) << 0) | ((-6 & 0xFF) << 8) | ((28 & 0xFF) << 16) | ((6 & 0xFF) << 24)), 10, 2,







                                                                                                                                        -1, 0x113E7, 8, -6, 0, (((4 & 0xFF) << 0) | ((-6 & 0xFF) << 8) | ((28 & 0xFF) << 16) | ((6 & 0xFF) << 24)), 11, 3,







                                                                                                                                            -1, 0x113EF, 8, -6, 0, (((4 & 0xFF) << 0) | ((-6 & 0xFF) << 8) | ((28 & 0xFF) << 16) | ((6 & 0xFF) << 24)),





                                                                                                                                                12, 4,



                                                                                                                                                    -3, 283,

};

const s32 anim_0497__v1_l0[] = {
    -2, 41, (((u16)16 << 0) | ((u16)0x70 << 16)), -1, 0x113F7, 8, -6, 0, (((4 & 0xFF) << 0) | ((-6 & 0xFF) << 8) | ((28 & 0xFF) << 16) | ((6 & 0xFF) << 24)), 1, 5,

        -4,
};

const s32 *const anim_0497[2] = {
    anim_0497__v0_l0,
    anim_0497__v1_l0,
};

const s32 anim_0498__v0_l0[] = {
    -2, 49, (((u16)16 << 0) | ((u16)0xB0 << 16)), -1, 0x113FF, 30, -6, 0, (((-10 & 0xFF) << 0) | ((24 & 0xFF) << 8) | ((10 & 0xFF) << 16) | ((44 & 0xFF) << 24)), 1, 0,

        -4,
};

const s32 anim_0498__v1_l0[] = {
    -2, 49, (((u16)16 << 0) | ((u16)0xB0 << 16)), -1, 0x1141D, 30, 2, 1,

        -1, 0x1143B, 30, 2, 2,

            -4,
};

const s32 anim_0498__v2_l0[] = {
    -2, 49, (((u16)16 << 0) | ((u16)0xB0 << 16)), -1, 0x1141D, 30, 2, 1,

        -1, 0x113FF, 30, 1, 0,

            -4,
};

const s32 anim_0498__v3_l0[] = {
    -2, 49, (((u16)16 << 0) | ((u16)0xB0 << 16)), -1, 0x11459, 3, 1, 3,

        -4,
};

const s32 *const anim_0498[4] = {
    anim_0498__v0_l0,
    anim_0498__v1_l0,
    anim_0498__v2_l0,
    anim_0498__v3_l0,
};

const s32 anim_0499__v0_l0[] = {
    -2, 50, (((u16)16 << 0) | ((u16)0xB0 << 16)), -1, 0x1145C, 12, -6, 0, (((-15 & 0xFF) << 0) | ((-8 & 0xFF) << 8) | ((15 & 0xFF) << 16) | ((9 & 0xFF) << 24)), 1, 0,

        -4,
};

const s32 *const anim_0499[1] = {
    anim_0499__v0_l0,
};

const s32 anim_0501__v0_l0[] = {
    -2, 51, (((u16)16 << 0) | ((u16)0xB0 << 16)), -1, 0x11468, 12, -6, 0, (((-11 & 0xFF) << 0) | ((-8 & 0xFF) << 8) | ((11 & 0xFF) << 16) | ((0 & 0xFF) << 24)), 1, 0,

        -4,
};

const s32 anim_0501__v1_l0[] = {
    -2, 51, (((u16)16 << 0) | ((u16)0xB0 << 16)), -1, 0x11474, 8, -6, 0, (((-11 & 0xFF) << 0) | ((-8 & 0xFF) << 8) | ((11 & 0xFF) << 16) | ((0 & 0xFF) << 24)), 6, 1,

        -1, 0x1147C, 16, -6, 0, (((-11 & 0xFF) << 0) | ((-8 & 0xFF) << 8) | ((11 & 0xFF) << 16) | ((0 & 0xFF) << 24)), 6, 2,

            -1, 0x1148C, 16, -6, 0, (((-11 & 0xFF) << 0) | ((-8 & 0xFF) << 8) | ((11 & 0xFF) << 16) | ((0 & 0xFF) << 24)), 6, 3,

                -1, 0x1149C, 16, -6, 0, (((-11 & 0xFF) << 0) | ((-8 & 0xFF) << 8) | ((11 & 0xFF) << 16) | ((0 & 0xFF) << 24)), 6, 4,

                    -1, 0x114AC, 16, -6, 0, (((-11 & 0xFF) << 0) | ((-8 & 0xFF) << 8) | ((11 & 0xFF) << 16) | ((0 & 0xFF) << 24)), 6, 5,

                        -4,
};

const s32 anim_0501__v2_l0[] = {
    -2, 51, (((u16)16 << 0) | ((u16)0xB0 << 16)), -1, 0x114BC, 8, -6, 0, (((-10 & 0xFF) << 0) | ((-21 & 0xFF) << 8) | ((10 & 0xFF) << 16) | ((-7 & 0xFF) << 24)), 1, 6,

        -4,
};

const s32 *const anim_0501[3] = {
    anim_0501__v0_l0,
    anim_0501__v1_l0,
    anim_0501__v2_l0,
};

const s32 anim_0502__v0_l0[] = {
    -2, 49, (((u16)16 << 0) | ((u16)0xB0 << 16)), -1, 0x114C4, 32, -6, 0, (((0 & 0xFF) << 0) | ((4 & 0xFF) << 8) | ((64 & 0xFF) << 16) | ((23 & 0xFF) << 24)), 1, 0,

        -4,
};

const s32 *const anim_0502[1] = {
    anim_0502__v0_l0,
};

const s32 anim_0503__v0_l0[] = {
    -2, 52, (((u16)16 << 0) | ((u16)0xB0 << 16)), -1, 0x114E4, 1, 1, 0,

        -4,
};

const s32 anim_0503__v1_l0[] = {
    -2, 52, (((u16)16 << 0) | ((u16)0xB0 << 16)), -1, 0x114E5, 1, 1, 1,

        -4,
};

const s32 anim_0503__v2_l0[] = {
    -2, 52, (((u16)16 << 0) | ((u16)0xB0 << 16)), -1, 0x114E6, 1, 1, 2,

        -4,
};

const s32 *const anim_0503[3] = {
    anim_0503__v0_l0,
    anim_0503__v1_l0,
    anim_0503__v2_l0,
};

const s32 anim_0504__v0_l0[] = {
    -2, 52, (((u16)16 << 0) | ((u16)0xB0 << 16)), -1, 0x114E7, 6, -6, 0, (((-7 & 0xFF) << 0) | ((12 & 0xFF) << 8) | ((7 & 0xFF) << 16) | ((42 & 0xFF) << 24)), 1, 0,

        -4,
};

const s32 anim_0504__v1_l0[] = {
    -2, 52, (((u16)16 << 0) | ((u16)0xB0 << 16)), -1, 0x114ED, 16, -6, 0, (((-112 & 0xFF) << 0) | ((123 & 0xFF) << 8) | ((-112 & 0xFF) << 16) | ((123 & 0xFF) << 24)), 1, 1,

        -4,
};

const s32 *const anim_0504[2] = {
    anim_0504__v0_l0,
    anim_0504__v1_l0,
};

const s32 anim_0505__v0_l0[] = {
    -2, 52, (((u16)16 << 0) | ((u16)0xB0 << 16)), -1, 0x114FD, 18, -6, 0, (((-23 & 0xFF) << 0) | ((-14 & 0xFF) << 8) | ((23 & 0xFF) << 16) | ((2 & 0xFF) << 24)), 1, 0,

        -4,
};

const s32 anim_0505__v1_l0[] = {
    -2, 52, (((u16)16 << 0) | ((u16)0xB0 << 16)), -1, 0x1150F, 12, 4, 1,

        -1, 0x1151B, 30, 2, 2,

            -1, 0x11539, 12, 1, 3,

                -1, 0x11545, 24, 5, 4,

                    -1, 0x1155D, 12, 3, 5,

                        -1, 0x11569, 18, 3, 6,

                            -4,
};

const s32 *const anim_0505[2] = {
    anim_0505__v0_l0,
    anim_0505__v1_l0,
};

const s32 anim_0506__v0_l0[] = {
    -2, 53, (((u16)16 << 0) | ((u16)0x70 << 16)), -1, 0x1157B, 18, -6, 0, (((-24 & 0xFF) << 0) | ((-5 & 0xFF) << 8) | ((24 & 0xFF) << 16) | ((-3 & 0xFF) << 24)), 1, 0,

        -4,
};

const s32 *const anim_0506[1] = {
    anim_0506__v0_l0,
};

const s32 anim_0507__v0_l0[] = {
    -2, 49, (((u16)16 << 0) | ((u16)0xB0 << 16)), -1, 0x1158D, 12, -6, 0, (((-14 & 0xFF) << 0) | ((-5 & 0xFF) << 8) | ((14 & 0xFF) << 16) | ((14 & 0xFF) << 24)), 1, 0,

        -4,
};

const s32 *const anim_0507[1] = {
    anim_0507__v0_l0,
};

const s32 anim_0508__v0_l0[] = {
    -2, 49, (((u16)16 << 0) | ((u16)0xB0 << 16)), -1, 0x11599, 36, -6, 0, (((-44 & 0xFF) << 0) | ((-5 & 0xFF) << 8) | ((44 & 0xFF) << 16) | ((8 & 0xFF) << 24)), 10, 0,

        -1, 0x115BD, 36, 10, 1,

            -1, 0x115E1, 36, 10, 2,

                -1, 0x11605, 36, 10, 3,

                    -3, 26,
};

const s32 anim_0508__v1_l0[] = {
    -2, 49, (((u16)16 << 0) | ((u16)0xB0 << 16)), -1, 0x11605, 36, -6, 0, (((-44 & 0xFF) << 0) | ((-3 & 0xFF) << 8) | ((44 & 0xFF) << 16) | ((8 & 0xFF) << 24)), 10, 3,

        -1, 0x115E1, 36, 10, 2,

            -1, 0x115BD, 36, 10, 1,

                -1, 0x11599, 36, 10, 0,

                    -3, 26,
};

const s32 *const anim_0508[2] = {
    anim_0508__v0_l0,
    anim_0508__v1_l0,
};

const s32 anim_0509__v0_l0[] = {
    -2, 49, (((u16)16 << 0) | ((u16)0xB0 << 16)), -1, 0x11629, 27, -6, 0, (((-32 & 0xFF) << 0) | ((-7 & 0xFF) << 8) | ((32 & 0xFF) << 16) | ((6 & 0xFF) << 24)), 10, 0,

        -1, 0x11644, 27, 10, 1,

            -1, 0x1165F, 27, 10, 2,

                -1, 0x1167A, 27, 10, 3,

                    -3, 26,
};

const s32 anim_0509__v1_l0[] = {
    -2, 49, (((u16)16 << 0) | ((u16)0xB0 << 16)), -1, 0x1167A, 27, -6, 0, (((-32 & 0xFF) << 0) | ((-7 & 0xFF) << 8) | ((32 & 0xFF) << 16) | ((6 & 0xFF) << 24)), 10, 3,

        -1, 0x1165F, 27, 10, 2,

            -1, 0x11644, 27, 10, 1,

                -1, 0x11629, 27, 10, 0,

                    -3, 26,
};

const s32 *const anim_0509[2] = {
    anim_0509__v0_l0,
    anim_0509__v1_l0,
};

const s32 anim_0510__v0_l0[] = {
    -2, 54, (((u16)16 << 0) | ((u16)0xB0 << 16)), -1, 0x11695, 36, -6, 0, (((-14 & 0xFF) << 0) | ((-14 & 0xFF) << 8) | ((14 & 0xFF) << 16) | ((14 & 0xFF) << 24)), 1, 0,

        -4,
};

const s32 *const anim_0510[1] = {
    anim_0510__v0_l0,
};

const s32 anim_0511__v0_l0[] = {
    -2, 55, (((u16)16 << 0) | ((u16)0xB0 << 16)), -1, 0x116B9, 4, -6, 0, (((-8 & 0xFF) << 0) | ((-3 & 0xFF) << 8) | ((8 & 0xFF) << 16) | ((8 & 0xFF) << 24)), 7, 0,

        -1, 0x116BD, 4, 7, 1,

            -1, 0x116C1, 4, 7, 2,

                -3, 21,
};

const s32 *const anim_0511[1] = {
    anim_0511__v0_l0,
};

const s32 anim_0512__v0_l0[] = {
    -2, 56, (((u16)16 << 0) | ((u16)0xB0 << 16)), -1, 0x116C5, 8, 7, 0,

        -1, 0x116CD, 8, 7, 1,

            -1, 0x116D5, 8, 7, 2,

                -3, 18,
};

const s32 *const anim_0512[1] = {
    anim_0512__v0_l0,
};

const s32 anim_0513__v0_l0[] = {
    -2, 49, (((u16)16 << 0) | ((u16)0xB0 << 16)), -1, 0x116DD, 32, -6, 0, (((0 & 0xFF) << 0) | ((3 & 0xFF) << 8) | ((64 & 0xFF) << 16) | ((32 & 0xFF) << 24)), 1, 0,

        -4,
};

const s32 *const anim_0513[1] = {
    anim_0513__v0_l0,
};

const s32 anim_0514__v0_l0[] = {
    -2, 41, (((u16)16 << 0) | ((u16)0x70 << 16)), -1, 0x116FD, 16, 1, 0,

        -4,
};

const s32 anim_0514__v1_l0[] = {
    -2, 41, (((u16)16 << 0) | ((u16)0x70 << 16)), -1, 0x1170D, 25, 1, 1,

        -4,
};

const s32 *const anim_0514[2] = {
    anim_0514__v0_l0,
    anim_0514__v1_l0,
};

const s32 anim_0515__v0_l0[] = {
    -2, 57, (((u16)16 << 0) | ((u16)0xB0 << 16)), -1, 0x11726, 54, -6, 0, (((-72 & 0xFF) << 0) | ((-11 & 0xFF) << 8) | ((72 & 0xFF) << 16) | ((10 & 0xFF) << 24)), 4, 0,

        -1, 0x1175C, 54, 4, 1,

            -1, 0x11792, 42, 4, 2,

                -1, 0x117BC, 54, 4, 3,

                    -3, 26,
};

const s32 *const anim_0515[1] = {
    anim_0515__v0_l0,
};

const s32 anim_0516__v0_l0[] = {
    -2, 35, (((u16)16 << 0) | ((u16)0x90 << 16)), -1, 0x117F2, 30, -6, 0, (((-24 & 0xFF) << 0) | ((-16 & 0xFF) << 8) | ((24 & 0xFF) << 16) | ((16 & 0xFF) << 24)), -6, 1, (((-20 & 0xFF) << 0) | ((-22 & 0xFF) << 8) | ((20 & 0xFF) << 16) | ((-14 & 0xFF) << 24)), 16, 0,

        -4,
};

const s32 anim_0516__v1_l0[] = {
    -2, 35, (((u16)16 << 0) | ((u16)0x90 << 16)), -1, 0x11810, 30, -6, 0, (((-24 & 0xFF) << 0) | ((-14 & 0xFF) << 8) | ((24 & 0xFF) << 16) | ((16 & 0xFF) << 24)), 16, 1,

        -1, 0x1182E, 24, 16, 2,

            -1, 0x11846, 30, 16, 3,

                -4,
};

const s32 anim_0516__v2_l0[] = {
    -2, 35, (((u16)16 << 0) | ((u16)0x90 << 16)), -1, 0x11864, 30, -6, 0, (((-24 & 0xFF) << 0) | ((-14 & 0xFF) << 8) | ((24 & 0xFF) << 16) | ((15 & 0xFF) << 24)), -6, 1, (((-21 & 0xFF) << 0) | ((15 & 0xFF) << 8) | ((21 & 0xFF) << 16) | ((21 & 0xFF) << 24)), 16, 4,

        -3, 14,
};

const s32 anim_0516__v3_l0[] = {
    -2, 35, (((u16)16 << 0) | ((u16)0x90 << 16)), -1, 0x11882, 30, -6, 0, (((-24 & 0xFF) << 0) | ((-14 & 0xFF) << 8) | ((24 & 0xFF) << 16) | ((16 & 0xFF) << 24)), 16, 5,

        -1, 0x118A0, 24, 16, 6,

            -1, 0x118B8, 30, 16, 7,

                -4,
};

const s32 *const anim_0516[4] = {
    anim_0516__v0_l0,
    anim_0516__v1_l0,
    anim_0516__v2_l0,
    anim_0516__v3_l0,
};

const s32 anim_0517__v0_l0[] = {
    -2, 49, (((u16)16 << 0) | ((u16)0xB0 << 16)), -1, 0x118D6, 18, -6, 0, (((-24 & 0xFF) << 0) | ((-8 & 0xFF) << 8) | ((24 & 0xFF) << 16) | ((8 & 0xFF) << 24)), 1, 0,

        -4,
};

const s32 *const anim_0517[1] = {
    anim_0517__v0_l0,
};

const s32 anim_0518__v0_l0[] = {
    -2, 49, (((u16)16 << 0) | ((u16)0xB0 << 16)), -1, 0x118E8, 36, -6, 0, (((-24 & 0xFF) << 0) | ((-20 & 0xFF) << 8) | ((24 & 0xFF) << 16) | ((24 & 0xFF) << 24)), 1, 0,

        -4,
};

const s32 *const anim_0518[1] = {
    anim_0518__v0_l0,
};

const s32 anim_0519__v0_l0[] = {
    -2, 49, (((u16)16 << 0) | ((u16)0xB0 << 16)), -1, 0x1190C, 40, -6, 0, (((-39 & 0xFF) << 0) | ((-14 & 0xFF) << 8) | ((39 & 0xFF) << 16) | ((16 & 0xFF) << 24)), 1, 0,

        -4,
};

const s32 *const anim_0519[1] = {
    anim_0519__v0_l0,
};

const s32 anim_0520__v0_l0[] = {
    -2, 50, (((u16)16 << 0) | ((u16)0xB0 << 16)), -1, 0x11934, 8, 1, 0,

        -4,
};

const s32 *const anim_0520[1] = {
    anim_0520__v0_l0,
};

const s32 anim_0521__v0_l0[] = {
    -2, 58, (((u16)16 << 0) | ((u16)0x70 << 16)), -1, 0x1193C, 20, -6, 0, (((-15 & 0xFF) << 0) | ((-9 & 0xFF) << 8) | ((15 & 0xFF) << 16) | ((20 & 0xFF) << 24)), 1, 0,

        -4,
};

const s32 *const anim_0521[1] = {
    anim_0521__v0_l0,
};

const s32 anim_0522__v0_l0[] = {
    -2, 59, (((u16)16 << 0) | ((u16)0x70 << 16)), -1, 0x11950, 16, -6, 0, (((0 & 0xFF) << 0) | ((-11 & 0xFF) << 8) | ((16 & 0xFF) << 16) | ((12 & 0xFF) << 24)), 1, 0,

        -4,
};

const s32 anim_0522__v1_l0[] = {
    -2, 59, (((u16)16 << 0) | ((u16)0x70 << 16)), -1, 0x11960, 8, 3, 1,

        -1, 0x11968, 16, 3, 2,

            -1, 0x11978, 12, 4, 3,

                -1, 0x11968, 16, 4, 2,

                    -1, 0x11978, 12, 5, 3,

                        -1, 0x11968, 16, 5, 2,

                            -4,
};

const s32 *const anim_0522[2] = {
    anim_0522__v0_l0,
    anim_0522__v1_l0,
};

const s32 anim_0523__v0_l0[] = {
    -2, 60, (((u16)16 << 0) | ((u16)0xB0 << 16)), -1, 0x11984, 18, -6, 0, (((-24 & 0xFF) << 0) | ((-9 & 0xFF) << 8) | ((24 & 0xFF) << 16) | ((-7 & 0xFF) << 24)), 1, 0,

        -4,
};

const s32 *const anim_0523[1] = {
    anim_0523__v0_l0,
};

const s32 anim_0524__v0_l0[] = {
    -2, 60, (((u16)16 << 0) | ((u16)0xB0 << 16)), -1, 0x11996, 36, -6, 0, (((-24 & 0xFF) << 0) | ((-23 & 0xFF) << 8) | ((24 & 0xFF) << 16) | ((24 & 0xFF) << 24)), 1, 0,

        -4,
};

const s32 *const anim_0524[1] = {
    anim_0524__v0_l0,
};

const s32 anim_0525__v0_l0[] = {
    -2, 60, (((u16)16 << 0) | ((u16)0xB0 << 16)), -1, 0x119BA, 18, -6, 0, (((-22 & 0xFF) << 0) | ((-18 & 0xFF) << 8) | ((23 & 0xFF) << 16) | ((-12 & 0xFF) << 24)), 1, 0,

        -4,
};

const s32 *const anim_0525[1] = {
    anim_0525__v0_l0,
};

const s32 anim_0526__v0_l0[] = {
    -2, 61, (((u16)16 << 0) | ((u16)0x70 << 16)), -1, 0x119CC, 24, -6, 0, (((-13 & 0xFF) << 0) | ((-15 & 0xFF) << 8) | ((13 & 0xFF) << 16) | ((28 & 0xFF) << 24)), 1, 0,

        -1, 0x119E4, 28, -6, 0, (((-13 & 0xFF) << 0) | ((-28 & 0xFF) << 8) | ((13 & 0xFF) << 16) | ((28 & 0xFF) << 24)), 2, 1,

            -1, 0x11A00, 28, -6, 0, (((-13 & 0xFF) << 0) | ((-24 & 0xFF) << 8) | ((13 & 0xFF) << 16) | ((28 & 0xFF) << 24)), 1, 2,

                -1, 0x11A1C, 28, -6, 0, (((-13 & 0xFF) << 0) | ((-27 & 0xFF) << 8) | ((13 & 0xFF) << 16) | ((28 & 0xFF) << 24)), 5, 3,

                    -1, 0x11A00, 28, -6, 0, (((-13 & 0xFF) << 0) | ((-24 & 0xFF) << 8) | ((13 & 0xFF) << 16) | ((28 & 0xFF) << 24)), 3, 2,

                        -4,
};

const s32 anim_0526__v1_l0[] = {
    -2, 62, (((u16)16 << 0) | ((u16)0x70 << 16)), -1, 0x11A38, 24, -6, 0, (((-13 & 0xFF) << 0) | ((-13 & 0xFF) << 8) | ((13 & 0xFF) << 16) | ((28 & 0xFF) << 24)), 3, 4,

        -4,
};

const s32 *const anim_0526[2] = {
    anim_0526__v0_l0,
    anim_0526__v1_l0,
};

const s32 anim_0527__v0_l0[] = {
    -2, 63, (((u16)16 << 0) | ((u16)0xB0 << 16)), -1, 0x11A50, 32, -6, 0, (((0 & 0xFF) << 0) | ((4 & 0xFF) << 8) | ((64 & 0xFF) << 16) | ((23 & 0xFF) << 24)), 1, 0,

        -4,
};

const s32 *const anim_0527[1] = {
    anim_0527__v0_l0,
};

const s32 anim_0528__v0_l0[] = {
    -2, 60, (((u16)16 << 0) | ((u16)0xB0 << 16)), -1, 0x11A70, 30, -6, 0, (((-19 & 0xFF) << 0) | ((-18 & 0xFF) << 8) | ((19 & 0xFF) << 16) | ((-5 & 0xFF) << 24)), 1, 0,

        -4,
};

const s32 *const anim_0528[1] = {
    anim_0528__v0_l0,
};

const s32 anim_0529__v0_l0[] = {
    -2, 60, (((u16)16 << 0) | ((u16)0xB0 << 16)), -1, 0x11A8E, 24, -6, 0, (((-24 & 0xFF) << 0) | ((-30 & 0xFF) << 8) | ((24 & 0xFF) << 16) | ((0 & 0xFF) << 24)), 1, 0,

        -4,
};

const s32 *const anim_0529[1] = {
    anim_0529__v0_l0,
};

const s32 anim_0530__v0_l0[] = {
    -2, 62, (((u16)16 << 0) | ((u16)0x70 << 16)), -1, 0x11AA6, 4, 1, 0,

        -4,
};

const s32 *const anim_0530[1] = {
    anim_0530__v0_l0,
};

const s32 anim_0531__v0_l0[] = {
    -2, 64, (((u16)16 << 0) | ((u16)0x70 << 16)), -1, 0x11AAA, 4, 1, 0,

        -4,
};

const s32 *const anim_0531[1] = {
    anim_0531__v0_l0,
};

const s32 anim_0532__v0_l0[] = {
    -2, 1, (((u16)16 << 0) | ((u16)0x50 << 16)), -1, 0x11AAE, 1, -6, 0, (((-9 & 0xFF) << 0) | ((5 & 0xFF) << 8) | ((9 & 0xFF) << 16) | ((7 & 0xFF) << 24)), 20, 0,

        -1, 0x11AAF, 9, 20, 1,

            -1, 0x11AB8, 9, 20, 2,

                -1, 0x11AC1, 9, 20, 3, -1, 0x11ACA, 9, 12, 4,

                    -1, 0x11AD3, 9, 12, 5,

                        -1, 0x11ADC, 9, 12, 6,

                            -3, 15,
};

const s32 *const anim_0532[1] = {
    anim_0532__v0_l0,
};

const s32 anim_0533__v0_l0[] = {
    -2, 1, (((u16)16 << 0) | ((u16)0x50 << 16)), -1, 0x11AE5, 4, 12, 0,

        -1, 0x11AE9, 4, 12, 1,

            -3, 13,
};

const s32 *const anim_0533[1] = {
    anim_0533__v0_l0,
};

const s32 anim_0534__v0_l0[] = {
    -2, 49, (((u16)16 << 0) | ((u16)0xB0 << 16)), -1, 0x11AED, 12, -6, 0, (((-8 & 0xFF) << 0) | ((-48 & 0xFF) << 8) | ((8 & 0xFF) << 16) | ((0 & 0xFF) << 24)), 1, 0,

        -4,
};

const s32 *const anim_0534[1] = {
    anim_0534__v0_l0,
};

const s32 anim_0535__v0_l0[] = {
    -2, 65, (((u16)16 << 0) | ((u16)0xB0 << 16)), -1, 0x11AF9, 18, -6, 0, (((-24 & 0xFF) << 0) | ((-8 & 0xFF) << 8) | ((24 & 0xFF) << 16) | ((-6 & 0xFF) << 24)), 1, 0,

        -4,
};

const s32 *const anim_0535[1] = {
    anim_0535__v0_l0,
};

const s32 anim_0536__v0_l0[] = {
    -2, 65, (((u16)16 << 0) | ((u16)0xB0 << 16)), -1, 0x11B0B, 40, -6, 0, (((-16 & 0xFF) << 0) | ((-37 & 0xFF) << 8) | ((16 & 0xFF) << 16) | ((40 & 0xFF) << 24)), 4, 0,

        -4,
};

const s32 *const anim_0536[1] = {
    anim_0536__v0_l0,
};

const s32 anim_0537__v0_l0[] = {
    -2, 65, (((u16)16 << 0) | ((u16)0xB0 << 16)), -1, 0x11B33, 40, -6, 0, (((-40 & 0xFF) << 0) | ((-14 & 0xFF) << 8) | ((40 & 0xFF) << 16) | ((16 & 0xFF) << 24)), 1, 0,

        -4,
};

const s32 *const anim_0537[1] = {
    anim_0537__v0_l0,
};

const s32 anim_0538__v0_l0[] = {
    -2, 66, (((u16)16 << 0) | ((u16)0xB0 << 16)), -1, 0x11B5B, 36, -6, 0, (((-24 & 0xFF) << 0) | ((-20 & 0xFF) << 8) | ((24 & 0xFF) << 16) | ((24 & 0xFF) << 24)), 1, 0,

        -4,
};

const s32 *const anim_0538[1] = {
    anim_0538__v0_l0,
};

const s32 anim_0539__v0_l0[] = {
    -2, 66, (((u16)16 << 0) | ((u16)0xB0 << 16)), -1, 0x11B7F, 36, -6, 0, (((-24 & 0xFF) << 0) | ((-20 & 0xFF) << 8) | ((24 & 0xFF) << 16) | ((23 & 0xFF) << 24)), 1, 0,

        -4,
};

const s32 *const anim_0539[1] = {
    anim_0539__v0_l0,
};

const s32 anim_0540__v0_l0[] = {
    -2, 62, (((u16)16 << 0) | ((u16)0x70 << 16)), -1, 0x11BA3, 24, -6, 0, (((-13 & 0xFF) << 0) | ((-13 & 0xFF) << 8) | ((13 & 0xFF) << 16) | ((28 & 0xFF) << 24)), 3, 0,

        -4,
};

const s32 anim_0540__v1_l0[] = {
    -2, 62, (((u16)16 << 0) | ((u16)0x70 << 16)), -1, 0x11BBB, 24, -6, 0, (((-13 & 0xFF) << 0) | ((-15 & 0xFF) << 8) | ((13 & 0xFF) << 16) | ((28 & 0xFF) << 24)), 1, 1,

        -1, 0x11BD3, 28, -6, 0, (((-13 & 0xFF) << 0) | ((-28 & 0xFF) << 8) | ((13 & 0xFF) << 16) | ((28 & 0xFF) << 24)), 2, 2,

            -1, 0x11BEF, 28, -6, 0, (((-13 & 0xFF) << 0) | ((-24 & 0xFF) << 8) | ((13 & 0xFF) << 16) | ((28 & 0xFF) << 24)), 1, 3,

                -1, 0x11C0B, 28, -6, 0, (((-13 & 0xFF) << 0) | ((-27 & 0xFF) << 8) | ((13 & 0xFF) << 16) | ((28 & 0xFF) << 24)), 5, 4,

                    -1, 0x11BEF, 28, -6, 0, (((-13 & 0xFF) << 0) | ((-24 & 0xFF) << 8) | ((13 & 0xFF) << 16) | ((28 & 0xFF) << 24)), 3, 3,

                        -4,
};

const s32 *const anim_0540[2] = {
    anim_0540__v0_l0,
    anim_0540__v1_l0,
};

const s32 anim_0541__v0_l0[] = {
    -2, 35, (((u16)16 << 0) | ((u16)0x90 << 16)), -1, 0x11C27, 36, -6, 0, (((-20 & 0xFF) << 0) | ((-20 & 0xFF) << 8) | ((20 & 0xFF) << 16) | ((20 & 0xFF) << 24)), 1, 0,

        -4,
};

const s32 *const anim_0541[1] = {
    anim_0541__v0_l0,
};

const s32 anim_0542__v0_l0[] = {
    -2, 67, (((u16)16 << 0) | ((u16)0x60 << 16)), -1, 0x11C4B, 16, -6, 0, (((-7 & 0xFF) << 0) | ((-13 & 0xFF) << 8) | ((11 & 0xFF) << 16) | ((18 & 0xFF) << 24)), 6, 0,

        -1, 0x11C5B, 16, 6, 1,

            -1, 0x11C6B, 16, 6, 2,

                -1, 0x11C7B, 16, 6, 3,

                    -3, 26,
};

const s32 anim_0542__v1_l0[] = {
    -2, 67, (((u16)16 << 0) | ((u16)0x60 << 16)), -1, 0x11C4B, 16, -6, 0, (((-7 & 0xFF) << 0) | ((-13 & 0xFF) << 8) | ((11 & 0xFF) << 16) | ((18 & 0xFF) << 24)), 6, 0,

        -1, 0x11C7B, 16, 6, 3,

            -1, 0x11C6B, 16, 6, 2,

                -1, 0x11C5B, 16, 6, 1,

                    -3, 26,
};

const s32 *const anim_0542[2] = {
    anim_0542__v0_l0,
    anim_0542__v1_l0,
};

const s32 anim_0543__v0_l0[] = {
    -2, 65, (((u16)16 << 0) | ((u16)0xB0 << 16)), -1, 0x11C8B, 12, -6, 0, (((-15 & 0xFF) << 0) | ((-6 & 0xFF) << 8) | ((15 & 0xFF) << 16) | ((12 & 0xFF) << 24)), 1, 0,

        -4,
};

const s32 *const anim_0543[1] = {
    anim_0543__v0_l0,
};

const s32 anim_0544__v0_l0[] = {
    -2, 65, (((u16)16 << 0) | ((u16)0xB0 << 16)), -1, 0x11C97, 25, -6, 0, (((-20 & 0xFF) << 0) | ((-18 & 0xFF) << 8) | ((20 & 0xFF) << 16) | ((1 & 0xFF) << 24)), 1, 0,

        -4,
};

const s32 *const anim_0544[1] = {
    anim_0544__v0_l0,
};

const s32 anim_0545__v0_l0[] = {
    -2, 66, (((u16)16 << 0) | ((u16)0xB0 << 16)), -1, 0x11CB0, 4, 1, 0,

        -4,
};

const s32 anim_0545__v1_l0[] = {
    -2, 66, (((u16)16 << 0) | ((u16)0xB0 << 16)), -1, 0x11CB4, 9, -6, 0, (((-5 & 0xFF) << 0) | ((-2 & 0xFF) << 8) | ((9 & 0xFF) << 16) | ((10 & 0xFF) << 24)), 1, 1,

        -4,
};

const s32 *const anim_0545[2] = {
    anim_0545__v0_l0,
    anim_0545__v1_l0,
};

const s32 anim_0546__v0_l0[] = {
    -2, 68, (((u16)16 << 0) | ((u16)0x60 << 16)), -1, 0x11CBD, 60, -6, 0, (((-48 & 0xFF) << 0) | ((-20 & 0xFF) << 8) | ((48 & 0xFF) << 16) | ((20 & 0xFF) << 24)), 1, 0,

        -1, 0x11CF9, 60, -6, 0, (((-48 & 0xFF) << 0) | ((-20 & 0xFF) << 8) | ((48 & 0xFF) << 16) | ((20 & 0xFF) << 24)), 1, 1,

            -3, 19,
};

const s32 *const anim_0546[1] = {
    anim_0546__v0_l0,
};

const s32 anim_0547__v0_l0[] = {
    -2, 67, (((u16)16 << 0) | ((u16)0x60 << 16)), -1, 0x11D35, 24, -6, 0, (((-24 & 0xFF) << 0) | ((-30 & 0xFF) << 8) | ((24 & 0xFF) << 16) | ((0 & 0xFF) << 24)), 1, 0,

        -4,
};

const s32 *const anim_0547[1] = {
    anim_0547__v0_l0,
};

const s32 anim_0548__v0_l0[] = {
    -2, 67, (((u16)16 << 0) | ((u16)0x60 << 16)), -1, 0x11D4D, 16, 1, 0,

        -4,
};

const s32 *const anim_0548[1] = {
    anim_0548__v0_l0,
};

const s32 anim_0549__v0_l0[] = {
    -2, 67, (((u16)16 << 0) | ((u16)0x60 << 16)), -1, 0x11D5D, 1, 1, 0,

        -4,
};

const s32 *const anim_0549[1] = {
    anim_0549__v0_l0,
};

const s32 anim_0550__v0_l0[] = {
    -2, 65, (((u16)16 << 0) | ((u16)0xB0 << 16)), -1, 0x11D5E, 40, -6, 0, (((-40 & 0xFF) << 0) | ((-12 & 0xFF) << 8) | ((40 & 0xFF) << 16) | ((16 & 0xFF) << 24)), 1, 0,

        -3, 11,
};

const s32 *const anim_0550[1] = {
    anim_0550__v0_l0,
};

const s32 anim_0551__v0_l0[] = {
    -2, 65, (((u16)16 << 0) | ((u16)0xB0 << 16)), -1, 0x11D86, 32, -6, 0, (((0 & 0xFF) << 0) | ((4 & 0xFF) << 8) | ((64 & 0xFF) << 16) | ((23 & 0xFF) << 24)), 1, 0,

        -4,
};

const s32 *const anim_0551[1] = {
    anim_0551__v0_l0,
};

const s32 anim_0552__v0_l0[] = {
    -2, 68, (((u16)16 << 0) | ((u16)0x60 << 16)), -1, 0x11DA6, 18, 2, 0,

        -1, 0x11DB8, 18, 2, 1,

            -1, 0x11DCA, 18, 2, 2,

                -3, 18,
};

const s32 *const anim_0552[1] = {
    anim_0552__v0_l0,
};

const s32 anim_0553__v0_l0[] = {
    -2, 69, (((u16)16 << 0) | ((u16)0xB0 << 16)), -1, 0x11DDC, 64, 1, 0,

        -3, 8,
};

const s32 *const anim_0553[1] = {
    anim_0553__v0_l0,
};

const s32 anim_0554__v0_l0[] = {
    -2, 60, (((u16)16 << 0) | ((u16)0xB0 << 16)), -1, 0x11E1C, 1, 1, 0,

        -4,
};

const s32 *const anim_0554[1] = {
    anim_0554__v0_l0,
};

const s32 anim_0555__v0_l0[] = {
    -2, 60, (((u16)16 << 0) | ((u16)0xB0 << 16)), -1, 0x11E1D, 25, -6, 0, (((-18 & 0xFF) << 0) | ((-38 & 0xFF) << 8) | ((18 & 0xFF) << 16) | ((1 & 0xFF) << 24)), 1, 0,

        -4,
};

const s32 *const anim_0555[1] = {
    anim_0555__v0_l0,
};

const s32 anim_0556__v0_l0[] = {
    -2, 69, (((u16)16 << 0) | ((u16)0xB0 << 16)), -1, 0x11E36, 64, 1, 0,

        -4,
};

const s32 *const anim_0556[1] = {
    anim_0556__v0_l0,
};

const s32 anim_0557__v0_l0[] = {
    -2, 60, (((u16)16 << 0) | ((u16)0xB0 << 16)), -1, 0x11E76, 4, 1, 0,

        -4,
};

const s32 *const anim_0557[1] = {
    anim_0557__v0_l0,
};

const s32 anim_0558__v0_l0[] = {
    -2, 65, (((u16)16 << 0) | ((u16)0xB0 << 16)), -1, 0x11E7A, 15, 8, 0,

        -1, 0x11E89, 15, 8, 1,

            -1, 0x11E98, 15, 8, 2,

                -1, 0x11EA7, 15, 8, 3,

                    -3, 23,
};

const s32 *const anim_0558[1] = {
    anim_0558__v0_l0,
};

const s32 anim_0559__v0_l0[] = {
    -2, 70, (((u16)16 << 0) | ((u16)0xB0 << 16)), -1, 0x11EB6, 32, -6, 0, (((0 & 0xFF) << 0) | ((0 & 0xFF) << 8) | ((31 & 0xFF) << 16) | ((64 & 0xFF) << 24)), 1, 0,

        -4,
};

const s32 *const anim_0559[1] = {
    anim_0559__v0_l0,
};

const s32 anim_0560__v0_l0[] = {
    -2, 71, (((u16)16 << 0) | ((u16)0x70 << 16)), -1, 0x11ED6, 16, -6, 0, (((-16 & 0xFF) << 0) | ((-17 & 0xFF) << 8) | ((16 & 0xFF) << 16) | ((8 & 0xFF) << 24)), -6, 1, (((-16 & 0xFF) << 0) | ((-17 & 0xFF) << 8) | ((16 & 0xFF) << 16) | ((8 & 0xFF) << 24)), 16, 0,

        -1, 0x11EE6, 12, -6, 0, (((-16 & 0xFF) << 0) | ((-17 & 0xFF) << 8) | ((16 & 0xFF) << 16) | ((8 & 0xFF) << 24)), -6, 1, (((-16 & 0xFF) << 0) | ((-17 & 0xFF) << 8) | ((16 & 0xFF) << 16) | ((8 & 0xFF) << 24)), 16, 1,

            -4,
};

const s32 *const anim_0560[1] = {
    anim_0560__v0_l0,
};

const s32 anim_0561__v0_l0[] = {
    -2, 71, (((u16)16 << 0) | ((u16)0x70 << 16)), -1, 0x11EF2, 4, -6, 0, (((-16 & 0xFF) << 0) | ((0 & 0xFF) << 8) | ((16 & 0xFF) << 16) | ((8 & 0xFF) << 24)), 16, 0,

        -1, 0x11EF6, 4, -6, 0, (((-16 & 0xFF) << 0) | ((0 & 0xFF) << 8) | ((16 & 0xFF) << 16) | ((8 & 0xFF) << 24)), 16, 1,

            -1, 0x11EFA, 4, -6, 0, (((-16 & 0xFF) << 0) | ((0 & 0xFF) << 8) | ((16 & 0xFF) << 16) | ((8 & 0xFF) << 24)), 16, 2,

                -3, 27,
};

const s32 *const anim_0561[1] = {
    anim_0561__v0_l0,
};

const s32 anim_0562__v0_l0[] = {
    -2, 1, (((u16)16 << 0) | ((u16)0x50 << 16)), -1, 0x11EFE, 18, -6, 0, (((-16 & 0xFF) << 0) | ((-13 & 0xFF) << 8) | ((-16 & 0xFF) << 16) | ((-13 & 0xFF) << 24)), 3, 0,

        -1, 0x11F10, 18, 3, 1,

            -1, 0x11F22, 18, 3, 2,

                -3, 21,
};

const s32 *const anim_0562[1] = {
    anim_0562__v0_l0,
};

const s32 anim_0563__v0_l0[] = {
    -1, 0x11F34, 6, -2, 1, (((u16)16 << 0) | ((u16)0x50 << 16)), 12, 0,

        12, 1,

            12, 2,

                -3, 9,
};

const s32 *const anim_0563[1] = {
    anim_0563__v0_l0,
};

const s32 anim_0564__v0_l0[] = {
    -2, 66, (((u16)16 << 0) | ((u16)0xB0 << 16)), -1, 0x11F3A, 1, 4, 0,

        -1, 0x11F3B, 1, 4, 1,

            -1, 0x11F3C, 1, 4, 2,

                -1, 0x11F3D, 1, 4, 3,

                    -1, 0x11F3E, 1, 4, 4,

                        -1, 0x11F3F, 1, 4, 5,

                            -1, 0x11F40, 1, 4, 6,

                                -1, 0x11F41, 1, 4, 7,

                                    -3, 43,
};

const s32 *const anim_0564[1] = {
    anim_0564__v0_l0,
};

const s32 anim_0565__v0_l0[] = {
    -2, 66, (((u16)16 << 0) | ((u16)0xB0 << 16)), -1, 0x11F42, 2, 6, 0,

        -1, 0x11F44, 2, 6, 1,

            -1, 0x11F46, 2, 6, 2,

                -1, 0x11F48, 2, 6, 3,

                    -1, 0x11F4A, 2, 6, 4,

                        -1, 0x11F4C, 2, 6, 5,

                            -1, 0x11F4E, 2, 6, 6,

                                -1, 0x11F50, 2, 6, 7,

                                    -3, 43,
};

const s32 *const anim_0565[1] = {
    anim_0565__v0_l0,
};

const s32 anim_0566__v0_l0[] = {
    -2, 66, (((u16)16 << 0) | ((u16)0xB0 << 16)), -1, 0x11F52, 1, 5, 0,

        -1, 0x11F53, 1, 5, 1,

            -1, 0x11F54, 1, 5, 2,

                -1, 0x11F55, 1, 5, 3,

                    -1, 0x11F56, 1, 5, 4,

                        -1, 0x11F57, 1, 5, 5,

                            -1, 0x11F58, 1, 5, 6,

                                -1, 0x11F59, 1, 5, 7,

                                    -3, 43,
};

const s32 *const anim_0566[1] = {
    anim_0566__v0_l0,
};

const s32 anim_0567__v0_l0[] = {
    -2, 72, (((u16)16 << 0) | ((u16)0xB0 << 16)), -1, 0x11F5A, 20, -6, 0, (((-11 & 0xFF) << 0) | ((-8 & 0xFF) << 8) | ((11 & 0xFF) << 16) | ((0 & 0xFF) << 24)), -6, 1, (((-11 & 0xFF) << 0) | ((-38 & 0xFF) << 8) | ((11 & 0xFF) << 16) | ((-12 & 0xFF) << 24)), 4, 0,

        -1, 0x11F6E, 24, -6, 0, (((-11 & 0xFF) << 0) | ((-8 & 0xFF) << 8) | ((11 & 0xFF) << 16) | ((0 & 0xFF) << 24)), -6, 1, (((-11 & 0xFF) << 0) | ((-38 & 0xFF) << 8) | ((11 & 0xFF) << 16) | ((-12 & 0xFF) << 24)), 4, 1,

            -1, 0x11F86, 24, -6, 0, (((-11 & 0xFF) << 0) | ((-8 & 0xFF) << 8) | ((11 & 0xFF) << 16) | ((0 & 0xFF) << 24)), -6, 1, (((-11 & 0xFF) << 0) | ((-38 & 0xFF) << 8) | ((11 & 0xFF) << 16) | ((-12 & 0xFF) << 24)), 4, 2,

                -1, 0x11F9E, 20, -6, 0, (((-11 & 0xFF) << 0) | ((-8 & 0xFF) << 8) | ((11 & 0xFF) << 16) | ((0 & 0xFF) << 24)), -6, 1, (((-11 & 0xFF) << 0) | ((-38 & 0xFF) << 8) | ((11 & 0xFF) << 16) | ((-12 & 0xFF) << 24)), 4, 3,

                    -1, 0x11FB2, 24, -6, 0, (((-11 & 0xFF) << 0) | ((-8 & 0xFF) << 8) | ((11 & 0xFF) << 16) | ((0 & 0xFF) << 24)), -6, 1, (((-11 & 0xFF) << 0) | ((-38 & 0xFF) << 8) | ((11 & 0xFF) << 16) | ((-12 & 0xFF) << 24)), 4, 4,

                        -1, 0x11FCA, 24, -6, 0, (((-11 & 0xFF) << 0) | ((-8 & 0xFF) << 8) | ((11 & 0xFF) << 16) | ((0 & 0xFF) << 24)), -6, 1, (((-11 & 0xFF) << 0) | ((-38 & 0xFF) << 8) | ((11 & 0xFF) << 16) | ((-12 & 0xFF) << 24)), 4, 5,

                            -3, 69,
};

const s32 anim_0567__v1_l0[] = {
    -2, 72, (((u16)16 << 0) | ((u16)0xB0 << 16)), -1, 0x11F5A, 20, -6, 0, (((-11 & 0xFF) << 0) | ((-8 & 0xFF) << 8) | ((11 & 0xFF) << 16) | ((0 & 0xFF) << 24)), -6, 1, (((-11 & 0xFF) << 0) | ((-38 & 0xFF) << 8) | ((11 & 0xFF) << 16) | ((-12 & 0xFF) << 24)), 4, 0,

        -1, 0x11F6E, 24, -6, 0, (((-11 & 0xFF) << 0) | ((-8 & 0xFF) << 8) | ((11 & 0xFF) << 16) | ((0 & 0xFF) << 24)), -6, 1, (((-11 & 0xFF) << 0) | ((-38 & 0xFF) << 8) | ((11 & 0xFF) << 16) | ((-12 & 0xFF) << 24)), 4, 1,

            -1, 0x11FE2, 24, -6, 0, (((-11 & 0xFF) << 0) | ((-8 & 0xFF) << 8) | ((11 & 0xFF) << 16) | ((0 & 0xFF) << 24)), -6, 1, (((-11 & 0xFF) << 0) | ((-38 & 0xFF) << 8) | ((11 & 0xFF) << 16) | ((-12 & 0xFF) << 24)), 4, 6,

                -1, 0x11FFA, 20, -6, 0, (((-11 & 0xFF) << 0) | ((-8 & 0xFF) << 8) | ((11 & 0xFF) << 16) | ((0 & 0xFF) << 24)), -6, 1, (((-11 & 0xFF) << 0) | ((-38 & 0xFF) << 8) | ((11 & 0xFF) << 16) | ((-12 & 0xFF) << 24)), 4, 7,

                    -1, 0x1200E, 24, -6, 0, (((-11 & 0xFF) << 0) | ((-8 & 0xFF) << 8) | ((11 & 0xFF) << 16) | ((0 & 0xFF) << 24)), -6, 1, (((0 & 0xFF) << 0) | ((0 & 0xFF) << 8) | ((0 & 0xFF) << 16) | ((0 & 0xFF) << 24)), 4, 8,

                        -1, 0x12026, 24, -6, 0, (((-11 & 0xFF) << 0) | ((-8 & 0xFF) << 8) | ((11 & 0xFF) << 16) | ((0 & 0xFF) << 24)), -6, 1, (((0 & 0xFF) << 0) | ((0 & 0xFF) << 8) | ((0 & 0xFF) << 16) | ((0 & 0xFF) << 24)), 4, 9,

                            -4,
};

const s32 *const anim_0567[2] = {
    anim_0567__v0_l0,
    anim_0567__v1_l0,
};

const s32 anim_0568__v0_l0[] = {
    -2, 68, (((u16)16 << 0) | ((u16)0x60 << 16)), -1, 0x1203E, 12, 3, 0,

        -1, 0x1204A, 18, 3, 1,

            -1, 0x1205C, 12, 3, 2,

                -3, 18,
};

const s32 *const anim_0568[1] = {
    anim_0568__v0_l0,
};

const s32 anim_0569__v0_l0[] = {
    -2, 63, (((u16)16 << 0) | ((u16)0xB0 << 16)), -1, 0x12068, 6, -6, 0, (((-7 & 0xFF) << 0) | ((12 & 0xFF) << 8) | ((7 & 0xFF) << 16) | ((42 & 0xFF) << 24)), 1, 0,

        -4,
};

const s32 *const anim_0569[1] = {
    anim_0569__v0_l0,
};

const s32 anim_0570__v0_l0[] = {
    -2, 73, (((u16)16 << 0) | ((u16)0x70 << 16)), -1, 0x1206E, 12, -6, 0, (((4 & 0xFF) << 0) | ((-8 & 0xFF) << 8) | ((20 & 0xFF) << 16) | ((22 & 0xFF) << 24)), 1, 0,

        -1, 0x1207A, 12, 1, 1,

            -1, 0x12086, 12, 1, 2,

                -3, 21,
};

const s32 *const anim_0570[1] = {
    anim_0570__v0_l0,
};

const s32 anim_0571__v0_l0[] = {
    -2, 73, (((u16)16 << 0) | ((u16)0x70 << 16)), -1, 0x12092, 12, -6, 0, (((3 & 0xFF) << 0) | ((0 & 0xFF) << 8) | ((18 & 0xFF) << 16) | ((23 & 0xFF) << 24)), 1, 0,

        -1, 0x1209E, 12, 1, 1,

            -1, 0x120AA, 12, 1, 2,

                -3, 21,
};

const s32 *const anim_0571[1] = {
    anim_0571__v0_l0,
};

const s32 anim_0572__v0_l0[] = {
    -2, 33, (((u16)16 << 0) | ((u16)0x70 << 16)), -1, 0x120B6, 20, 1, 0,

        -1, 0x120CA, 16, 2, 1,

            -1, 0x120DA, 24, 1, 2,

                -1, 0x120F2, 24, 5, 3,

                    -1, 0x1210A, 24, 3, 4,

                        -4,
};

const s32 anim_0572__v1_l0[] = {
    -2, 33, (((u16)16 << 0) | ((u16)0x70 << 16)), -1, 0x120B6, 20, -6, 0, (((-15 & 0xFF) << 0) | ((-32 & 0xFF) << 8) | ((15 & 0xFF) << 16) | ((1 & 0xFF) << 24)), 1, 0,

        -3, 11,
};

const s32 *const anim_0572[2] = {
    anim_0572__v0_l0,
    anim_0572__v1_l0,
};

const s32 anim_0573__v0_l0[] = {
    -2, 74, (((u16)16 << 0) | ((u16)0xB0 << 16)), -1, 0x12122, 28, 1, 0,

        -4,
};

const s32 *const anim_0573[1] = {
    anim_0573__v0_l0,
};

const s32 anim_0574__v0_l0[] = {
    -2, 75, (((u16)16 << 0) | ((u16)0xD0 << 16)), -1, 0x1213E, 6, -6, 0, (((-8 & 0xFF) << 0) | ((-13 & 0xFF) << 8) | ((8 & 0xFF) << 16) | ((8 & 0xFF) << 24)), 1, 0,

        -4,
};

const s32 *const anim_0574[1] = {
    anim_0574__v0_l0,
};

const s32 anim_0575__v0_l0[] = {
    -2, 76, (((u16)16 << 0) | ((u16)0xE0 << 16)), -1, 0x12144, 72, -6, 0, (((-28 & 0xFF) << 0) | ((-53 & 0xFF) << 8) | ((29 & 0xFF) << 16) | ((0 & 0xFF) << 24)), 1, 0,

        -4,
};

const s32 anim_0575__v1_l0[] = {
    -2, 76, (((u16)16 << 0) | ((u16)0xE0 << 16)), -1, 0x1218C, 72, -6, 0, (((-28 & 0xFF) << 0) | ((-53 & 0xFF) << 8) | ((29 & 0xFF) << 16) | ((0 & 0xFF) << 24)), 1, 1,

        -4,
};

const s32 anim_0575__v2_l0[] = {
    -2, 76, (((u16)16 << 0) | ((u16)0xE0 << 16)), -1, 0x121D4, 81, -6, 0, (((-12 & 0xFF) << 0) | ((-73 & 0xFF) << 8) | ((12 & 0xFF) << 16) | ((-65 & 0xFF) << 24)), 1, 2,

        -4,
};

const s32 *const anim_0575[3] = {
    anim_0575__v0_l0,
    anim_0575__v1_l0,
    anim_0575__v2_l0,
};

const s32 anim_0576__v0_l0[] = {
    -2, 76, (((u16)16 << 0) | ((u16)0xE0 << 16)), -1, 0x12225, 6, -6, 0, (((-13 & 0xFF) << 0) | ((-76 & 0xFF) << 8) | ((13 & 0xFF) << 16) | ((-60 & 0xFF) << 24)), 1, 0,

        -4,
};

const s32 *const anim_0576[1] = {
    anim_0576__v0_l0,
};

const s32 anim_0577__v0_l0[] = {
    -2, 76, (((u16)16 << 0) | ((u16)0xE0 << 16)), -1, 0x1222B, 64, 1, 0,

        -4,
};

const s32 *const anim_0577[1] = {
    anim_0577__v0_l0,
};

const s32 anim_0578__v0_l0[] = {
    -2, 76, (((u16)16 << 0) | ((u16)0xE0 << 16)), -1, 0x1226B, 64, 1, 0,

        -4,
};

const s32 *const anim_0578[1] = {
    anim_0578__v0_l0,
};

const s32 anim_0579__v0_l0[] = {
    -2, 74, (((u16)16 << 0) | ((u16)0xB0 << 16)), -1, 0x122AB, 4, 1, 0,

        -4,
};

const s32 *const anim_0579[1] = {
    anim_0579__v0_l0,
};

const s32 anim_0580__v0_l0[] = {
    -2, 74, (((u16)16 << 0) | ((u16)0xB0 << 16)), -1, 0x122AF, 1, 1, 0,

        -4,
};

const s32 *const anim_0580[1] = {
    anim_0580__v0_l0,
};

const s32 anim_0581__v0_l0[] = {
    -2, 1, (((u16)16 << 0) | ((u16)0x50 << 16)), -1, 0x122B0, 12, 10, 0,

        -1, 0x122BC, 12, 10, 1,

            -1, 0x122C8, 12, 10, 2,

                -1, 0x122D4, 6, 10, 3,

                    -4,
};

const s32 *const anim_0581[1] = {
    anim_0581__v0_l0,
};

const s32 anim_0582__v0_l0[] = {
    -2, 41, (((u16)16 << 0) | ((u16)0x70 << 16)), -1, 0x122DA, 24, -6, 0, (((-13 & 0xFF) << 0) | ((-12 & 0xFF) << 8) | ((13 & 0xFF) << 16) | ((23 & 0xFF) << 24)), 1, 0,

        -1, 0x122F2, 24, 2, 1,

            -1, 0x1230A, 28, 5, 2,

                -1, 0x12326, 28, 3, 3,

                    -1, 0x12342, 28, 3, 4,

                        -4,
};

const s32 anim_0582__v1_l0[] = {
    -2, 41, (((u16)16 << 0) | ((u16)0x70 << 16)), -1, 0x122DA, 24, -6, 0, (((-13 & 0xFF) << 0) | ((-12 & 0xFF) << 8) | ((13 & 0xFF) << 16) | ((24 & 0xFF) << 24)), 1, 0,

        -4,
};

const s32 *const anim_0582[2] = {
    anim_0582__v0_l0,
    anim_0582__v1_l0,
};

const s32 anim_0583__v0_l0[] = {
    -2, 77, (((u16)16 << 0) | ((u16)0x70 << 16)), -1, 0x1235E, 10, 1, 0,

        -4,
};

const s32 *const anim_0583[1] = {
    anim_0583__v0_l0,
};

const s32 anim_0584__v0_l0[] = {
    -2, 78, (((u16)16 << 0) | ((u16)0x70 << 16)), -1, 0x12368, 70, -6, 0, (((-19 & 0xFF) << 0) | ((-27 & 0xFF) << 8) | ((21 & 0xFF) << 16) | ((46 & 0xFF) << 24)), 4, 0,

        -1, 0x123AE, 70, 4, 1,

            -1, 0x123F4, 70, 4, 2,

                -1, 0x1243A, 70, 4, 3,

                    -3, 26,
};

const s32 *const anim_0584[1] = {
    anim_0584__v0_l0,
};

const s32 anim_0585__v0_l0[] = {
    -2, 78, (((u16)16 << 0) | ((u16)0x70 << 16)), -1, 0x12480, 70, -6, 0, (((-19 & 0xFF) << 0) | ((-27 & 0xFF) << 8) | ((21 & 0xFF) << 16) | ((46 & 0xFF) << 24)), 4, 0,

        -1, 0x124C6, 70, 4, 1,

            -1, 0x1250C, 70, 4, 2,

                -1, 0x12552, 70, 4, 3,

                    -3, 26,
};

const s32 *const anim_0585[1] = {
    anim_0585__v0_l0,
};

const s32 anim_0586__v0_l0[] = {
    -2, 78, (((u16)16 << 0) | ((u16)0x70 << 16)), -1, 0x12598, 70, -6, 0, (((-26 & 0xFF) << 0) | ((-19 & 0xFF) << 8) | ((47 & 0xFF) << 16) | ((21 & 0xFF) << 24)), 4, 0,

        -1, 0x125DE, 70, 4, 1,

            -1, 0x12624, 70, 4, 2,

                -1, 0x1266A, 70, 4, 3,

                    -3, 26,
};

const s32 *const anim_0586[1] = {
    anim_0586__v0_l0,
};

const s32 anim_0587__v0_l0[] = {
    -2, 78, (((u16)16 << 0) | ((u16)0x70 << 16)), -1, 0x126B0, 70, -6, 0, (((-26 & 0xFF) << 0) | ((-19 & 0xFF) << 8) | ((47 & 0xFF) << 16) | ((21 & 0xFF) << 24)), 4, 0,

        -1, 0x126F6, 70, 4, 1,

            -1, 0x1273C, 70, 4, 2,

                -1, 0x12782, 70, 4, 3,

                    -3, 26,
};

const s32 *const anim_0587[1] = {
    anim_0587__v0_l0,
};

const s32 anim_0588__v0_l0[] = {
    -2, 79, (((u16)16 << 0) | ((u16)0xB0 << 16)), -1, 0x127C8, 70, -6, 0, (((-27 & 0xFF) << 0) | ((-20 & 0xFF) << 8) | ((46 & 0xFF) << 16) | ((20 & 0xFF) << 24)), 35, 0,

        -1, 0x1280E, 70, 10, 1,

            -1, 0x12854, 70, 10, 2,

                -3, 21,
};

const s32 anim_0588__v1_l0[] = {
    -2, 79, (((u16)16 << 0) | ((u16)0xB0 << 16)), -1, 0x1289A, 70, -6, 0, (((-27 & 0xFF) << 0) | ((-20 & 0xFF) << 8) | ((46 & 0xFF) << 16) | ((20 & 0xFF) << 24)), 35, 3,

        -1, 0x128E0, 70, 10, 4,

            -1, 0x12926, 70, 10, 5,

                -3, 21,
};

const s32 *const anim_0588[2] = {
    anim_0588__v0_l0,
    anim_0588__v1_l0,
};

const s32 anim_0589__v0_l0[] = {
    -2, 79, (((u16)16 << 0) | ((u16)0xB0 << 16)), -1, 0x1296C, 70, -6, 0, (((-20 & 0xFF) << 0) | ((-28 & 0xFF) << 8) | ((20 & 0xFF) << 16) | ((45 & 0xFF) << 24)), 35, 0,

        -1, 0x129B2, 70, 10, 1,

            -1, 0x129F8, 70, 10, 2,

                -3, 21,
};

const s32 anim_0589__v1_l0[] = {
    -2, 79, (((u16)16 << 0) | ((u16)0xB0 << 16)), -1, 0x12A3E, 70, -6, 0, (((-20 & 0xFF) << 0) | ((-28 & 0xFF) << 8) | ((20 & 0xFF) << 16) | ((45 & 0xFF) << 24)), 35, 3,

        -1, 0x12A84, 70, 10, 4,

            -1, 0x12ACA, 70, 10, 5,

                -3, 21,
};

const s32 *const anim_0589[2] = {
    anim_0589__v0_l0,
    anim_0589__v1_l0,
};

const s32 anim_0590__v0_l0[] = {
    -2, 80, (((u16)16 << 0) | ((u16)0xB0 << 16)), -1, 0x12B10, 91, -6, 0, (((-52 & 0xFF) << 0) | ((-28 & 0xFF) << 8) | ((51 & 0xFF) << 16) | ((36 & 0xFF) << 24)), 8, 0,

        -1, 0x12B6B, 91, 8, 1,

            -1, 0x12BC6, 91, 8, 2,

                -1, 0x12C21, 91, 8, 3,

                    -3, 26,
};

const s32 anim_0590__v1_l0[] = {
    -2, 80, (((u16)16 << 0) | ((u16)0xB0 << 16)), -1, 0x12C7C, 91, -6, 0, (((-52 & 0xFF) << 0) | ((-28 & 0xFF) << 8) | ((51 & 0xFF) << 16) | ((36 & 0xFF) << 24)), 8, 4,

        -1, 0x12CD7, 91, 8, 5,

            -1, 0x12D32, 91, 8, 6,

                -1, 0x12D8D, 91, 8, 7,

                    -3, 26,
};

const s32 *const anim_0590[2] = {
    anim_0590__v0_l0,
    anim_0590__v1_l0,
};

const s32 anim_0591__v0_l0[] = {
    -2, 80, (((u16)16 << 0) | ((u16)0xB0 << 16)), -1, 0x12DE8, 77, -6, 0, (((-27 & 0xFF) << 0) | ((-44 & 0xFF) << 8) | ((27 & 0xFF) << 16) | ((45 & 0xFF) << 24)), 8, 0,

        -1, 0x12E35, 77, 8, 1,

            -1, 0x12E82, 77, 8, 2,

                -1, 0x12ECF, 77, 8, 3,

                    -3, 26,
};

const s32 anim_0591__v1_l0[] = {
    -2, 80, (((u16)16 << 0) | ((u16)0xB0 << 16)), -1, 0x12F1C, 77, -6, 0, (((-27 & 0xFF) << 0) | ((-44 & 0xFF) << 8) | ((27 & 0xFF) << 16) | ((45 & 0xFF) << 24)), 8, 4,

        -1, 0x12F69, 77, 8, 5,

            -1, 0x12FB6, 77, 8, 6,

                -1, 0x13003, 77, 8, 7,

                    -3, 26,
};

const s32 *const anim_0591[2] = {
    anim_0591__v0_l0,
    anim_0591__v1_l0,
};

const s32 anim_0592__v0_l0[] = {
    -2, 81, (((u16)16 << 0) | ((u16)0xB0 << 16)), -1, 0x13050, 16, -6, 0, (((-16 & 0xFF) << 0) | ((-16 & 0xFF) << 8) | ((12 & 0xFF) << 16) | ((-8 & 0xFF) << 24)), 1, 0,

        -4,
};

const s32 *const anim_0592[1] = {
    anim_0592__v0_l0,
};

const s32 anim_0593__v0_l0[] = {
    -2, 82, (((u16)16 << 0) | ((u16)0x70 << 16)), -1, 0x13060, 28, -6, 0, (((0 & 0xFF) << 0) | ((-30 & 0xFF) << 8) | ((56 & 0xFF) << 16) | ((0 & 0xFF) << 24)), 8, 0,

        -1, 0x1307C, 28, 8, 1,

            -3, 16,
};

const s32 anim_0593__v1_l0[] = {
    -2, 83, (((u16)16 << 0) | ((u16)0x70 << 16)), -1, 0x13098, 28, -6, 0, (((0 & 0xFF) << 0) | ((0 & 0xFF) << 8) | ((29 & 0xFF) << 16) | ((56 & 0xFF) << 24)), 8, 2,

        -1, 0x130B4, 28, 8, 3,

            -3, 16,
};

const s32 *const anim_0593[2] = {
    anim_0593__v0_l0,
    anim_0593__v1_l0,
};

const s32 anim_0594__v0_l0[] = {
    -2, 63, (((u16)16 << 0) | ((u16)0xB0 << 16)), -1, 0x130D0, 32, -6, 0, (((0 & 0xFF) << 0) | ((0 & 0xFF) << 8) | ((32 & 0xFF) << 16) | ((64 & 0xFF) << 24)), 1, 0,

        -4,
};

const s32 *const anim_0594[1] = {
    anim_0594__v0_l0,
};

const s32 anim_0595__v0_l0[] = {
    -2, 65, (((u16)16 << 0) | ((u16)0xB0 << 16)), -1, 0x130F0, 32, -6, 0, (((0 & 0xFF) << 0) | ((0 & 0xFF) << 8) | ((32 & 0xFF) << 16) | ((63 & 0xFF) << 24)), 1, 0,

        -4,
};

const s32 *const anim_0595[1] = {
    anim_0595__v0_l0,
};

const s32 anim_0596__v0_l0[] = {
    -2, 84, (((u16)16 << 0) | ((u16)0xB0 << 16)), -1, 0x13110, 32, -6, 0, (((0 & 0xFF) << 0) | ((0 & 0xFF) << 8) | ((32 & 0xFF) << 16) | ((64 & 0xFF) << 24)), 1, 0,

        -4,
};

const s32 *const anim_0596[1] = {
    anim_0596__v0_l0,
};

const s32 anim_0597__v0_l0[] = {
    -2, 85, (((u16)16 << 0) | ((u16)0x70 << 16)), -1, 0x13130, 1, 10, 0,

        -1, 0x13131, 1, 10, 1,

            -1, 0x13132, 1, 10, 2,

                -1, 0x13133, 1, 10, 3,

                    -3, 23,
};

const s32 *const anim_0597[1] = {
    anim_0597__v0_l0,
};

const s32 anim_0598__v0_l0[] = {
    -2, 86, (((u16)16 << 0) | ((u16)0xB0 << 16)), -1, 0x13134, 18, -6, 0, (((-24 & 0xFF) << 0) | ((-8 & 0xFF) << 8) | ((24 & 0xFF) << 16) | ((8 & 0xFF) << 24)), 1, 0,

        -4,
};

const s32 *const anim_0598[1] = {
    anim_0598__v0_l0,
};

const s32 anim_0599__v0_l0[] = {
    -2, 86, (((u16)16 << 0) | ((u16)0xB0 << 16)), -1, 0x13146, 36, -6, 0, (((-24 & 0xFF) << 0) | ((-20 & 0xFF) << 8) | ((24 & 0xFF) << 16) | ((24 & 0xFF) << 24)), 1, 0,

        -4,
};

const s32 *const anim_0599[1] = {
    anim_0599__v0_l0,
};

const s32 anim_0600__v0_l0[] = {
    -2, 86, (((u16)16 << 0) | ((u16)0xB0 << 16)), -1, 0x1316A, 40, -6, 0, (((-39 & 0xFF) << 0) | ((-14 & 0xFF) << 8) | ((39 & 0xFF) << 16) | ((16 & 0xFF) << 24)), 1, 0,

        -4,
};

const s32 *const anim_0600[1] = {
    anim_0600__v0_l0,
};

const s32 anim_0601__v0_l0[] = {
    -2, 86, (((u16)16 << 0) | ((u16)0xB0 << 16)), -1, 0x13192, 12, -6, 0, (((-14 & 0xFF) << 0) | ((-9 & 0xFF) << 8) | ((14 & 0xFF) << 16) | ((10 & 0xFF) << 24)), 1, 0,

        -4,
};

const s32 *const anim_0601[1] = {
    anim_0601__v0_l0,
};

const s32 anim_0602__v0_l0[] = {
    -2, 86, (((u16)16 << 0) | ((u16)0xB0 << 16)), -1, 0x1319E, 32, -6, 0, (((0 & 0xFF) << 0) | ((3 & 0xFF) << 8) | ((64 & 0xFF) << 16) | ((32 & 0xFF) << 24)), 1, 0,

        -4,
};

const s32 *const anim_0602[1] = {
    anim_0602__v0_l0,
};

const s32 anim_0603__v0_l0[] = {
    -2, 86, (((u16)16 << 0) | ((u16)0xB0 << 16)), -1, 0x131BE, 27, -6, 0, (((-32 & 0xFF) << 0) | ((-7 & 0xFF) << 8) | ((32 & 0xFF) << 16) | ((6 & 0xFF) << 24)), 10, 0,

        -1, 0x131D9, 27, 10, 1,

            -1, 0x131F4, 27, 10, 2,

                -1, 0x1320F, 27, 10, 3,

                    -3, 26,
};

const s32 anim_0603__v1_l0[] = {
    -2, 86, (((u16)16 << 0) | ((u16)0xB0 << 16)), -1, 0x131BE, 27, -6, 0, (((-32 & 0xFF) << 0) | ((-7 & 0xFF) << 8) | ((32 & 0xFF) << 16) | ((6 & 0xFF) << 24)), 10, 0,

        -1, 0x1320F, 27, 10, 3,

            -1, 0x131F4, 27, 10, 2,

                -1, 0x131D9, 27, 10, 1,

                    -3, 26,
};

const s32 *const anim_0603[2] = {
    anim_0603__v0_l0,
    anim_0603__v1_l0,
};

const s32 anim_0604__v0_l0[] = {
    -2, 86, (((u16)16 << 0) | ((u16)0xB0 << 16)), -1, 0x1322A, 36, -6, 0, (((-44 & 0xFF) << 0) | ((-5 & 0xFF) << 8) | ((44 & 0xFF) << 16) | ((8 & 0xFF) << 24)), 10, 0,

        -1, 0x1324E, 36, 10, 1,

            -1, 0x13272, 36, 10, 2,

                -1, 0x13296, 36, 10, 3,

                    -3, 26,
};

const s32 anim_0604__v1_l0[] = {
    -2, 86, (((u16)16 << 0) | ((u16)0xB0 << 16)), -1, 0x1322A, 36, -6, 0, (((-44 & 0xFF) << 0) | ((-5 & 0xFF) << 8) | ((44 & 0xFF) << 16) | ((8 & 0xFF) << 24)), 10, 0,

        -1, 0x13296, 36, 10, 3,

            -1, 0x13272, 36, 10, 2,

                -1, 0x1324E, 36, 10, 1,

                    -3, 26,
};

const s32 *const anim_0604[2] = {
    anim_0604__v0_l0,
    anim_0604__v1_l0,
};

const s32 anim_0605__v0_l0[] = {
    -2, 87, (((u16)16 << 0) | ((u16)0xD0 << 16)), -1, 0x132BA, 18, -6, 0, (((-24 & 0xFF) << 0) | ((-7 & 0xFF) << 8) | ((24 & 0xFF) << 16) | ((-5 & 0xFF) << 24)), 1, 0,

        -4,
};

const s32 *const anim_0605[1] = {
    anim_0605__v0_l0,
};

const s32 anim_0606__v0_l0[] = {
    -2, 88, (((u16)16 << 0) | ((u16)0x0 << 16)), -1, 0x132CC, 16, 1, 0,

        -4,
};

const s32 *const anim_0606[1] = {
    anim_0606__v0_l0,
};

const s32 anim_0607__v0_l0[] = {
    -2, 89, (((u16)16 << 0) | ((u16)0xA0 << 16)), -1, 0x132DC, 63, 1, 0,

        -4,
};

const s32 anim_0607__v1_l0[] = {
    -2, 89, (((u16)16 << 0) | ((u16)0xA0 << 16)), -1, 0x132DC, 63, -6, 0, (((-32 & 0xFF) << 0) | ((-56 & 0xFF) << 8) | ((29 & 0xFF) << 16) | ((0 & 0xFF) << 24)), -6, 1, (((-16 & 0xFF) << 0) | ((-36 & 0xFF) << 8) | ((16 & 0xFF) << 16) | ((-16 & 0xFF) << 24)), 4, 0,

        -1, 0x1331B, 70, 4, 1,

            -9, (((u16)607 << 0) | ((u16)2 << 16)),
};

const s32 anim_0607__v2_l0[] = {
    -2, 89, (((u16)16 << 0) | ((u16)0xA0 << 16)), -1, 0x13361, 70, 4, 2,

        -9, (((u16)607 << 0) | ((u16)1 << 16)),
};

const s32 *const anim_0607[3] = {
    anim_0607__v0_l0,
    anim_0607__v1_l0,
    anim_0607__v2_l0,
};

const s32 anim_0608__v0_l0[] = {
    -2, 89, (((u16)16 << 0) | ((u16)0xA0 << 16)), -1, 0x133A7, 4, 1, 0,

        -4,
};

const s32 *const anim_0608[1] = {
    anim_0608__v0_l0,
};

const s32 anim_0609__v0_l0[] = {
    -2, 89, (((u16)16 << 0) | ((u16)0xA0 << 16)), -1, 0x133AB, 64, -6, 0, (((-16 & 0xFF) << 0) | ((-16 & 0xFF) << 8) | ((16 & 0xFF) << 16) | ((16 & 0xFF) << 24)), 1, 0,

        -4,
};

const s32 *const anim_0609[1] = {
    anim_0609__v0_l0,
};

const s32 anim_0610__v0_l0[] = {
    -2, 90, (((u16)16 << 0) | ((u16)0x80 << 16)), -1, 0x133EB, 8, 1, 0,

        -4,
};

const s32 anim_0610__v1_l0[] = {
    -2, 90, (((u16)16 << 0) | ((u16)0x80 << 16)), -1, 0x133F3, 8, 6, 1,

        -1, 0x133FB, 8, 6, 2,

            -1, 0x133F3, 8, 6, 1,

                -1, 0x133FB, 8, 6, 2,

                    -1, 0x133F3, 8, 6, 1,

                        -1, 0x133FB, 8, 6, 2,

                            -9, (((u16)610 << 0) | ((u16)0 << 16)),
};

const s32 anim_0610__v2_l0[] = {
    -2, 90, (((u16)16 << 0) | ((u16)0x80 << 16)), -1, 0x13403, 8, 5, 3,

        -1, 0x1340B, 8, 3, 4,

            -1, 0x13403, 8, 5, 3,

                -1, 0x1340B, 8, 3, 4,

                    -1, 0x13403, 8, 5, 3,

                        -1, 0x1340B, 8, 3, 4,

                            -9, (((u16)610 << 0) | ((u16)0 << 16)),
};

const s32 *const anim_0610[3] = {
    anim_0610__v0_l0,
    anim_0610__v1_l0,
    anim_0610__v2_l0,
};

const s32 anim_0611__v0_l0[] = {
    -1, 0x13413, 80, -2, 33, (((u16)16 << 0) | ((u16)0x70 << 16)), -5, 144, 4, 0,

        4, 1,

            4, 2,

                4, 3,

                    4, 4,

                        -4,
};

const s32 *const anim_0611[1] = {
    anim_0611__v0_l0,
};

const s32 anim_0612__v0_l0[] = {
    -2, 89, (((u16)16 << 0) | ((u16)0xA0 << 16)), -1, 0x13463, 56, 1, 0,

        -4,
};

const s32 *const anim_0612[1] = {
    anim_0612__v0_l0,
};

const s32 anim_0613__v0_l0[] = {
    -2, 89, (((u16)16 << 0) | ((u16)0xA0 << 16)), -1, 0x1349B, 16, 1, 0,

        -4,
};

const s32 *const anim_0613[1] = {
    anim_0613__v0_l0,
};

const s32 anim_0614__v0_l0[] = {
    -2, 89, (((u16)16 << 0) | ((u16)0xA0 << 16)), -1, 0x134AB, 16, 1, 0,

        -4,
};

const s32 *const anim_0614[1] = {
    anim_0614__v0_l0,
};

const s32 anim_0615__v0_l0[] = {
    -2, 89, (((u16)16 << 0) | ((u16)0xA0 << 16)), -1, 0x134BB, 16, 1, 0,

        -4,
};

const s32 *const anim_0615[1] = {
    anim_0615__v0_l0,
};

const s32 anim_0616__v0_l0[] = {
    -2, 89, (((u16)16 << 0) | ((u16)0xA0 << 16)), -1, 0x134CB, 16, 1, 0,

        -4,
};

const s32 *const anim_0616[1] = {
    anim_0616__v0_l0,
};

const s32 anim_0617__v0_l0[] = {
    -2, 91, (((u16)16 << 0) | ((u16)0xA0 << 16)), -1, 0x134DB, 8, 1, 0,

        -4,
};

const s32 *const anim_0617[1] = {
    anim_0617__v0_l0,
};

const s32 anim_0618__v0_l0[] = {
    -2, 90, (((u16)16 << 0) | ((u16)0x80 << 16)), -1, 0x134E3, 8, 1, 0,

        -4,
};

const s32 anim_0618__v1_l0[] = {
    -2, 90, (((u16)16 << 0) | ((u16)0x80 << 16)), -1, 0x134EB, 8, 6, 1,

        -1, 0x134F3, 8, 6, 2,

            -1, 0x134EB, 8, 6, 1,

                -1, 0x134F3, 8, 6, 2,

                    -1, 0x134EB, 8, 6, 1,

                        -1, 0x134F3, 8, 6, 2,

                            -4,
};

const s32 anim_0618__v2_l0[] = {
    -2, 90, (((u16)16 << 0) | ((u16)0x80 << 16)), -1, 0x134FB, 8, 5, 3,

        -1, 0x13503, 8, 3, 4,

            -1, 0x134FB, 8, 5, 3,

                -1, 0x13503, 8, 3, 4,

                    -1, 0x134FB, 8, 5, 3,

                        -1, 0x13503, 8, 3, 4,

                            -4,
};

const s32 *const anim_0618[3] = {
    anim_0618__v0_l0,
    anim_0618__v1_l0,
    anim_0618__v2_l0,
};

const s32 anim_0619__v0_l0[] = {
    -2, 91, (((u16)16 << 0) | ((u16)0xA0 << 16)), -1, 0x1350B, 8, 1, 0,

        -4,
};

const s32 *const anim_0619[1] = {
    anim_0619__v0_l0,
};

const s32 anim_0620__v0_l0[] = {
    -2, 91, (((u16)16 << 0) | ((u16)0xA0 << 16)), -1, 0x13513, 54, -6, 0, (((-19 & 0xFF) << 0) | ((-65 & 0xFF) << 8) | ((20 & 0xFF) << 16) | ((-30 & 0xFF) << 24)), -6, 1, (((-16 & 0xFF) << 0) | ((-30 & 0xFF) << 8) | ((16 & 0xFF) << 16) | ((2 & 0xFF) << 24)), -6, 2, (((0 & 0xFF) << 0) | ((0 & 0xFF) << 8) | ((0 & 0xFF) << 16) | ((0 & 0xFF) << 24)), 4, 0,

        -1, 0x13549, 54, -6, 0, (((-19 & 0xFF) << 0) | ((-65 & 0xFF) << 8) | ((20 & 0xFF) << 16) | ((-30 & 0xFF) << 24)), -6, 1, (((-16 & 0xFF) << 0) | ((-30 & 0xFF) << 8) | ((16 & 0xFF) << 16) | ((2 & 0xFF) << 24)), -6, 2, (((-24 & 0xFF) << 0) | ((-69 & 0xFF) << 8) | ((-24 & 0xFF) << 16) | ((-70 & 0xFF) << 24)), 4, 1,

            -1, 0x1357F, 54, -6, 0, (((-19 & 0xFF) << 0) | ((-65 & 0xFF) << 8) | ((20 & 0xFF) << 16) | ((-30 & 0xFF) << 24)), -6, 1, (((-16 & 0xFF) << 0) | ((-30 & 0xFF) << 8) | ((16 & 0xFF) << 16) | ((2 & 0xFF) << 24)), -6, 2, (((-24 & 0xFF) << 0) | ((-68 & 0xFF) << 8) | ((-24 & 0xFF) << 16) | ((-70 & 0xFF) << 24)), 4, 2,

                -1, 0x13549, 54, -6, 0, (((-19 & 0xFF) << 0) | ((-65 & 0xFF) << 8) | ((20 & 0xFF) << 16) | ((-30 & 0xFF) << 24)), -6, 1, (((-16 & 0xFF) << 0) | ((-30 & 0xFF) << 8) | ((16 & 0xFF) << 16) | ((2 & 0xFF) << 24)), -6, 2, (((-24 & 0xFF) << 0) | ((-69 & 0xFF) << 8) | ((-24 & 0xFF) << 16) | ((-70 & 0xFF) << 24)), 4, 1,

                    -3, 59,
};

const s32 anim_0620__v1_l0[] = {
    -2, 91, (((u16)16 << 0) | ((u16)0xA0 << 16)), -1, 0x135B5, 54, -6, 0, (((-19 & 0xFF) << 0) | ((-68 & 0xFF) << 8) | ((20 & 0xFF) << 16) | ((-33 & 0xFF) << 24)), -6, 1, (((-16 & 0xFF) << 0) | ((-35 & 0xFF) << 8) | ((16 & 0xFF) << 16) | ((2 & 0xFF) << 24)), -6, 2, (((-24 & 0xFF) << 0) | ((-73 & 0xFF) << 8) | ((-24 & 0xFF) << 16) | ((-70 & 0xFF) << 24)), 3, 3,


        -1, 0x135EB, 42, -6, 0, (((-19 & 0xFF) << 0) | ((-54 & 0xFF) << 8) | ((20 & 0xFF) << 16) | ((-19 & 0xFF) << 24)), -6, 1, (((-16 & 0xFF) << 0) | ((-19 & 0xFF) << 8) | ((16 & 0xFF) << 16) | ((3 & 0xFF) << 24)), -6, 2, (((-24 & 0xFF) << 0) | ((-57 & 0xFF) << 8) | ((-24 & 0xFF) << 16) | ((-70 & 0xFF) << 24)), 3, 4,

            -1, 0x13615, 42, -6, 0, (((-19 & 0xFF) << 0) | ((-44 & 0xFF) << 8) | ((20 & 0xFF) << 16) | ((-9 & 0xFF) << 24)), -6, 1, (((-16 & 0xFF) << 0) | ((-9 & 0xFF) << 8) | ((16 & 0xFF) << 16) | ((3 & 0xFF) << 24)), -6, 2, (((-24 & 0xFF) << 0) | ((-50 & 0xFF) << 8) | ((-24 & 0xFF) << 16) | ((-70 & 0xFF) << 24)), 3, 5,

                -1, 0x135EB, 42, -6, 0, (((-19 & 0xFF) << 0) | ((-54 & 0xFF) << 8) | ((20 & 0xFF) << 16) | ((-19 & 0xFF) << 24)), -6, 1, (((-16 & 0xFF) << 0) | ((-18 & 0xFF) << 8) | ((16 & 0xFF) << 16) | ((2 & 0xFF) << 24)), -6, 2, (((-24 & 0xFF) << 0) | ((-57 & 0xFF) << 8) | ((-24 & 0xFF) << 16) | ((-70 & 0xFF) << 24)), 3, 4,

                    -1, 0x135B5, 54, -6, 0, (((-19 & 0xFF) << 0) | ((-68 & 0xFF) << 8) | ((20 & 0xFF) << 16) | ((-33 & 0xFF) << 24)), -6, 1, (((-16 & 0xFF) << 0) | ((-35 & 0xFF) << 8) | ((16 & 0xFF) << 16) | ((2 & 0xFF) << 24)), -6, 2, (((-24 & 0xFF) << 0) | ((-73 & 0xFF) << 8) | ((-24 & 0xFF) << 16) | ((-70 & 0xFF) << 24)),
                        3, 3,

                            -4,
};

const s32 anim_0620__v2_l0[] = {
    -2, 91, (((u16)16 << 0) | ((u16)0xA0 << 16)), -1, 0x135B5, 54, -6, 0, (((-19 & 0xFF) << 0) | ((-68 & 0xFF) << 8) | ((20 & 0xFF) << 16) | ((-33 & 0xFF) << 24)), -6, 1, (((-16 & 0xFF) << 0) | ((-35 & 0xFF) << 8) | ((16 & 0xFF) << 16) | ((2 & 0xFF) << 24)), -6, 2, (((-24 & 0xFF) << 0) | ((-73 & 0xFF) << 8) | ((-24 & 0xFF) << 16) | ((-70 & 0xFF) << 24)), 3, 3,


        -1, 0x135EB, 42, -6, 0, (((-19 & 0xFF) << 0) | ((-54 & 0xFF) << 8) | ((20 & 0xFF) << 16) | ((-19 & 0xFF) << 24)), -6, 1, (((-16 & 0xFF) << 0) | ((-19 & 0xFF) << 8) | ((16 & 0xFF) << 16) | ((3 & 0xFF) << 24)), -6, 2, (((-24 & 0xFF) << 0) | ((-57 & 0xFF) << 8) | ((-24 & 0xFF) << 16) | ((-70 & 0xFF) << 24)), 3, 4,

            -1, 0x13615, 42, -6, 0, (((-19 & 0xFF) << 0) | ((-44 & 0xFF) << 8) | ((20 & 0xFF) << 16) | ((-9 & 0xFF) << 24)), -6, 1, (((-16 & 0xFF) << 0) | ((-9 & 0xFF) << 8) | ((16 & 0xFF) << 16) | ((3 & 0xFF) << 24)), -6, 2, (((-24 & 0xFF) << 0) | ((-50 & 0xFF) << 8) | ((-24 & 0xFF) << 16) | ((-70 & 0xFF) << 24)), 6, 5,

                -1, 0x135EB, 42, -6, 0, (((-19 & 0xFF) << 0) | ((-54 & 0xFF) << 8) | ((20 & 0xFF) << 16) | ((-19 & 0xFF) << 24)), -6, 1, (((-16 & 0xFF) << 0) | ((-19 & 0xFF) << 8) | ((16 & 0xFF) << 16) | ((3 & 0xFF) << 24)), -6, 2, (((-24 & 0xFF) << 0) | ((-57 & 0xFF) << 8) | ((-24 & 0xFF) << 16) | ((-70 & 0xFF) << 24)), 6, 4,

                    -1, 0x13615, 42, -6, 0, (((-19 & 0xFF) << 0) | ((-44 & 0xFF) << 8) | ((20 & 0xFF) << 16) | ((-9 & 0xFF) << 24)), -6, 1, (((-16 & 0xFF) << 0) | ((-9 & 0xFF) << 8) | ((16 & 0xFF) << 16) | ((3 & 0xFF) << 24)), -6, 2, (((-24 & 0xFF) << 0) | ((-50 & 0xFF) << 8) | ((-24 & 0xFF) << 16) | ((-70 & 0xFF) << 24)), 5, 5,

                        -1, 0x135EB, 42, -6, 0, (((-19 & 0xFF) << 0) | ((-54 & 0xFF) << 8) | ((20 & 0xFF) << 16) | ((-19 & 0xFF) << 24)), -6, 1, (((-16 & 0xFF) << 0) | ((-19 & 0xFF) << 8) | ((16 & 0xFF) << 16) | ((3 & 0xFF) << 24)), -6, 2, (((-24 & 0xFF) << 0) | ((-57 & 0xFF) << 8) | ((-24 & 0xFF) << 16) | ((-70 & 0xFF) << 24)),
                            5, 4,

                                -1, 0x13615, 42, -6, 0, (((-19 & 0xFF) << 0) | ((-44 & 0xFF) << 8) | ((20 & 0xFF) << 16) | ((-9 & 0xFF) << 24)), -6, 1, (((-16 & 0xFF) << 0) | ((-9 & 0xFF) << 8) | ((16 & 0xFF) << 16) | ((3 & 0xFF) << 24)), -6, 2, (((-24 & 0xFF) << 0) | ((-50 & 0xFF) << 8) | ((-24 & 0xFF) << 16) | ((-70 & 0xFF) << 24)),
                                    4, 5,

                                        -1, 0x135EB, 42, -6, 0, (((-19 & 0xFF) << 0) | ((-54 & 0xFF) << 8) | ((20 & 0xFF) << 16) | ((-19 & 0xFF) << 24)), -6, 1, (((-16 & 0xFF) << 0) | ((-19 & 0xFF) << 8) | ((16 & 0xFF) << 16) | ((3 & 0xFF) << 24)),
                                            -6, 2, (((-24 & 0xFF) << 0) | ((-57 & 0xFF) << 8) | ((-24 & 0xFF) << 16) | ((-70 & 0xFF) << 24)), 4, 4,

                                                -1, 0x135B5, 54, -6, 0, (((-19 & 0xFF) << 0) | ((-68 & 0xFF) << 8) | ((20 & 0xFF) << 16) | ((-33 & 0xFF) << 24)), -6, 1, (((-16 & 0xFF) << 0) | ((-35 & 0xFF) << 8) | ((16 & 0xFF) << 16) | ((2 & 0xFF) << 24)),
                                                    -6, 2, (((-24 & 0xFF) << 0) | ((-73 & 0xFF) << 8) | ((-24 & 0xFF) << 16) | ((-70 & 0xFF) << 24)), 3, 3,

                                                        -4,
};

const s32 *const anim_0620[3] = {
    anim_0620__v0_l0,
    anim_0620__v1_l0,
    anim_0620__v2_l0,
};

const s32 anim_0621__v0_l0[] = {
    -2, 91, (((u16)16 << 0) | ((u16)0xA0 << 16)), -1, 0x1363F, 30, 1, 0,

        -4,
};

const s32 *const anim_0621[1] = {
    anim_0621__v0_l0,
};

const s32 anim_0622__v0_l0[] = {
    -2, 90, (((u16)16 << 0) | ((u16)0x80 << 16)), -1, 0x1365D, 8, 1, 0,

        -4,
};

const s32 anim_0622__v1_l0[] = {
    -2, 90, (((u16)16 << 0) | ((u16)0x80 << 16)), -1, 0x13665, 8, 6, 1,

        -1, 0x1366D, 8, 6, 2,

            -1, 0x13665, 8, 6, 1,

                -1, 0x1366D, 8, 6, 2,

                    -1, 0x13665, 8, 6, 1,

                        -1, 0x1366D, 8, 6, 2,

                            -4,
};

const s32 anim_0622__v2_l0[] = {
    -2, 90, (((u16)16 << 0) | ((u16)0x80 << 16)), -1, 0x13675, 8, 5, 3,

        -1, 0x1367D, 8, 3, 4,

            -1, 0x13675, 8, 5, 3,

                -1, 0x1367D, 8, 3, 4,

                    -1, 0x13675, 8, 5, 3,

                        -1, 0x1367D, 8, 3, 4,

                            -4,
};

const s32 *const anim_0622[3] = {
    anim_0622__v0_l0,
    anim_0622__v1_l0,
    anim_0622__v2_l0,
};

const s32 anim_0623__v0_l0[] = {
    -2, 92, (((u16)16 << 0) | ((u16)0xA0 << 16)), -1, 0x13685, 16, 1, 0,

        -4,
};

const s32 *const anim_0623[1] = {
    anim_0623__v0_l0,
};

const s32 anim_0624__v0_l0[] = {
    -2, 92, (((u16)16 << 0) | ((u16)0xA0 << 16)), -1, 0x13695, 36, -6, 0, (((-20 & 0xFF) << 0) | ((-20 & 0xFF) << 8) | ((20 & 0xFF) << 16) | ((22 & 0xFF) << 24)), 5, 0,

        -1, 0x136B9, 36, 5, 1,

            -1, 0x136DD, 36, 5, 2,

                -1, 0x13701, 36, 5, 3,

                    -3, 26,
};

const s32 *const anim_0624[1] = {
    anim_0624__v0_l0,
};

const s32 anim_0625__v0_l0[] = {
    -2, 93, (((u16)16 << 0) | ((u16)0xB0 << 16)), -1, 0x13725, 36, -6, 0, (((-20 & 0xFF) << 0) | ((-20 & 0xFF) << 8) | ((20 & 0xFF) << 16) | ((22 & 0xFF) << 24)), 5, 0,

        -1, 0x13749, 36, 5, 1,

            -3, 16,
};

const s32 *const anim_0625[1] = {
    anim_0625__v0_l0,
};

const s32 anim_0626__v0_l0[] = {
    -2, 94, (((u16)16 << 0) | ((u16)0xA0 << 16)), -1, 0x1376D, 48, -6, 0, (((-23 & 0xFF) << 0) | ((16 & 0xFF) << 8) | ((23 & 0xFF) << 16) | ((58 & 0xFF) << 24)), 1, 0,

        -4,
};

const s32 *const anim_0626[1] = {
    anim_0626__v0_l0,
};

const s32 anim_0627__v0_l0[] = {
    -2, 95, (((u16)16 << 0) | ((u16)0xA0 << 16)), -1, 0x1379D, 16, 1, 0,

        -4,
};

const s32 anim_0627__v1_l0[] = {
    -2, 95, (((u16)16 << 0) | ((u16)0xA0 << 16)), -1, 0x137AD, 12, 1, 1,

        -4,
};

const s32 *const anim_0627[2] = {
    anim_0627__v0_l0,
    anim_0627__v1_l0,
};

const s32 anim_0628__v0_l0[] = {
    -2, 94, (((u16)16 << 0) | ((u16)0xA0 << 16)), -1, 0x137B9, 64, -6, 0, (((-23 & 0xFF) << 0) | ((0 & 0xFF) << 8) | ((23 & 0xFF) << 16) | ((53 & 0xFF) << 24)), 7, 0,

        -1, 0x137F9, 64, 7, 1,

            -1, 0x13839, 64, 7, 2,

                -1, 0x13879, 64, 7, 3,

                    -3, 26,
};

const s32 anim_0628__v1_l0[] = {
    -2, 94, (((u16)16 << 0) | ((u16)0xA0 << 16)), -1, 0x138B9, 64, -6, 0, (((-23 & 0xFF) << 0) | ((0 & 0xFF) << 8) | ((23 & 0xFF) << 16) | ((53 & 0xFF) << 24)), 5, 4,

        -1, 0x138F9, 64, 5, 5,

            -3, 16,
};

const s32 anim_0628__v2_l0[] = {
    -2, 94, (((u16)16 << 0) | ((u16)0xA0 << 16)), -1, 0x138B9, 64, -6, 0, (((-23 & 0xFF) << 0) | ((0 & 0xFF) << 8) | ((23 & 0xFF) << 16) | ((53 & 0xFF) << 24)), 1, 4,

        -4,
};

const s32 *const anim_0628[3] = {
    anim_0628__v0_l0,
    anim_0628__v1_l0,
    anim_0628__v2_l0,
};

const s32 anim_0629__v0_l0[] = {
    -2, 96, (((u16)16 << 0) | ((u16)0x80 << 16)), -1, 0x13939, 8, 1, 0,

        -4,
};

const s32 anim_0629__v1_l0[] = {
    -2, 96, (((u16)16 << 0) | ((u16)0x80 << 16)), -1, 0x13941, 8, 6, 1,

        -1, 0x13949, 8, 6, 2,

            -1, 0x13941, 8, 6, 1,

                -1, 0x13949, 8, 6, 2,

                    -1, 0x13941, 8, 6, 1,

                        -1, 0x13949, 8, 6, 2,

                            -4,
};

const s32 anim_0629__v2_l0[] = {
    -2, 96, (((u16)16 << 0) | ((u16)0x80 << 16)), -1, 0x13951, 8, 5, 3,

        -1, 0x13949, 8, 3, 2,

            -1, 0x13951, 8, 5, 3,

                -1, 0x13949, 8, 3, 2,

                    -1, 0x13951, 8, 5, 3,

                        -1, 0x13949, 8, 3, 2,

                            -4,
};

const s32 *const anim_0629[3] = {
    anim_0629__v0_l0,
    anim_0629__v1_l0,
    anim_0629__v2_l0,
};

const s32 anim_0630__v0_l0[] = {
    -2, 97, (((u16)16 << 0) | ((u16)0xB0 << 16)), -1, 0x13959, 24, -6, 0, (((-12 & 0xFF) << 0) | ((-17 & 0xFF) << 8) | ((11 & 0xFF) << 16) | ((6 & 0xFF) << 24)), -6, 1, (((-5 & 0xFF) << 0) | ((5 & 0xFF) << 8) | ((4 & 0xFF) << 16) | ((15 & 0xFF) << 24)), 1, 0,

        -4,
};

const s32 *const anim_0630[1] = {
    anim_0630__v0_l0,
};

const s32 anim_0631__v0_l0[] = {
    -2, 98, (((u16)16 << 0) | ((u16)0xA0 << 16)), -1, 0x13971, 16, 60, 0,

        -4,
};

const s32 anim_0631__v1_l0[] = {
    -2, 98, (((u16)16 << 0) | ((u16)0xA0 << 16)), -1, 0x13981, 20, 4, 1,

        -1, 0x13995, 30, 4, 2,

            -1, 0x139B3, 24, 4, 3,

                -1, 0x13995, 30, 3, 2,

                    -1, 0x13981, 20, 3, 1,

                        -1, 0x139CB, 20, 4, 4,

                            -1, 0x139DF, 20, 4, 5,

                                -1, 0x139F3, 20, 4, 6,

                                    -1, 0x13A07, 20, 12, 7,

                                        -4,
};

const s32 *const anim_0631[2] = {
    anim_0631__v0_l0,
    anim_0631__v1_l0,
};

const s32 anim_0632__v0_l0[] = {
    -2, 98, (((u16)16 << 0) | ((u16)0xA0 << 16)), -1, 0x13A1B, 20, -6, 0, (((-6 & 0xFF) << 0) | ((-14 & 0xFF) << 8) | ((6 & 0xFF) << 16) | ((16 & 0xFF) << 24)), 4, 0,

        -1, 0x13A2F, 20, 4, 1,

            -1, 0x13A43, 20, 4, 2,

                -1, 0x13A57, 20, 4, 3,

                    -1, 0x13A6B, 16, 4, 4,

                        -1, 0x13A7B, 20, 4, 5,

                            -3, 36,
};

const s32 *const anim_0632[1] = {
    anim_0632__v0_l0,
};

const s32 anim_0633__v0_l0[] = {
    -2, 98, (((u16)16 << 0) | ((u16)0xA0 << 16)), -1, 0x13A8F, 20, -6, 0, (((-6 & 0xFF) << 0) | ((-14 & 0xFF) << 8) | ((6 & 0xFF) << 16) | ((16 & 0xFF) << 24)), 1, 0,

        -1, 0x13AA3, 20, 1, 1,

            -4,
};

const s32 *const anim_0633[1] = {
    anim_0633__v0_l0,
};

const s32 anim_0634__v0_l0[] = {
    -2, 98, (((u16)16 << 0) | ((u16)0xA0 << 16)), -1, 0x13AB7, 25, 3, 0,

        -1, 0x13AD0, 20, 3, 1,

            -1, 0x13AE4, 20, 3, 2,

                -1, 0x13AF8, 20, 3, 3,

                    -1, 0x13B0C, 15, 3, 4,

                        -4,
};

const s32 *const anim_0634[1] = {
    anim_0634__v0_l0,
};

const s32 anim_0635__v0_l0[] = {
    -2, 98, (((u16)16 << 0) | ((u16)0xA0 << 16)), -1, 0x13B1B, 20, 3, 0,

        -1, 0x13B2F, 15, 3, 1,

            -1, 0x13B3E, 15, 3, 2,

                -1, 0x13B4D, 20, 3, 3,

                    -1, 0x13B61, 20, 3, 4,

                        -1, 0x13B75, 16, 3, 5,

                            -4,
};

const s32 *const anim_0635[1] = {
    anim_0635__v0_l0,
};

const s32 anim_0636__v0_l0[] = {
    -2, 98, (((u16)16 << 0) | ((u16)0xA0 << 16)), -1, 0x13B85, 16, -6, 0, (((-8 & 0xFF) << 0) | ((-8 & 0xFF) << 8) | ((8 & 0xFF) << 16) | ((8 & 0xFF) << 24)), -6, 1, (((-8 & 0xFF) << 0) | ((-8 & 0xFF) << 8) | ((8 & 0xFF) << 16) | ((8 & 0xFF) << 24)), 2, 0,

        -1, 0x13B95, 16, 2, 1,

            -1, 0x13BA5, 16, 2, 2,

                -1, 0x13BB5, 16, 2, 3,

                    -3, 29,
};

const s32 *const anim_0636[1] = {
    anim_0636__v0_l0,
};

const s32 anim_0637__v0_l0[] = {
    -2, 98, (((u16)16 << 0) | ((u16)0xA0 << 16)), -1, 0x13BC5, 16, -6, 0, (((-8 & 0xFF) << 0) | ((-8 & 0xFF) << 8) | ((8 & 0xFF) << 16) | ((8 & 0xFF) << 24)), -6, 1, (((-8 & 0xFF) << 0) | ((-8 & 0xFF) << 8) | ((8 & 0xFF) << 16) | ((8 & 0xFF) << 24)), 2, 0,

        -1, 0x13BD5, 16, 2, 1,

            -1, 0x13BE5, 16, 2, 2,

                -1, 0x13BF5, 16, 2, 3,

                    -3, 29,
};

const s32 anim_0637__v1_l0[] = {
    -2, 98, (((u16)16 << 0) | ((u16)0xA0 << 16)), -1, 0x13C05, 16, -6, 0, (((-8 & 0xFF) << 0) | ((-8 & 0xFF) << 8) | ((8 & 0xFF) << 16) | ((8 & 0xFF) << 24)), -6, 1, (((-8 & 0xFF) << 0) | ((-8 & 0xFF) << 8) | ((8 & 0xFF) << 16) | ((8 & 0xFF) << 24)), 2, 4,

        -1, 0x13C15, 16, 2, 5,

            -1, 0x13C25, 16, 2, 6,

                -1, 0x13C35, 16, 2, 7,

                    -3, 29,
};

const s32 *const anim_0637[2] = {
    anim_0637__v0_l0,
    anim_0637__v1_l0,
};

const s32 anim_0638__v0_l0[] = {
    -2, 98, (((u16)16 << 0) | ((u16)0xA0 << 16)), -1, 0x13C45, 24, -6, 0, (((-12 & 0xFF) << 0) | ((-8 & 0xFF) << 8) | ((10 & 0xFF) << 16) | ((6 & 0xFF) << 24)), -6, 1, (((-24 & 0xFF) << 0) | ((-10 & 0xFF) << 8) | ((0 & 0xFF) << 16) | ((13 & 0xFF) << 24)), 3, 0,

        -1, 0x13C5D, 24, 3, 1,

            -3, 19,
};

const s32 *const anim_0638[1] = {
    anim_0638__v0_l0,
};

const s32 anim_0639__v0_l0[] = {
    -2, 98, (((u16)16 << 0) | ((u16)0xA0 << 16)), -1, 0x13C75, 24, -6, 0, (((-12 & 0xFF) << 0) | ((-8 & 0xFF) << 8) | ((10 & 0xFF) << 16) | ((6 & 0xFF) << 24)), 1, 0,

        -4,
};

const s32 anim_0639__v1_l0[] = {
    -2, 98, (((u16)16 << 0) | ((u16)0xA0 << 16)), -1, 0x13C8D, 24, -6, 0, (((-12 & 0xFF) << 0) | ((-8 & 0xFF) << 8) | ((10 & 0xFF) << 16) | ((6 & 0xFF) << 24)), 1, 1,

        -4,
};

const s32 anim_0639__v2_l0[] = {
    -2, 98, (((u16)16 << 0) | ((u16)0xA0 << 16)), -1, 0x13CA5, 24, -6, 0, (((-12 & 0xFF) << 0) | ((-8 & 0xFF) << 8) | ((10 & 0xFF) << 16) | ((6 & 0xFF) << 24)), 1, 2,

        -4,
};

const s32 anim_0639__v3_l0[] = {
    -2, 98, (((u16)16 << 0) | ((u16)0xA0 << 16)), -1, 0x13CBD, 24, -6, 0, (((-12 & 0xFF) << 0) | ((-8 & 0xFF) << 8) | ((10 & 0xFF) << 16) | ((6 & 0xFF) << 24)), 1, 3,

        -4,
};

const s32 *const anim_0639[4] = {
    anim_0639__v0_l0,
    anim_0639__v1_l0,
    anim_0639__v2_l0,
    anim_0639__v3_l0,
};

const s32 anim_0640__v0_l0[] = {
    -2, 98, (((u16)16 << 0) | ((u16)0xA0 << 16)), -1, 0x13CD5, 20, -6, 0, (((-6 & 0xFF) << 0) | ((-16 & 0xFF) << 8) | ((6 & 0xFF) << 16) | ((14 & 0xFF) << 24)), 3, 0,

        -1, 0x13CE9, 25, 3, 1,

            -1, 0x13D02, 30, 3, 2,

                -1, 0x13D20, 30, 3, 3,

                    -1, 0x13D3E, 30, 3, 4,

                        -1, 0x13D5C, 30, 3, 5,

                            -1, 0x13D7A, 30, 3, 6,

                                -4,
};

const s32 anim_0640__v1_l0[] = {
    -2, 98, (((u16)16 << 0) | ((u16)0xA0 << 16)), -1, 0x13D98, 30, -6, 0, (((-6 & 0xFF) << 0) | ((-16 & 0xFF) << 8) | ((6 & 0xFF) << 16) | ((14 & 0xFF) << 24)), 3, 7,

        -1, 0x13DB6, 16, -6, 0, (((-6 & 0xFF) << 0) | ((-6 & 0xFF) << 8) | ((6 & 0xFF) << 16) | ((16 & 0xFF) << 24)), 1, 8,

            -1, 0x13DC6, 16, 1, 9,

                -1, 0x13DD6, 16, 6, 10,

                    -1, 0x13DC6, 16, 1, 9,

                        -1, 0x13DB6, 16, 1, 8,

                            -4,
};

const s32 *const anim_0640[2] = {
    anim_0640__v0_l0,
    anim_0640__v1_l0,
};

const s32 anim_0641__v0_l0[] = {
    -2, 98, (((u16)16 << 0) | ((u16)0xA0 << 16)), -1, 0x13DE6, 15, -6, 0, (((-11 & 0xFF) << 0) | ((-6 & 0xFF) << 8) | ((15 & 0xFF) << 16) | ((7 & 0xFF) << 24)), 2, 0,

        -1, 0x13DF5, 15, 2, 1,

            -3, 16,
};

const s32 *const anim_0641[1] = {
    anim_0641__v0_l0,
};

const s32 anim_0642__v0_l0[] = {
    -2, 98, (((u16)16 << 0) | ((u16)0xA0 << 16)), -1, 0x13E04, 16, -6, 0, (((-8 & 0xFF) << 0) | ((-6 & 0xFF) << 8) | ((8 & 0xFF) << 16) | ((16 & 0xFF) << 24)), -5, 132, 1, 0,

        -1, 0x13E14, 16, 1, 1,

            -1, 0x13E24, 12, 1, 2,

                -1, 0x13E30, 16, 30, 3,

                    -1, 0x13E14, 16, 1, 1,

                        -1, 0x13E04, 16, 1, 0,

                            -4,
};

const s32 *const anim_0642[1] = {
    anim_0642__v0_l0,
};

const s32 anim_0643__v0_l0[] = {
    -2, 98, (((u16)16 << 0) | ((u16)0xA0 << 16)), -1, 0x13E40, 20, -6, 0, (((-6 & 0xFF) << 0) | ((-14 & 0xFF) << 8) | ((6 & 0xFF) << 16) | ((16 & 0xFF) << 24)), 2, 0,

        -1, 0x13E54, 30, 2, 1,

            -1, 0x13E72, 30, -6, 0, (((-16 & 0xFF) << 0) | ((-14 & 0xFF) << 8) | ((0 & 0xFF) << 16) | ((16 & 0xFF) << 24)), -6, 1, (((-32 & 0xFF) << 0) | ((-12 & 0xFF) << 8) | ((-4 & 0xFF) << 16) | ((16 & 0xFF) << 24)), -5, 126, 2, 2,

                -1, 0x13E90, 35, -6, 0, (((-16 & 0xFF) << 0) | ((-14 & 0xFF) << 8) | ((0 & 0xFF) << 16) | ((16 & 0xFF) << 24)), -6, 1, (((0 & 0xFF) << 0) | ((0 & 0xFF) << 8) | ((0 & 0xFF) << 16) | ((0 & 0xFF) << 24)), 4, 3,

                    -1, 0x13E54, 30, -6, 0, (((-6 & 0xFF) << 0) | ((-14 & 0xFF) << 8) | ((6 & 0xFF) << 16) | ((16 & 0xFF) << 24)), 2, 1,

                        -1, 0x13E40, 20, 2, 0,

                            -4,
};

const s32 anim_0643__v1_l0[] = {
    -2, 98, (((u16)16 << 0) | ((u16)0xA0 << 16)), -1, 0x13EB3, 20, -6, 0, (((-6 & 0xFF) << 0) | ((-14 & 0xFF) << 8) | ((6 & 0xFF) << 16) | ((16 & 0xFF) << 24)), 2, 4,

        -1, 0x13EC7, 20, 2, 5,

            -1, 0x13EDB, 35, -6, 0, (((-16 & 0xFF) << 0) | ((-14 & 0xFF) << 8) | ((0 & 0xFF) << 16) | ((16 & 0xFF) << 24)), -6, 1, (((-32 & 0xFF) << 0) | ((-12 & 0xFF) << 8) | ((-4 & 0xFF) << 16) | ((16 & 0xFF) << 24)), -5, 126, 2, 6,

                -1, 0x13EFE, 35, -6, 0, (((-16 & 0xFF) << 0) | ((-13 & 0xFF) << 8) | ((0 & 0xFF) << 16) | ((16 & 0xFF) << 24)), -6, 1, (((0 & 0xFF) << 0) | ((0 & 0xFF) << 8) | ((0 & 0xFF) << 16) | ((0 & 0xFF) << 24)), 6, 7,

                    -1, 0x13EC7, 20, -6, 0, (((-6 & 0xFF) << 0) | ((-14 & 0xFF) << 8) | ((6 & 0xFF) << 16) | ((16 & 0xFF) << 24)), 2, 5,

                        -1, 0x13EB3, 20, 2, 4,

                            -4,
};

const s32 *const anim_0643[2] = {
    anim_0643__v0_l0,
    anim_0643__v1_l0,
};

const s32 anim_0644__v0_l0[] = {
    -2, 99, (((u16)16 << 0) | ((u16)0xB0 << 16)), -1, 0x13F21, 20, -6, 0, (((-6 & 0xFF) << 0) | ((-14 & 0xFF) << 8) | ((6 & 0xFF) << 16) | ((16 & 0xFF) << 24)), 4, 0,

        -1, 0x13F35, 20, 3, 1,

            -1, 0x13F49, 25, 3, 2,

                -1, 0x13F62, 20, 3, 3,

                    -1, 0x13F76, 25, 4, 4,

                        -1, 0x13F8F, 25, 4, 5,

                            -3, 36,
};

const s32 *const anim_0644[1] = {
    anim_0644__v0_l0,
};

const s32 anim_0645__v0_l0[] = {
    -2, 100, (((u16)16 << 0) | ((u16)0xB0 << 16)), -1, 0x13FA8, 20, -6, 0, (((-6 & 0xFF) << 0) | ((-14 & 0xFF) << 8) | ((6 & 0xFF) << 16) | ((16 & 0xFF) << 24)), 1, 0,

        -1, 0x13FBC, 20, 1, 1,

            -4,
};

const s32 *const anim_0645[1] = {
    anim_0645__v0_l0,
};

const s32 anim_0646__v0_l0[] = {
    -2, 100, (((u16)16 << 0) | ((u16)0xB0 << 16)), -1, 0x13FD0, 25, 3, 0,

        -1, 0x13FE9, 20, 3, 1,

            -1, 0x13FFD, 20, 3, 2,

                -1, 0x14011, 20, 3, 3,

                    -1, 0x14025, 15, 3, 4,

                        -4,
};

const s32 *const anim_0646[1] = {
    anim_0646__v0_l0,
};

const s32 anim_0647__v0_l0[] = {
    -2, 100, (((u16)16 << 0) | ((u16)0xB0 << 16)), -1, 0x14034, 20, 3, 0,

        -1, 0x14048, 15, 3, 1,

            -1, 0x14057, 15, 3, 2,

                -1, 0x14066, 20, 3, 3,

                    -1, 0x1407A, 20, 3, 4,

                        -1, 0x1408E, 16, 3, 5,

                            -4,
};

const s32 *const anim_0647[1] = {
    anim_0647__v0_l0,
};

const s32 anim_0648__v0_l0[] = {
    -2, 100, (((u16)16 << 0) | ((u16)0xB0 << 16)), -1, 0x1409E, 16, -6, 0, (((-8 & 0xFF) << 0) | ((-8 & 0xFF) << 8) | ((8 & 0xFF) << 16) | ((8 & 0xFF) << 24)), -6, 1, (((-8 & 0xFF) << 0) | ((-8 & 0xFF) << 8) | ((8 & 0xFF) << 16) | ((8 & 0xFF) << 24)), 2, 0,

        -1, 0x140AE, 16, 2, 1,

            -1, 0x140BE, 16, 2, 2,

                -1, 0x140CE, 16, 2, 3,

                    -3, 29,
};

const s32 *const anim_0648[1] = {
    anim_0648__v0_l0,
};

const s32 anim_0649__v0_l0[] = {
    -2, 100, (((u16)16 << 0) | ((u16)0xB0 << 16)), -1, 0x140DE, 16, -6, 0, (((-8 & 0xFF) << 0) | ((-8 & 0xFF) << 8) | ((8 & 0xFF) << 16) | ((8 & 0xFF) << 24)), -6, 1, (((-8 & 0xFF) << 0) | ((-8 & 0xFF) << 8) | ((8 & 0xFF) << 16) | ((8 & 0xFF) << 24)), 2, 0,

        -1, 0x140EE, 16, 2, 1,

            -1, 0x140FE, 16, 2, 2,

                -1, 0x1410E, 16, 2, 3,

                    -3, 29,
};

const s32 anim_0649__v1_l0[] = {
    -2, 100, (((u16)16 << 0) | ((u16)0xB0 << 16)), -1, 0x1411E, 16, -6, 0, (((-8 & 0xFF) << 0) | ((-8 & 0xFF) << 8) | ((8 & 0xFF) << 16) | ((8 & 0xFF) << 24)), -6, 1, (((-8 & 0xFF) << 0) | ((-8 & 0xFF) << 8) | ((8 & 0xFF) << 16) | ((8 & 0xFF) << 24)), 2, 4,

        -1, 0x1412E, 16, 2, 5,

            -1, 0x1413E, 16, 2, 6,

                -1, 0x1414E, 16, 2, 7,

                    -3, 29,
};

const s32 *const anim_0649[2] = {
    anim_0649__v0_l0,
    anim_0649__v1_l0,
};

const s32 anim_0650__v0_l0[] = {
    -2, 100, (((u16)16 << 0) | ((u16)0xB0 << 16)), -1, 0x1415E, 24, -6, 0, (((-12 & 0xFF) << 0) | ((-8 & 0xFF) << 8) | ((10 & 0xFF) << 16) | ((6 & 0xFF) << 24)), -6, 1, (((-24 & 0xFF) << 0) | ((-10 & 0xFF) << 8) | ((0 & 0xFF) << 16) | ((13 & 0xFF) << 24)), 3, 0,

        -1, 0x14176, 24, 3, 1,

            -3, 19,
};

const s32 *const anim_0650[1] = {
    anim_0650__v0_l0,
};

const s32 anim_0651__v0_l0[] = {
    -2, 100, (((u16)16 << 0) | ((u16)0xB0 << 16)), -1, 0x1418E, 24, -6, 0, (((-12 & 0xFF) << 0) | ((-8 & 0xFF) << 8) | ((10 & 0xFF) << 16) | ((6 & 0xFF) << 24)), 1, 0,

        -4,
};

const s32 anim_0651__v1_l0[] = {
    -2, 100, (((u16)16 << 0) | ((u16)0xB0 << 16)), -1, 0x141A6, 24, -6, 0, (((-12 & 0xFF) << 0) | ((-8 & 0xFF) << 8) | ((10 & 0xFF) << 16) | ((6 & 0xFF) << 24)), 1, 1,

        -4,
};

const s32 anim_0651__v2_l0[] = {
    -2, 100, (((u16)16 << 0) | ((u16)0xB0 << 16)), -1, 0x141BE, 24, -6, 0, (((-12 & 0xFF) << 0) | ((-8 & 0xFF) << 8) | ((10 & 0xFF) << 16) | ((6 & 0xFF) << 24)), 1, 2,

        -4,
};

const s32 anim_0651__v3_l0[] = {
    -2, 100, (((u16)16 << 0) | ((u16)0xB0 << 16)), -1, 0x141D6, 24, -6, 0, (((-12 & 0xFF) << 0) | ((-8 & 0xFF) << 8) | ((10 & 0xFF) << 16) | ((6 & 0xFF) << 24)), 1, 3,

        -4,
};

const s32 *const anim_0651[4] = {
    anim_0651__v0_l0,
    anim_0651__v1_l0,
    anim_0651__v2_l0,
    anim_0651__v3_l0,
};

const s32 anim_0652__v0_l0[] = {
    -2, 100, (((u16)16 << 0) | ((u16)0xB0 << 16)), -1, 0x141EE, 20, -6, 0, (((-6 & 0xFF) << 0) | ((-16 & 0xFF) << 8) | ((6 & 0xFF) << 16) | ((14 & 0xFF) << 24)), 3, 0,

        -1, 0x14202, 25, 3, 1,

            -1, 0x1421B, 30, 3, 2,

                -1, 0x14239, 30, 3, 3,

                    -1, 0x14257, 30, 3, 4,

                        -1, 0x14275, 30, 3, 5,

                            -1, 0x14293, 30, 3, 6,

                                -4,
};

const s32 anim_0652__v1_l0[] = {
    -2, 100, (((u16)16 << 0) | ((u16)0xB0 << 16)), -1, 0x142B1, 30, -6, 0, (((-6 & 0xFF) << 0) | ((-16 & 0xFF) << 8) | ((6 & 0xFF) << 16) | ((14 & 0xFF) << 24)), 3, 7,

        -1, 0x142CF, 16, -6, 0, (((-6 & 0xFF) << 0) | ((-14 & 0xFF) << 8) | ((6 & 0xFF) << 16) | ((16 & 0xFF) << 24)), 1, 8,

            -1, 0x142DF, 16, 1, 9,

                -1, 0x142EF, 16, 6, 10,

                    -1, 0x142DF, 16, 1, 9,

                        -1, 0x142CF, 16, 1, 8,

                            -4,
};

const s32 *const anim_0652[2] = {
    anim_0652__v0_l0,
    anim_0652__v1_l0,
};

const s32 anim_0653__v0_l0[] = {
    -2, 100, (((u16)16 << 0) | ((u16)0xB0 << 16)), -1, 0x142FF, 15, -6, 0, (((-11 & 0xFF) << 0) | ((-6 & 0xFF) << 8) | ((15 & 0xFF) << 16) | ((7 & 0xFF) << 24)), 2, 0,

        -1, 0x1430E, 15, 2, 1,

            -3, 16,
};

const s32 *const anim_0653[1] = {
    anim_0653__v0_l0,
};

const s32 anim_0654__v0_l0[] = {
    -2, 99, (((u16)16 << 0) | ((u16)0xB0 << 16)), -1, 0x1431D, 16, -6, 0, (((-8 & 0xFF) << 0) | ((-6 & 0xFF) << 8) | ((8 & 0xFF) << 16) | ((16 & 0xFF) << 24)), -5, 132, 1, 0,

        -1, 0x1432D, 16, 1, 1,

            -1, 0x1433D, 12, 1, 2,

                -1, 0x14349, 16, 30, 3,

                    -1, 0x1432D, 16, 1, 1,

                        -1, 0x1431D, 16, 1, 0,

                            -4,
};

const s32 *const anim_0654[1] = {
    anim_0654__v0_l0,
};

const s32 anim_0655__v0_l0[] = {
    -2, 100, (((u16)16 << 0) | ((u16)0xB0 << 16)), -1, 0x14359, 16, -6, 0, (((-6 & 0xFF) << 0) | ((-14 & 0xFF) << 8) | ((6 & 0xFF) << 16) | ((16 & 0xFF) << 24)), 4, 0,

        -1, 0x14369, 16, 6, 1,

            -1, 0x14379, 24, 18, 2,

                -4,
};

const s32 anim_0655__v1_l0[] = {
    -2, 100, (((u16)16 << 0) | ((u16)0xB0 << 16)), -1, 0x14391, 25, -6, 0, (((-6 & 0xFF) << 0) | ((-14 & 0xFF) << 8) | ((6 & 0xFF) << 16) | ((16 & 0xFF) << 24)), 12, 3,

        -1, 0x143AA, 25, 4, 4,

            -1, 0x143C3, 20, 4, 5,

                -1, 0x143D7, 25, 6, 6,

                    -1, 0x143F0, 20, 10, 7,

                        -4,
};

const s32 *const anim_0655[2] = {
    anim_0655__v0_l0,
    anim_0655__v1_l0,
};

const s32 anim_0656__v0_l0[] = {
    -2, 101, (((u16)16 << 0) | ((u16)0xC0 << 16)), -1, 0x14404, 64, -6, 0, (((-21 & 0xFF) << 0) | ((-5 & 0xFF) << 8) | ((8 & 0xFF) << 16) | ((5 & 0xFF) << 24)), 2, 0,

        -1, 0x14444, 64, 2, 1,

            -3, 16,
};

const s32 *const anim_0656[1] = {
    anim_0656__v0_l0,
};

const s32 anim_0657__v0_l0[] = {
    -2, 100, (((u16)16 << 0) | ((u16)0xB0 << 16)), -1, 0x14484, 64, 3, 0,

        -1, 0x144C4, 64, 3, 1,

            -1, 0x14504, 64, 3, 2,

                -1, 0x14544, 64, 3, 3,

                    -3, 23,
};

const s32 anim_0657__v1_l0[] = {
    -2, 100, (((u16)16 << 0) | ((u16)0xB0 << 16)), -1, 0x14584, 15, 3, 4,

        -1, 0x14593, 15, 3, 5,

            -4,
};

const s32 *const anim_0657[2] = {
    anim_0657__v0_l0,
    anim_0657__v1_l0,
};

const s32 anim_0658__v0_l0[] = {
    -2, 100, (((u16)16 << 0) | ((u16)0xB0 << 16)), -1, 0x145A2, 16, 1, 0,

        -4,
};

const s32 anim_0658__v1_l0[] = {
    -2, 100, (((u16)16 << 0) | ((u16)0xB0 << 16)), -1, 0x145B2, 16, 1, 1,

        -4,
};

const s32 anim_0658__v2_l0[] = {
    -2, 100, (((u16)16 << 0) | ((u16)0xB0 << 16)), -1, 0x145C2, 16, 1, 2,

        -4,
};

const s32 anim_0658__v3_l0[] = {
    -2, 100, (((u16)16 << 0) | ((u16)0xB0 << 16)), -1, 0x145D2, 16, 1, 3,

        -4,
};

const s32 anim_0658__v4_l0[] = {
    -2, 100, (((u16)16 << 0) | ((u16)0xB0 << 16)), -1, 0x145E2, 16, 1, 4,

        -4,
};

const s32 anim_0658__v5_l0[] = {
    -2, 100, (((u16)16 << 0) | ((u16)0xB0 << 16)), -1, 0x145F2, 16, 1, 5,

        -4,
};

const s32 *const anim_0658[6] = {
    anim_0658__v0_l0, anim_0658__v1_l0, anim_0658__v2_l0, anim_0658__v3_l0, anim_0658__v4_l0, anim_0658__v5_l0,
};

const s32 anim_0659__v0_l0[] = {
    -2, 102, (((u16)16 << 0) | ((u16)0xB0 << 16)), -1, 0x14602, 16, -6, 0, (((-13 & 0xFF) << 0) | ((-13 & 0xFF) << 8) | ((13 & 0xFF) << 16) | ((13 & 0xFF) << 24)), 1, 0,

        -4,
};

const s32 *const anim_0659[1] = {
    anim_0659__v0_l0,
};

const s32 anim_0660__v0_l0[] = {
    -2, 103, (((u16)16 << 0) | ((u16)0x80 << 16)), -1, 0x14612, 8, 1, 0,

        -4,
};

const s32 anim_0660__v1_l0[] = {
    -2, 103, (((u16)16 << 0) | ((u16)0x80 << 16)), -1, 0x1461A, 8, 6, 1,

        -1, 0x14622, 8, 6, 2,

            -1, 0x1461A, 8, 6, 1,

                -1, 0x14622, 8, 6, 2,

                    -1, 0x1461A, 8, 6, 1,

                        -1, 0x14622, 8, 6, 2,

                            -4,
};

const s32 anim_0660__v2_l0[] = {
    -2, 103, (((u16)16 << 0) | ((u16)0x80 << 16)), -1, 0x1462A, 8, 5, 3,

        -1, 0x14632, 8, 3, 4,

            -1, 0x1462A, 8, 5, 3,

                -1, 0x14632, 8, 3, 4,

                    -1, 0x1462A, 8, 5, 3,

                        -1, 0x14632, 8, 3, 4,

                            -4,
};

const s32 anim_0660__v3_l0[] = {
    -2, 103, (((u16)16 << 0) | ((u16)0x80 << 16)), -1, 0x1463A, 8, 1, 5,

        -4,
};

const s32 anim_0660__v4_l0[] = {
    -2, 103, (((u16)16 << 0) | ((u16)0x80 << 16)), -1, 0x14642, 8, 6, 6,

        -1, 0x1464A, 8, 6, 7,

            -1, 0x14642, 8, 6, 6,

                -1, 0x1464A, 8, 6, 7,

                    -1, 0x14642, 8, 6, 6,

                        -1, 0x1464A, 8, 6, 7,

                            -4,
};

const s32 anim_0660__v5_l0[] = {
    -2, 103, (((u16)16 << 0) | ((u16)0x80 << 16)), -1, 0x14652, 8, 5, 8,

        -1, 0x1465A, 8, 3, 9,

            -1, 0x14652, 8, 5, 8,

                -1, 0x1465A, 8, 3, 9,

                    -1, 0x14652, 8, 5, 8,

                        -1, 0x1465A, 8, 3, 9,

                            -4,
};

const s32 *const anim_0660[6] = {
    anim_0660__v0_l0, anim_0660__v1_l0, anim_0660__v2_l0, anim_0660__v3_l0, anim_0660__v4_l0, anim_0660__v5_l0,
};

const s32 anim_0661__v0_l0[] = {
    -2, 104, (((u16)16 << 0) | ((u16)0xA0 << 16)), -1, 0x14662, 4, 1, 0,

        -4,
};

const s32 *const anim_0661[1] = {
    anim_0661__v0_l0,
};

const s32 anim_0662__v0_l0[] = {
    -2, 104, (((u16)16 << 0) | ((u16)0xA0 << 16)), -1, 0x14666, 48, -6, 0, (((0 & 0xFF) << 0) | ((0 & 0xFF) << 8) | ((0 & 0xFF) << 16) | ((0 & 0xFF) << 24)), -6, 1, (((-24 & 0xFF) << 0) | ((-24 & 0xFF) << 8) | ((24 & 0xFF) << 16) | ((24 & 0xFF) << 24)), 4, 0,

        -1, 0x14666, 48, 4, 1,

            -4,
};

const s32 anim_0662__v1_l0[] = {
    -2, 104, (((u16)16 << 0) | ((u16)0xA0 << 16)), -1, 0x14696, 48, -6, 0, (((0 & 0xFF) << 0) | ((0 & 0xFF) << 8) | ((0 & 0xFF) << 16) | ((0 & 0xFF) << 24)), -6, 1, (((-24 & 0xFF) << 0) | ((-24 & 0xFF) << 8) | ((24 & 0xFF) << 16) | ((24 & 0xFF) << 24)), 4, 2,

        -1, 0x14696, 48, 4, 3,

            -4,
};

const s32 anim_0662__v2_l0[] = {
    -2, 104, (((u16)16 << 0) | ((u16)0xA0 << 16)), -1, 0x146C6, 48, -6, 0, (((-18 & 0xFF) << 0) | ((-32 & 0xFF) << 8) | ((18 & 0xFF) << 16) | ((-12 & 0xFF) << 24)), -6, 1, (((-24 & 0xFF) << 0) | ((-24 & 0xFF) << 8) | ((24 & 0xFF) << 16) | ((24 & 0xFF) << 24)), 5, 4,

        -4,
};

const s32 anim_0662__v3_l0[] = {
    -2, 104, (((u16)16 << 0) | ((u16)0xA0 << 16)), -1, 0x146C6, 48, -6, 0, (((0 & 0xFF) << 0) | ((0 & 0xFF) << 8) | ((0 & 0xFF) << 16) | ((0 & 0xFF) << 24)), -6, 1, (((-24 & 0xFF) << 0) | ((-24 & 0xFF) << 8) | ((24 & 0xFF) << 16) | ((24 & 0xFF) << 24)), 5, 5,

        -4,
};

const s32 *const anim_0662[4] = {
    anim_0662__v0_l0,
    anim_0662__v1_l0,
    anim_0662__v2_l0,
    anim_0662__v3_l0,
};

const s32 anim_0663__v0_l0[] = {
    -2, 104, (((u16)16 << 0) | ((u16)0xA0 << 16)), -1, 0x146F6, 6, 4, 0,

        -1, 0x146FC, 6, 4, 1,

            -4,
};

const s32 *const anim_0663[1] = {
    anim_0663__v0_l0,
};

const s32 anim_0664__v0_l0[] = {
    -2, 102, (((u16)16 << 0) | ((u16)0xB0 << 16)), -1, 0x14702, 4, -6, 0, (((-3 & 0xFF) << 0) | ((-3 & 0xFF) << 8) | ((3 & 0xFF) << 16) | ((3 & 0xFF) << 24)), 1, 0,

        -1, 0x14706, 4, 1, 1,

            -3, 16,
};

const s32 *const anim_0664[1] = {
    anim_0664__v0_l0,
};

const s32 anim_0665__v0_l0[] = {
    -2, 105, (((u16)16 << 0) | ((u16)0xB0 << 16)), -1, 0x1470A, 64, -6, 0, (((-16 & 0xFF) << 0) | ((-24 & 0xFF) << 8) | ((12 & 0xFF) << 16) | ((-4 & 0xFF) << 24)), -6, 1, (((-16 & 0xFF) << 0) | ((-24 & 0xFF) << 8) | ((12 & 0xFF) << 16) | ((12 & 0xFF) << 24)), 1, 0,

        -4,
};

const s32 anim_0665__v1_l0[] = {
    -2, 105, (((u16)16 << 0) | ((u16)0xB0 << 16)), -1, 0x1474A, 64, -6, 0, (((-16 & 0xFF) << 0) | ((-24 & 0xFF) << 8) | ((12 & 0xFF) << 16) | ((-4 & 0xFF) << 24)), -6, 1, (((-16 & 0xFF) << 0) | ((-24 & 0xFF) << 8) | ((12 & 0xFF) << 16) | ((12 & 0xFF) << 24)), 1, 1,

        -4,
};

const s32 *const anim_0665[2] = {
    anim_0665__v0_l0,
    anim_0665__v1_l0,
};

const s32 anim_0666__v0_l0[] = {
    -2, 106, (((u16)16 << 0) | ((u16)0xA0 << 16)), -1, 0x80000000, 72, -6, 0, (((0 & 0xFF) << 0) | ((0 & 0xFF) << 8) | ((0 & 0xFF) << 16) | ((0 & 0xFF) << 24)), -6, 1, (((-24 & 0xFF) << 0) | ((-28 & 0xFF) << 8) | ((24 & 0xFF) << 16) | ((44 & 0xFF) << 24)), 4, 0,

        -1, 0x80000048, 72, 4, 1,

            -3, 19,
};

const s32 *const anim_0666[1] = {
    anim_0666__v0_l0,
};

const s32 anim_0667__v0_l0[] = {
    -2, 106, (((u16)16 << 0) | ((u16)0xA0 << 16)), -1, 0x1478A, 16, 1, 0,

        -4,
};

const s32 anim_0667__v1_l0[] = {
    -2, 106, (((u16)16 << 0) | ((u16)0xA0 << 16)), -1, 0x1479A, 16, 1, 1,

        -3, 8,
};

const s32 anim_0667__v2_l0[] = {
    -2, 106, (((u16)16 << 0) | ((u16)0xA0 << 16)), -1, 0x147AA, 16, -6, 1, (((-11 & 0xFF) << 0) | ((0 & 0xFF) << 8) | ((11 & 0xFF) << 16) | ((9 & 0xFF) << 24)), 4, 2,

        -1, 0x147BA, 16, 4, 3,

            -3, 16,
};

const s32 anim_0667__v3_l0[] = {
    -1, 0x147CA, 16, -6, 1, (((-14 & 0xFF) << 0) | ((0 & 0xFF) << 8) | ((7 & 0xFF) << 16) | ((9 & 0xFF) << 24)), 1, 4,

        -4,
};

const s32 *const anim_0667[4] = {
    anim_0667__v0_l0,
    anim_0667__v1_l0,
    anim_0667__v2_l0,
    anim_0667__v3_l0,
};

const s32 anim_0668__v0_l0[] = {
    -2, 106, (((u16)16 << 0) | ((u16)0xA0 << 16)), -1, 0x147DA, 64, 4, 0,

        -1, 0x1481A, 64, 4, 1,

            -3, 13,
};

const s32 anim_0668__v1_l0[] = {
    -2, 106, (((u16)16 << 0) | ((u16)0xA0 << 16)), -1, 0x1485A, 64, 4, 2,

        -1, 0x1489A, 64, 4, 3,

            -3, 13,
};

const s32 *const anim_0668[2] = {
    anim_0668__v0_l0,
    anim_0668__v1_l0,
};

const s32 anim_0669__v0_l0[] = {
    -2, 106, (((u16)16 << 0) | ((u16)0xA0 << 16)), -1, 0x148DA, 9, 1, 0,

        -4,
};

const s32 *const anim_0669[1] = {
    anim_0669__v0_l0,
};

const s32 anim_0670__v0_l0[] = {
    -2, 106, (((u16)16 << 0) | ((u16)0xA0 << 16)), -1, 0x148E3, 3, -6, 0, (((0 & 0xFF) << 0) | ((-8 & 0xFF) << 8) | ((8 & 0xFF) << 16) | ((8 & 0xFF) << 24)), -6, 1, (((0 & 0xFF) << 0) | ((-8 & 0xFF) << 8) | ((8 & 0xFF) << 16) | ((8 & 0xFF) << 24)), 4, 0,

        -1, 0x148E6, 3, 4, 1,

            -4,
};

const s32 anim_0670__v1_l0[] = {
    -2, 106, (((u16)16 << 0) | ((u16)0xA0 << 16)), -1, 0x148E9, 8, 4, 2,

        -1, 0x148F1, 8, 4, 3,

            -3, 13,
};

const s32 anim_0670__v2_l0[] = {
    -2, 106, (((u16)16 << 0) | ((u16)0xA0 << 16)), -1, 0x148E3, 3, -6, 0, (((0 & 0xFF) << 0) | ((-8 & 0xFF) << 8) | ((8 & 0xFF) << 16) | ((8 & 0xFF) << 24)), -6, 1, (((0 & 0xFF) << 0) | ((-8 & 0xFF) << 8) | ((8 & 0xFF) << 16) | ((8 & 0xFF) << 24)), 3, 0,

        -1, 0x148E6, 3, 3, 1,

            -1, 0x148F9, 6, 3, 4,

                -1, 0x148FF, 6, 3, 5,

                    -1, 0x14905, 8, 3, 6,

                        -1, 0x1490D, 8, 3, 7,

                            -1, 0x148F9, 6, 3, 4,

                                -1, 0x148FF, 6, 3, 5,

                                    -3, 49,
};

const s32 anim_0670__v3_l0[] = {
    -2, 106, (((u16)16 << 0) | ((u16)0xA0 << 16)), -1, 0x148F9, 6, 4, 4,

        -1, 0x148FF, 6, 4, 5,

            -1, 0x14905, 8, 4, 6,

                -1, 0x1490D, 8, 4, 7,

                    -4,
};

const s32 *const anim_0670[4] = {
    anim_0670__v0_l0,
    anim_0670__v1_l0,
    anim_0670__v2_l0,
    anim_0670__v3_l0,
};

const s32 anim_0671__v0_l0[] = {
    -2, 106, (((u16)16 << 0) | ((u16)0xA0 << 16)), -1, 0x14915, 4, 1, 0,

        -4,
};

const s32 *const anim_0671[1] = {
    anim_0671__v0_l0,
};

const s32 anim_0672__v0_l0[] = {
    -2, 106, (((u16)16 << 0) | ((u16)0xC0 << 16)), -1, 0x14919, 4, -6, 0, (((-7 & 0xFF) << 0) | ((-14 & 0xFF) << 8) | ((7 & 0xFF) << 16) | ((3 & 0xFF) << 24)), -6, 1, (((-7 & 0xFF) << 0) | ((-14 & 0xFF) << 8) | ((7 & 0xFF) << 16) | ((3 & 0xFF) << 24)), -5, 162, 3, 0,

        -1, 0x1491D, 12, -6, 0, (((-7 & 0xFF) << 0) | ((-46 & 0xFF) << 8) | ((7 & 0xFF) << 16) | ((2 & 0xFF) << 24)), -6, 1, (((-7 & 0xFF) << 0) | ((-46 & 0xFF) << 8) | ((7 & 0xFF) << 16) | ((2 & 0xFF) << 24)), 3, 1,

            -1, 0x14929, 24, -6, 0, (((-7 & 0xFF) << 0) | ((-92 & 0xFF) << 8) | ((7 & 0xFF) << 16) | ((3 & 0xFF) << 24)), -6, 1, (((-7 & 0xFF) << 0) | ((-92 & 0xFF) << 8) | ((7 & 0xFF) << 16) | ((3 & 0xFF) << 24)), 3, 2,

                -1, 0x14941, 24, -6, 0, (((-6 & 0xFF) << 0) | ((-92 & 0xFF) << 8) | ((6 & 0xFF) << 16) | ((-30 & 0xFF) << 24)), -6, 1, (((-6 & 0xFF) << 0) | ((-92 & 0xFF) << 8) | ((6 & 0xFF) << 16) | ((-30 & 0xFF) << 24)), 3, 3,

                    -1, 0x14959, 22, 3, 4,

                        -4,
};

const s32 *const anim_0672[1] = {
    anim_0672__v0_l0,
};

const s32 anim_0673__v0_l0[] = {
    -2, 105, (((u16)16 << 0) | ((u16)0xB0 << 16)), -1, 0x1496F, 64, -6, 0, (((0 & 0xFF) << 0) | ((0 & 0xFF) << 8) | ((0 & 0xFF) << 16) | ((0 & 0xFF) << 24)), -6, 1, (((-7 & 0xFF) << 0) | ((-7 & 0xFF) << 8) | ((7 & 0xFF) << 16) | ((7 & 0xFF) << 24)), 3, 0,

        -1, 0x149AF, 64, 3, 1,

            -1, 0x1496F, 64, 3, 2,

                -3, 24,
};

const s32 *const anim_0673[1] = {
    anim_0673__v0_l0,
};

const s32 anim_0674__v0_l0[] = {
    -2, 105, (((u16)16 << 0) | ((u16)0xB0 << 16)), -1, 0x149EF, 4, 1, 0,

        -4,
};

const s32 *const anim_0674[1] = {
    anim_0674__v0_l0,
};

const s32 anim_0675__v0_l0[] = {
    -2, 106, (((u16)16 << 0) | ((u16)0xC0 << 16)), -1, 0x149F3, 4, -6, 0, (((-5 & 0xFF) << 0) | ((-5 & 0xFF) << 8) | ((5 & 0xFF) << 16) | ((5 & 0xFF) << 24)), -6, 1, (((-5 & 0xFF) << 0) | ((-5 & 0xFF) << 8) | ((5 & 0xFF) << 16) | ((5 & 0xFF) << 24)), 3, 0,

        -1, 0x149F7, 4, 3, 1,

            -3, 19,
};

const s32 *const anim_0675[1] = {
    anim_0675__v0_l0,
};

const s32 anim_0676__v0_l0[] = {
    -2, 107, (((u16)16 << 0) | ((u16)0xF0 << 16)), -1, 0x149FB, 16, -6, 0, (((-10 & 0xFF) << 0) | ((-10 & 0xFF) << 8) | ((10 & 0xFF) << 16) | ((10 & 0xFF) << 24)), -6, 1, (((-12 & 0xFF) << 0) | ((-12 & 0xFF) << 8) | ((12 & 0xFF) << 16) | ((12 & 0xFF) << 24)), 1, 0,

        -4,
};

const s32 *const anim_0676[1] = {
    anim_0676__v0_l0,
};

const s32 anim_0677__v0_l0[] = {
    -2, 107, (((u16)16 << 0) | ((u16)0xF0 << 16)), -1, 0x14A0B, 4, -6, 0, (((-6 & 0xFF) << 0) | ((-6 & 0xFF) << 8) | ((6 & 0xFF) << 16) | ((6 & 0xFF) << 24)), -6, 1, (((-6 & 0xFF) << 0) | ((-6 & 0xFF) << 8) | ((6 & 0xFF) << 16) | ((6 & 0xFF) << 24)), 1, 0,

        -4,
};

const s32 *const anim_0677[1] = {
    anim_0677__v0_l0,
};

const s32 anim_0678__v0_l0[] = {
    -2, 107, (((u16)16 << 0) | ((u16)0xF0 << 16)), -1, 0x14A0F, 1, 1, 0,

        -4,
};

const s32 *const anim_0678[1] = {
    anim_0678__v0_l0,
};

const s32 anim_0679__v0_l0[] = {
    -2, 108, (((u16)16 << 0) | ((u16)0xA0 << 16)), -1, 0x14A10, 16, -6, 0, (((-49 & 0xFF) << 0) | ((2 & 0xFF) << 8) | ((-28 & 0xFF) << 16) | ((23 & 0xFF) << 24)), 4, 0,

        -1, 0x14A20, 16, 4, 1,

            -1, 0x14A10, 16, 4, 2,

                -3, 21,
};

const s32 *const anim_0679[1] = {
    anim_0679__v0_l0,
};

const s32 anim_0680__v0_l0[] = {
    -2, 90, (((u16)16 << 0) | ((u16)0x80 << 16)), -1, 0x14A30, 8, 1, 0,

        -4,
};

const s32 anim_0680__v1_l0[] = {
    -2, 90, (((u16)16 << 0) | ((u16)0x80 << 16)), -1, 0x14A38, 8, 6, 1,

        -1, 0x14A40, 8, 6, 2,

            -1, 0x14A38, 8, 6, 1,

                -1, 0x14A40, 8, 6, 2,

                    -1, 0x14A38, 8, 6, 1,

                        -1, 0x14A40, 8, 6, 2,

                            -4,
};

const s32 anim_0680__v2_l0[] = {
    -2, 90, (((u16)16 << 0) | ((u16)0x80 << 16)), -1, 0x14A48, 8, 5, 3,

        -1, 0x14A50, 8, 3, 4,

            -1, 0x14A48, 8, 5, 3,

                -1, 0x14A50, 8, 3, 4,

                    -1, 0x14A48, 8, 5, 3,

                        -1, 0x14A50, 8, 3, 4,

                            -4,
};

const s32 *const anim_0680[3] = {
    anim_0680__v0_l0,
    anim_0680__v1_l0,
    anim_0680__v2_l0,
};

const s32 anim_0681__v0_l0[] = {
    -2, 108, (((u16)16 << 0) | ((u16)0xA0 << 16)), -1, 0x14A58, 16, 4, 0,

        -1, 0x14A68, 16, 4, 1,

            -3, 13,
};

const s32 anim_0681__v1_l0[] = {
    -2, 108, (((u16)16 << 0) | ((u16)0xA0 << 16)), -1, 0x14A78, 16, 4, 2,

        -1, 0x14A88, 16, 4, 3,

            -3, 13,
};

const s32 anim_0681__v2_l0[] = {
    -2, 108, (((u16)16 << 0) | ((u16)0xA0 << 16)), -1, 0x14A98, 16, 4, 4,

        -1, 0x14AA8, 16, 4, 5,

            -3, 13,
};

const s32 anim_0681__v3_l0[] = {
    -2, 108, (((u16)16 << 0) | ((u16)0xA0 << 16)), -1, 0x14AB8, 16, 4, 6,

        -1, 0x14AC8, 16, 4, 7,

            -3, 13,
};

const s32 *const anim_0681[4] = {
    anim_0681__v0_l0,
    anim_0681__v1_l0,
    anim_0681__v2_l0,
    anim_0681__v3_l0,
};

const s32 anim_0682__v0_l0[] = {
    -2, 108, (((u16)16 << 0) | ((u16)0xA0 << 16)), -1, 0x14AD8, 54, -6, 0, (((-28 & 0xFF) << 0) | ((-14 & 0xFF) << 8) | ((26 & 0xFF) << 16) | ((24 & 0xFF) << 24)), 1, 0,

        -4,
};

const s32 *const anim_0682[1] = {
    anim_0682__v0_l0,
};

const s32 anim_0683__v0_l0[] = {
    -2, 109, (((u16)16 << 0) | ((u16)0xB0 << 16)), -1, 0x14B0E, 4, 3, 0,

        -1, 0x14B12, 2, 3, 1,

            -3, 13,
};

const s32 anim_0683__v1_l0[] = {
    -2, 109, (((u16)16 << 0) | ((u16)0xB0 << 16)), -1, 0x14B14, 2, 6, 2,

        -1, 0x14B16, 2, 6, 3,

            -3, 13,
};

const s32 anim_0683__v2_l0[] = {
    -2, 109, (((u16)16 << 0) | ((u16)0xA0 << 16)), -1, 0x14B18, 4, 1, 4,

        -4,
};

const s32 *const anim_0683[3] = {
    anim_0683__v0_l0,
    anim_0683__v1_l0,
    anim_0683__v2_l0,
};

const s32 anim_0684__v0_l0[] = {
    -2, 109, (((u16)16 << 0) | ((u16)0xB0 << 16)), -1, 0x14B1C, 30, -6, 0, (((-20 & 0xFF) << 0) | ((-18 & 0xFF) << 8) | ((22 & 0xFF) << 16) | ((18 & 0xFF) << 24)), 1, 0,

        -4,
};

const s32 *const anim_0684[1] = {
    anim_0684__v0_l0,
};

const s32 anim_0685__v0_l0[] = {
    -2, 110, (((u16)16 << 0) | ((u16)0x90 << 16)), -1, 0x14B3A, 16, -6, 0, (((-14 & 0xFF) << 0) | ((-14 & 0xFF) << 8) | ((14 & 0xFF) << 16) | ((14 & 0xFF) << 24)), 2, 0,

        -1, 0x14B4A, 16, 2, 1,

            -3, 16,
};

const s32 *const anim_0685[1] = {
    anim_0685__v0_l0,
};

const s32 anim_0686__v0_l0[] = {
    -2, 90, (((u16)16 << 0) | ((u16)0x80 << 16)), -1, 0x14B5A, 8, 1, 0,

        -4,
};

const s32 anim_0686__v1_l0[] = {
    -2, 90, (((u16)16 << 0) | ((u16)0x80 << 16)), -1, 0x14B62, 8, 6, 1,

        -1, 0x14B6A, 8, 6, 2,

            -1, 0x14B62, 8, 6, 1,

                -1, 0x14B6A, 8, 6, 2,

                    -1, 0x14B62, 8, 6, 1,

                        -1, 0x14B6A, 8, 6, 2,

                            -4,
};

const s32 anim_0686__v2_l0[] = {
    -2, 90, (((u16)16 << 0) | ((u16)0x80 << 16)), -1, 0x14B72, 8, 5, 3,

        -1, 0x14B7A, 8, 3, 4,

            -1, 0x14B72, 8, 5, 3,

                -1, 0x14B7A, 8, 3, 4,

                    -1, 0x14B72, 8, 5, 3,

                        -1, 0x14B7A, 8, 3, 4,

                            -4,
};

const s32 *const anim_0686[3] = {
    anim_0686__v0_l0,
    anim_0686__v1_l0,
    anim_0686__v2_l0,
};

const s32 anim_0687__v0_l0[] = {
    -2, 111, (((u16)16 << 0) | ((u16)0xF0 << 16)), -1, 0x14B82, 42, -6, 0, (((-18 & 0xFF) << 0) | ((-27 & 0xFF) << 8) | ((17 & 0xFF) << 16) | ((-14 & 0xFF) << 24)), -6, 1, (((-22 & 0xFF) << 0) | ((-16 & 0xFF) << 8) | ((24 & 0xFF) << 16) | ((31 & 0xFF) << 24)), 5, 0,

        -1, 0x14BAC, 42, 5, 1,

            -3, 19,
};

const s32 *const anim_0687[1] = {
    anim_0687__v0_l0,
};

const s32 anim_0688__v0_l0[] = {
    -2, 112, (((u16)16 << 0) | ((u16)0xE0 << 16)), -1, 0x14BD6, 12, -6, 0, (((-28 & 0xFF) << 0) | ((-12 & 0xFF) << 8) | ((28 & 0xFF) << 16) | ((12 & 0xFF) << 24)), 4, 0,

        -1, 0x14BE2, 12, 4, 1,

            -1, 0x14BEE, 12, 4, 2,

                -1, 0x14BFA, 12, 4, 3,

                    -1, 0x14C06, 12, 4, 4,

                        -1, 0x14C12, 12, 4, 5,

                            -1, 0x14C1E, 12, 4, 6,

                                -1, 0x14C2A, 12, 4, 7,

                                    -1, 0x14C36, 12, 4, 8,

                                        -1, 0x14C42, 12, 4, 9,

                                            -1, 0x14C4E, 12, 4, 10,

                                                -1, 0x14C5A, 12, 4, 11,

                                                    -3, 66,
};

const s32 anim_0688__v1_l0[] = {
    -2, 112, (((u16)16 << 0) | ((u16)0xE0 << 16)), -1, 0x14C66, 12, 4, 12,

        -1, 0x14C72, 12, 4, 13,

            -1, 0x14C7E, 12, 4, 14,

                -1, 0x14C8A, 12, 4, 15,

                    -1, 0x14C96, 12, 4, 16,

                        -1, 0x14CA2, 12, 4, 17,

                            -1, 0x14CAE, 12, 4, 18,

                                -1, 0x14CBA, 12, 4, 19,

                                    -1, 0x14CC6, 12, 4, 20,

                                        -1, 0x14CD2, 12, 4, 21,

                                            -1, 0x14CDE, 12, 4, 22,

                                                -1, 0x14CEA, 12, 4, 23,

                                                    -3, 63,
};

const s32 anim_0688__v2_l0[] = {
    -2, 112, (((u16)16 << 0) | ((u16)0xE0 << 16)), -1, 0x14CF6, 12, -6, 0, (((-28 & 0xFF) << 0) | ((-12 & 0xFF) << 8) | ((28 & 0xFF) << 16) | ((12 & 0xFF) << 24)), 4, 24,

        -4,
};

const s32 anim_0688__v3_l0[] = {
    -2, 112, (((u16)16 << 0) | ((u16)0xE0 << 16)), -1, 0x14C8A, 12, 4, 15,

        -4,
};

const s32 anim_0688__v4_l0[] = {
    -2, 112, (((u16)16 << 0) | ((u16)0xE0 << 16)), -1, 0x14D02, 12, -6, 0, (((-28 & 0xFF) << 0) | ((-12 & 0xFF) << 8) | ((28 & 0xFF) << 16) | ((12 & 0xFF) << 24)), 4, 25,

        -4,
};

const s32 anim_0688__v5_l0[] = {
    -2, 112, (((u16)16 << 0) | ((u16)0xE0 << 16)), -1, 0x14CBA, 12, 4, 19,

        -4,
};

const s32 anim_0688__v6_l0[] = {
    -2, 112, (((u16)16 << 0) | ((u16)0xE0 << 16)), -1, 0x14D0E, 12, -6, 0, (((-28 & 0xFF) << 0) | ((-12 & 0xFF) << 8) | ((28 & 0xFF) << 16) | ((12 & 0xFF) << 24)), 4, 26,

        -4,
};

const s32 anim_0688__v7_l0[] = {
    -2, 112, (((u16)16 << 0) | ((u16)0xE0 << 16)), -1, 0x14CEA, 12, 4, 23,

        -4,
};

const s32 anim_0688__v8_l0[] = {
    -2, 112, (((u16)16 << 0) | ((u16)0xE0 << 16)), -1, 0x14C06, 12, -6, 0, (((-28 & 0xFF) << 0) | ((-12 & 0xFF) << 8) | ((28 & 0xFF) << 16) | ((12 & 0xFF) << 24)), 4, 4,

        -1, 0x14C12, 12, 4, 5,

            -1, 0x14C1E, 12, 4, 6,

                -1, 0x14C2A, 12, 4, 7,

                    -4,
};

const s32 anim_0688__v9_l0[] = {
    -2, 112, (((u16)16 << 0) | ((u16)0xE0 << 16)), -1, 0x14BD6, 12, -6, 0, (((-28 & 0xFF) << 0) | ((-12 & 0xFF) << 8) | ((28 & 0xFF) << 16) | ((12 & 0xFF) << 24)), 4, 0,

        -1, 0x14BE2, 12, 4, 1,

            -1, 0x14BEE, 12, 4, 2,

                -1, 0x14BFA, 12, 4, 3,

                    -4,
};

const s32 anim_0688__v10_l0[] = {
    -2, 112, (((u16)16 << 0) | ((u16)0xE0 << 16)), -1, 0x14C36, 12, -6, 0, (((-28 & 0xFF) << 0) | ((-12 & 0xFF) << 8) | ((28 & 0xFF) << 16) | ((12 & 0xFF) << 24)), 4, 8,

        -1, 0x14C42, 12, 4, 9,

            -1, 0x14C4E, 12, 4, 10,

                -1, 0x14C5A, 12, 4, 11,

                    -4,
};

const s32 anim_0688__v11_l0[] = {
    -2, 112, (((u16)16 << 0) | ((u16)0xE0 << 16)), -1, 0x14C96, 12, 4, 16,

        -1, 0x14CA2, 12, 4, 17,

            -1, 0x14CAE, 12, 4, 18,

                -1, 0x14CBA, 12, 4, 19,

                    -4,
};

const s32 anim_0688__v12_l0[] = {
    -2, 112, (((u16)16 << 0) | ((u16)0xE0 << 16)), -1, 0x14C66, 12, 4, 12,

        -1, 0x14C72, 12, 4, 13,

            -1, 0x14C7E, 12, 4, 14,

                -1, 0x14C8A, 12, 4, 15,

                    -4,
};

const s32 anim_0688__v13_l0[] = {
    -2, 112, (((u16)16 << 0) | ((u16)0xE0 << 16)), -1, 0x14CC6, 12, 4, 20,

        -1, 0x14CD2, 12, 4, 21,

            -1, 0x14CDE, 12, 4, 22,

                -1, 0x14CEA, 12, 4, 23,

                    -4,
};

const s32 anim_0688__v14_l0[] = {
    -2, 112, (((u16)16 << 0) | ((u16)0xE0 << 16)), -1, 0x14C2A, 12, 4, 7,

        -4,
};

const s32 anim_0688__v15_l0[] = {
    -2, 112, (((u16)16 << 0) | ((u16)0xE0 << 16)), -1, 0x14BFA, 12, 4, 3,

        -4,
};

const s32 anim_0688__v16_l0[] = {
    -2, 112, (((u16)16 << 0) | ((u16)0xE0 << 16)), -1, 0x14C5A, 12, 4, 11,

        -4,
};

const s32 anim_0688__v17_l0[] = {
    -2, 112, (((u16)16 << 0) | ((u16)0xE0 << 16)), -1, 0x14CBA, 12, 4, 19,

        -4,
};

const s32 anim_0688__v18_l0[] = {
    -2, 112, (((u16)16 << 0) | ((u16)0xE0 << 16)), -1, 0x14C8A, 12, 4, 15,

        -4,
};

const s32 anim_0688__v19_l0[] = {
    -2, 112, (((u16)16 << 0) | ((u16)0xE0 << 16)), -1, 0x14CEA, 12, 4, 23,

        -4,
};

const s32 *const anim_0688[20] = {
    anim_0688__v0_l0, anim_0688__v1_l0, anim_0688__v2_l0, anim_0688__v3_l0, anim_0688__v4_l0, anim_0688__v5_l0, anim_0688__v6_l0,
    anim_0688__v7_l0, anim_0688__v8_l0, anim_0688__v9_l0, anim_0688__v10_l0, anim_0688__v11_l0, anim_0688__v12_l0, anim_0688__v13_l0,
    anim_0688__v14_l0, anim_0688__v15_l0, anim_0688__v16_l0, anim_0688__v17_l0, anim_0688__v18_l0, anim_0688__v19_l0,
};

const s32 anim_0689__v0_l0[] = {
    -2, 113, (((u16)16 << 0) | ((u16)0xE0 << 16)), -1, 0x14D1A, 64, -6, 0, (((-10 & 0xFF) << 0) | ((-10 & 0xFF) << 8) | ((20 & 0xFF) << 16) | ((10 & 0xFF) << 24)), 1, 0,

        -4,
};

const s32 anim_0689__v1_l0[] = {
    -2, 113, (((u16)16 << 0) | ((u16)0xE0 << 16)), -1, 0x14D5A, 64, -6, 0, (((-6 & 0xFF) << 0) | ((-6 & 0xFF) << 8) | ((6 & 0xFF) << 16) | ((6 & 0xFF) << 24)), 1, 1,

        -4,
};

const s32 anim_0689__v2_l0[] = {
    -2, 113, (((u16)16 << 0) | ((u16)0xE0 << 16)), -1, 0x14D9A, 64, 5, 2,

        -1, 0x14DDA, 64, 5, 3,

            -4,
};

const s32 *const anim_0689[3] = {
    anim_0689__v0_l0,
    anim_0689__v1_l0,
    anim_0689__v2_l0,
};

const s32 anim_0690__v0_l0[] = {
    -2, 113, (((u16)16 << 0) | ((u16)0xE0 << 16)), -1, 0x14E1A, 4, 1, 0,

        -4,
};

const s32 anim_0690__v1_l0[] = {
    -2, 113, (((u16)16 << 0) | ((u16)0xE0 << 16)), -1, 0x14E1E, 4, -6, 0, (((-7 & 0xFF) << 0) | ((-7 & 0xFF) << 8) | ((7 & 0xFF) << 16) | ((7 & 0xFF) << 24)), 1, 1,

        -4,
};

const s32 *const anim_0690[2] = {
    anim_0690__v0_l0,
    anim_0690__v1_l0,
};

const s32 anim_0691__v0_l0[] = {
    -2, 90, (((u16)16 << 0) | ((u16)0x80 << 16)), -1, 0x14E22, 8, 1, 0,

        -4,
};

const s32 anim_0691__v1_l0[] = {
    -2, 90, (((u16)16 << 0) | ((u16)0x80 << 16)), -1, 0x14E22, 8, 15, 0,

        -2, 90, (((u16)16 << 0) | ((u16)0x80 << 16)), -1, 0x14E2A, 12, 4, 1,

            -1, 0x14E36, 12, 8, 2,

                -1, 0x14E2A, 12, 4, 1,

                    -1, 0x14E36, 12, 8, 2,

                        -1, 0x14E2A, 12, 4, 1,

                            -1, 0x14E36, 12, 8, 2,

                                -1, 0x14E2A, 12, 4, 1,

                                    -1, 0x14E36, 12, 8, 2,

                                        -1, 0x14E2A, 12, 4, 1,

                                            -1, 0x14E36, 12, 8, 2,

                                                -4,
};

const s32 anim_0691__v2_l0[] = {
    -2, 90, (((u16)16 << 0) | ((u16)0x80 << 16)), -1, 0x14E42, 8, 5, 3,

        -1, 0x14E4A, 8, 3, 4,

            -1, 0x14E42, 8, 5, 3,

                -1, 0x14E4A, 8, 3, 4,

                    -1, 0x14E42, 8, 5, 3,

                        -1, 0x14E4A, 8, 3, 4,

                            -4,
};

const s32 anim_0691__v3_l0[] = {
    -2, 90, (((u16)16 << 0) | ((u16)0x80 << 16)), -1, 0x14E52, 8, 6, 5,

        -1, 0x14E5A, 8, 6, 6,

            -1, 0x14E52, 8, 6, 5,

                -1, 0x14E5A, 8, 6, 6,

                    -1, 0x14E52, 8, 6, 5,

                        -1, 0x14E5A, 8, 6, 6,

                            -4,
};

const s32 *const anim_0691[4] = {
    anim_0691__v0_l0,
    anim_0691__v1_l0,
    anim_0691__v2_l0,
    anim_0691__v3_l0,
};

const s32 anim_0692__v0_l0[] = {
    -2, 113, (((u16)16 << 0) | ((u16)0xE0 << 16)), -1, 0x14E62, 16, -6, 0, (((-13 & 0xFF) << 0) | ((-13 & 0xFF) << 8) | ((13 & 0xFF) << 16) | ((13 & 0xFF) << 24)), 1, 0,

        -4,
};

const s32 *const anim_0692[1] = {
    anim_0692__v0_l0,
};

const s32 anim_0693__v0_l0[] = {
    -2, 114, (((u16)16 << 0) | ((u16)0xC0 << 16)), -1, 0x14E72, 30, 3, 0,

        -1, 0x14E90, 30, 2, 1,

            -3, 13,
};

const s32 anim_0693__v1_l0[] = {
    -2, 114, (((u16)16 << 0) | ((u16)0xC0 << 16)), -1, 0x14EAE, 30, 3, 2,

        -1, 0x14ECC, 30, 2, 3,

            -1, 0x14EAE, 30, 3, 4,

                -1, 0x14ECC, 30, 2, 5,

                    -4,
};

const s32 *const anim_0693[2] = {
    anim_0693__v0_l0,
    anim_0693__v1_l0,
};

const s32 anim_0694__v0_l0[] = {
    -2, 90, (((u16)16 << 0) | ((u16)0x80 << 16)), -1, 0x14EEA, 8, 1, 0,

        -4,
};

const s32 anim_0694__v1_l0[] = {
    -2, 90, (((u16)16 << 0) | ((u16)0x80 << 16)), -1, 0x14EF2, 8, 1, 1,

        -4,
};

const s32 anim_0694__v2_l0[] = {
    -2, 90, (((u16)16 << 0) | ((u16)0x80 << 16)), -1, 0x14EFA, 12, 45, 2,

        -1, 0x14EEA, 8, 8, 0,

            -1, 0x14F06, 12, 6, 3,

                -1, 0x14F12, 12, 8, 4,

                    -1, 0x14F06, 12, 6, 3,

                        -1, 0x14F12, 12, 8, 4,

                            -1, 0x14F06, 12, 6, 3,

                                -1, 0x14F12, 12, 8, 4,

                                    -4,
};

const s32 anim_0694__v3_l0[] = {
    -2, 90, (((u16)16 << 0) | ((u16)0x80 << 16)), -1, 0x14F1E, 12, 7, 5,

        -1, 0x14F12, 12, 6, 4,

            -3, 13,
};

const s32 anim_0694__v4_l0[] = {
    -2, 90, (((u16)16 << 0) | ((u16)0x80 << 16)), -1, 0x14F2A, 12, 7, 6,

        -1, 0x14F36, 12, 7, 7,

            -3, 13,
};

const s32 anim_0694__v5_l0[] = {
    -2, 90, (((u16)16 << 0) | ((u16)0x80 << 16)), -1, 0x14F42, 12, 7, 8,

        -1, 0x14F4E, 12, 7, 9,

            -3, 13,
};

const s32 anim_0694__v6_l0[] = {
    -2, 90, (((u16)16 << 0) | ((u16)0x80 << 16)), -1, 0x14F5A, 8, 6, 10,

        -1, 0x14F62, 12, 5, 11,

            -3, 13,
};

const s32 anim_0694__v7_l0[] = {
    -2, 90, (((u16)16 << 0) | ((u16)0x80 << 16)), -1, 0x14F6E, 8, 5, 12,

        -1, 0x14F76, 12, 6, 13,

            -4,
};

const s32 anim_0694__v8_l0[] = {
    -2, 90, (((u16)16 << 0) | ((u16)0x80 << 16)), -1, 0x14F82, 8, 6, 14,

        -1, 0x14F8A, 12, 5, 15,

            -3, 13,
};

const s32 anim_0694__v9_l0[] = {
    -2, 90, (((u16)16 << 0) | ((u16)0x80 << 16)), -1, 0x14EF2, 8, 5, 1,

        -1, 0x14F96, 8, 5, 16,

            -4,
};

const s32 *const anim_0694[10] = {
    anim_0694__v0_l0, anim_0694__v1_l0, anim_0694__v2_l0, anim_0694__v3_l0, anim_0694__v4_l0,
    anim_0694__v5_l0, anim_0694__v6_l0, anim_0694__v7_l0, anim_0694__v8_l0, anim_0694__v9_l0,
};

const s32 anim_0695__v0_l0[] = {
    -2, 115, (((u16)16 << 0) | ((u16)0xD0 << 16)), -1, 0x14F9E, 4, 1, 0,

        -4,
};

const s32 anim_0695__v1_l0[] = {
    -2, 115, (((u16)16 << 0) | ((u16)0xD0 << 16)), -1, 0x14FA2, 4, 1, 1,

        -4,
};

const s32 *const anim_0695[2] = {
    anim_0695__v0_l0,
    anim_0695__v1_l0,
};

const s32 anim_0696__v0_l0[] = {
    -2, 115, (((u16)16 << 0) | ((u16)0xD0 << 16)), -1, 0x14FA6, 16, 1, 0,

        -4,
};

const s32 anim_0696__v1_l0[] = {
    -2, 115, (((u16)16 << 0) | ((u16)0xD0 << 16)), -1, 0x14FB6, 12, 1, 1,

        -4,
};

const s32 *const anim_0696[2] = {
    anim_0696__v0_l0,
    anim_0696__v1_l0,
};

const s32 anim_0697__v0_l0[] = {
    -2, 115, (((u16)16 << 0) | ((u16)0xD0 << 16)), -1, 0x14FC2, 1, 1, 0,

        -4,
};

const s32 anim_0697__v1_l0[] = {
    -2, 115, (((u16)16 << 0) | ((u16)0xD0 << 16)), -1, 0x14FC3, 1, 1, 1,

        -4,
};

const s32 *const anim_0697[2] = {
    anim_0697__v0_l0,
    anim_0697__v1_l0,
};

const s32 anim_0698__v0_l0[] = {
    -2, 116, (((u16)16 << 0) | ((u16)0xC0 << 16)), -1, 0x14FC4, 8, 4, 0,

        -9, (((u16)698 << 0) | ((u16)1 << 16)),
};

const s32 anim_0698__v1_l0[] = {
    -2, 116, (((u16)16 << 0) | ((u16)0xC0 << 16)), -1, 0x14FCC, 16, 4, 1,

        -1, 0x14FDC, 16, 4, 2,

            -3, 13,
};

const s32 anim_0698__v2_l0[] = {
    -2, 116, (((u16)16 << 0) | ((u16)0xC0 << 16)), -1, 0x14FEC, 12, 4, 3,

        -4,
};

const s32 *const anim_0698[3] = {
    anim_0698__v0_l0,
    anim_0698__v1_l0,
    anim_0698__v2_l0,
};

const s32 anim_0699__v0_l0[] = {
    -2, 116, (((u16)16 << 0) | ((u16)0xC0 << 16)), -1, 0x14FF8, 12, 5, 0,

        -1, 0x15004, 12, 5, 1,

            -1, 0x15010, 12, 5, 2,

                -1, 0x1501C, 12, 5, 3,

                    -1, 0x15010, 12, 5, 2,

                        -1, 0x15004, 12, 5, 1,

                            -3, 33,
};

const s32 *const anim_0699[1] = {
    anim_0699__v0_l0,
};

const s32 anim_0700__v0_l0[] = {
    -2, 116, (((u16)16 << 0) | ((u16)0xC0 << 16)), -1, 0x15028, 8, 1, 0,

        -1, 0x15028, 8, 1, 1,

            -4,
};

const s32 *const anim_0700[1] = {
    anim_0700__v0_l0,
};

const s32 anim_0701__v0_l0[] = {
    -2, 116, (((u16)16 << 0) | ((u16)0xC0 << 16)), -1, 0x15030, 8, 1, 0,

        -1, 0x15038, 8, 1, 1,

            -4,
};

const s32 *const anim_0701[1] = {
    anim_0701__v0_l0,
};

const s32 anim_0702__v0_l0[] = {
    -2, 116, (((u16)16 << 0) | ((u16)0xC0 << 16)), -1, 0x15040, 8, 5, 0,

        -1, 0x15048, 8, 5, 1,

            -1, 0x15050, 8, 5, 2,

                -1, 0x15048, 8, 5, 1,

                    -1, 0x15040, 8, 5, 0,

                        -1, 0x15058, 8, 5, 3,

                            -1, 0x15060, 8, 5, 4,

                                -1, 0x15058, 8, 5, 3,

                                    -1, 0x15040, 8, 5, 0,

                                        -1, 0x15048, 8, 5, 1,

                                            -1, 0x15050, 8, 5, 2,

                                                -1, 0x15048, 8, 5, 1,

                                                    -1, 0x15040, 8, 5, 0,

                                                        -1, 0x15048, 8, 5, 1,

                                                            -1, 0x15050, 8, 5, 2,

                                                                -1, 0x15048, 8, 5, 1,

                                                                    -3, 83,
};

const s32 *const anim_0702[1] = {
    anim_0702__v0_l0,
};

const s32 anim_0703__v0_l0[] = {
    -2, 116, (((u16)16 << 0) | ((u16)0xC0 << 16)), -1, 0x15068, 8, 12, 0,

        -1, 0x15070, 8, 12, 1,

            -1, 0x15078, 12, 12, 2,

                -1, 0x15084, 8, 12, 3,

                    -1, 0x1508C, 8, 12, 4,

                        -1, 0x15084, 8, 12, 3,

                            -1, 0x15078, 12, 12, 2,

                                -1, 0x15070, 8, 12, 1,

                                    -3, 43,
};

const s32 *const anim_0703[1] = {
    anim_0703__v0_l0,
};

const s32 anim_0704__v0_l0[] = {
    -2, 116, (((u16)16 << 0) | ((u16)0xC0 << 16)), -1, 0x15094, 12, -6, 0, (((-8 & 0xFF) << 0) | ((-5 & 0xFF) << 8) | ((8 & 0xFF) << 16) | ((15 & 0xFF) << 24)), 45, 0,

        -1, 0x150A0, 12, 6, 1,

            -1, 0x150AC, 12, 8, 2,

                -1, 0x150B8, 12, 8, 3,

                    -1, 0x150C4, 12, 8, 4,

                        -1, 0x150B8, 12, 8, 3,

                            -1, 0x150C4, 12, 8, 4,

                                -1, 0x150B8, 12, 8, 3,

                                    -1, 0x150C4, 12, 8, 4,

                                        -1, 0x150B8, 12, 8, 3,

                                            -1, 0x150C4, 12, 8, 4,

                                                -1, 0x150AC, 12, 6, 2,

                                                    -1, 0x150A0, 12, 5, 1,

                                                        -3, 71,
};

const s32 *const anim_0704[1] = {
    anim_0704__v0_l0,
};

const s32 anim_0705__v0_l0[] = {
    -1, 0x150D0, 16, -2, 33, (((u16)16 << 0) | ((u16)0x70 << 16)), -6, 0, (((-13 & 0xFF) << 0) | ((-24 & 0xFF) << 8) | ((13 & 0xFF) << 16) | ((4 & 0xFF) << 24)), 1, 0,

        -4,
};

const s32 *const anim_0705[1] = {
    anim_0705__v0_l0,
};

const s32 anim_0706__v0_l0[] = {
    -2, 0, (((u16)16 << 0) | ((u16)0x0 << 16)), -1, 0x150E0, 4, 1, 0,

        -4,
};

const s32 anim_0706__v1_l0[] = {
    -2, 2, (((u16)16 << 0) | ((u16)0x10 << 16)), -1, 0x150E4, 4, 1, 1,

        -4,
};

const s32 anim_0706__v2_l0[] = {
    -2, 5, (((u16)16 << 0) | ((u16)0x20 << 16)), -1, 0x150E8, 4, 1, 2,

        -4,
};

const s32 anim_0706__v3_l0[] = {
    -2, 7, (((u16)16 << 0) | ((u16)0x30 << 16)), -1, 0x150EC, 4, 1, 3,

        -4,
};

const s32 anim_0706__v4_l0[] = {
    -2, 1, (((u16)16 << 0) | ((u16)0x50 << 16)), -1, 0x150F0, 4, 1, 4,

        -4,
};

const s32 anim_0706__v5_l0[] = {
    -2, 117, (((u16)16 << 0) | ((u16)0xA0 << 16)), -1, 0x150F4, 4, 1, 5,

        -4,
};

const s32 anim_0706__v6_l0[] = {
    -2, 117, (((u16)16 << 0) | ((u16)0xA0 << 16)), -1, 0x150F8, 4, 1, 6,

        -4,
};

const s32 anim_0706__v7_l0[] = {
    -2, 117, (((u16)16 << 0) | ((u16)0xA0 << 16)), -1, 0x150FC, 4, 1, 7,

        -4,
};

const s32 anim_0706__v8_l0[] = {
    -2, 68, (((u16)16 << 0) | ((u16)0x60 << 16)), -1, 0x15100, 4, 1, 8,

        -4,
};

const s32 anim_0706__v9_l0[] = {
    -2, 68, (((u16)16 << 0) | ((u16)0x60 << 16)), -1, 0x15104, 4, 1, 9,

        -4,
};

const s32 anim_0706__v10_l0[] = {
    -2, 68, (((u16)16 << 0) | ((u16)0x60 << 16)), -1, 0x15108, 4, 1, 10,

        -4,
};

const s32 anim_0706__v11_l0[] = {
    -2, 68, (((u16)16 << 0) | ((u16)0x60 << 16)), -1, 0x1510C, 4, 1, 11,

        -4,
};

const s32 anim_0706__v12_l0[] = {
    -2, 117, (((u16)16 << 0) | ((u16)0xA0 << 16)), -1, 0x15110, 4, 1, 12,

        -4,
};

const s32 anim_0706__v13_l0[] = {
    -2, 117, (((u16)16 << 0) | ((u16)0xA0 << 16)), -1, 0x15114, 4, 1, 13,

        -4,
};

const s32 anim_0706__v14_l0[] = {
    -2, 117, (((u16)16 << 0) | ((u16)0xA0 << 16)), -1, 0x15118, 4, 1, 14,

        -4,
};

const s32 anim_0706__v15_l0[] = {
    -2, 1, (((u16)16 << 0) | ((u16)0x50 << 16)), -1, 0x1511C, 4, 1, 15,

        -4,
};

const s32 anim_0706__v16_l0[] = {
    -2, 117, (((u16)16 << 0) | ((u16)0xA0 << 16)), -1, 0x15120, 4, 1, 16,

        -4,
};

const s32 *const anim_0706[17] = {
    anim_0706__v0_l0, anim_0706__v1_l0, anim_0706__v2_l0, anim_0706__v3_l0, anim_0706__v4_l0, anim_0706__v5_l0,
    anim_0706__v6_l0, anim_0706__v7_l0, anim_0706__v8_l0, anim_0706__v9_l0, anim_0706__v10_l0, anim_0706__v11_l0,
    anim_0706__v12_l0, anim_0706__v13_l0, anim_0706__v14_l0, anim_0706__v15_l0, anim_0706__v16_l0,
};

const s32 anim_0707__v0_l0[] = {
    -1, 0x15124, 16, -2, 68, (((u16)16 << 0) | ((u16)0x60 << 16)), 8, 0,

        8, 1,

            8, 2,

                8, 3,

                    -3, 11,
};

const s32 *const anim_0707[1] = {
    anim_0707__v0_l0,
};

const s32 anim_0708__v0_l0[] = {
    -1, 0x15134, 16, -2, 68, (((u16)16 << 0) | ((u16)0x60 << 16)), -5, 117, 8, 0,

        8, 1,

            8, 2,

                8, 3,

                    -4,
};

const s32 *const anim_0708[1] = {
    anim_0708__v0_l0,
};

const s32 anim_0709__v0_l0[] = {
    -2, 68, (((u16)16 << 0) | ((u16)0x60 << 16)), -1, 0x15144, 2, 1, 0,

        -4,
};

const s32 anim_0709__v1_l0[] = {
    -2, 68, (((u16)16 << 0) | ((u16)0x60 << 16)), -1, 0x15146, 2, 1, 1,

        -4,
};

const s32 anim_0709__v2_l0[] = {
    -2, 68, (((u16)16 << 0) | ((u16)0x60 << 16)), -1, 0x15148, 2, 1, 2,

        -4,
};

const s32 anim_0709__v3_l0[] = {
    -2, 68, (((u16)16 << 0) | ((u16)0x60 << 16)), -1, 0x1514A, 2, 1, 3,

        -4,
};

const s32 anim_0709__v4_l0[] = {
    -2, 68, (((u16)16 << 0) | ((u16)0x60 << 16)), -1, 0x1514C, 2, 1, 4,

        -4,
};

const s32 *const anim_0709[5] = {
    anim_0709__v0_l0, anim_0709__v1_l0, anim_0709__v2_l0, anim_0709__v3_l0, anim_0709__v4_l0,
};

const s32 anim_0710__v0_l0[] = {
    -2, 118, (((u16)16 << 0) | ((u16)0x0 << 16)), 21, -1,

        -1, 0x1514E, 4, 2, 0,

            -1, 0x15152, 4, 20, 1, -1, 0x15156, 4, 6, 2,

                -1, 0x1515A, 4, 6, 3,

                    -1, 0x1515E, 4, 6, 4,

                        -1, 0x15162, 4, 3, 5,

                            -1, 0x15166, 4, 3, 6,

                                -1, 0x1516A, 4, 3, 7,

                                    -1, 0x1516E, 4, 3, 8,

                                        -1, 0x15172, 4, 3, 9,

                                            -1, 0x1515A, 4, 3, 3,

                                                -3, 45,
};

const s32 anim_0710__v1_l0[] = {
    -2, 119, (((u16)16 << 0) | ((u16)0x0 << 16)), 21, -1,

        -1, 0x1514E, 4, 2, 0,

            -1, 0x15152, 4, 20, 1, -1, 0x15156, 4, 6, 2,

                -1, 0x1515A, 4, 6, 3,

                    -1, 0x1515E, 4, 6, 4,

                        -1, 0x15162, 4, 3, 5,

                            -1, 0x15166, 4, 3, 6,

                                -1, 0x1516A, 4, 3, 7,

                                    -1, 0x1516E, 4, 3, 8,

                                        -1, 0x15172, 4, 3, 9,

                                            -1, 0x1515A, 4, 3, 3,

                                                -3, 45,
};

const s32 anim_0710__v2_l0[] = {
    -2, 120, (((u16)16 << 0) | ((u16)0x0 << 16)), 21, -1,

        -1, 0x1514E, 4, 2, 0,

            -1, 0x15152, 4, 20, 1, -1, 0x15156, 4, 6, 2,

                -1, 0x1515A, 4, 6, 3,

                    -1, 0x1515E, 4, 6, 4,

                        -1, 0x15162, 4, 3, 5,

                            -1, 0x15166, 4, 3, 6,

                                -1, 0x1516A, 4, 3, 7,

                                    -1, 0x1516E, 4, 3, 8,

                                        -1, 0x15172, 4, 3, 9,

                                            -1, 0x1515A, 4, 3, 3,

                                                -3, 45,
};

const s32 anim_0710__v3_l0[] = {
    -2, 121, (((u16)16 << 0) | ((u16)0x0 << 16)), 21, -1,

        -1, 0x1514E, 4, 2, 0,

            -1, 0x15152, 4, 20, 1, -1, 0x15156, 4, 6, 2,

                -1, 0x1515A, 4, 6, 3,

                    -1, 0x1515E, 4, 6, 4,

                        -1, 0x15162, 4, 3, 5,

                            -1, 0x15166, 4, 3, 6,

                                -1, 0x1516A, 4, 3, 7,

                                    -1, 0x1516E, 4, 3, 8,

                                        -1, 0x15172, 4, 3, 9,

                                            -1, 0x1515A, 4, 3, 3,

                                                -3, 45,
};

const s32 anim_0710__v4_l0[] = {
    -2, 122, (((u16)16 << 0) | ((u16)0x0 << 16)), 21, -1,

        -1, 0x1514E, 4, 2, 0,

            -1, 0x15152, 4, 20, 1, -1, 0x15156, 4, 6, 2,

                -1, 0x1515A, 4, 6, 3,

                    -1, 0x1515E, 4, 6, 4,

                        -1, 0x15162, 4, 3, 5,

                            -1, 0x15166, 4, 3, 6,

                                -1, 0x1516A, 4, 3, 7,

                                    -1, 0x1516E, 4, 3, 8,

                                        -1, 0x15172, 4, 3, 9,

                                            -1, 0x1515A, 4, 3, 3,

                                                -3, 45,
};

const s32 anim_0710__v5_l0[] = {
    -2, 123, (((u16)16 << 0) | ((u16)0x0 << 16)), 21, -1,

        -1, 0x1514E, 4, 2, 0,

            -1, 0x15152, 4, 20, 1, -1, 0x15156, 4, 6, 2,

                -1, 0x1515A, 4, 6, 3,

                    -1, 0x1515E, 4, 6, 4,

                        -1, 0x15162, 4, 3, 5,

                            -1, 0x15166, 4, 3, 6,

                                -1, 0x1516A, 4, 3, 7,

                                    -1, 0x1516E, 4, 3, 8,

                                        -1, 0x15172, 4, 3, 9,

                                            -1, 0x1515A, 4, 3, 3,

                                                -3, 45,
};

const s32 anim_0710__v6_l0[] = {
    -2, 124, (((u16)16 << 0) | ((u16)0x0 << 16)), 21, -1,

        -1, 0x1514E, 4, 2, 0,

            -1, 0x15152, 4, 20, 1, -1, 0x15156, 4, 6, 2,

                -1, 0x1515A, 4, 6, 3,

                    -1, 0x1515E, 4, 6, 4,

                        -1, 0x15162, 4, 3, 5,

                            -1, 0x15166, 4, 3, 6,

                                -1, 0x1516A, 4, 3, 7,

                                    -1, 0x1516E, 4, 3, 8,

                                        -1, 0x15172, 4, 3, 9,

                                            -1, 0x1515A, 4, 3, 3,

                                                -3, 45,
};

const s32 *const anim_0710[7] = {
    anim_0710__v0_l0, anim_0710__v1_l0, anim_0710__v2_l0, anim_0710__v3_l0, anim_0710__v4_l0, anim_0710__v5_l0, anim_0710__v6_l0,
};

const s32 anim_0711__v0_l0[] = {
    -2, 118, (((u16)16 << 0) | ((u16)0x0 << 16)), 10, -1,

        -1, 0x15176, 2, 3, 0, -1, 0x15178, 4, 6, 1,

            -1, 0x15178, 4, 6, 1,

                -1, 0x15178, 4, 6, 1,

                    -1, 0x15178, 4, 6, 1,

                        -1, 0x15178, 4, 6, 1,

                            -1, 0x15178, 4, 6, 1,

                                -1, 0x15178, 4, 6, 1,

                                    -1, 0x15178, 4, 6, 1,

                                        -1, 0x15178, 4, 6, 1,

                                            -1, 0x15178, 4, 6, 1,

                                                -1, 0x15178, 4, 6, 1,

                                                    -1, 0x15178, 4, 6, 1,

                                                        -1, 0x15178, 4, 6, 1,

                                                            -1, 0x15178, 4, 6, 1,

                                                                -1, 0x15178, 4, 6, 1,

                                                                    -1, 0x15178, 4, 6, 1,

                                                                        -3, 80,
};

const s32 anim_0711__v1_l0[] = {
    -2, 119, (((u16)16 << 0) | ((u16)0x0 << 16)), 10, -1,

        -1, 0x15176, 2, 3, 0, -1, 0x15178, 4, 6, 1,

            -1, 0x15178, 4, 6, 1,

                -1, 0x15178, 4, 6, 1,

                    -1, 0x15178, 4, 6, 1,

                        -1, 0x15178, 4, 6, 1,

                            -1, 0x15178, 4, 6, 1,

                                -1, 0x15178, 4, 6, 1,

                                    -1, 0x15178, 4, 6, 1,

                                        -1, 0x15178, 4, 6, 1,

                                            -1, 0x15178, 4, 6, 1,

                                                -1, 0x15178, 4, 6, 1,

                                                    -1, 0x15178, 4, 6, 1,

                                                        -1, 0x15178, 4, 6, 1,

                                                            -1, 0x15178, 4, 6, 1,

                                                                -1, 0x15178, 4, 6, 1,

                                                                    -1, 0x15178, 4, 6, 1,

                                                                        -3, 80,
};

const s32 anim_0711__v2_l0[] = {
    -2, 120, (((u16)16 << 0) | ((u16)0x0 << 16)), 10, -1,

        -1, 0x15176, 2, 0, 0, -1, 0x15178, 4, 6, 1,

            -1, 0x15178, 4, 6, 1,

                -1, 0x15178, 4, 6, 1,

                    -1, 0x15178, 4, 6, 1,

                        -1, 0x15178, 4, 6, 1,

                            -1, 0x15178, 4, 6, 1,

                                -1, 0x15178, 4, 6, 1,

                                    -1, 0x15178, 4, 6, 1,

                                        -1, 0x15178, 4, 6, 1,

                                            -1, 0x15178, 4, 6, 1,

                                                -1, 0x15178, 4, 6, 1,

                                                    -1, 0x15178, 4, 6, 1,

                                                        -1, 0x15178, 4, 6, 1,

                                                            -1, 0x15178, 4, 6, 1,

                                                                -1, 0x15178, 4, 6, 1,

                                                                    -1, 0x15178, 4, 6, 1,

                                                                        -3, 80,
};

const s32 anim_0711__v3_l0[] = {
    -2, 121, (((u16)16 << 0) | ((u16)0x0 << 16)), 10, -1,

        -1, 0x15176, 2, 3, 0, -1, 0x15178, 4, 6, 1,

            -1, 0x15178, 4, 6, 1,

                -1, 0x15178, 4, 6, 1,

                    -1, 0x15178, 4, 6, 1,

                        -1, 0x15178, 4, 6, 1,

                            -1, 0x15178, 4, 6, 1,

                                -1, 0x15178, 4, 6, 1,

                                    -1, 0x15178, 4, 6, 1,

                                        -1, 0x15178, 4, 6, 1,

                                            -1, 0x15178, 4, 6, 1,

                                                -1, 0x15178, 4, 6, 1,

                                                    -1, 0x15178, 4, 6, 1,

                                                        -1, 0x15178, 4, 6, 1,

                                                            -1, 0x15178, 4, 6, 1,

                                                                -1, 0x15178, 4, 6, 1,

                                                                    -1, 0x15178, 4, 6, 1,

                                                                        -3, 80,
};

const s32 anim_0711__v4_l0[] = {
    -2, 122, (((u16)16 << 0) | ((u16)0x0 << 16)), 10, -1,

        -1, 0x15176, 2, 3, 0, -1, 0x15178, 4, 6, 1,

            -1, 0x15178, 4, 6, 1,

                -1, 0x15178, 4, 6, 1,

                    -1, 0x15178, 4, 6, 1,

                        -1, 0x15178, 4, 6, 1,

                            -1, 0x15178, 4, 6, 1,

                                -1, 0x15178, 4, 6, 1,

                                    -1, 0x15178, 4, 6, 1,

                                        -1, 0x15178, 4, 6, 1,

                                            -1, 0x15178, 4, 6, 1,

                                                -1, 0x15178, 4, 6, 1,

                                                    -1, 0x15178, 4, 6, 1,

                                                        -1, 0x15178, 4, 6, 1,

                                                            -1, 0x15178, 4, 6, 1,

                                                                -1, 0x15178, 4, 6, 1,

                                                                    -1, 0x15178, 4, 6, 1,

                                                                        -3, 80,
};

const s32 anim_0711__v5_l0[] = {
    -2, 123, (((u16)16 << 0) | ((u16)0x0 << 16)), 10, -1,

        -1, 0x15176, 2, 3, 0, -1, 0x15178, 4, 6, 1,

            -1, 0x15178, 4, 6, 1,

                -1, 0x15178, 4, 6, 1,

                    -1, 0x15178, 4, 6, 1,

                        -1, 0x15178, 4, 6, 1,

                            -1, 0x15178, 4, 6, 1,

                                -1, 0x15178, 4, 6, 1,

                                    -1, 0x15178, 4, 6, 1,

                                        -1, 0x15178, 4, 6, 1,

                                            -1, 0x15178, 4, 6, 1,

                                                -1, 0x15178, 4, 6, 1,

                                                    -1, 0x15178, 4, 6, 1,

                                                        -1, 0x15178, 4, 6, 1,

                                                            -1, 0x15178, 4, 6, 1,

                                                                -1, 0x15178, 4, 6, 1,

                                                                    -1, 0x15178, 4, 6, 1,

                                                                        -3, 80,
};

const s32 anim_0711__v6_l0[] = {
    -2, 124, (((u16)16 << 0) | ((u16)0x0 << 16)), 10, -1,

        -1, 0x15176, 2, 3, 0, -1, 0x15178, 4, 6, 1,

            -1, 0x15178, 4, 6, 1,

                -1, 0x15178, 4, 6, 1,

                    -1, 0x15178, 4, 6, 1,

                        -1, 0x15178, 4, 6, 1,

                            -1, 0x15178, 4, 6, 1,

                                -1, 0x15178, 4, 6, 1,

                                    -1, 0x15178, 4, 6, 1,

                                        -1, 0x15178, 4, 6, 1,

                                            -1, 0x15178, 4, 6, 1,

                                                -1, 0x15178, 4, 6, 1,

                                                    -1, 0x15178, 4, 6, 1,

                                                        -1, 0x15178, 4, 6, 1,

                                                            -1, 0x15178, 4, 6, 1,

                                                                -1, 0x15178, 4, 6, 1,

                                                                    -1, 0x15178, 4, 6, 1,

                                                                        -3, 80,
};

const s32 *const anim_0711[7] = {
    anim_0711__v0_l0, anim_0711__v1_l0, anim_0711__v2_l0, anim_0711__v3_l0, anim_0711__v4_l0, anim_0711__v5_l0, anim_0711__v6_l0,
};

const s32 anim_0712__v0_l0[] = {
    -2, 118, (((u16)16 << 0) | ((u16)0x0 << 16)), 34, -1,

        -1, 0x1517C, 4, 1, 0,

            -4,
};

const s32 anim_0712__v1_l0[] = {
    -2, 119, (((u16)16 << 0) | ((u16)0x0 << 16)), 34, -1,

        -1, 0x1517C, 4, 1, 0,

            -4,
};

const s32 anim_0712__v2_l0[] = {
    -2, 120, (((u16)16 << 0) | ((u16)0x0 << 16)), 34, -1,

        -1, 0x1517C, 4, 1, 0,

            -4,
};

const s32 anim_0712__v3_l0[] = {
    -2, 121, (((u16)16 << 0) | ((u16)0x0 << 16)), 34, -1,

        -1, 0x1517C, 4, 1, 0,

            -4,
};

const s32 anim_0712__v4_l0[] = {
    -2, 122, (((u16)16 << 0) | ((u16)0x0 << 16)), 34, -1,

        -1, 0x1517C, 4, 1, 0,

            -4,
};

const s32 anim_0712__v5_l0[] = {
    -2, 123, (((u16)16 << 0) | ((u16)0x0 << 16)), 34, -1,

        -1, 0x1517C, 4, 1, 0,

            -4,
};

const s32 anim_0712__v6_l0[] = {
    -2, 124, (((u16)16 << 0) | ((u16)0x0 << 16)), 34, -1,

        -1, 0x1517C, 4, 1, 0,

            -4,
};

const s32 *const anim_0712[7] = {
    anim_0712__v0_l0, anim_0712__v1_l0, anim_0712__v2_l0, anim_0712__v3_l0, anim_0712__v4_l0, anim_0712__v5_l0, anim_0712__v6_l0,
};

const s32 anim_0713__v0_l0[] = {
    -2, 118, (((u16)16 << 0) | ((u16)0x0 << 16)), 30, -1,

        -1, 0x15180, 2, 3, 0,

            -1, 0x15182, 4, 3, 1,

                -1, 0x15186, 2, 3, 2, -1, 0x15188, 4, 25, 3,

                    -1, 0x15188, 4, 6, 3,

                        -1, 0x15188, 4, 6, 3,

                            -1, 0x15188, 4, 6, 3,

                                -3, 20,
};

const s32 anim_0713__v1_l0[] = {
    -2, 119, (((u16)16 << 0) | ((u16)0x0 << 16)), 30, -1,

        -1, 0x15180, 2, 3, 0,

            -1, 0x15182, 4, 3, 1,

                -1, 0x15186, 2, 3, 2, -1, 0x15188, 4, 25, 3,

                    -1, 0x15188, 4, 6, 3,

                        -1, 0x15188, 4, 6, 3,

                            -1, 0x15188, 4, 6, 3,

                                -3, 20,
};

const s32 anim_0713__v2_l0[] = {
    -2, 120, (((u16)16 << 0) | ((u16)0x0 << 16)), 30, -1,

        -1, 0x15180, 2, 3, 0,

            -1, 0x15182, 4, 3, 1,

                -1, 0x15186, 2, 3, 2, -1, 0x15188, 4, 25, 3,

                    -1, 0x15188, 4, 6, 3,

                        -1, 0x15188, 4, 6, 3,

                            -1, 0x15188, 4, 6, 3,

                                -3, 20,
};

const s32 anim_0713__v3_l0[] = {
    -2, 121, (((u16)16 << 0) | ((u16)0x0 << 16)), 30, -1,

        -1, 0x15180, 2, 3, 0,

            -1, 0x15182, 4, 3, 1,

                -1, 0x15186, 2, 3, 2, -1, 0x15188, 4, 25, 3,

                    -1, 0x15188, 4, 6, 3,

                        -1, 0x15188, 4, 6, 3,

                            -1, 0x15188, 4, 6, 3,

                                -3, 20,
};

const s32 anim_0713__v4_l0[] = {
    -2, 122, (((u16)16 << 0) | ((u16)0x0 << 16)), 30, -1,

        -1, 0x15180, 2, 3, 0,

            -1, 0x15182, 4, 3, 1,

                -1, 0x15186, 2, 3, 2, -1, 0x15188, 4, 25, 3,

                    -1, 0x15188, 4, 6, 3,

                        -1, 0x15188, 4, 6, 3,

                            -1, 0x15188, 4, 6, 3,

                                -3, 20,
};

const s32 anim_0713__v5_l0[] = {
    -2, 123, (((u16)16 << 0) | ((u16)0x0 << 16)), 30, -1,

        -1, 0x15180, 2, 3, 0,

            -1, 0x15182, 4, 3, 1,

                -1, 0x15186, 2, 3, 2, -1, 0x15188, 4, 25, 3,

                    -1, 0x15188, 4, 6, 3,

                        -1, 0x15188, 4, 6, 3,

                            -1, 0x15188, 4, 6, 3,

                                -3, 20,
};

const s32 anim_0713__v6_l0[] = {
    -2, 124, (((u16)16 << 0) | ((u16)0x0 << 16)), 30, -1,

        -1, 0x15180, 2, 3, 0,

            -1, 0x15182, 4, 3, 1,

                -1, 0x15186, 2, 3, 2, -1, 0x15188, 4, 25, 3,

                    -1, 0x15188, 4, 6, 3,

                        -1, 0x15188, 4, 6, 3,

                            -1, 0x15188, 4, 6, 3,

                                -3, 20,
};

const s32 *const anim_0713[7] = {
    anim_0713__v0_l0, anim_0713__v1_l0, anim_0713__v2_l0, anim_0713__v3_l0, anim_0713__v4_l0, anim_0713__v5_l0, anim_0713__v6_l0,
};

const s32 anim_0714__v0_l0[] = {
    -2, 88, (((u16)16 << 0) | ((u16)0x0 << 16)), -1, 0x1518C, 12, 1, 0,

        -4,
};

const s32 *const anim_0714[1] = {
    anim_0714__v0_l0,
};

const s32 anim_0715__v0_l0[] = {
    -2, 68, (((u16)16 << 0) | ((u16)0x60 << 16)), -1, 0x15198, 64, -6, 0, (((71 & 0xFF) << 0) | ((69 & 0xFF) << 8) | ((71 & 0xFF) << 16) | ((70 & 0xFF) << 24)), 1, 0,

        -4,
};

const s32 anim_0715__v1_l0[] = {
    -2, 68, (((u16)16 << 0) | ((u16)0x60 << 16)), -1, 0x151D8, 64, 1, 1,

        -4,
};

const s32 anim_0715__v2_l0[] = {
    -2, 68, (((u16)16 << 0) | ((u16)0x60 << 16)), -1, 0x15218, 64, -6, 0, (((0 & 0xFF) << 0) | ((-1 & 0xFF) << 8) | ((0 & 0xFF) << 16) | ((-1 & 0xFF) << 24)), 1, 2,

        -4,
};

const s32 anim_0715__v3_l0[] = {
    -2, 68, (((u16)16 << 0) | ((u16)0x60 << 16)), -1, 0x15258, 64, 1, 3,

        -4,
};

const s32 anim_0715__v4_l0[] = {
    -2, 68, (((u16)16 << 0) | ((u16)0x60 << 16)), -1, 0x15298, 14, 1, 4,

        -4,
};

const s32 *const anim_0715[5] = {
    anim_0715__v0_l0, anim_0715__v1_l0, anim_0715__v2_l0, anim_0715__v3_l0, anim_0715__v4_l0,
};

const s32 anim_0716__v0_l0[] = {
    -2, 125, (((u16)16 << 0) | ((u16)0x0 << 16)), -1, 0x152A6, 42, 1, 0,

        -4,
};

const s32 *const anim_0716[1] = {
    anim_0716__v0_l0,
};

const s32 anim_0717__v0_l0[] = {
    -2, 126, (((u16)16 << 0) | ((u16)0x0 << 16)), -1, 0x152D0, 56, 1, 0,

        -4,
};

const s32 anim_0717__v1_l0[] = {
    -2, 126, (((u16)16 << 0) | ((u16)0x0 << 16)), -1, 0x15308, 56, 1, 1,

        -4,
};

const s32 anim_0717__v2_l0[] = {
    -2, 126, (((u16)16 << 0) | ((u16)0x0 << 16)), -1, 0x15340, 56, 1, 2,

        -4,
};

const s32 *const anim_0717[3] = {
    anim_0717__v0_l0,
    anim_0717__v1_l0,
    anim_0717__v2_l0,
};

const s32 anim_0718__v0_l0[] = {
    -2, 68, (((u16)16 << 0) | ((u16)0x60 << 16)), -1, 0x15378, 20, 1, 0,

        -4,
};

const s32 *const anim_0718[1] = {
    anim_0718__v0_l0,
};

const s32 anim_0719__v0_l0[] = {
    -2, 68, (((u16)16 << 0) | ((u16)0x60 << 16)), -1, 0x1538C, 16, 1, 0,

        -4,
};

const s32 anim_0719__v1_l0[] = {
    -2, 68, (((u16)16 << 0) | ((u16)0x60 << 16)), -1, 0x1539C, 16, 1, 1,

        -4,
};

const s32 anim_0719__v2_l0[] = {
    -2, 68, (((u16)16 << 0) | ((u16)0x60 << 16)), -1, 0x153AC, 16, 1, 2,

        -4,
};

const s32 anim_0719__v3_l0[] = {
    -2, 68, (((u16)16 << 0) | ((u16)0x60 << 16)), -1, 0x153BC, 16, 1, 3,

        -4,
};

const s32 *const anim_0719[4] = {
    anim_0719__v0_l0,
    anim_0719__v1_l0,
    anim_0719__v2_l0,
    anim_0719__v3_l0,
};

const s32 anim_0720__v0_l0[] = {
    -2, 68, (((u16)16 << 0) | ((u16)0x60 << 16)), -1, 0x153CC, 48, 1, 0,

        -4,
};

const s32 *const anim_0720[1] = {
    anim_0720__v0_l0,
};

const s32 anim_0721__v0_l0[] = {
    -2, 68, (((u16)16 << 0) | ((u16)0x60 << 16)), -1, 0x153FC, 3, 1, 0,

        -4,
};

const s32 *const anim_0721[1] = {
    anim_0721__v0_l0,
};

const s32 anim_0722__v0_l0[] = {
    -2, 127, (((u16)16 << 0) | ((u16)0x70 << 16)), -1, 0x153FF, 80, 1, 0,

        -4,
};

const s32 anim_0722__v1_l0[] = {
    -2, 127, (((u16)16 << 0) | ((u16)0x70 << 16)), -1, 0x1544F, 80, 8, 1,

        -1, 0x1549F, 80, 3, 2,

            -1, 0x154EF, 80, 15, 3,

                -4,
};

const s32 anim_0722__v2_l0[] = {
    -2, 128, (((u16)16 << 0) | ((u16)0x80 << 16)), -1, 0x1553F, 72, 1, 4,

        -4,
};

const s32 anim_0722__v3_l0[] = {
    -2, 128, (((u16)16 << 0) | ((u16)0x80 << 16)), -1, 0x15587, 81, 4, 5,

        -1, 0x155D8, 81, 4, 6,

            -1, 0x15629, 81, 3, 7,

                -1, 0x1567A, 72, 15, 8,

                    -4,
};

const s32 anim_0722__v4_l0[] = {
    -2, 129, (((u16)16 << 0) | ((u16)0x90 << 16)), -1, 0x156C2, 70, 1, 9,

        -4,
};

const s32 anim_0722__v5_l0[] = {
    -2, 129, (((u16)16 << 0) | ((u16)0x90 << 16)), -1, 0x15708, 90, 4, 10,

        -1, 0x15762, 90, 4, 11,

            -1, 0x157BC, 90, 2, 12,

                -1, 0x15816, 80, 15, 13,

                    -4,
};

const s32 anim_0722__v6_l0[] = {
    -2, 130, (((u16)16 << 0) | ((u16)0xA0 << 16)), -1, 0x15866, 63, 1, 14,

        -4,
};

const s32 anim_0722__v7_l0[] = {
    -2, 130, (((u16)16 << 0) | ((u16)0xA0 << 16)), -1, 0x158A5, 63, 3, 15,

        -1, 0x158E4, 63, 3, 16,

            -1, 0x15923, 70, 3, 17,

                -1, 0x15969, 70, 6, 18,

                    -1, 0x159AF, 70, 4, 19,

                        -1, 0x159F5, 70, 2, 20,

                            -1, 0x15A3B, 80, 15, 21,

                                -4,
};

const s32 *const anim_0722[8] = {
    anim_0722__v0_l0, anim_0722__v1_l0, anim_0722__v2_l0, anim_0722__v3_l0,
    anim_0722__v4_l0, anim_0722__v5_l0, anim_0722__v6_l0, anim_0722__v7_l0,
};

const s32 anim_0723__v0_l0[] = {
    -2, 131, (((u16)16 << 0) | ((u16)0x0 << 16)), -1, 0x15A8B, 600, 2, 0,

        -4,
};

const s32 anim_0723__v1_l0[] = {
    -2, 132, (((u16)16 << 0) | ((u16)0x0 << 16)), -1, 0x15CE3, 600, 2, 1,

        -4,
};

const s32 anim_0723__v2_l0[] = {
    -2, 133, (((u16)16 << 0) | ((u16)0x0 << 16)), -1, 0x15F3B, 600, 2, 2,

        -4,
};

const s32 anim_0723__v3_l0[] = {
    -2, 132, (((u16)16 << 0) | ((u16)0x0 << 16)), -1, 0x16193, 600, 2, 3,

        -4,
};

const s32 *const anim_0723[4] = {
    anim_0723__v0_l0,
    anim_0723__v1_l0,
    anim_0723__v2_l0,
    anim_0723__v3_l0,
};

const s32 anim_0724__v0_l0[] = {
    -2, 134, (((u16)16 << 0) | ((u16)0x30 << 16)), 1, -1,

        -3, 5,
};

const s32 anim_0724__v1_l0[] = {
    -2, 135, (((u16)16 << 0) | ((u16)0x20 << 16)), -1, 0x163EB, 28, 1, 0,

        -4,
};

const s32 anim_0724__v2_l0[] = {
    -2, 135, (((u16)16 << 0) | ((u16)0x20 << 16)), -1, 0x16407, 30, 1, 1,

        -4,
};

const s32 anim_0724__v3_l0[] = {
    -2, 135, (((u16)16 << 0) | ((u16)0x20 << 16)), -1, 0x16425, 28, 1, 2,

        -4,
};

const s32 anim_0724__v4_l0[] = {
    -2, 135, (((u16)16 << 0) | ((u16)0x20 << 16)), -1, 0x16441, 30, 1, 3,

        -4,
};

const s32 anim_0724__v5_l0[] = {
    -2, 135, (((u16)16 << 0) | ((u16)0x20 << 16)), -1, 0x1645F, 28, 1, 4,

        -4,
};

const s32 anim_0724__v6_l0[] = {
    -2, 135, (((u16)16 << 0) | ((u16)0x20 << 16)), -1, 0x1647B, 30, 1, 5,

        -4,
};

const s32 anim_0724__v7_l0[] = {
    -2, 135, (((u16)16 << 0) | ((u16)0x20 << 16)), -1, 0x16499, 28, 1, 6,

        -4,
};

const s32 anim_0724__v8_l0[] = {
    -2, 135, (((u16)16 << 0) | ((u16)0x20 << 16)), -1, 0x164B5, 30, 1, 7,

        -4,
};

const s32 anim_0724__v9_l0[] = {
    -2, 135, (((u16)16 << 0) | ((u16)0x20 << 16)), -1, 0x164D3, 28, 1, 8,

        -4,
};

const s32 anim_0724__v10_l0[] = {
    -2, 135, (((u16)16 << 0) | ((u16)0x20 << 16)), -1, 0x164EF, 30, 1, 9,

        -4,
};

const s32 anim_0724__v11_l0[] = {
    -2, 135, (((u16)16 << 0) | ((u16)0x20 << 16)), -1, 0x1650D, 28, 1, 10,

        -4,
};

const s32 anim_0724__v12_l0[] = {
    -2, 135, (((u16)16 << 0) | ((u16)0x20 << 16)), -1, 0x16529, 30, 1, 11,

        -4,
};

const s32 anim_0724__v13_l0[] = {
    -2, 135, (((u16)16 << 0) | ((u16)0x20 << 16)), -1, 0x16547, 28, 1, 12,

        -4,
};

const s32 anim_0724__v14_l0[] = {
    -2, 135, (((u16)16 << 0) | ((u16)0x20 << 16)), -1, 0x16563, 28, 1, 13,

        -4,
};

const s32 anim_0724__v15_l0[] = {
    -2, 135, (((u16)16 << 0) | ((u16)0x20 << 16)), -1, 0x1657F, 26, 1, 14,

        -4,
};

const s32 anim_0724__v16_l0[] = {
    -2, 135, (((u16)16 << 0) | ((u16)0x20 << 16)), -1, 0x16599, 26, 1, 15,

        -4,
};

const s32 anim_0724__v17_l0[] = {
    -2, 135, (((u16)16 << 0) | ((u16)0x20 << 16)), -1, 0x165B3, 26, 1, 16,

        -4,
};

const s32 anim_0724__v18_l0[] = {
    -2, 135, (((u16)16 << 0) | ((u16)0x20 << 16)), -1, 0x165CD, 26, 1, 17,

        -4,
};

const s32 *const anim_0724[19] = {
    anim_0724__v0_l0, anim_0724__v1_l0, anim_0724__v2_l0, anim_0724__v3_l0, anim_0724__v4_l0, anim_0724__v5_l0, anim_0724__v6_l0,
    anim_0724__v7_l0, anim_0724__v8_l0, anim_0724__v9_l0, anim_0724__v10_l0, anim_0724__v11_l0, anim_0724__v12_l0, anim_0724__v13_l0,
    anim_0724__v14_l0, anim_0724__v15_l0, anim_0724__v16_l0, anim_0724__v17_l0, anim_0724__v18_l0,
};

const s32 anim_0725__v0_l0[] = {
    -2, 136, (((u16)16 << 0) | ((u16)0x70 << 16)), -1, 0x165E7, 36, 1, 0,

        -4,
};

const s32 *const anim_0725[1] = {
    anim_0725__v0_l0,
};

const s32 anim_0726__v0_l0[] = {
    -2, 137, (((u16)16 << 0) | ((u16)0x80 << 16)), -1, 0x1660B, 36, 1, 0,

        -4,
};

const s32 *const anim_0726[1] = {
    anim_0726__v0_l0,
};

const s32 anim_0727__v0_l0[] = {
    -2, 138, (((u16)16 << 0) | ((u16)0x90 << 16)), -1, 0x1662F, 36, 1, 0,

        -4,
};

const s32 *const anim_0727[1] = {
    anim_0727__v0_l0,
};

const s32 anim_0728__v0_l0[] = {
    -2, 139, (((u16)16 << 0) | ((u16)0xE0 << 16)), -1, 0x16653, 18, 1, 0,

        -4,
};

const s32 *const anim_0728[1] = {
    anim_0728__v0_l0,
};

const s32 anim_0729__v0_l0[] = {
    -2, 140, (((u16)16 << 0) | ((u16)0xD0 << 16)), -1, 0x16665, 18, 1, 0,

        -4,
};

const s32 *const anim_0729[1] = {
    anim_0729__v0_l0,
};

const s32 anim_0730__v0_l0[] = {
    -2, 117, (((u16)16 << 0) | ((u16)0xB0 << 16)), -1, 0x16677, 16, 1, 0,

        -4,
};

const s32 *const anim_0730[1] = {
    anim_0730__v0_l0,
};

const s32 anim_0731__v0_l0[] = {
    -2, 141, (((u16)16 << 0) | ((u16)0x20 << 16)), -1, 0x16687, 4, 4, 0,

        -1, 0x1668B, 4, 4, 1,

            -1, 0x1668F, 4, 4, 2,

                -1, 0x16693, 4, 4, 3,

                    -3, 23,
};

const s32 *const anim_0731[1] = {
    anim_0731__v0_l0,
};

const s32 anim_0732__v0_l0[] = {
    -2, 1, (((u16)16 << 0) | ((u16)0xE0 << 16)), -1, 0x16697, 16, 2, 0,

        -1, 0x166A7, 16, 2, 1,

            -1, 0x166B7, 16, 2, 2,

                -1, 0x166C7, 16, 2, 3,

                    -3, 23,
};

const s32 *const anim_0732[1] = {
    anim_0732__v0_l0,
};

const s32 anim_0733__v0_l0[] = {
    -2, 142, (((u16)16 << 0) | ((u16)0xE0 << 16)), -1, 0x166D7, 192, 1, 0,

        -4,
};

const s32 anim_0733__v1_l0[] = {
    -2, 142, (((u16)16 << 0) | ((u16)0xE0 << 16)), -1, 0x16797, 192, 1, 1,

        -4,
};

const s32 *const anim_0733[2] = {
    anim_0733__v0_l0,
    anim_0733__v1_l0,
};

const s32 anim_0734__v0_l0[] = {
    -2, 143, (((u16)16 << 0) | ((u16)0xE0 << 16)), -1, 0x16857, 192, 1, 0,

        -4,
};

const s32 anim_0734__v1_l0[] = {
    -2, 144, (((u16)16 << 0) | ((u16)0xE0 << 16)), -1, 0x16917, 192, 1, 1,

        -4,
};

const s32 *const anim_0734[2] = {
    anim_0734__v0_l0,
    anim_0734__v1_l0,
};

const s32 anim_0735__v0_l0[] = {
    -2, 145, (((u16)16 << 0) | ((u16)0x60 << 16)), -1, 0x169D7, 64, 2, 0,

        -1, 0x16A17, 32, 2, 1,

            -3, 13,
};

const s32 *const anim_0735[1] = {
    anim_0735__v0_l0,
};

const s32 anim_0736__v0_l0[] = {
    -2, 145, (((u16)16 << 0) | ((u16)0x60 << 16)), -1, 0x16A37, 120, 2, 0,

        -1, 0x16AAF, 120, 2, 1,

            -3, 13,
};

const s32 *const anim_0736[1] = {
    anim_0736__v0_l0,
};

const s32 anim_0737__v0_l0[] = {
    -2, 146, (((u16)256 << 0) | ((u16)0x0 << 16)), -1, 0x80000090, 192, 1, 0,

        -4,
};

const s32 anim_0737__v1_l0[] = {
    -2, 146, (((u16)256 << 0) | ((u16)0x0 << 16)), -1, 0x80000150, 192, 1, 1,

        -4,
};

const s32 anim_0737__v2_l0[] = {
    -2, 146, (((u16)256 << 0) | ((u16)0x0 << 16)), -1, 0x80000210, 192, 1, 2,

        -4,
};

const s32 anim_0737__v3_l0[] = {
    -2, 146, (((u16)256 << 0) | ((u16)0x0 << 16)), -1, 0x800002D0, 192, 1, 3,

        -4,
};

const s32 *const anim_0737[4] = {
    anim_0737__v0_l0,
    anim_0737__v1_l0,
    anim_0737__v2_l0,
    anim_0737__v3_l0,
};

const s32 anim_0738__v0_l0[] = {
    -2, 146, (((u16)64 << 0) | ((u16)0x0 << 16)), -1, 0x80000390, 225, 1, 0,

        -4,
};

const s32 anim_0738__v1_l0[] = {
    -2, 146, (((u16)64 << 0) | ((u16)0x0 << 16)), -1, 0x80000471, 182, 1, 1,

        -4,
};

const s32 anim_0738__v2_l0[] = {
    -2, 146, (((u16)64 << 0) | ((u16)0x0 << 16)), -1, 0x80000527, 192, 1, 2,

        -4,
};

const s32 anim_0738__v3_l0[] = {
    -2, 146, (((u16)64 << 0) | ((u16)0x0 << 16)), -1, 0x800005E7, 196, 1, 3,

        -4,
};

const s32 *const anim_0738[4] = {
    anim_0738__v0_l0,
    anim_0738__v1_l0,
    anim_0738__v2_l0,
    anim_0738__v3_l0,
};

const s32 anim_0739__v0_l0[] = {
    -2, 162, (((u16)16 << 0) | ((u16)0x70 << 16)), -1, 0x16B27, 72, 1, 0,

        -4,
};

const s32 anim_0739__v1_l0[] = {
    -2, 163, (((u16)16 << 0) | ((u16)0x80 << 16)), -1, 0x16B6F, 20, 1, 1,

        -4,
};

const s32 *const anim_0739[2] = {
    anim_0739__v0_l0,
    anim_0739__v1_l0,
};

const s32 anim_0740__v0_l0[] = {
    -2, 164, (((u16)16 << 0) | ((u16)0x0 << 16)), -1, 0x16B83, 56, 1, 0,

        -4,
};

const s32 anim_0740__v1_l0[] = {
    -2, 164, (((u16)16 << 0) | ((u16)0x0 << 16)), -1, 0x16BBB, 78, 1, 1,

        -4,
};

const s32 anim_0740__v2_l0[] = {
    -2, 164, (((u16)16 << 0) | ((u16)0x0 << 16)), -1, 0x16C09, 60, 1, 2,

        -4,
};

const s32 anim_0740__v3_l0[] = {
    -2, 164, (((u16)16 << 0) | ((u16)0x0 << 16)), -1, 0x16C45, 96, 1, 3,

        -4,
};

const s32 *const anim_0740[4] = {
    anim_0740__v0_l0,
    anim_0740__v1_l0,
    anim_0740__v2_l0,
    anim_0740__v3_l0,
};

const s32 anim_0741__v0_l0[] = {
    -2, 165, (((u16)16 << 0) | ((u16)0x30 << 16)), -1, 0x16CA5, 63, 1, 0,

        -4,
};

const s32 anim_0741__v1_l0[] = {
    -2, 165, (((u16)16 << 0) | ((u16)0x30 << 16)), -1, 0x16CE4, 63, 1, 1,

        -4,
};

const s32 *const anim_0741[2] = {
    anim_0741__v0_l0,
    anim_0741__v1_l0,
};

const s32 anim_0742__v0_l0[] = {
    -2, 166, (((u16)16 << 0) | ((u16)0xA0 << 16)), -1, 0x16D23, 36, 1, 0,

        -4,
};

const s32 *const anim_0742[1] = {
    anim_0742__v0_l0,
};

const s32 anim_0743__v0_l0[] = {
    -2, 167, (((u16)16 << 0) | ((u16)0xB0 << 16)), -1, 0x16D47, 36, 1, 0,

        -4,
};

const s32 *const anim_0743[1] = {
    anim_0743__v0_l0,
};

const s32 anim_0744__v0_l0[] = {
    -2, 168, (((u16)16 << 0) | ((u16)0xC0 << 16)), -1, 0x16D6B, 36, 1, 0,

        -4,
};

const s32 *const anim_0744[1] = {
    anim_0744__v0_l0,
};

const s32 anim_0745__v0_l0[] = {
    -2, 169, (((u16)16 << 0) | ((u16)0xF0 << 16)), -1, 0x16D8F, 6, 10, 0,

        -1, 0x16D95, 6, 10, 1,

            -1, 0x16D9B, 6, 10, 2,

                -1, 0x16DA1, 6, 10, 3,

                    -1, 0x16DA7, 6, 10, 4,

                        -3, 28,
};

const s32 *const anim_0745[1] = {
    anim_0745__v0_l0,
};

const s32 anim_0746__v0_l0[] = {
    -2, 6, (((u16)16 << 0) | ((u16)0x40 << 16)), -1, 0x16DAD, 8, 2, 0,

        -1, 0x16DB5, 12, 2, 1,

            -1, 0x16DC1, 12, 2, 2,

                -1, 0x16DCD, 12, 2, 3,

                    -1, 0x16DD9, 12, 2, 4,

                        -1, 0x16DE5, 12, 2, 5,

                            -1, 0x16DF1, 12, 2, 6,

                                -1, 0x16DFD, 8, 2, 7,

                                    -3, 43,
};

const s32 *const anim_0746[1] = {
    anim_0746__v0_l0,
};

const s32 anim_0747__v0_l0[] = {
    -2, 6, (((u16)16 << 0) | ((u16)0x40 << 16)), -1, 0x16E05, 20, 2, 0,

        -1, 0x16E19, 20, 2, 1,

            -1, 0x16E2D, 16, 2, 2,

                -1, 0x16E3D, 20, 2, 3,

                    -3, 23,
};

const s32 *const anim_0747[1] = {
    anim_0747__v0_l0,
};

const s32 anim_0748__v0_l0[] = {
    -1, 0x16E51, 32, -2, 6, (((u16)16 << 0) | ((u16)0x40 << 16)), 2, 0,

        2, 1,

            2, 2,

                -6, 0, (((65 & 0xFF) << 0) | ((39 & 0xFF) << 8) | ((65 & 0xFF) << 16) | ((39 & 0xFF) << 24)), 2, 3,

                    2, 4,

                        2, 5,

                            2, 6,

                                2, 7,

                                    -4,
};

const s32 *const anim_0748[1] = {
    anim_0748__v0_l0,
};

const s32 anim_0749__v0_l0[] = {
    -2, 170, (((u16)16 << 0) | ((u16)0x70 << 16)), -1, 0x16E71, 16, 1, 0,

        -1, 0x16E81, 4, 1, 1,

            -1, 0x16E85, 6, 1, 2,

                -1, 0x16E8B, 9, 1, 3,

                    -1, 0x16E94, 12, 1, 4,

                        -1, 0x16EA0, 16, 1, 5,

                            -1, 0x16EB0, 16, 1, 6,

                                -1, 0x16EC0, 16, 1, 7,

                                    -3, 43,
};

const s32 *const anim_0749[1] = {
    anim_0749__v0_l0,
};

const s32 anim_0750__v0_l0[] = {
    -2, 1, (((u16)16 << 0) | ((u16)0x50 << 16)), -1, 0x16ED0, 36, 3, 0,

        -1, 0x16EF4, 36, 3, 1,

            -1, 0x16F18, 36, 3, 2,

                -1, 0x16F3C, 36, 3, 3,

                    -1, 0x16F60, 36, 3, 4,

                        -1, 0x16F84, 36, 3, 5,

                            -3, 33,
};

const s32 *const anim_0750[1] = {
    anim_0750__v0_l0,
};

const s32 anim_0751__v0_l0[] = {
    -2, 1, (((u16)16 << 0) | ((u16)0x50 << 16)), -1, 0x16FA8, 36, 3, 0,

        -1, 0x16FCC, 36, 3, 1,

            -1, 0x16FA8, 36, 3, 0,

                -1, 0x16FCC, 36, 3, 1,

                    -1, 0x16FF0, 36, 3, 2,

                        -1, 0x17014, 36, 3, 3,

                            -1, 0x16FF0, 36, 3, 2,

                                -1, 0x17014, 36, 3, 3,

                                    -1, 0x17038, 36, 3, 4,

                                        -1, 0x1705C, 36, 3, 5,

                                            -1, 0x17038, 36, 3, 4,

                                                -1, 0x1705C, 36, 3, 5,

                                                    -1, 0x17080, 36, 3, 6,

                                                        -1, 0x170A4, 36, 3, 7,

                                                            -1, 0x17080, 36, 3, 6,

                                                                -1, 0x170A4, 36, 3, 7,

                                                                    -3, 83,
};

const s32 *const anim_0751[1] = {
    anim_0751__v0_l0,
};

const s32 anim_0752__v0_l0[] = {
    -2, 1, (((u16)16 << 0) | ((u16)0x50 << 16)), -1, 0x170C8, 36, 2, 0,

        -1, 0x170EC, 36, 2, 1,

            -1, 0x17110, 36, 2, 2,

                -1, 0x17134, 36, 2, 3,

                    -1, 0x17158, 36, 2, 4,

                        -1, 0x1717C, 36, 2, 5,

                            -3, 33,
};

const s32 anim_0752__v1_l0[] = {
    -2, 1, (((u16)16 << 0) | ((u16)0x50 << 16)), -1, 0x171A0, 6, 2, 6,

        -1, 0x171A6, 6, 2, 7,

            -1, 0x171AC, 9, 2, 8,

                -1, 0x171B5, 9, 2, 9,

                    -1, 0x171BE, 9, 2, 10,

                        -1, 0x171C7, 9, 2, 11,

                            -1, 0x171D0, 1, 2, 12,

                                -1, 0x171D1, 1, 2, 13,

                                    -1, 0x171D2, 4, 2, 14,

                                        -1, 0x171D6, 4, 2, 15,

                                            -1, 0x171DA, 4, 2, 16,

                                                -1, 0x171DE, 4, 2, 17,

                                                    -4,
};

const s32 *const anim_0752[2] = {
    anim_0752__v0_l0,
    anim_0752__v1_l0,
};

const s32 anim_0753__v0_l0[] = {
    -1, 0x171E2, 4, -2, 1, (((u16)16 << 0) | ((u16)0x50 << 16)), 12, 0,

        12, 1,

            12, 2,

                12, 3,

                    -3, 11,
};

const s32 *const anim_0753[1] = {
    anim_0753__v0_l0,
};

const s32 anim_0754__v0_l0[] = {
    -1, 0x171E6, 16, -2, 1, (((u16)16 << 0) | ((u16)0x50 << 16)), 12, 0,

        12, 1,

            12, 2,

                12, 3,

                    -3, 11,
};

const s32 *const anim_0754[1] = {
    anim_0754__v0_l0,
};

const s32 anim_0755__v0_l0[] = {
    -2, 68, (((u16)16 << 0) | ((u16)0x60 << 16)), -1, 0x171F6, 9, 3, 0,

        -1, 0x171FF, 12, 3, 1,

            -1, 0x1720B, 12, 3, 2,

                -1, 0x17217, 12, 3, 3,

                    -4,
};

const s32 *const anim_0755[1] = {
    anim_0755__v0_l0,
};

const s32 anim_0756__v0_l0[] = {
    -2, 1, (((u16)16 << 0) | ((u16)0x50 << 16)), -1, 0x17223, 2, 3, 0,

        -1, 0x17225, 8, 3, 1,

            -1, 0x1722D, 10, 3, 2,

                -1, 0x17237, 10, 3, 3,

                    -1, 0x17241, 4, 3, 4,

                        -4,
};

const s32 *const anim_0756[1] = {
    anim_0756__v0_l0,
};

const s32 anim_0757__v0_l0[] = {
    -2, 1, (((u16)16 << 0) | ((u16)0x50 << 16)), -1, 0x17245, 2, 3, 0,

        -1, 0x17247, 8, 3, 1,

            -1, 0x1724F, 8, 3, 2,

                -1, 0x17257, 5, 3, 3,

                    -1, 0x1725C, 5, 3, 4,

                        -4,
};

const s32 *const anim_0757[1] = {
    anim_0757__v0_l0,
};

const s32 anim_0758__v0_l0[] = {
    -2, 1, (((u16)16 << 0) | ((u16)0x50 << 16)), -1, 0x17261, 2, 3, 0,

        -1, 0x17263, 8, 3, 1,

            -1, 0x1726B, 8, 3, 2,

                -1, 0x17273, 4, 3, 3,

                    -1, 0x17277, 4, 3, 4,

                        -4,
};

const s32 *const anim_0758[1] = {
    anim_0758__v0_l0,
};

const s32 anim_0759__v0_l0[] = {
    -2, 171, (((u16)16 << 0) | ((u16)0x40 << 16)), -1, 0x1727B, 4, 3, 0,

        -1, 0x1727F, 4, 3, 1,

            -1, 0x17283, 4, 3, 2,

                -1, 0x17287, 4, 3, 3,

                    -1, 0x1728B, 2, 3, 4,

                        -4,
};

const s32 *const anim_0759[1] = {
    anim_0759__v0_l0,
};

const s32 anim_0760__v0_l0[] = {
    -2, 171, (((u16)16 << 0) | ((u16)0x40 << 16)), -1, 0x1728D, 2, 3, 0,

        -1, 0x1728F, 4, 3, 1,

            -1, 0x17293, 4, 3, 2,

                -1, 0x17297, 4, 3, 3,

                    -1, 0x1729B, 2, 3, 4,

                        -4,
};

const s32 *const anim_0760[1] = {
    anim_0760__v0_l0,
};

const s32 anim_0761__v0_l0[] = {
    -2, 171, (((u16)16 << 0) | ((u16)0x40 << 16)), -1, 0x1729D, 2, 3, 0,

        -1, 0x1729F, 4, 3, 1,

            -1, 0x172A3, 4, 3, 2,

                -1, 0x172A7, 4, 3, 3,

                    -1, 0x172AB, 2, 3, 4,

                        -4,
};

const s32 *const anim_0761[1] = {
    anim_0761__v0_l0,
};

const s32 anim_0762__v0_l0[] = {
    -2, 68, (((u16)16 << 0) | ((u16)0x60 << 16)), -1, 0x172AD, 6, 3, 0,

        -1, 0x172B3, 12, 3, 1,

            -1, 0x172BF, 12, 3, 2,

                -1, 0x172CB, 8, 3, 3,

                    -1, 0x172D3, 4, 3, 4,

                        -1, 0x172D7, 6, 3, 5,

                            -1, 0x172DD, 6, 3, 6,

                                -1, 0x172E3, 4, 3, 7,

                                    -4,
};

const s32 *const anim_0762[1] = {
    anim_0762__v0_l0,
};

const s32 anim_0763__v0_l0[] = {
    -2, 68, (((u16)16 << 0) | ((u16)0x60 << 16)), -1, 0x172E7, 9, 3, 0,

        -1, 0x172F0, 16, 3, 1,

            -1, 0x17300, 16, 3, 2,

                -1, 0x17310, 16, 3, 3,

                    -1, 0x17320, 16, 3, 4,

                        -4,
};

const s32 *const anim_0763[1] = {
    anim_0763__v0_l0,
};

const s32 anim_0764__v0_l0[] = {
    -2, 172, (((u16)16 << 0) | ((u16)0x40 << 16)), -1, 0x17330, 4, 3, 0,

        -1, 0x17334, 4, 3, 1,

            -1, 0x17338, 4, 3, 2,

                -1, 0x1733C, 4, 3, 3,

                    -1, 0x17340, 4, 3, 4,

                        -1, 0x17344, 1, 3, 5,

                            -4,
};

const s32 *const anim_0764[1] = {
    anim_0764__v0_l0,
};

const s32 anim_0765__v0_l0[] = {
    -2, 6, (((u16)16 << 0) | ((u16)0x40 << 16)), -1, 0x17345, 9, 3, 0,

        -1, 0x1734E, 16, 3, 1,

            -1, 0x1735E, 16, 3, 2,

                -1, 0x1736E, 16, 3, 3,

                    -1, 0x1737E, 16, 3, 4,

                        -1, 0x1738E, 16, 3, 5,

                            -1, 0x1739E, 12, 3, 6,

                                -4,
};

const s32 *const anim_0765[1] = {
    anim_0765__v0_l0,
};

const s32 anim_0766__v0_l0[] = {
    -2, 1, (((u16)16 << 0) | ((u16)0x50 << 16)), -1, 0x173AA, 4, 2, 0,

        -1, 0x173AE, 4, 2, 1,

            -1, 0x173B2, 4, 2, 2,

                -1, 0x173B6, 4, 2, 3,

                    -1, 0x173BA, 4, 2, 4,

                        -1, 0x173BE, 4, 2, 5,

                            -1, 0x173C2, 4, 2, 6,

                                -1, 0x173AA, 4, 2, 0,

                                    -4,
};

const s32 anim_0766__v1_l0[] = {
    -2, 1, (((u16)16 << 0) | ((u16)0x50 << 16)), -1, 0x173C6, 1, 2, 7,

        -1, 0x173AA, 4, 2, 0,

            -1, 0x173C7, 4, 2, 8,

                -1, 0x173CB, 4, 2, 9,

                    -1, 0x173CF, 4, 2, 10,

                        -1, 0x173D3, 4, 2, 11,

                            -1, 0x173AA, 4, 2, 0,

                                -1, 0x173C6, 1, 2, 7,

                                    -4,
};

const s32 *const anim_0766[2] = {
    anim_0766__v0_l0,
    anim_0766__v1_l0,
};

const s32 anim_0767__v0_l0[] = {
    -2, 88, (((u16)16 << 0) | ((u16)0x0 << 16)), -1, 0x173D7, 4, 3, 0,

        -1, 0x173DB, 4, 3, 1,

            -1, 0x173DF, 4, 3, 2,

                -1, 0x173E3, 4, 3, 3,

                    -1, 0x173E7, 4, 3, 4,

                        -1, 0x173EB, 4, 3, 5,

                            -1, 0x173EF, 4, 3, 6,

                                -1, 0x173F3, 4, 3, 7,

                                    -3, 43,
};

const s32 *const anim_0767[1] = {
    anim_0767__v0_l0,
};

const s32 anim_0768__v0_l0[] = {
    -2, 68, (((u16)16 << 0) | ((u16)0x60 << 16)), -1, 0x173F7, 30, 1, 0,

        -4,
};

const s32 anim_0768__v1_l0[] = {
    -2, 68, (((u16)16 << 0) | ((u16)0x60 << 16)), -1, 0x17415, 14, 1, 1,

        -4,
};

const s32 anim_0768__v2_l0[] = {
    -2, 68, (((u16)16 << 0) | ((u16)0x60 << 16)), -1, 0x17423, 10, 1, 2,

        -4,
};

const s32 anim_0768__v3_l0[] = {
    -2, 68, (((u16)16 << 0) | ((u16)0x60 << 16)), -1, 0x1742D, 14, 1, 3,

        -4,
};

const s32 anim_0768__v4_l0[] = {
    -2, 68, (((u16)16 << 0) | ((u16)0x60 << 16)), -1, 0x1743B, 10, 1, 4,

        -4,
};

const s32 anim_0768__v5_l0[] = {
    -2, 68, (((u16)16 << 0) | ((u16)0x60 << 16)), -1, 0x17445, 16, 1, 5,

        -4,
};

const s32 anim_0768__v6_l0[] = {
    -2, 68, (((u16)16 << 0) | ((u16)0x60 << 16)), -1, 0x17455, 16, 1, 6,

        -4,
};

const s32 anim_0768__v7_l0[] = {
    -2, 68, (((u16)16 << 0) | ((u16)0x60 << 16)), -1, 0x17465, 16, 1, 7,

        -4,
};

const s32 anim_0768__v8_l0[] = {
    -2, 68, (((u16)16 << 0) | ((u16)0x60 << 16)), -1, 0x17475, 6, 1, 8,

        -4,
};

const s32 anim_0768__v9_l0[] = {
    -2, 68, (((u16)16 << 0) | ((u16)0x60 << 16)), -1, 0x1747B, 8, 1, 9,

        -4,
};

const s32 anim_0768__v10_l0[] = {
    -2, 68, (((u16)16 << 0) | ((u16)0x60 << 16)), -1, 0x17483, 14, 1, 10,

        -4,
};

const s32 anim_0768__v11_l0[] = {
    -2, 68, (((u16)16 << 0) | ((u16)0x60 << 16)), -1, 0x17491, 28, 1, 11,

        -4,
};

const s32 anim_0768__v12_l0[] = {
    -2, 68, (((u16)16 << 0) | ((u16)0x60 << 16)), -1, 0x174AD, 24, 1, 12,

        -4,
};

const s32 anim_0768__v13_l0[] = {
    -2, 68, (((u16)16 << 0) | ((u16)0x60 << 16)), -1, 0x174C5, 4, 1, 13,

        -4,
};

const s32 anim_0768__v14_l0[] = {
    -2, 68, (((u16)16 << 0) | ((u16)0x60 << 16)), -1, 0x174C9, 6, 1, 14,

        -4,
};

const s32 anim_0768__v15_l0[] = {
    -2, 68, (((u16)16 << 0) | ((u16)0x60 << 16)), -1, 0x174CF, 16, 1, 15,

        -4,
};

const s32 anim_0768__v16_l0[] = {
    -2, 68, (((u16)16 << 0) | ((u16)0x60 << 16)), -1, 0x174DF, 12, 1, 16,

        -4,
};

const s32 anim_0768__v17_l0[] = {
    -2, 68, (((u16)16 << 0) | ((u16)0x60 << 16)), -1, 0x174EB, 14, 1, 17,

        -4,
};

const s32 anim_0768__v18_l0[] = {
    -2, 68, (((u16)16 << 0) | ((u16)0x60 << 16)), -1, 0x174F9, 18, 1, 18,

        -4,
};

const s32 anim_0768__v19_l0[] = {
    -2, 68, (((u16)16 << 0) | ((u16)0x60 << 16)), -1, 0x1750B, 12, 1, 19,

        -4,
};

const s32 anim_0768__v20_l0[] = {
    -2, 68, (((u16)16 << 0) | ((u16)0x60 << 16)), -1, 0x17517, 6, 1, 20,

        -4,
};

const s32 *const anim_0768[21] = {
    anim_0768__v0_l0, anim_0768__v1_l0, anim_0768__v2_l0, anim_0768__v3_l0, anim_0768__v4_l0, anim_0768__v5_l0, anim_0768__v6_l0,
    anim_0768__v7_l0, anim_0768__v8_l0, anim_0768__v9_l0, anim_0768__v10_l0, anim_0768__v11_l0, anim_0768__v12_l0, anim_0768__v13_l0,
    anim_0768__v14_l0, anim_0768__v15_l0, anim_0768__v16_l0, anim_0768__v17_l0, anim_0768__v18_l0, anim_0768__v19_l0, anim_0768__v20_l0,
};

const s32 anim_0769__v0_l0[] = {
    -2, 173, (((u16)16 << 0) | ((u16)0x0 << 16)), -1, 0x1751D, 80, 1, 0,

        -4,
};

const s32 anim_0769__v1_l0[] = {
    -2, 174, (((u16)16 << 0) | ((u16)0x40 << 16)), -1, 0x1756D, 90, 1, 1,

        -4,
};

const s32 anim_0769__v2_l0[] = {
    -2, 175, (((u16)16 << 0) | ((u16)0x50 << 16)), -1, 0x175C7, 100, 1, 2,

        -4,
};

const s32 anim_0769__v3_l0[] = {
    -2, 176, (((u16)16 << 0) | ((u16)0x30 << 16)), -1, 0x1762B, 80, 1, 3,

        -4,
};

const s32 *const anim_0769[4] = {
    anim_0769__v0_l0,
    anim_0769__v1_l0,
    anim_0769__v2_l0,
    anim_0769__v3_l0,
};

const s32 anim_0770__v0_l0[] = {
    -2, 177, (((u16)16 << 0) | ((u16)0xD0 << 16)), -1, 0x1767B, 12, 1, 0,

        -4,
};

const s32 anim_0770__v1_l0[] = {
    -2, 177, (((u16)16 << 0) | ((u16)0xD0 << 16)), -1, 0x17687, 16, 1, 1,

        -4,
};

const s32 anim_0770__v2_l0[] = {
    -2, 177, (((u16)16 << 0) | ((u16)0xD0 << 16)), -1, 0x17697, 12, 1, 2,

        -4,
};

const s32 anim_0770__v3_l0[] = {
    -2, 177, (((u16)16 << 0) | ((u16)0xD0 << 16)), -1, 0x176A3, 8, 1, 3,

        -4,
};

const s32 anim_0770__v4_l0[] = {
    -2, 177, (((u16)16 << 0) | ((u16)0xD0 << 16)), -1, 0x176AB, 12, 1, 4,

        -4,
};

const s32 anim_0770__v5_l0[] = {
    -2, 177, (((u16)16 << 0) | ((u16)0xD0 << 16)), -1, 0x176B7, 30, 1, 5,

        -4,
};

const s32 *const anim_0770[6] = {
    anim_0770__v0_l0, anim_0770__v1_l0, anim_0770__v2_l0, anim_0770__v3_l0, anim_0770__v4_l0, anim_0770__v5_l0,
};

const s32 anim_0771__v0_l0[] = {
    -2, 177, (((u16)16 << 0) | ((u16)0xD0 << 16)), -1, 0x176D5, 12, 1, 0,

        -4,
};

const s32 anim_0771__v1_l0[] = {
    -2, 177, (((u16)16 << 0) | ((u16)0xD0 << 16)), -1, 0x176E1, 16, 1, 1,

        -4,
};

const s32 anim_0771__v2_l0[] = {
    -2, 177, (((u16)16 << 0) | ((u16)0xD0 << 16)), -1, 0x176F1, 8, 1, 2,

        -4,
};

const s32 anim_0771__v3_l0[] = {
    -2, 177, (((u16)16 << 0) | ((u16)0xD0 << 16)), -1, 0x176F9, 12, 1, 3,

        -4,
};

const s32 anim_0771__v4_l0[] = {
    -2, 177, (((u16)16 << 0) | ((u16)0xD0 << 16)), -1, 0x17705, 16, 1, 4,

        -4,
};

const s32 anim_0771__v5_l0[] = {
    -2, 177, (((u16)16 << 0) | ((u16)0xD0 << 16)), -1, 0x17715, 30, 1, 5,

        -4,
};

const s32 *const anim_0771[6] = {
    anim_0771__v0_l0, anim_0771__v1_l0, anim_0771__v2_l0, anim_0771__v3_l0, anim_0771__v4_l0, anim_0771__v5_l0,
};

const s32 anim_0772__v0_l0[] = {
    -2, 177, (((u16)16 << 0) | ((u16)0xD0 << 16)), -1, 0x17733, 8, 1, 0,

        -4,
};

const s32 anim_0772__v1_l0[] = {
    -2, 177, (((u16)16 << 0) | ((u16)0xD0 << 16)), -1, 0x1773B, 8, 1, 1,

        -4,
};

const s32 anim_0772__v2_l0[] = {
    -2, 177, (((u16)16 << 0) | ((u16)0xD0 << 16)), -1, 0x17743, 8, 1, 2,

        -4,
};

const s32 anim_0772__v3_l0[] = {
    -2, 177, (((u16)16 << 0) | ((u16)0xD0 << 16)), -1, 0x1774B, 12, 1, 3,

        -4,
};

const s32 anim_0772__v4_l0[] = {
    -2, 177, (((u16)16 << 0) | ((u16)0xD0 << 16)), -1, 0x17757, 12, 1, 4,

        -4,
};

const s32 anim_0772__v5_l0[] = {
    -2, 177, (((u16)16 << 0) | ((u16)0xD0 << 16)), -1, 0x17763, 12, 1, 5,

        -4,
};

const s32 anim_0772__v6_l0[] = {
    -2, 177, (((u16)16 << 0) | ((u16)0xD0 << 16)), -1, 0x1776F, 8, 1, 6,

        -4,
};

const s32 anim_0772__v7_l0[] = {
    -2, 177, (((u16)16 << 0) | ((u16)0xD0 << 16)), -1, 0x17777, 8, 1, 7,

        -4,
};

const s32 anim_0772__v8_l0[] = {
    -2, 177, (((u16)16 << 0) | ((u16)0xD0 << 16)), -1, 0x1777F, 30, 1, 8,

        -4,
};

const s32 *const anim_0772[9] = {
    anim_0772__v0_l0, anim_0772__v1_l0, anim_0772__v2_l0, anim_0772__v3_l0, anim_0772__v4_l0,
    anim_0772__v5_l0, anim_0772__v6_l0, anim_0772__v7_l0, anim_0772__v8_l0,
};

const s32 anim_0773__v0_l0[] = {
    -2, 177, (((u16)16 << 0) | ((u16)0xD0 << 16)), -1, 0x1779D, 20, 1, 0,

        -4,
};

const s32 anim_0773__v1_l0[] = {
    -2, 177, (((u16)16 << 0) | ((u16)0xD0 << 16)), -1, 0x177B1, 20, 1, 1,

        -4,
};

const s32 anim_0773__v2_l0[] = {
    -2, 177, (((u16)16 << 0) | ((u16)0xD0 << 16)), -1, 0x177C5, 20, 1, 2,

        -4,
};

const s32 anim_0773__v3_l0[] = {
    -2, 177, (((u16)16 << 0) | ((u16)0xD0 << 16)), -1, 0x177D9, 30, 1, 3,

        -4,
};

const s32 *const anim_0773[4] = {
    anim_0773__v0_l0,
    anim_0773__v1_l0,
    anim_0773__v2_l0,
    anim_0773__v3_l0,
};

const s32 anim_0774__v0_l0[] = {
    -2, 163, (((u16)16 << 0) | ((u16)0x80 << 16)), -1, 0x177F7, 30, 6, 0,

        -1, 0x17815, 30, 6, 1,

            -1, 0x17833, 30, 6, 2,

                -1, 0x17851, 30, 6, 3,

                    -3, 23,
};

const s32 *const anim_0774[1] = {
    anim_0774__v0_l0,
};

const s32 anim_0775__v0_l0[] = {
    -2, 1, (((u16)16 << 0) | ((u16)0x50 << 16)), -1, 0x1786F, 4, 3, 0,

        -1, 0x17873, 4, 3, 1,

            -1, 0x17877, 4, 3, 2,

                -1, 0x1787B, 4, 3, 3,

                    -1, 0x1787F, 4, 3, 4,

                        -1, 0x17883, 4, 3, 5,

                            -1, 0x17887, 4, 3, 6,

                                -1, 0x1786F, 4, 3, 0,

                                    -4,
};

const s32 anim_0775__v1_l0[] = {
    -2, 1, (((u16)16 << 0) | ((u16)0x50 << 16)), -1, 0x1788B, 1, 3, 7,

        -1, 0x1786F, 4, 3, 0,

            -1, 0x1788C, 4, 3, 8,

                -1, 0x17877, 4, 3, 2,

                    -1, 0x17890, 4, 3, 9,

                        -1, 0x17894, 4, 3, 10,

                            -1, 0x1786F, 4, 3, 0,

                                -1, 0x1788B, 1, 3, 7,

                                    -4,
};

const s32 *const anim_0775[2] = {
    anim_0775__v0_l0,
    anim_0775__v1_l0,
};

const s32 anim_0776__v0_l0[] = {
    -2, 157, (((u16)16 << 0) | ((u16)0xB0 << 16)), -1, 0x800006AB, 15, 1, 0,

        -4,
};

const s32 *const anim_0776[1] = {
    anim_0776__v0_l0,
};

const s32 anim_0777__v0_l0[] = {
    12, -1,

        -2, 1, (((u16)16 << 0) | ((u16)0x50 << 16)), -1, 0x17898, 12, 3, 0,

            -1, 0x178A4, 15, 4, 1,

                -1, 0x178B3, 12, 3, 2,

                    -1, 0x178BF, 9, 2, 3,

                        -4,
};

const s32 *const anim_0777[1] = {
    anim_0777__v0_l0,
};

const s32 anim_0778__v0_l0[] = {
    -2, 68, (((u16)16 << 0) | ((u16)0x60 << 16)), -1, 0x178C8, 46, 1, 0,

        -4,
};

const s32 anim_0778__v1_l0[] = {
    -2, 178, (((u16)16 << 0) | ((u16)0x40 << 16)), -1, 0x178F6, 20, 1, 1,

        -4,
};

const s32 anim_0778__v2_l0[] = {
    -2, 179, (((u16)16 << 0) | ((u16)0x30 << 16)), -1, 0x1790A, 16, 1, 2,

        -4,
};

const s32 anim_0778__v3_l0[] = {
    -2, 179, (((u16)16 << 0) | ((u16)0x30 << 16)), -1, 0x1791A, 20, 1, 3,

        -4,
};

const s32 anim_0778__v4_l0[] = {
    -2, 179, (((u16)16 << 0) | ((u16)0x30 << 16)), -1, 0x1792E, 16, 1, 4,

        -4,
};

const s32 anim_0778__v5_l0[] = {
    -2, 179, (((u16)16 << 0) | ((u16)0x30 << 16)), -1, 0x1793E, 32, 1, 5,

        -4,
};

const s32 *const anim_0778[6] = {
    anim_0778__v0_l0, anim_0778__v1_l0, anim_0778__v2_l0, anim_0778__v3_l0, anim_0778__v4_l0, anim_0778__v5_l0,
};

const s32 anim_0779__v0_l0[] = {
    -2, 68, (((u16)16 << 0) | ((u16)0x60 << 16)), -1, 0x1795E, 28, 1, 0,

        -4,
};

const s32 anim_0779__v1_l0[] = {
    -2, 178, (((u16)16 << 0) | ((u16)0x40 << 16)), -1, 0x1797A, 28, 1, 1,

        -4,
};

const s32 anim_0779__v2_l0[] = {
    -2, 179, (((u16)16 << 0) | ((u16)0x30 << 16)), -1, 0x17996, 8, 1, 2,

        -4,
};

const s32 anim_0779__v3_l0[] = {
    -2, 179, (((u16)16 << 0) | ((u16)0x30 << 16)), -1, 0x1799E, 28, 1, 3,

        -4,
};

const s32 anim_0779__v4_l0[] = {
    -2, 179, (((u16)16 << 0) | ((u16)0x30 << 16)), -1, 0x179BA, 20, 1, 4,

        -4,
};

const s32 anim_0779__v5_l0[] = {
    -2, 179, (((u16)16 << 0) | ((u16)0x30 << 16)), -1, 0x179CE, 40, 1, 5,

        -4,
};

const s32 *const anim_0779[6] = {
    anim_0779__v0_l0, anim_0779__v1_l0, anim_0779__v2_l0, anim_0779__v3_l0, anim_0779__v4_l0, anim_0779__v5_l0,
};

const s32 anim_0780__v0_l0[] = {
    -2, 179, (((u16)16 << 0) | ((u16)0x30 << 16)), -1, 0x179F6, 90, 1, 0,

        -4,
};

const s32 anim_0780__v1_l0[] = {
    -2, 179, (((u16)16 << 0) | ((u16)0x30 << 16)), -1, 0x17A50, 90, 1, 1,

        -4,
};

const s32 *const anim_0780[2] = {
    anim_0780__v0_l0,
    anim_0780__v1_l0,
};

const s32 anim_0781__v0_l0[] = {
    -2, 68, (((u16)16 << 0) | ((u16)0x60 << 16)), -1, 0x17AAA, 4, 60, 0,

        -4,
};

const s32 anim_0781__v1_l0[] = {
    -2, 68, (((u16)16 << 0) | ((u16)0x60 << 16)), -1, 0x17AAE, 4, 60, 1,

        -4,
};

const s32 anim_0781__v2_l0[] = {
    -2, 68, (((u16)16 << 0) | ((u16)0x60 << 16)), -1, 0x17AB2, 4, 60, 2,

        -4,
};

const s32 anim_0781__v3_l0[] = {
    -2, 68, (((u16)16 << 0) | ((u16)0x60 << 16)), -1, 0x17AB6, 4, 60, 3,

        -4,
};

const s32 anim_0781__v4_l0[] = {
    -2, 68, (((u16)16 << 0) | ((u16)0x60 << 16)), -1, 0x17ABA, 4, 60, 4,

        -4,
};

const s32 anim_0781__v5_l0[] = {
    -2, 68, (((u16)16 << 0) | ((u16)0x60 << 16)), -1, 0x17ABE, 4, 60, 5,

        -4,
};

const s32 *const anim_0781[6] = {
    anim_0781__v0_l0, anim_0781__v1_l0, anim_0781__v2_l0, anim_0781__v3_l0, anim_0781__v4_l0, anim_0781__v5_l0,
};

const s32 anim_0782__v0_l0[] = {
    -2, 1, (((u16)16 << 0) | ((u16)0x50 << 16)), -1, 0x17AC2, 4, 8, 0,

        -1, 0x17AC6, 8, 8, 1,

            -1, 0x17ACE, 8, 8, 2,

                -1, 0x17AD6, 8, 8, 3,

                    -3, 23,
};

const s32 *const anim_0782[1] = {
    anim_0782__v0_l0,
};

const s32 anim_0783__v0_l0[] = {
    -2, 179, (((u16)16 << 0) | ((u16)0x0 << 16)), -1, 0x17ADE, 28, 1, 0,

        -4,
};

const s32 *const anim_0783[1] = {
    anim_0783__v0_l0,
};

const s32 anim_0784__v0_l0[] = {
    -2, 180, (((u16)16 << 0) | ((u16)0x0 << 16)), -1, 0x17AFA, 100, 1, 0,

        -4,
};

const s32 *const anim_0784[1] = {
    anim_0784__v0_l0,
};

const s32 anim_0785__v0_l0[] = {
    -2, 68, (((u16)16 << 0) | ((u16)0xF0 << 16)), -1, 0x17B5E, 69, 1, 0,

        -4,
};

const s32 anim_0785__v1_l0[] = {
    -2, 68, (((u16)16 << 0) | ((u16)0xF0 << 16)), -1, 0x17BA3, 39, 1, 1,

        -4,
};

const s32 anim_0785__v2_l0[] = {
    -2, 68, (((u16)16 << 0) | ((u16)0xF0 << 16)), -1, 0x17BCA, 51, 1, 2,

        -4,
};

const s32 *const anim_0785[3] = {
    anim_0785__v0_l0,
    anim_0785__v1_l0,
    anim_0785__v2_l0,
};

const s32 anim_0786__v0_l0[] = {
    -2, 179, (((u16)16 << 0) | ((u16)0x0 << 16)), -1, 0x17BFD, 20, 1, 0,

        -4,
};

const s32 *const anim_0786[1] = {
    anim_0786__v0_l0,
};

const s32 anim_0787__v0_l0[] = {
    -2, 180, (((u16)16 << 0) | ((u16)0x0 << 16)), -1, 0x17C11, 46, 1, 0,

        -4,
};

const s32 *const anim_0787[1] = {
    anim_0787__v0_l0,
};

const s32 anim_0788__v0_l0[] = {
    -2, 32, (((u16)16 << 0) | ((u16)0xD0 << 16)), -1, 0x17C3F, 4, 3, 0,

        -1, 0x17C43, 4, 3, 1,

            -1, 0x17C47, 4, 3, 2,

                -3, 18,
};

const s32 *const anim_0788[1] = {
    anim_0788__v0_l0,
};

const s32 anim_0789__v0_l0[] = {
    -2, 32, (((u16)16 << 0) | ((u16)0xD0 << 16)), -1, 0x17C4B, 4, 3, 0,

        -1, 0x17C4F, 4, 3, 1,

            -1, 0x17C53, 4, 3, 2,

                -3, 18,
};

const s32 *const anim_0789[1] = {
    anim_0789__v0_l0,
};

const s32 anim_0790__v0_l0[] = {
    -2, 181, (((u16)16 << 0) | ((u16)0xC0 << 16)), -1, 0x17C57, 10, 1, 0,

        -4,
};

const s32 *const anim_0790[1] = {
    anim_0790__v0_l0,
};

const s32 anim_0791__v0_l0[] = {
    -2, 181, (((u16)16 << 0) | ((u16)0xC0 << 16)), -1, 0x17C61, 21, 1, 0,

        -4,
};

const s32 *const anim_0791[1] = {
    anim_0791__v0_l0,
};

const s32 anim_0792__v0_l0[] = {
    -2, 182, (((u16)16 << 0) | ((u16)0xC0 << 16)), -1, 0x17C76, 30, 1, 0,

        -4,
};

const s32 *const anim_0792[1] = {
    anim_0792__v0_l0,
};

const s32 anim_0793__v0_l0[] = {
    -2, 181, (((u16)16 << 0) | ((u16)0xC0 << 16)), -1, 0x17C94, 80, 1, 0,

        -4,
};

const s32 *const anim_0793[1] = {
    anim_0793__v0_l0,
};

const s32 anim_0794__v0_l0[] = {
    -2, 1, (((u16)16 << 0) | ((u16)0x50 << 16)), -1, 0x17CE4, 8, -6, 0, (((1 & 0xFF) << 0) | ((-18 & 0xFF) << 8) | ((1 & 0xFF) << 16) | ((-18 & 0xFF) << 24)), 5, 0,

        -1, 0x17CEC, 8, -6, 0, (((1 & 0xFF) << 0) | ((-18 & 0xFF) << 8) | ((1 & 0xFF) << 16) | ((-18 & 0xFF) << 24)), 5, 1,

            -1, 0x17CF4, 8, -6, 0, (((1 & 0xFF) << 0) | ((-18 & 0xFF) << 8) | ((1 & 0xFF) << 16) | ((-18 & 0xFF) << 24)), 5, 2,

                -1, 0x17CFC, 8, -6, 0, (((1 & 0xFF) << 0) | ((-18 & 0xFF) << 8) | ((1 & 0xFF) << 16) | ((-18 & 0xFF) << 24)), 5, 3,

                    -1, 0x17D04, 6, -6, 0, (((1 & 0xFF) << 0) | ((-18 & 0xFF) << 8) | ((1 & 0xFF) << 16) | ((-18 & 0xFF) << 24)), 5, 4,

                        -1, 0x17D0A, 8, -6, 0, (((1 & 0xFF) << 0) | ((-18 & 0xFF) << 8) | ((1 & 0xFF) << 16) | ((-18 & 0xFF) << 24)), 5, 5,

                            -3, 51,
};

const s32 *const anim_0794[1] = {
    anim_0794__v0_l0,
};

const s32 anim_0795__v0_l0[] = {
    -1, 0x17D12, 16, -2, 68, (((u16)16 << 0) | ((u16)0x60 << 16)), -6, 0, (((-12 & 0xFF) << 0) | ((-12 & 0xFF) << 8) | ((12 & 0xFF) << 16) | ((12 & 0xFF) << 24)), 6, 0,

        6, 1,

            6, 2,

                6, 3,

                    -3, 14,
};

const s32 *const anim_0795[1] = {
    anim_0795__v0_l0,
};

const s32 anim_0796__v0_l0[] = {
    -1, 0x17D22, 16, -2, 68, (((u16)16 << 0) | ((u16)0x60 << 16)), 4, 0,

        4, 1,

            4, 2,

                4, 3,

                    -4,
};

const s32 *const anim_0796[1] = {
    anim_0796__v0_l0,
};

const s32 anim_0797__v0_l0[] = {
    -2, 183, (((u16)16 << 0) | ((u16)0x60 << 16)), -1, 0x17D32, 64, -6, 0, (((-10 & 0xFF) << 0) | ((-10 & 0xFF) << 8) | ((10 & 0xFF) << 16) | ((10 & 0xFF) << 24)), 2, 0,

        -1, 0x17D72, 64, 2, 1,

            -1, 0x17DB2, 64, 2, 2,

                -1, 0x17DF2, 64, 2, 3,

                    -1, 0x17E32, 64, 2, 4,

                        -1, 0x17E72, 64, 2, 5,

                            -1, 0x17EB2, 64, 2, 6,

                                -3, 41,
};

const s32 *const anim_0797[1] = {
    anim_0797__v0_l0,
};

const s32 anim_0798__v0_l0[] = {
    -1, 0x17EF2, 24, -2, 68, (((u16)16 << 0) | ((u16)0x60 << 16)), 2, 0,

        2, 1,

            2, 2,

                2, 3,

                    2, 4,

                        2, 5,

                            -4,
};

const s32 *const anim_0798[1] = {
    anim_0798__v0_l0,
};

const s32 anim_0799__v0_l0[] = {
    -1, 0x17F0A, 64, -2, 33, (((u16)16 << 0) | ((u16)0x70 << 16)), -6, 0, (((-9 & 0xFF) << 0) | ((-9 & 0xFF) << 8) | ((10 & 0xFF) << 16) | ((10 & 0xFF) << 24)), 2, 0,

        2, 1,

            2, 2,

                2, 3,

                    -3, 14,
};

const s32 anim_0799__v1_l0[] = {
    -1, 0x17F4A, 64, -2, 33, (((u16)16 << 0) | ((u16)0x70 << 16)), -6, 0, (((-9 & 0xFF) << 0) | ((-9 & 0xFF) << 8) | ((10 & 0xFF) << 16) | ((10 & 0xFF) << 24)), 2, 4,

        2, 5,

            2, 6,

                2, 7,

                    -3, 14,
};

const s32 anim_0799__v2_l0[] = {
    -1, 0x17F8A, 64, -2, 33, (((u16)16 << 0) | ((u16)0x70 << 16)), -6, 0, (((-9 & 0xFF) << 0) | ((-9 & 0xFF) << 8) | ((10 & 0xFF) << 16) | ((10 & 0xFF) << 24)), 2, 8,

        2, 9,

            2, 10,

                2, 11,

                    -3, 14,
};

const s32 anim_0799__v3_l0[] = {
    -1, 0x17FCA, 64, -2, 33, (((u16)16 << 0) | ((u16)0x70 << 16)), -6, 0, (((-9 & 0xFF) << 0) | ((-9 & 0xFF) << 8) | ((10 & 0xFF) << 16) | ((10 & 0xFF) << 24)), 2, 12,

        2, 13,

            2, 14,

                2, 15,

                    -3, 14,
};

const s32 anim_0799__v4_l0[] = {
    -1, 0x1800A, 64, -2, 33, (((u16)16 << 0) | ((u16)0x70 << 16)), -6, 0, (((-9 & 0xFF) << 0) | ((-9 & 0xFF) << 8) | ((10 & 0xFF) << 16) | ((10 & 0xFF) << 24)), 2, 16,

        2, 17,

            2, 18,

                2, 19,

                    -3, 14,
};

const s32 anim_0799__v5_l0[] = {
    -1, 0x1804A, 64, -2, 33, (((u16)16 << 0) | ((u16)0x70 << 16)), -6, 0, (((-9 & 0xFF) << 0) | ((-9 & 0xFF) << 8) | ((10 & 0xFF) << 16) | ((10 & 0xFF) << 24)), 2, 20,

        2, 21,

            2, 22,

                2, 23,

                    -3, 14,
};

const s32 *const anim_0799[6] = {
    anim_0799__v0_l0, anim_0799__v1_l0, anim_0799__v2_l0, anim_0799__v3_l0, anim_0799__v4_l0, anim_0799__v5_l0,
};

const s32 anim_0800__v0_l0[] = {
    -1, 0x1808A, 160, -2, 116, (((u16)16 << 0) | ((u16)0xF0 << 16)), -6, 0, (((-15 & 0xFF) << 0) | ((-15 & 0xFF) << 8) | ((14 & 0xFF) << 16) | ((15 & 0xFF) << 24)), 3, 0,

        3, 1,

            3, 2,

                3, 3,

                    3, 4,

                        3, 5,

                            3, 6,

                                3, 7,

                                    3, 8,

                                        3, 9,

                                            -3, 26,
};

const s32 *const anim_0800[1] = {
    anim_0800__v0_l0,
};

const s32 anim_0801__v0_l0[] = {
    -1, 0x1812A, 32, -2, 33, (((u16)16 << 0) | ((u16)0x70 << 16)), -6, 0, (((-7 & 0xFF) << 0) | ((-7 & 0xFF) << 8) | ((7 & 0xFF) << 16) | ((7 & 0xFF) << 24)), 2, 0,

        2, 1,

            -3, 10,
};

const s32 *const anim_0801[1] = {
    anim_0801__v0_l0,
};

const s32 anim_0802__v0_l0[] = {
    -1, 0x1814A, 80, -2, 33, (((u16)16 << 0) | ((u16)0x70 << 16)), 4, 0,

        4, 1,

            4, 2,

                4, 3,

                    4, 4,

                        -4,
};

const s32 *const anim_0802[1] = {
    anim_0802__v0_l0,
};

const s32 anim_0805__v0_l0[] = {
    -2, 0, (((u16)16 << 0) | ((u16)0x70 << 16)), -1, 0x1819A, 9, 3, 0,

        -1, 0x181A3, 9, 3, 1,

            -3, 13,
};

const s32 anim_0805__v1_l0[] = {
    -2, 3, (((u16)16 << 0) | ((u16)0x80 << 16)), -1, 0x181AC, 9, 3, 2,

        -1, 0x181B5, 9, 3, 3,

            -3, 13,
};

const s32 *const anim_0805[2] = {
    anim_0805__v0_l0,
    anim_0805__v1_l0,
};

const s32 anim_0806__v0_l0[] = {
    -2, 184, (((u16)16 << 0) | ((u16)0x50 << 16)), -1, 0x181BE, 6, 1, 0,

        -4,
};

const s32 anim_0806__v1_l0[] = {
    -2, 184, (((u16)16 << 0) | ((u16)0x50 << 16)), -1, 0x181C4, 6, 1, 1,

        -4,
};

const s32 anim_0806__v2_l0[] = {
    -2, 184, (((u16)16 << 0) | ((u16)0x60 << 16)), -1, 0x181BE, 6, 1, 0,

        -4,
};

const s32 anim_0806__v3_l0[] = {
    -2, 184, (((u16)16 << 0) | ((u16)0x60 << 16)), -1, 0x181C4, 6, 1, 1,

        -4,
};

const s32 anim_0806__v4_l0[] = {
    -2, 184, (((u16)16 << 0) | ((u16)0x70 << 16)), -1, 0x181BE, 6, 1, 0,

        -4,
};

const s32 anim_0806__v5_l0[] = {
    -2, 184, (((u16)16 << 0) | ((u16)0x70 << 16)), -1, 0x181C4, 6, 1, 1,

        -4,
};

const s32 anim_0806__v6_l0[] = {
    -2, 184, (((u16)16 << 0) | ((u16)0x80 << 16)), -1, 0x181BE, 6, 1, 0,

        -4,
};

const s32 anim_0806__v7_l0[] = {
    -2, 184, (((u16)16 << 0) | ((u16)0x70 << 16)), -1, 0x181CA, 6, 1, 2,

        -4,
};

const s32 *const anim_0806[8] = {
    anim_0806__v0_l0, anim_0806__v1_l0, anim_0806__v2_l0, anim_0806__v3_l0,
    anim_0806__v4_l0, anim_0806__v5_l0, anim_0806__v6_l0, anim_0806__v7_l0,
};

const s32 anim_0807__v0_l0[] = {
    -2, 185, (((u16)16 << 0) | ((u16)0x20 << 16)), -1, 0x181D0, 20, 1, 0,

        -4,
};

const s32 anim_0807__v1_l0[] = {
    -2, 185, (((u16)16 << 0) | ((u16)0x20 << 16)), -1, 0x181E4, 22, 1, 1,

        -4,
};

const s32 anim_0807__v2_l0[] = {
    -2, 185, (((u16)16 << 0) | ((u16)0x20 << 16)), -1, 0x181FA, 22, 1, 2,

        -4,
};

const s32 anim_0807__v3_l0[] = {
    -2, 185, (((u16)16 << 0) | ((u16)0x20 << 16)), -1, 0x18210, 16, 1, 3,

        -4,
};

const s32 anim_0807__v4_l0[] = {
    -2, 185, (((u16)16 << 0) | ((u16)0x20 << 16)), -1, 0x18220, 4, 1, 4,

        -4,
};

const s32 anim_0807__v5_l0[] = {
    -2, 185, (((u16)16 << 0) | ((u16)0x20 << 16)), -1, 0x18224, 4, 1, 5,

        -4,
};

const s32 anim_0807__v6_l0[] = {
    -2, 185, (((u16)16 << 0) | ((u16)0x20 << 16)), -1, 0x18228, 4, 1, 6,

        -4,
};

const s32 anim_0807__v7_l0[] = {
    -2, 185, (((u16)16 << 0) | ((u16)0x20 << 16)), -1, 0x1822C, 4, 1, 7,

        -4,
};

const s32 anim_0807__v8_l0[] = {
    -2, 185, (((u16)16 << 0) | ((u16)0x20 << 16)), -1, 0x18230, 4, 1, 8,

        -4,
};

const s32 *const anim_0807[9] = {
    anim_0807__v0_l0, anim_0807__v1_l0, anim_0807__v2_l0, anim_0807__v3_l0, anim_0807__v4_l0,
    anim_0807__v5_l0, anim_0807__v6_l0, anim_0807__v7_l0, anim_0807__v8_l0,
};

const s32 anim_0808__v0_l0[] = {
    -2, 186, (((u16)16 << 0) | ((u16)0x60 << 16)), -1, 0x18234, 10, 1, 0,

        -4,
};

const s32 anim_0808__v1_l0[] = {
    -2, 186, (((u16)16 << 0) | ((u16)0x60 << 16)), -1, 0x1823E, 21, 1, 1,

        -4,
};

const s32 anim_0808__v2_l0[] = {
    -2, 186, (((u16)16 << 0) | ((u16)0x60 << 16)), -1, 0x18253, 51, 1, 2,

        -4,
};

const s32 anim_0808__v3_l0[] = {
    -2, 186, (((u16)16 << 0) | ((u16)0x60 << 16)), -1, 0x18286, 38, 1, 3,

        -4,
};

const s32 anim_0808__v4_l0[] = {
    -2, 186, (((u16)16 << 0) | ((u16)0x60 << 16)), -1, 0x182AC, 84, 1, 4,

        -4,
};

const s32 *const anim_0808[5] = {
    anim_0808__v0_l0, anim_0808__v1_l0, anim_0808__v2_l0, anim_0808__v3_l0, anim_0808__v4_l0,
};

const s32 anim_0809__v0_l0[] = {
    -2, 187, (((u16)16 << 0) | ((u16)0x60 << 16)), -1, 0x18300, 96, 1, 0,

        -4,
};

const s32 *const anim_0809[1] = {
    anim_0809__v0_l0,
};

const s32 anim_0810__v0_l0[] = {
    -2, 35, (((u16)16 << 0) | ((u16)0x90 << 16)), -1, 0x18360, 40, 1, 0,

        -4,
};

const s32 anim_0810__v1_l0[] = {
    -2, 35, (((u16)16 << 0) | ((u16)0x90 << 16)), -1, 0x18388, 64, 1, 1,

        -4,
};

const s32 *const anim_0810[2] = {
    anim_0810__v0_l0,
    anim_0810__v1_l0,
};

const s32 anim_0811__v0_l0[] = {
    -2, 179, (((u16)16 << 0) | ((u16)0x0 << 16)), -1, 0x183C8, 80, 1, 0,

        -4,
};

const s32 *const anim_0811[1] = {
    anim_0811__v0_l0,
};

const s32 anim_0812__v0_l0[] = {
    -2, 188, (((u16)16 << 0) | ((u16)0xC0 << 16)), -1, 0x18418, 38, 1, 0,

        -4,
};

const s32 anim_0812__v1_l0[] = {
    -2, 188, (((u16)16 << 0) | ((u16)0xC0 << 16)), -1, 0x1843E, 30, 1, 1,

        -4,
};

const s32 anim_0812__v2_l0[] = {
    -2, 188, (((u16)16 << 0) | ((u16)0xC0 << 16)), -1, 0x1845C, 18, 1, 2,

        -4,
};

const s32 *const anim_0812[3] = {
    anim_0812__v0_l0,
    anim_0812__v1_l0,
    anim_0812__v2_l0,
};

const s32 anim_0813__v0_l0[] = {
    -2, 189, (((u16)16 << 0) | ((u16)0xB0 << 16)), -1, 0x1846E, 60, 1, 0,

        -4,
};

const s32 anim_0813__v1_l0[] = {
    -2, 189, (((u16)16 << 0) | ((u16)0xB0 << 16)), -1, 0x184AA, 60, 1, 1,

        -4,
};

const s32 *const anim_0813[2] = {
    anim_0813__v0_l0,
    anim_0813__v1_l0,
};

const s32 anim_0814__v0_l0[] = {
    -2, 190, (((u16)16 << 0) | ((u16)0xF0 << 16)), 16, -1,

        -2, 191, (((u16)16 << 0) | ((u16)0xF0 << 16)), 16, -1,

            -2, 192, (((u16)16 << 0) | ((u16)0xF0 << 16)), 16, -1,

                -2, 193, (((u16)16 << 0) | ((u16)0xF0 << 16)), 16, -1,

                    -3, 20,
};

const s32 *const anim_0814[1] = {
    anim_0814__v0_l0,
};

const s32 anim_0815__v0_l0[] = {
    -2, 194, (((u16)16 << 0) | ((u16)0xA0 << 16)), 1, -1,

        -2, 195, (((u16)16 << 0) | ((u16)0xA0 << 16)), 1, -1,

            -2, 196, (((u16)16 << 0) | ((u16)0xA0 << 16)), 1, -1,

                -2, 197, (((u16)16 << 0) | ((u16)0xA0 << 16)), 1, -1,

                    -2, 198, (((u16)16 << 0) | ((u16)0xA0 << 16)), 1, -1,

                        -2, 199, (((u16)16 << 0) | ((u16)0xA0 << 16)), 1, -1,

                            -2, 200, (((u16)16 << 0) | ((u16)0xA0 << 16)), 1, -1,

                                -2, 201, (((u16)16 << 0) | ((u16)0xA0 << 16)), 1, -1,

                                    -3, 40,
};

const s32 *const anim_0815[1] = {
    anim_0815__v0_l0,
};

const s32 anim_0816__v0_l0[] = {
    -2, 202, (((u16)16 << 0) | ((u16)0x80 << 16)), -1, 0x184E6, 4, 6, 0,

        -2, 203, (((u16)16 << 0) | ((u16)0x80 << 16)), -1, 0x184E6, 4, 6, 0,

            -2, 204, (((u16)16 << 0) | ((u16)0x80 << 16)), -1, 0x184E6, 4, 6, 0,

                -2, 205, (((u16)16 << 0) | ((u16)0x80 << 16)), -1, 0x184E6, 4, 6, 0,

                    -2, 206, (((u16)16 << 0) | ((u16)0x80 << 16)), -1, 0x184E6, 4, 6, 0,

                        -2, 207, (((u16)16 << 0) | ((u16)0x80 << 16)), -1, 0x184E6, 4, 6, 0,

                            -2, 208, (((u16)16 << 0) | ((u16)0x80 << 16)), -1, 0x184E6, 4, 6, 0,

                                -2, 209, (((u16)16 << 0) | ((u16)0x80 << 16)), -1, 0x184E6, 4, 6, 0,

                                    -3, 64,
};

const s32 *const anim_0816[1] = {
    anim_0816__v0_l0,
};

const s32 anim_0817__v0_l0[] = {
    -2, 210, (((u16)16 << 0) | ((u16)0x30 << 16)), -1, 0x184EA, 4, 5, 0,

        -2, 211, (((u16)16 << 0) | ((u16)0x30 << 16)), -1, 0x184EA, 4, 5, 0,

            -2, 212, (((u16)16 << 0) | ((u16)0x30 << 16)), -1, 0x184EA, 4, 5, 0,

                -2, 213, (((u16)16 << 0) | ((u16)0x30 << 16)), -1, 0x184EA, 4, 5, 0,

                    -3, 32,
};

const s32 *const anim_0817[1] = {
    anim_0817__v0_l0,
};

const s32 anim_0818__v0_l0[] = {
    -2, 214, (((u16)16 << 0) | ((u16)0x10 << 16)), -1, 0x184EE, 4, 16, 0,

        -2, 215, (((u16)16 << 0) | ((u16)0x10 << 16)), -1, 0x184EE, 4, 16, 0,

            -2, 216, (((u16)16 << 0) | ((u16)0x10 << 16)), -1, 0x184EE, 4, 16, 0,

                -2, 217, (((u16)16 << 0) | ((u16)0x10 << 16)), -1, 0x184EE, 4, 16, 0,

                    -3, 32,
};

const s32 *const anim_0818[1] = {
    anim_0818__v0_l0,
};

const s32 anim_0819__v0_l0[] = {
    -2, 218, (((u16)16 << 0) | ((u16)0x50 << 16)), -1, 0x184F2, 16, 4, 0,

        -2, 219, (((u16)16 << 0) | ((u16)0x50 << 16)), 4, 0,

            -2, 220, (((u16)16 << 0) | ((u16)0x50 << 16)), 4, 0,

                -2, 221, (((u16)16 << 0) | ((u16)0x50 << 16)), 4, 0,

                    -2, 222, (((u16)16 << 0) | ((u16)0x50 << 16)), 4, 0,

                        -2, 223, (((u16)16 << 0) | ((u16)0x50 << 16)), 4, 0,

                            -2, 224, (((u16)16 << 0) | ((u16)0x50 << 16)), 4, 0,

                                -2, 225, (((u16)16 << 0) | ((u16)0x50 << 16)), 4, 0,

                                    -3, 43,
};

const s32 *const anim_0819[1] = {
    anim_0819__v0_l0,
};

const s32 anim_0820__v0_l0[] = {
    -2, 226, (((u16)16 << 0) | ((u16)0xC0 << 16)), 2, -1,

        -2, 227, (((u16)16 << 0) | ((u16)0xC0 << 16)), 2, -1,

            -2, 228, (((u16)16 << 0) | ((u16)0xC0 << 16)), 2, -1,

                -2, 229, (((u16)16 << 0) | ((u16)0xC0 << 16)), 2, -1,

                    -2, 230, (((u16)16 << 0) | ((u16)0xC0 << 16)), 2, -1,

                        -2, 231, (((u16)16 << 0) | ((u16)0xC0 << 16)), 2, -1,

                            -2, 232, (((u16)16 << 0) | ((u16)0xC0 << 16)), 2, -1,

                                -2, 233, (((u16)16 << 0) | ((u16)0xC0 << 16)), 2, -1,

                                    -3, 40,
};

const s32 anim_0820__v1_l0[] = {
    -2, 234, (((u16)16 << 0) | ((u16)0xD0 << 16)), -1, 0x18502, 8, 2, 0,

        -2, 235, (((u16)16 << 0) | ((u16)0xD0 << 16)), 2, 0,

            -2, 236, (((u16)16 << 0) | ((u16)0xD0 << 16)), 2, 0,

                -2, 237, (((u16)16 << 0) | ((u16)0xD0 << 16)), 2, 0,

                    -2, 238, (((u16)16 << 0) | ((u16)0xD0 << 16)), 2, 0,

                        -2, 239, (((u16)16 << 0) | ((u16)0xD0 << 16)), 2, 0,

                            -2, 240, (((u16)16 << 0) | ((u16)0xD0 << 16)), 2, 0,

                                -2, 241, (((u16)16 << 0) | ((u16)0xD0 << 16)), 2, 0,

                                    -3, 43,
};

const s32 *const anim_0820[2] = {
    anim_0820__v0_l0,
    anim_0820__v1_l0,
};

const s32 anim_0821__v0_l0[] = {
    -2, 242, (((u16)16 << 0) | ((u16)0x0 << 16)), 100, -1,

        -2, 242, (((u16)16 << 0) | ((u16)0x0 << 16)), 3, -1,

            -2, 243, (((u16)16 << 0) | ((u16)0x0 << 16)), 3, -1,

                -2, 244, (((u16)16 << 0) | ((u16)0x0 << 16)), 3, -1,

                    -2, 245, (((u16)16 << 0) | ((u16)0x0 << 16)), 3, -1,

                        -2, 246, (((u16)16 << 0) | ((u16)0x0 << 16)), 3, -1,

                            -3, 30,
};

const s32 *const anim_0821[1] = {
    anim_0821__v0_l0,
};

const s32 anim_0822__v0_l0[] = {
    -2, 247, (((u16)16 << 0) | ((u16)0x10 << 16)), 60, -1,

        -2, 247, (((u16)16 << 0) | ((u16)0x10 << 16)), 3, -1,

            -2, 248, (((u16)16 << 0) | ((u16)0x10 << 16)), 3, -1,

                -2, 249, (((u16)16 << 0) | ((u16)0x10 << 16)), 3, -1,

                    -2, 250, (((u16)16 << 0) | ((u16)0x10 << 16)), 3, -1,

                        -2, 251, (((u16)16 << 0) | ((u16)0x10 << 16)), 3, -1,

                            -3, 30,
};

const s32 *const anim_0822[1] = {
    anim_0822__v0_l0,
};

const s32 anim_0823__v0_l0[] = {
    -2, 252, (((u16)16 << 0) | ((u16)0xA0 << 16)), 1, -1,

        -2, 253, (((u16)16 << 0) | ((u16)0xA0 << 16)), 1, -1,

            -2, 254, (((u16)16 << 0) | ((u16)0xA0 << 16)), 1, -1,

                -2, 255, (((u16)16 << 0) | ((u16)0xA0 << 16)), 1, -1,

                    -3, 20,
};

const s32 *const anim_0823[1] = {
    anim_0823__v0_l0,
};

const s32 anim_0824__v0_l0[] = {
    -2, 256, (((u16)16 << 0) | ((u16)0x60 << 16)), 10, -1,

        -2, 257, (((u16)16 << 0) | ((u16)0x60 << 16)), 10, -1,

            -3, 10,
};

const s32 *const anim_0824[1] = {
    anim_0824__v0_l0,
};

const s32 anim_0825__v0_l0[] = {
    -2, 258, (((u16)16 << 0) | ((u16)0x90 << 16)), 8, -1,

        -2, 259, (((u16)16 << 0) | ((u16)0x90 << 16)), 8, -1,

            -2, 260, (((u16)16 << 0) | ((u16)0x90 << 16)), 8, -1,

                -3, 15,
};

const s32 *const anim_0825[1] = {
    anim_0825__v0_l0,
};

const s32 anim_0826__v0_l0[] = {
    -2, 261, (((u16)16 << 0) | ((u16)0x70 << 16)), 6, -1,

        -2, 262, (((u16)16 << 0) | ((u16)0x70 << 16)), 6, -1,

            -2, 263, (((u16)16 << 0) | ((u16)0x70 << 16)), 6, -1,

                -2, 264, (((u16)16 << 0) | ((u16)0x70 << 16)), 6, -1,

                    -3, 20,
};

const s32 *const anim_0826[1] = {
    anim_0826__v0_l0,
};

const s32 anim_0827__v0_l0[] = {
    -2, 265, (((u16)16 << 0) | ((u16)0xE0 << 16)), 8, -1,

        -2, 266, (((u16)16 << 0) | ((u16)0xE0 << 16)), 8, -1,

            -2, 267, (((u16)16 << 0) | ((u16)0xE0 << 16)), 8, -1,

                -2, 268, (((u16)16 << 0) | ((u16)0xE0 << 16)), 8, -1,

                    -2, 269, (((u16)16 << 0) | ((u16)0xE0 << 16)), 8, -1,

                        -2, 270, (((u16)16 << 0) | ((u16)0xE0 << 16)), 8, -1,

                            -2, 271, (((u16)16 << 0) | ((u16)0xE0 << 16)), 8, -1,

                                -3, 35,
};

const s32 *const anim_0827[1] = {
    anim_0827__v0_l0,
};

const s32 anim_0828__v0_l0[] = {
    -2, 272, (((u16)16 << 0) | ((u16)0xA0 << 16)), 8, -1,

        -2, 273, (((u16)16 << 0) | ((u16)0xA0 << 16)), 8, -1,

            -2, 274, (((u16)16 << 0) | ((u16)0xA0 << 16)), 8, -1,

                -3, 15,
};

const s32 *const anim_0828[1] = {
    anim_0828__v0_l0,
};

const s32 anim_0829__v0_l0[] = {
    -2, 275, (((u16)16 << 0) | ((u16)0x10 << 16)), 8, -1,

        -2, 276, (((u16)16 << 0) | ((u16)0x10 << 16)), 8, -1,

            -2, 277, (((u16)16 << 0) | ((u16)0x10 << 16)), 8, -1,

                -3, 15,
};

const s32 *const anim_0829[1] = {
    anim_0829__v0_l0,
};

const s32 anim_0830__v0_l0[] = {
    -2, 278, (((u16)16 << 0) | ((u16)0x20 << 16)), 5, -1,

        -2, 279, (((u16)16 << 0) | ((u16)0x20 << 16)), 5, -1,

            -2, 280, (((u16)16 << 0) | ((u16)0x20 << 16)), 5, -1,

                -2, 281, (((u16)16 << 0) | ((u16)0x20 << 16)), 5, -1,

                    -3, 20,
};

const s32 *const anim_0830[1] = {
    anim_0830__v0_l0,
};

const s32 anim_0831__v0_l0[] = {
    -2, 282, (((u16)16 << 0) | ((u16)0xE0 << 16)), 10, -1,

        -2, 283, (((u16)16 << 0) | ((u16)0xE0 << 16)), 10, -1,

            -2, 284, (((u16)16 << 0) | ((u16)0xE0 << 16)), 10, -1,

                -2, 285, (((u16)16 << 0) | ((u16)0xE0 << 16)), 10, -1,

                    -3, 20,
};

const s32 *const anim_0831[1] = {
    anim_0831__v0_l0,
};

const s32 anim_0832__v0_l0[] = {
    -2, 286, (((u16)16 << 0) | ((u16)0x10 << 16)), 3, -1,

        -2, 287, (((u16)16 << 0) | ((u16)0x10 << 16)), 3, -1,

            -2, 288, (((u16)16 << 0) | ((u16)0x10 << 16)), 3, -1,

                -2, 289, (((u16)16 << 0) | ((u16)0x10 << 16)), 3, -1,

                    -2, 290, (((u16)16 << 0) | ((u16)0x10 << 16)), 3, -1,

                        -2, 291, (((u16)16 << 0) | ((u16)0x10 << 16)), 3, -1,

                            -2, 292, (((u16)16 << 0) | ((u16)0x10 << 16)), 3, -1,

                                -3, 35,
};

const s32 anim_0832__v1_l0[] = {
    -2, 293, (((u16)16 << 0) | ((u16)0x0 << 16)), 5, -1,

        -2, 294, (((u16)16 << 0) | ((u16)0x0 << 16)), 5, -1,

            -2, 295, (((u16)16 << 0) | ((u16)0x0 << 16)), 5, -1,

                -2, 296, (((u16)16 << 0) | ((u16)0x0 << 16)), 5, -1,

                    -2, 295, (((u16)16 << 0) | ((u16)0x0 << 16)), 5, -1,

                        -2, 294, (((u16)16 << 0) | ((u16)0x0 << 16)), 5, -1,

                            -3, 30,
};

const s32 *const anim_0832[2] = {
    anim_0832__v0_l0,
    anim_0832__v1_l0,
};

const s32 anim_0833__v0_l0[] = {
    -2, 297, (((u16)16 << 0) | ((u16)0x10 << 16)), 3, -1,

        -2, 298, (((u16)16 << 0) | ((u16)0x10 << 16)), 3, -1,

            -2, 299, (((u16)16 << 0) | ((u16)0x10 << 16)), 3, -1,

                -2, 300, (((u16)16 << 0) | ((u16)0x10 << 16)), 3, -1,

                    -2, 301, (((u16)16 << 0) | ((u16)0x10 << 16)), 3, -1,

                        -2, 302, (((u16)16 << 0) | ((u16)0x10 << 16)), 3, -1,

                            -2, 303, (((u16)16 << 0) | ((u16)0x10 << 16)), 3, -1,

                                -3, 35,
};

const s32 anim_0833__v1_l0[] = {
    -2, 304, (((u16)16 << 0) | ((u16)0x0 << 16)), 5, -1,

        -2, 305, (((u16)16 << 0) | ((u16)0x0 << 16)), 5, -1,

            -2, 306, (((u16)16 << 0) | ((u16)0x0 << 16)), 5, -1,

                -2, 307, (((u16)16 << 0) | ((u16)0x0 << 16)), 5, -1,

                    -2, 306, (((u16)16 << 0) | ((u16)0x0 << 16)), 5, -1,

                        -2, 305, (((u16)16 << 0) | ((u16)0x0 << 16)), 5, -1,

                            -3, 30,
};

const s32 *const anim_0833[2] = {
    anim_0833__v0_l0,
    anim_0833__v1_l0,
};

const s32 anim_0834__v0_l0[] = {
    -2, 308, (((u16)16 << 0) | ((u16)0x10 << 16)), 3, -1,

        -2, 309, (((u16)16 << 0) | ((u16)0x10 << 16)), 3, -1,

            -2, 310, (((u16)16 << 0) | ((u16)0x10 << 16)), 3, -1,

                -2, 311, (((u16)16 << 0) | ((u16)0x10 << 16)), 3, -1,

                    -2, 312, (((u16)16 << 0) | ((u16)0x10 << 16)), 3, -1,

                        -2, 313, (((u16)16 << 0) | ((u16)0x10 << 16)), 3, -1,

                            -2, 314, (((u16)16 << 0) | ((u16)0x10 << 16)), 3, -1,

                                -3, 35,
};

const s32 anim_0834__v1_l0[] = {
    -2, 315, (((u16)16 << 0) | ((u16)0x0 << 16)), 5, -1,

        -2, 316, (((u16)16 << 0) | ((u16)0x0 << 16)), 5, -1,

            -2, 317, (((u16)16 << 0) | ((u16)0x0 << 16)), 5, -1,

                -2, 318, (((u16)16 << 0) | ((u16)0x0 << 16)), 5, -1,

                    -2, 317, (((u16)16 << 0) | ((u16)0x0 << 16)), 5, -1,

                        -2, 316, (((u16)16 << 0) | ((u16)0x0 << 16)), 5, -1,

                            -3, 30,
};

const s32 *const anim_0834[2] = {
    anim_0834__v0_l0,
    anim_0834__v1_l0,
};

const s32 anim_0835__v0_l0[] = {
    -2, 319, (((u16)16 << 0) | ((u16)0x10 << 16)), 3, -1,

        -2, 320, (((u16)16 << 0) | ((u16)0x10 << 16)), 3, -1,

            -2, 321, (((u16)16 << 0) | ((u16)0x10 << 16)), 3, -1,

                -2, 322, (((u16)16 << 0) | ((u16)0x10 << 16)), 3, -1,

                    -2, 323, (((u16)16 << 0) | ((u16)0x10 << 16)), 3, -1,

                        -2, 324, (((u16)16 << 0) | ((u16)0x10 << 16)), 3, -1,

                            -2, 325, (((u16)16 << 0) | ((u16)0x10 << 16)), 3, -1,

                                -3, 35,
};

const s32 anim_0835__v1_l0[] = {
    -2, 326, (((u16)16 << 0) | ((u16)0x0 << 16)), 5, -1,

        -2, 327, (((u16)16 << 0) | ((u16)0x0 << 16)), 5, -1,

            -2, 328, (((u16)16 << 0) | ((u16)0x0 << 16)), 5, -1,

                -2, 329, (((u16)16 << 0) | ((u16)0x0 << 16)), 5, -1,

                    -2, 328, (((u16)16 << 0) | ((u16)0x0 << 16)), 5, -1,

                        -2, 327, (((u16)16 << 0) | ((u16)0x0 << 16)), 5, -1,

                            -3, 30,
};

const s32 *const anim_0835[2] = {
    anim_0835__v0_l0,
    anim_0835__v1_l0,
};

const s32 anim_0836__v0_l0[] = {
    -2, 330, (((u16)16 << 0) | ((u16)0x10 << 16)), 3, -1,

        -2, 331, (((u16)16 << 0) | ((u16)0x10 << 16)), 3, -1,

            -2, 332, (((u16)16 << 0) | ((u16)0x10 << 16)), 3, -1,

                -2, 333, (((u16)16 << 0) | ((u16)0x10 << 16)), 3, -1,

                    -2, 334, (((u16)16 << 0) | ((u16)0x10 << 16)), 3, -1,

                        -2, 335, (((u16)16 << 0) | ((u16)0x10 << 16)), 3, -1,

                            -2, 336, (((u16)16 << 0) | ((u16)0x10 << 16)), 3, -1,

                                -3, 35,
};

const s32 anim_0836__v1_l0[] = {
    -2, 337, (((u16)16 << 0) | ((u16)0x0 << 16)), 5, -1,

        -2, 338, (((u16)16 << 0) | ((u16)0x0 << 16)), 5, -1,

            -2, 339, (((u16)16 << 0) | ((u16)0x0 << 16)), 5, -1,

                -2, 340, (((u16)16 << 0) | ((u16)0x0 << 16)), 5, -1,

                    -2, 339, (((u16)16 << 0) | ((u16)0x0 << 16)), 5, -1,

                        -2, 338, (((u16)16 << 0) | ((u16)0x0 << 16)), 5, -1,

                            -3, 30,
};

const s32 *const anim_0836[2] = {
    anim_0836__v0_l0,
    anim_0836__v1_l0,
};

const s32 anim_0837__v0_l0[] = {
    -2, 341, (((u16)16 << 0) | ((u16)0x10 << 16)), 3, -1,

        -2, 342, (((u16)16 << 0) | ((u16)0x10 << 16)), 3, -1,

            -2, 343, (((u16)16 << 0) | ((u16)0x10 << 16)), 3, -1,

                -2, 344, (((u16)16 << 0) | ((u16)0x10 << 16)), 3, -1,

                    -2, 345, (((u16)16 << 0) | ((u16)0x10 << 16)), 3, -1,

                        -2, 346, (((u16)16 << 0) | ((u16)0x10 << 16)), 3, -1,

                            -2, 347, (((u16)16 << 0) | ((u16)0x10 << 16)), 3, -1,

                                -3, 35,
};

const s32 anim_0837__v1_l0[] = {
    -2, 348, (((u16)16 << 0) | ((u16)0x0 << 16)), 5, -1,

        -2, 349, (((u16)16 << 0) | ((u16)0x0 << 16)), 5, -1,

            -2, 350, (((u16)16 << 0) | ((u16)0x0 << 16)), 5, -1,

                -2, 351, (((u16)16 << 0) | ((u16)0x0 << 16)), 5, -1,

                    -2, 350, (((u16)16 << 0) | ((u16)0x0 << 16)), 5, -1,

                        -2, 349, (((u16)16 << 0) | ((u16)0x0 << 16)), 5, -1,

                            -3, 30,
};

const s32 *const anim_0837[2] = {
    anim_0837__v0_l0,
    anim_0837__v1_l0,
};

const s32 anim_0838__v0_l0[] = {
    -2, 352, (((u16)16 << 0) | ((u16)0x10 << 16)), 3, -1,

        -2, 353, (((u16)16 << 0) | ((u16)0x10 << 16)), 3, -1,

            -2, 354, (((u16)16 << 0) | ((u16)0x10 << 16)), 3, -1,

                -2, 355, (((u16)16 << 0) | ((u16)0x10 << 16)), 3, -1,

                    -2, 356, (((u16)16 << 0) | ((u16)0x10 << 16)), 3, -1,

                        -2, 357, (((u16)16 << 0) | ((u16)0x10 << 16)), 3, -1,

                            -2, 358, (((u16)16 << 0) | ((u16)0x10 << 16)), 3, -1,

                                -3, 35,
};

const s32 anim_0838__v1_l0[] = {
    -2, 359, (((u16)16 << 0) | ((u16)0x0 << 16)), 5, -1,

        -2, 360, (((u16)16 << 0) | ((u16)0x0 << 16)), 5, -1,

            -2, 361, (((u16)16 << 0) | ((u16)0x0 << 16)), 5, -1,

                -2, 362, (((u16)16 << 0) | ((u16)0x0 << 16)), 5, -1,

                    -2, 361, (((u16)16 << 0) | ((u16)0x0 << 16)), 5, -1,

                        -2, 360, (((u16)16 << 0) | ((u16)0x0 << 16)), 5, -1,

                            -3, 30,
};

const s32 *const anim_0838[2] = {
    anim_0838__v0_l0,
    anim_0838__v1_l0,
};

const s32 anim_0839__v0_l0[] = {
    -2, 363, (((u16)16 << 0) | ((u16)0xD0 << 16)), 4, -1,

        -2, 364, (((u16)16 << 0) | ((u16)0xD0 << 16)), 4, -1,

            -2, 365, (((u16)16 << 0) | ((u16)0xD0 << 16)), 4, -1,

                -2, 366, (((u16)16 << 0) | ((u16)0xD0 << 16)), 4, -1,

                    -2, 367, (((u16)16 << 0) | ((u16)0xD0 << 16)), 4, -1,

                        -3, 25,
};

const s32 *const anim_0839[1] = {
    anim_0839__v0_l0,
};

const s32 anim_0840__v0_l0[] = {
    -2, 368, (((u16)16 << 0) | ((u16)0xC0 << 16)), 7, -1,

        -2, 369, (((u16)16 << 0) | ((u16)0xC0 << 16)), 7, -1,

            -2, 370, (((u16)16 << 0) | ((u16)0xC0 << 16)), 7, -1,

                -2, 371, (((u16)16 << 0) | ((u16)0xC0 << 16)), 7, -1,

                    -3, 20,
};

const s32 *const anim_0840[1] = {
    anim_0840__v0_l0,
};

const s32 anim_0841__v0_l0[] = {
    -2, 372, (((u16)16 << 0) | ((u16)0xA0 << 16)), 3, -1,

        -2, 373, (((u16)16 << 0) | ((u16)0xA0 << 16)), 3, -1,

            -3, 10,
};

const s32 *const anim_0841[1] = {
    anim_0841__v0_l0,
};

const s32 anim_0842__v0_l0[] = {
    -2, 363, (((u16)16 << 0) | ((u16)0xD0 << 16)), 6, -1,

        -2, 374, (((u16)16 << 0) | ((u16)0xD0 << 16)), 6, -1,

            -2, 375, (((u16)16 << 0) | ((u16)0xD0 << 16)), 6, -1,

                -2, 376, (((u16)16 << 0) | ((u16)0xD0 << 16)), 6, -1,

                    -3, 20,
};

const s32 *const anim_0842[1] = {
    anim_0842__v0_l0,
};

const s32 anim_0843__v0_l0[] = {
    -2, 377, (((u16)16 << 0) | ((u16)0xB0 << 16)), 10, -1,

        -2, 378, (((u16)16 << 0) | ((u16)0xB0 << 16)), 10, -1,

            -3, 10,
};

const s32 *const anim_0843[1] = {
    anim_0843__v0_l0,
};

const s32 anim_0844__v0_l0[] = {
    -2, 379, (((u16)16 << 0) | ((u16)0xC0 << 16)), 8, -1,

        -2, 380, (((u16)16 << 0) | ((u16)0xC0 << 16)), 8, -1,

            -2, 381, (((u16)16 << 0) | ((u16)0xC0 << 16)), 8, -1,

                -2, 382, (((u16)16 << 0) | ((u16)0xC0 << 16)), 8, -1,

                    -3, 20,
};

const s32 *const anim_0844[1] = {
    anim_0844__v0_l0,
};

const s32 anim_0845__v0_l0[] = {
    -2, 383, (((u16)16 << 0) | ((u16)0xA0 << 16)), 10, -1,

        -2, 384, (((u16)16 << 0) | ((u16)0xA0 << 16)), 10, -1,

            -2, 385, (((u16)16 << 0) | ((u16)0xA0 << 16)), 10, -1,

                -2, 386, (((u16)16 << 0) | ((u16)0xA0 << 16)), 10, -1,

                    -3, 20,
};

const s32 *const anim_0845[1] = {
    anim_0845__v0_l0,
};

const s32 anim_0846__v0_l0[] = {
    -2, 387, (((u16)16 << 0) | ((u16)0x40 << 16)), 10, -1,

        -2, 388, (((u16)16 << 0) | ((u16)0x40 << 16)), 10, -1,

            -2, 389, (((u16)16 << 0) | ((u16)0x40 << 16)), 10, -1,

                -2, 390, (((u16)16 << 0) | ((u16)0x40 << 16)), 10, -1,

                    -2, 391, (((u16)16 << 0) | ((u16)0x40 << 16)), 10, -1,

                        -2, 392, (((u16)16 << 0) | ((u16)0x40 << 16)), 10, -1,

                            -2, 393, (((u16)16 << 0) | ((u16)0x40 << 16)), 10, -1,

                                -2, 394, (((u16)16 << 0) | ((u16)0x40 << 16)), 10, -1,

                                    -3, 40,
};

const s32 *const anim_0846[1] = {
    anim_0846__v0_l0,
};

const s32 anim_0847__v0_l0[] = {
    -2, 395, (((u16)16 << 0) | ((u16)0x60 << 16)), 20, -1,

        -2, 396, (((u16)16 << 0) | ((u16)0x60 << 16)), 20, -1,

            -2, 397, (((u16)16 << 0) | ((u16)0x60 << 16)), 20, -1,

                -2, 398, (((u16)16 << 0) | ((u16)0x60 << 16)), 20, -1,

                    -2, 399, (((u16)16 << 0) | ((u16)0x60 << 16)), 20, -1,

                        -2, 400, (((u16)16 << 0) | ((u16)0x60 << 16)), 20, -1,

                            -2, 401, (((u16)16 << 0) | ((u16)0x60 << 16)), 20, -1,

                                -3, 35,
};

const s32 *const anim_0847[1] = {
    anim_0847__v0_l0,
};

const s32 anim_0848__v0_l0[] = {
    -2, 402, (((u16)16 << 0) | ((u16)0x50 << 16)), 20, -1,

        -2, 403, (((u16)16 << 0) | ((u16)0x50 << 16)), 20, -1,

            -2, 404, (((u16)16 << 0) | ((u16)0x50 << 16)), 20, -1,

                -2, 405, (((u16)16 << 0) | ((u16)0x50 << 16)), 20, -1,

                    -2, 406, (((u16)16 << 0) | ((u16)0x50 << 16)), 20, -1,

                        -2, 407, (((u16)16 << 0) | ((u16)0x50 << 16)), 20, -1,

                            -2, 408, (((u16)16 << 0) | ((u16)0x50 << 16)), 20, -1,

                                -2, 409, (((u16)16 << 0) | ((u16)0x50 << 16)), 20, -1,

                                    -3, 40,
};

const s32 *const anim_0848[1] = {
    anim_0848__v0_l0,
};

const s32 anim_0849__v0_l0[] = {
    -2, 410, (((u16)16 << 0) | ((u16)0xD0 << 16)), 10, -1,

        -2, 411, (((u16)16 << 0) | ((u16)0xD0 << 16)), 10, -1,

            -2, 412, (((u16)16 << 0) | ((u16)0xD0 << 16)), 10, -1,

                -2, 413, (((u16)16 << 0) | ((u16)0xD0 << 16)), 10, -1,

                    -2, 410, (((u16)16 << 0) | ((u16)0xD0 << 16)), 10, -1,

                        -2, 414, (((u16)16 << 0) | ((u16)0xD0 << 16)), 10, -1,

                            -2, 415, (((u16)16 << 0) | ((u16)0xD0 << 16)), 10, -1,

                                -2, 416, (((u16)16 << 0) | ((u16)0xD0 << 16)), 10, -1,

                                    -3, 40,
};

const s32 *const anim_0849[1] = {
    anim_0849__v0_l0,
};

const s32 anim_0850__v0_l0[] = {
    -2, 417, (((u16)16 << 0) | ((u16)0xC0 << 16)), 14, -1,

        -2, 418, (((u16)16 << 0) | ((u16)0xC0 << 16)), 14, -1,

            -3, 10,
};

const s32 *const anim_0850[1] = {
    anim_0850__v0_l0,
};

const s32 anim_0851__v0_l0[] = {
    -2, 419, (((u16)16 << 0) | ((u16)0xF0 << 16)), 6, -1,

        -2, 420, (((u16)16 << 0) | ((u16)0xF0 << 16)), 6, -1,

            -2, 421, (((u16)16 << 0) | ((u16)0xF0 << 16)), 6, -1,

                -2, 422, (((u16)16 << 0) | ((u16)0xF0 << 16)), 6, -1,

                    -3, 20,
};

const s32 *const anim_0851[1] = {
    anim_0851__v0_l0,
};

const s32 anim_0852__v0_l0[] = {
    -2, 423, (((u16)256 << 0) | ((u16)0x0 << 16)), 1, -1,

        -4,
};

const s32 *const anim_0852[1] = {
    anim_0852__v0_l0,
};

const s32 anim_0853__v0_l0[] = {
    -2, 439, (((u16)16 << 0) | ((u16)0x50 << 16)), -1, 0x1850A, 63, 5, 0,

        -1, 0x18549, 63, 5, 1,

            -1, 0x18588, 63, 5, 2,

                -1, 0x185C7, 72, 5, 3,

                    -1, 0x1860F, 63, 5, 4,

                        -1, 0x1864E, 63, 5, 5,

                            -1, 0x1868D, 54, 5, 6,

                                -1, 0x1864E, 63, 5, 5,

                                    -3, 43,
};

const s32 *const anim_0853[1] = {
    anim_0853__v0_l0,
};

const s32 anim_0854__v0_l0[] = {
    -2, 439, (((u16)16 << 0) | ((u16)0x50 << 16)), -1, 0x186C3, 36, 5, 0,

        -1, 0x186E7, 54, 5, 1,

            -1, 0x1871D, 54, 5, 2,

                -1, 0x18753, 63, 5, 3,

                    -1, 0x18792, 54, 5, 4,

                        -1, 0x187C8, 54, 5, 5,

                            -1, 0x187FE, 36, 5, 6,

                                -1, 0x18822, 54, 5, 7,

                                    -1, 0x18858, 63, 5, 8,

                                        -1, 0x18897, 63, 5, 9,

                                            -1, 0x188D6, 63, 5, 10,

                                                -1, 0x18915, 54, 5, 11,

                                                    -1, 0x186C3, 36, 5, 0,

                                                        -1, 0x1894B, 54, 5, 12,

                                                            -1, 0x18981, 54, 5, 13,

                                                                -1, 0x189B7, 63, 5, 14,

                                                                    -1, 0x18792, 54, 5, 4,

                                                                        -1, 0x187C8, 54, 5, 5,

                                                                            -1, 0x187FE, 36, 5, 6,

                                                                                -1, 0x18822, 54, 5, 7,

                                                                                    -1, 0x18858, 63, 5, 8,

                                                                                        -1, 0x18897, 63, 5, 9,

                                                                                            -1, 0x188D6, 63, 5, 10,

                                                                                                -1, 0x18915, 54, 5, 11,

                                                                                                    -3, 123,
};

const s32 *const anim_0854[1] = {
    anim_0854__v0_l0,
};

const s32 anim_0855__v0_l0[] = {
    -2, 439, (((u16)16 << 0) | ((u16)0x50 << 16)), -1, 0x189F6, 99, 5, 0,

        -1, 0x18A59, 90, 5, 1,

            -1, 0x18AB3, 90, 5, 2,

                -1, 0x18B0D, 99, 5, 3,

                    -1, 0x18B70, 90, 5, 4,

                        -1, 0x18BCA, 99, 5, 5,

                            -1, 0x18C2D, 99, 5, 6,

                                -1, 0x18C90, 99, 5, 7,

                                    -3, 43,
};

const s32 anim_0855__v1_l0[] = {
    -2, 439, (((u16)16 << 0) | ((u16)0x50 << 16)), -1, 0x18CF3, 72, 5, 8,

        -4,
};

const s32 *const anim_0855[2] = {
    anim_0855__v0_l0,
    anim_0855__v1_l0,
};

const s32 anim_0856__v0_l0[] = {
    -2, 439, (((u16)16 << 0) | ((u16)0x50 << 16)), -1, 0x18D3B, 32, 6, 0,

        -1, 0x18D5B, 32, 4, 1,

            -1, 0x18D7B, 48, 4, 2,

                -1, 0x18DAB, 48, 4, 3,

                    -1, 0x18DDB, 48, 12, 4,

                        -4,
};

const s32 *const anim_0856[1] = {
    anim_0856__v0_l0,
};

const s32 anim_0857__v0_l0[] = {
    -2, 68, (((u16)16 << 0) | ((u16)0x70 << 16)), -1, 0x18E0B, 4, 1, 0,

        -4,
};

const s32 *const anim_0857[1] = {
    anim_0857__v0_l0,
};

const s32 anim_0858__v0_l0[] = {
    -2, 68, (((u16)16 << 0) | ((u16)0x20 << 16)), -1, 0x18E0F, 28, 8, 0,

        -1, 0x18E2B, 28, 8, 1,

            -1, 0x18E47, 28, 8, 2,

                -1, 0x18E63, 28, 8, 3,

                    -3, 23,
};

const s32 *const anim_0858[1] = {
    anim_0858__v0_l0,
};

const s32 anim_0859__v0_l0[] = {
    -2, 440, (((u16)16 << 0) | ((u16)0x20 << 16)), -1, 0x18E7F, 8, 1, 0,

        -4,
};

const s32 *const anim_0859[1] = {
    anim_0859__v0_l0,
};

const s32 anim_0860__v0_l0[] = {
    -2, 179, (((u16)16 << 0) | ((u16)0x0 << 16)), -1, 0x18E87, 12, 1, 0,

        -4,
};

const s32 *const anim_0860[1] = {
    anim_0860__v0_l0,
};

const s32 anim_0861__v0_l0[] = {
    -2, 441, (((u16)16 << 0) | ((u16)0x0 << 16)), -1, 0x18E93, 18, 1, 0,

        -4,
};

const s32 anim_0861__v1_l0[] = {
    -2, 441, (((u16)16 << 0) | ((u16)0x0 << 16)), -1, 0x18EA5, 10, 1, 1,

        -4,
};

const s32 anim_0861__v2_l0[] = {
    -2, 441, (((u16)16 << 0) | ((u16)0x0 << 16)), -1, 0x18EAF, 14, 1, 2,

        -4,
};

const s32 anim_0861__v3_l0[] = {
    -2, 441, (((u16)16 << 0) | ((u16)0x0 << 16)), -1, 0x18EBD, 26, 1, 3,

        -4,
};

const s32 *const anim_0861[4] = {
    anim_0861__v0_l0,
    anim_0861__v1_l0,
    anim_0861__v2_l0,
    anim_0861__v3_l0,
};

const s32 anim_0862__v0_l0[] = {
    -2, 442, (((u16)16 << 0) | ((u16)0x0 << 16)), -1, 0x18ED7, 20, 1, 0,

        -4,
};

const s32 anim_0862__v1_l0[] = {
    -2, 442, (((u16)16 << 0) | ((u16)0x0 << 16)), -1, 0x18EEB, 20, 1, 1,

        -4,
};

const s32 anim_0862__v2_l0[] = {
    -2, 442, (((u16)16 << 0) | ((u16)0x0 << 16)), -1, 0x18EFF, 16, 1, 2,

        -4,
};

const s32 anim_0862__v3_l0[] = {
    -2, 442, (((u16)16 << 0) | ((u16)0x0 << 16)), -1, 0x18F0F, 32, 1, 3,

        -4,
};

const s32 *const anim_0862[4] = {
    anim_0862__v0_l0,
    anim_0862__v1_l0,
    anim_0862__v2_l0,
    anim_0862__v3_l0,
};

const s32 anim_0863__v0_l0[] = {
    -2, 179, (((u16)16 << 0) | ((u16)0x0 << 16)), -1, 0x18F2F, 26, 1, 0,

        -4,
};

const s32 anim_0863__v1_l0[] = {
    -2, 179, (((u16)16 << 0) | ((u16)0x0 << 16)), -1, 0x18F49, 12, 1, 1,

        -4,
};

const s32 anim_0863__v2_l0[] = {
    -2, 179, (((u16)16 << 0) | ((u16)0x0 << 16)), -1, 0x18F55, 16, 1, 2,

        -4,
};

const s32 anim_0863__v3_l0[] = {
    -2, 179, (((u16)16 << 0) | ((u16)0x0 << 16)), -1, 0x18F65, 24, 1, 3,

        -4,
};

const s32 anim_0863__v4_l0[] = {
    -2, 179, (((u16)16 << 0) | ((u16)0x0 << 16)), -1, 0x18F7D, 20, 1, 4,

        -4,
};

const s32 anim_0863__v5_l0[] = {
    -2, 179, (((u16)16 << 0) | ((u16)0x0 << 16)), -1, 0x18F91, 30, 1, 5,

        -4,
};

const s32 anim_0863__v6_l0[] = {
    -2, 179, (((u16)16 << 0) | ((u16)0x0 << 16)), -1, 0x18FAF, 36, 1, 6,

        -4,
};

const s32 anim_0863__v7_l0[] = {
    -2, 179, (((u16)16 << 0) | ((u16)0x0 << 16)), -1, 0x18FD3, 8, 1, 7,

        -4,
};

const s32 anim_0863__v8_l0[] = {
    -2, 179, (((u16)16 << 0) | ((u16)0x0 << 16)), -1, 0x18FDB, 6, 1, 8,

        -4,
};

const s32 anim_0863__v9_l0[] = {
    -2, 179, (((u16)16 << 0) | ((u16)0x0 << 16)), -1, 0x18FE1, 8, 1, 9,

        -4,
};

const s32 anim_0863__v10_l0[] = {
    -2, 179, (((u16)16 << 0) | ((u16)0x0 << 16)), -1, 0x18FE9, 16, 1, 10,

        -4,
};

const s32 anim_0863__v11_l0[] = {
    -2, 179, (((u16)16 << 0) | ((u16)0x0 << 16)), -1, 0x18FF9, 16, 1, 11,

        -4,
};

const s32 anim_0863__v12_l0[] = {
    -2, 179, (((u16)16 << 0) | ((u16)0x0 << 16)), -1, 0x19009, 10, 1, 12,

        -4,
};

const s32 anim_0863__v13_l0[] = {
    -2, 179, (((u16)16 << 0) | ((u16)0x0 << 16)), -1, 0x18FF9, 16, 1, 11,

        -4,
};

const s32 anim_0863__v14_l0[] = {
    -2, 179, (((u16)16 << 0) | ((u16)0x0 << 16)), -1, 0x19013, 16, 1, 13,

        -4,
};

const s32 anim_0863__v15_l0[] = {
    -2, 178, (((u16)16 << 0) | ((u16)0x10 << 16)), 1, -1,

        -4,
};

const s32 *const anim_0863[16] = {
    anim_0863__v0_l0, anim_0863__v1_l0, anim_0863__v2_l0, anim_0863__v3_l0, anim_0863__v4_l0, anim_0863__v5_l0,
    anim_0863__v6_l0, anim_0863__v7_l0, anim_0863__v8_l0, anim_0863__v9_l0, anim_0863__v10_l0, anim_0863__v11_l0,
    anim_0863__v12_l0, anim_0863__v13_l0, anim_0863__v14_l0, anim_0863__v15_l0,
};

const s32 anim_0864__v0_l0[] = {
    -2, 443, (((u16)16 << 0) | ((u16)0x60 << 16)), -1, 0x19023, 22, 1, 0,

        -4,
};

const s32 anim_0864__v1_l0[] = {
    -2, 443, (((u16)16 << 0) | ((u16)0x0 << 16)), -1, 0x19039, 51, 1, 1,

        -4,
};

const s32 anim_0864__v2_l0[] = {
    -2, 443, (((u16)16 << 0) | ((u16)0xF0 << 16)), -1, 0x1906C, 26, 1, 2,

        -4,
};

const s32 *const anim_0864[3] = {
    anim_0864__v0_l0,
    anim_0864__v1_l0,
    anim_0864__v2_l0,
};

const s32 anim_0865__v0_l0[] = {
    -2, 444, (((u16)16 << 0) | ((u16)0x0 << 16)), -1, 0x19086, 16, 1, 0,

        -4,
};

const s32 anim_0865__v1_l0[] = {
    -2, 444, (((u16)16 << 0) | ((u16)0x0 << 16)), 1, -1,

        -4,
};

const s32 anim_0865__v2_l0[] = {
    -2, 444, (((u16)16 << 0) | ((u16)0x0 << 16)), -1, 0x19096, 24, 1, 1,

        -4,
};

const s32 *const anim_0865[3] = {
    anim_0865__v0_l0,
    anim_0865__v1_l0,
    anim_0865__v2_l0,
};

const s32 anim_0866__v0_l0[] = {
    -2, 179, (((u16)16 << 0) | ((u16)0x0 << 16)), -1, 0x190AE, 22, 1, 0,

        -4,
};

const s32 anim_0866__v1_l0[] = {
    -2, 179, (((u16)16 << 0) | ((u16)0x0 << 16)), -1, 0x190C4, 12, 1, 1,

        -4,
};

const s32 anim_0866__v2_l0[] = {
    -2, 179, (((u16)16 << 0) | ((u16)0x0 << 16)), -1, 0x190D0, 14, 1, 2,

        -4,
};

const s32 anim_0866__v3_l0[] = {
    -2, 179, (((u16)16 << 0) | ((u16)0x0 << 16)), -1, 0x190DE, 18, 1, 3,

        -4,
};

const s32 anim_0866__v4_l0[] = {
    -2, 179, (((u16)16 << 0) | ((u16)0x0 << 16)), -1, 0x190F0, 20, 1, 4,

        -4,
};

const s32 anim_0866__v5_l0[] = {
    -2, 179, (((u16)16 << 0) | ((u16)0x0 << 16)), -1, 0x19104, 16, 1, 5,

        -4,
};

const s32 anim_0866__v6_l0[] = {
    -2, 179, (((u16)16 << 0) | ((u16)0x0 << 16)), -1, 0x19114, 16, 1, 6,

        -4,
};

const s32 anim_0866__v7_l0[] = {
    -2, 179, (((u16)16 << 0) | ((u16)0x0 << 16)), -1, 0x19124, 8, 1, 7,

        -4,
};

const s32 anim_0866__v8_l0[] = {
    -2, 179, (((u16)16 << 0) | ((u16)0x0 << 16)), -1, 0x1912C, 6, 1, 8,

        -4,
};

const s32 anim_0866__v9_l0[] = {
    -2, 179, (((u16)16 << 0) | ((u16)0x0 << 16)), -1, 0x19132, 6, 1, 9,

        -4,
};

const s32 anim_0866__v10_l0[] = {
    -2, 179, (((u16)16 << 0) | ((u16)0x0 << 16)), -1, 0x19138, 12, 1, 10,

        -4,
};

const s32 anim_0866__v11_l0[] = {
    -2, 179, (((u16)16 << 0) | ((u16)0x0 << 16)), -1, 0x19144, 8, 1, 11,

        -4,
};

const s32 anim_0866__v12_l0[] = {
    -2, 179, (((u16)16 << 0) | ((u16)0x0 << 16)), -1, 0x1914C, 12, 1, 12,

        -4,
};

const s32 anim_0866__v13_l0[] = {
    -2, 179, (((u16)16 << 0) | ((u16)0x0 << 16)), -1, 0x19158, 12, 1, 13,

        -4,
};

const s32 anim_0866__v14_l0[] = {
    -2, 179, (((u16)16 << 0) | ((u16)0x0 << 16)), -1, 0x19164, 12, 1, 14,

        -4,
};

const s32 anim_0866__v15_l0[] = {
    -2, 178, (((u16)16 << 0) | ((u16)0x10 << 16)), 1, -1,

        -4,
};

const s32 *const anim_0866[16] = {
    anim_0866__v0_l0, anim_0866__v1_l0, anim_0866__v2_l0, anim_0866__v3_l0, anim_0866__v4_l0, anim_0866__v5_l0,
    anim_0866__v6_l0, anim_0866__v7_l0, anim_0866__v8_l0, anim_0866__v9_l0, anim_0866__v10_l0, anim_0866__v11_l0,
    anim_0866__v12_l0, anim_0866__v13_l0, anim_0866__v14_l0, anim_0866__v15_l0,
};

const s32 anim_0867__v0_l0[] = {
    -2, 445, (((u16)16 << 0) | ((u16)0x30 << 16)), -1, 0x19170, 12, 1, 0,

        -4,
};

const s32 *const anim_0867[1] = {
    anim_0867__v0_l0,
};

const s32 anim_0868__v0_l0[] = {
    -2, 179, (((u16)16 << 0) | ((u16)0x20 << 16)), -1, 0x1917C, 18, 1, 0,

        -4,
};

const s32 anim_0868__v1_l0[] = {
    -2, 179, (((u16)16 << 0) | ((u16)0x20 << 16)), -1, 0x1918E, 8, 1, 1,

        -4,
};

const s32 anim_0868__v2_l0[] = {
    -2, 179, (((u16)16 << 0) | ((u16)0x20 << 16)), -1, 0x19196, 4, 1, 2,

        -4,
};

const s32 *const anim_0868[3] = {
    anim_0868__v0_l0,
    anim_0868__v1_l0,
    anim_0868__v2_l0,
};

const s32 anim_0869__v0_l0[] = {
    -2, 446, (((u16)16 << 0) | ((u16)0x0 << 16)), -1, 0x1919A, 18, 1, 0,

        -4,
};

const s32 anim_0869__v1_l0[] = {
    -2, 446, (((u16)16 << 0) | ((u16)0x0 << 16)), -1, 0x191AC, 8, 1, 1,

        -4,
};

const s32 anim_0869__v2_l0[] = {
    -2, 446, (((u16)16 << 0) | ((u16)0x0 << 16)), -1, 0x191B4, 14, 1, 2,

        -4,
};

const s32 *const anim_0869[3] = {
    anim_0869__v0_l0,
    anim_0869__v1_l0,
    anim_0869__v2_l0,
};

const s32 anim_0870__v0_l0[] = {
    -2, 68, (((u16)16 << 0) | ((u16)0x20 << 16)), -1, 0x191C2, 8, 1, 0,

        -4,
};

const s32 anim_0870__v1_l0[] = {
    -2, 68, (((u16)16 << 0) | ((u16)0x20 << 16)), -1, 0x191CA, 8, 1, 1,

        -4,
};

const s32 anim_0870__v2_l0[] = {
    -2, 68, (((u16)16 << 0) | ((u16)0x80 << 16)), -1, 0x191D2, 1, 1, 2,

        -4,
};

const s32 *const anim_0870[3] = {
    anim_0870__v0_l0,
    anim_0870__v1_l0,
    anim_0870__v2_l0,
};

const s32 anim_0871__v0_l0[] = {
    -2, 68, (((u16)16 << 0) | ((u16)0x20 << 16)), -1, 0x191D3, 28, 1, 0,

        -4,
};

const s32 *const anim_0871[1] = {
    anim_0871__v0_l0,
};

const s32 anim_0872__v0_l0[] = {
    -2, 447, (((u16)16 << 0) | ((u16)0x0 << 16)), -1, 0x191EF, 8, 1, 0,

        -4,
};

const s32 *const anim_0872[1] = {
    anim_0872__v0_l0,
};

const s32 anim_0873__v0_l0[] = {
    -2, 68, (((u16)16 << 0) | ((u16)0x20 << 16)), -1, 0x191F7, 18, 1, 0,

        -4,
};

const s32 *const anim_0873[1] = {
    anim_0873__v0_l0,
};

const s32 anim_0874__v0_l0[] = {
    -2, 448, (((u16)16 << 0) | ((u16)0x70 << 16)), -1, 0x19209, 96, 1, 0,

        -4,
};

const s32 *const anim_0874[1] = {
    anim_0874__v0_l0,
};

const s32 anim_0875__v0_l0[] = {
    -2, 449, (((u16)16 << 0) | ((u16)0x60 << 16)), -1, 0x19269, 20, 1, 0,

        -4,
};

const s32 *const anim_0875[1] = {
    anim_0875__v0_l0,
};

const s32 anim_0876__v0_l0[] = {
    -2, 450, (((u16)16 << 0) | ((u16)0x70 << 16)), -1, 0x1927D, 64, 1, 0,

        -4,
};

const s32 *const anim_0876[1] = {
    anim_0876__v0_l0,
};

const s32 anim_0877__v0_l0[] = {
    -2, 451, (((u16)16 << 0) | ((u16)0x40 << 16)), -1, 0x192BD, 144, 1, 0,

        -4,
};

const s32 anim_0877__v1_l0[] = {
    -2, 451, (((u16)16 << 0) | ((u16)0x40 << 16)), -1, 0x1934D, 144, 1, 1,

        -4,
};

const s32 anim_0877__v2_l0[] = {
    -2, 451, (((u16)16 << 0) | ((u16)0x40 << 16)), -1, 0x193DD, 144, 1, 2,

        -4,
};

const s32 anim_0877__v3_l0[] = {
    -2, 451, (((u16)16 << 0) | ((u16)0x40 << 16)), -1, 0x1946D, 144, 1, 3,

        -4,
};

const s32 *const anim_0877[4] = {
    anim_0877__v0_l0,
    anim_0877__v1_l0,
    anim_0877__v2_l0,
    anim_0877__v3_l0,
};

const s32 anim_0878__v0_l0[] = {
    -2, 179, (((u16)16 << 0) | ((u16)0x0 << 16)), -1, 0x194FD, 18, 1, 0,

        -4,
};

const s32 anim_0878__v1_l0[] = {
    -2, 179, (((u16)16 << 0) | ((u16)0x0 << 16)), -1, 0x1950F, 16, 1, 1,

        -4,
};

const s32 anim_0878__v2_l0[] = {
    -2, 179, (((u16)16 << 0) | ((u16)0x0 << 16)), -1, 0x1951F, 16, 1, 2,

        -4,
};

const s32 *const anim_0878[3] = {
    anim_0878__v0_l0,
    anim_0878__v1_l0,
    anim_0878__v2_l0,
};

const s32 anim_0879__v0_l0[] = {
    -2, 179, (((u16)16 << 0) | ((u16)0x0 << 16)), -1, 0x1952F, 115, 1, 0,

        -4,
};

const s32 anim_0879__v1_l0[] = {
    -2, 179, (((u16)16 << 0) | ((u16)0x0 << 16)), -1, 0x195A2, 130, 1, 1,

        -4,
};

const s32 anim_0879__v2_l0[] = {
    -2, 179, (((u16)16 << 0) | ((u16)0x0 << 16)), -1, 0x19624, 120, 1, 2,

        -4,
};

const s32 *const anim_0879[3] = {
    anim_0879__v0_l0,
    anim_0879__v1_l0,
    anim_0879__v2_l0,
};

const s32 anim_0880__v0_l0[] = {
    -2, 179, (((u16)16 << 0) | ((u16)0x0 << 16)), -1, 0x1969C, 40, 1, 0,

        -4,
};

const s32 anim_0880__v1_l0[] = {
    -2, 179, (((u16)16 << 0) | ((u16)0x0 << 16)), -1, 0x196C4, 34, 1, 1,

        -4,
};

const s32 anim_0880__v2_l0[] = {
    -2, 179, (((u16)16 << 0) | ((u16)0x0 << 16)), -1, 0x196E6, 42, 1, 2,

        -4,
};

const s32 anim_0880__v3_l0[] = {
    -2, 179, (((u16)16 << 0) | ((u16)0x0 << 16)), -1, 0x19710, 36, 1, 3,

        -4,
};

const s32 anim_0880__v4_l0[] = {
    -2, 179, (((u16)16 << 0) | ((u16)0x0 << 16)), -1, 0x19734, 36, 1, 4,

        -4,
};

const s32 anim_0880__v5_l0[] = {
    -2, 179, (((u16)16 << 0) | ((u16)0x0 << 16)), -1, 0x19758, 34, 1, 5,

        -4,
};

const s32 anim_0880__v6_l0[] = {
    -2, 179, (((u16)16 << 0) | ((u16)0x0 << 16)), -1, 0x1977A, 36, 1, 6,

        -4,
};

const s32 anim_0880__v7_l0[] = {
    -2, 179, (((u16)16 << 0) | ((u16)0x0 << 16)), -1, 0x1979E, 16, 1, 7,

        -4,
};

const s32 anim_0880__v8_l0[] = {
    -2, 179, (((u16)16 << 0) | ((u16)0x0 << 16)), -1, 0x197AE, 30, 1, 8,

        -4,
};

const s32 anim_0880__v9_l0[] = {
    -2, 179, (((u16)16 << 0) | ((u16)0xF0 << 16)), -1, 0x197CC, 20, 1, 9,

        -4,
};

const s32 anim_0880__v10_l0[] = {
    -2, 179, (((u16)16 << 0) | ((u16)0xF0 << 16)), -1, 0x197E0, 38, 1, 10,

        -4,
};

const s32 anim_0880__v11_l0[] = {
    -2, 179, (((u16)16 << 0) | ((u16)0xF0 << 16)), -1, 0x19806, 24, 1, 11,

        -4,
};

const s32 anim_0880__v12_l0[] = {
    -2, 179, (((u16)16 << 0) | ((u16)0xF0 << 16)), -1, 0x1981E, 8, 1, 12,

        -4,
};

const s32 *const anim_0880[13] = {
    anim_0880__v0_l0, anim_0880__v1_l0, anim_0880__v2_l0, anim_0880__v3_l0, anim_0880__v4_l0, anim_0880__v5_l0, anim_0880__v6_l0,
    anim_0880__v7_l0, anim_0880__v8_l0, anim_0880__v9_l0, anim_0880__v10_l0, anim_0880__v11_l0, anim_0880__v12_l0,
};

const s32 anim_0881__v0_l0[] = {
    -2, 135, (((u16)16 << 0) | ((u16)0x20 << 16)), -1, 0x19826, 24, 1, 0,

        -4,
};

const s32 anim_0881__v1_l0[] = {
    -2, 135, (((u16)16 << 0) | ((u16)0x20 << 16)), -1, 0x1983E, 21, 1, 1,

        -4,
};

const s32 anim_0881__v2_l0[] = {
    -2, 135, (((u16)16 << 0) | ((u16)0x20 << 16)), -1, 0x19853, 16, 1, 2,

        -4,
};

const s32 anim_0881__v3_l0[] = {
    -2, 135, (((u16)16 << 0) | ((u16)0x20 << 16)), -1, 0x19863, 16, 1, 3,

        -4,
};

const s32 anim_0881__v4_l0[] = {
    -2, 135, (((u16)16 << 0) | ((u16)0x20 << 16)), -1, 0x19873, 16, 1, 4,

        -4,
};

const s32 anim_0881__v5_l0[] = {
    -2, 135, (((u16)16 << 0) | ((u16)0x20 << 16)), -1, 0x19883, 16, 1, 5,

        -4,
};

const s32 anim_0881__v6_l0[] = {
    -2, 135, (((u16)16 << 0) | ((u16)0x20 << 16)), -1, 0x19893, 16, 1, 6,

        -4,
};

const s32 anim_0881__v7_l0[] = {
    -2, 135, (((u16)16 << 0) | ((u16)0x20 << 16)), -1, 0x198A3, 16, 1, 7,

        -4,
};

const s32 anim_0881__v8_l0[] = {
    -2, 452, (((u16)16 << 0) | ((u16)0x40 << 16)), -1, 0x198B3, 20, 1, 8,

        -4,
};

const s32 anim_0881__v9_l0[] = {
    -2, 452, (((u16)16 << 0) | ((u16)0x40 << 16)), -1, 0x198C7, 20, 1, 9,

        -4,
};

const s32 anim_0881__v10_l0[] = {
    -2, 452, (((u16)16 << 0) | ((u16)0x40 << 16)), -1, 0x198DB, 18, 1, 10,

        -4,
};

const s32 anim_0881__v11_l0[] = {
    -2, 452, (((u16)16 << 0) | ((u16)0x40 << 16)), -1, 0x198ED, 20, 1, 11,

        -4,
};

const s32 *const anim_0881[12] = {
    anim_0881__v0_l0, anim_0881__v1_l0, anim_0881__v2_l0, anim_0881__v3_l0, anim_0881__v4_l0, anim_0881__v5_l0,
    anim_0881__v6_l0, anim_0881__v7_l0, anim_0881__v8_l0, anim_0881__v9_l0, anim_0881__v10_l0, anim_0881__v11_l0,
};

const s32 anim_0882__v0_l0[] = {
    -2, 453, (((u16)16 << 0) | ((u16)0x0 << 16)), -1, 0x19901, 10, 1, 0,

        -4,
};

const s32 anim_0882__v1_l0[] = {
    -2, 453, (((u16)16 << 0) | ((u16)0x0 << 16)), -1, 0x1990B, 12, 1, 1,

        -4,
};

const s32 *const anim_0882[2] = {
    anim_0882__v0_l0,
    anim_0882__v1_l0,
};

const s32 anim_0883__v0_l0[] = {
    -2, 454, (((u16)16 << 0) | ((u16)0x0 << 16)), -1, 0x19917, 30, 1, 0,

        -4,
};

const s32 anim_0883__v1_l0[] = {
    -2, 454, (((u16)16 << 0) | ((u16)0x0 << 16)), -1, 0x19935, 32, 1, 1,

        -4,
};

const s32 anim_0883__v2_l0[] = {
    -2, 454, (((u16)16 << 0) | ((u16)0x0 << 16)), -1, 0x19955, 30, 1, 2,

        -4,
};

const s32 anim_0883__v3_l0[] = {
    -2, 454, (((u16)16 << 0) | ((u16)0x0 << 16)), -1, 0x19973, 30, 1, 3,

        -4,
};

const s32 anim_0883__v4_l0[] = {
    -2, 454, (((u16)16 << 0) | ((u16)0x0 << 16)), -1, 0x19991, 34, 1, 4,

        -4,
};

const s32 anim_0883__v5_l0[] = {
    -2, 454, (((u16)16 << 0) | ((u16)0x0 << 16)), -1, 0x199B3, 26, 1, 5,

        -4,
};

const s32 anim_0883__v6_l0[] = {
    -2, 454, (((u16)16 << 0) | ((u16)0x0 << 16)), -1, 0x199CD, 34, 1, 6,

        -4,
};

const s32 anim_0883__v7_l0[] = {
    -2, 454, (((u16)16 << 0) | ((u16)0x0 << 16)), -1, 0x199EF, 12, 1, 7,

        -4,
};

const s32 anim_0883__v8_l0[] = {
    -2, 454, (((u16)16 << 0) | ((u16)0x0 << 16)), -1, 0x199FB, 22, 1, 8,

        -4,
};

const s32 anim_0883__v9_l0[] = {
    -2, 454, (((u16)16 << 0) | ((u16)0xF0 << 16)), -1, 0x19A11, 18, 1, 9,

        -4,
};

const s32 anim_0883__v10_l0[] = {
    -2, 454, (((u16)16 << 0) | ((u16)0xF0 << 16)), -1, 0x19A23, 18, 1, 10,

        -4,
};

const s32 anim_0883__v11_l0[] = {
    -2, 454, (((u16)16 << 0) | ((u16)0xF0 << 16)), -1, 0x19A35, 18, 1, 11,

        -4,
};

const s32 anim_0883__v12_l0[] = {
    -2, 454, (((u16)16 << 0) | ((u16)0xF0 << 16)), -1, 0x19A47, 10, 1, 12,

        -4,
};

const s32 *const anim_0883[13] = {
    anim_0883__v0_l0, anim_0883__v1_l0, anim_0883__v2_l0, anim_0883__v3_l0, anim_0883__v4_l0, anim_0883__v5_l0, anim_0883__v6_l0,
    anim_0883__v7_l0, anim_0883__v8_l0, anim_0883__v9_l0, anim_0883__v10_l0, anim_0883__v11_l0, anim_0883__v12_l0,
};

const s32 anim_0884__v0_l0[] = {
    -2, 179, (((u16)16 << 0) | ((u16)0x0 << 16)), -1, 0x19A51, 10, 1, 0,

        -4,
};

const s32 anim_0884__v1_l0[] = {
    -2, 179, (((u16)16 << 0) | ((u16)0x0 << 16)), -1, 0x19A5B, 10, 1, 1,

        -4,
};

const s32 anim_0884__v2_l0[] = {
    -2, 179, (((u16)16 << 0) | ((u16)0x0 << 16)), -1, 0x19A65, 12, 1, 2,

        -4,
};

const s32 anim_0884__v3_l0[] = {
    -2, 68, (((u16)16 << 0) | ((u16)0x60 << 16)), -1, 0x19A71, 8, 1, 3,

        -4,
};

const s32 anim_0884__v4_l0[] = {
    -2, 68, (((u16)16 << 0) | ((u16)0x60 << 16)), -1, 0x19A79, 24, 1, 4,

        -4,
};

const s32 *const anim_0884[5] = {
    anim_0884__v0_l0, anim_0884__v1_l0, anim_0884__v2_l0, anim_0884__v3_l0, anim_0884__v4_l0,
};

const s32 anim_0885__v0_l0[] = {
    -2, 455, (((u16)16 << 0) | ((u16)0x0 << 16)), -1, 0x19A91, 18, 1, 0,

        -4,
};

const s32 anim_0885__v1_l0[] = {
    -2, 455, (((u16)16 << 0) | ((u16)0x0 << 16)), -1, 0x19AA3, 18, 1, 1,

        -4,
};

const s32 anim_0885__v2_l0[] = {
    -2, 455, (((u16)16 << 0) | ((u16)0x0 << 16)), -1, 0x19AB5, 22, 1, 2,

        -4,
};

const s32 anim_0885__v3_l0[] = {
    -2, 455, (((u16)16 << 0) | ((u16)0x0 << 16)), -1, 0x19ACB, 18, 1, 3,

        -4,
};

const s32 anim_0885__v4_l0[] = {
    -2, 455, (((u16)16 << 0) | ((u16)0x0 << 16)), -1, 0x19ADD, 26, 1, 4,

        -4,
};

const s32 anim_0885__v5_l0[] = {
    -2, 455, (((u16)16 << 0) | ((u16)0x0 << 16)), -1, 0x19AF7, 10, 1, 5,

        -4,
};

const s32 anim_0885__v6_l0[] = {
    -2, 455, (((u16)16 << 0) | ((u16)0x0 << 16)), -1, 0x19B01, 14, 1, 6,

        -4,
};

const s32 anim_0885__v7_l0[] = {
    -2, 455, (((u16)16 << 0) | ((u16)0x0 << 16)), -1, 0x19B0F, 10, 1, 7,

        -4,
};

const s32 anim_0885__v8_l0[] = {
    -2, 455, (((u16)16 << 0) | ((u16)0x0 << 16)), -1, 0x19B19, 10, 1, 8,

        -4,
};

const s32 anim_0885__v9_l0[] = {
    -2, 455, (((u16)16 << 0) | ((u16)0x0 << 16)), -1, 0x19B23, 10, 1, 9,

        -4,
};

const s32 anim_0885__v10_l0[] = {
    -2, 455, (((u16)16 << 0) | ((u16)0x0 << 16)), -1, 0x19B2D, 10, 1, 10,

        -4,
};

const s32 *const anim_0885[11] = {
    anim_0885__v0_l0, anim_0885__v1_l0, anim_0885__v2_l0, anim_0885__v3_l0, anim_0885__v4_l0, anim_0885__v5_l0,
    anim_0885__v6_l0, anim_0885__v7_l0, anim_0885__v8_l0, anim_0885__v9_l0, anim_0885__v10_l0,
};

const s32 anim_0886__v0_l0[] = {
    -2, 456, (((u16)16 << 0) | ((u16)0x90 << 16)), -1, 0x19B37, 35, 1, 0,

        -4,
};

const s32 *const anim_0886[1] = {
    anim_0886__v0_l0,
};

const s32 anim_0887__v0_l0[] = {
    -2, 457, (((u16)16 << 0) | ((u16)0x90 << 16)), -1, 0x19B5A, 40, 15, 0,

        -1, 0x19B82, 40, 15, 1,

            -1, 0x19BAA, 35, 15, 2,

                -3, 18,
};

const s32 anim_0887__v1_l0[] = {
    -2, 457, (((u16)16 << 0) | ((u16)0x90 << 16)), -1, 0x19BCD, 35, 15, 3,

        -1, 0x19BF0, 35, 15, 4,

            -1, 0x19C13, 35, 15, 5,

                -3, 18,
};

const s32 anim_0887__v2_l0[] = {
    -2, 457, (((u16)16 << 0) | ((u16)0x90 << 16)), -1, 0x19C36, 40, 15, 6,

        -1, 0x19C5E, 40, 15, 7,

            -1, 0x19C86, 40, 15, 8,

                -3, 18,
};

const s32 anim_0887__v3_l0[] = {
    -2, 457, (((u16)16 << 0) | ((u16)0x90 << 16)), -1, 0x19CAE, 30, 15, 9,

        -1, 0x19CCC, 30, 30, 10,

            -1, 0x19CAE, 30, 15, 9,

                -3, 18,
};

const s32 anim_0887__v4_l0[] = {
    -2, 457, (((u16)16 << 0) | ((u16)0x90 << 16)), -1, 0x19CEA, 30, 8, 11,

        -1, 0x19D08, 30, 8, 12,

            -1, 0x19CEA, 30, 8, 11,

                -3, 18,
};

const s32 anim_0887__v5_l0[] = {
    -2, 457, (((u16)16 << 0) | ((u16)0x90 << 16)), -1, 0x19D26, 40, 15, 13,

        -1, 0x19D4E, 40, 30, 14,

            -1, 0x19D76, 35, 15, 15,

                -3, 18,
};

const s32 anim_0887__v6_l0[] = {
    -2, 457, (((u16)16 << 0) | ((u16)0x90 << 16)), -1, 0x19D99, 30, 15, 16,

        -1, 0x19DB7, 30, 30, 17,

            -1, 0x19DD5, 30, 15, 18,

                -3, 18,
};

const s32 *const anim_0887[7] = {
    anim_0887__v0_l0, anim_0887__v1_l0, anim_0887__v2_l0, anim_0887__v3_l0, anim_0887__v4_l0, anim_0887__v5_l0, anim_0887__v6_l0,
};

const s32 anim_0888__v0_l0[] = {
    -2, 456, (((u16)16 << 0) | ((u16)0x90 << 16)), -1, 0x19DF3, 35, 50, 0,

        -1, 0x19E16, 35, 8, 1,

            -1, 0x19E39, 35, 8, 2,

                -1, 0x19E5C, 35, 8, 3,

                    -1, 0x19E7F, 35, 8, 4,

                        -1, 0x19EA2, 35, 8, 5,

                            -1, 0x19EC5, 35, 50, 6,

                                -1, 0x19EE8, 35, 8, 7,

                                    -1, 0x19F0B, 35, 8, 8,

                                        -1, 0x19F2E, 35, 8, 9,

                                            -1, 0x19F51, 35, 8, 10,

                                                -1, 0x19F74, 35, 8, 11,

                                                    -3, 63,
};

const s32 anim_0888__v1_l0[] = {
    -2, 456, (((u16)16 << 0) | ((u16)0x90 << 16)), -1, 0x19E16, 35, 8, 1,

        -1, 0x19E39, 35, 8, 2,

            -1, 0x19E5C, 35, 8, 3,

                -1, 0x19E7F, 35, 8, 4,

                    -1, 0x19EA2, 35, 8, 5,

                        -1, 0x19EC5, 35, 8, 6,

                            -4,
};

const s32 anim_0888__v2_l0[] = {
    -2, 456, (((u16)16 << 0) | ((u16)0x90 << 16)), -1, 0x19EE8, 35, 8, 7,

        -1, 0x19F0B, 35, 8, 8,

            -1, 0x19F2E, 35, 8, 9,

                -1, 0x19F51, 35, 8, 10,

                    -1, 0x19F74, 35, 8, 11,

                        -1, 0x19DF3, 35, 8, 0,

                            -4,
};

const s32 *const anim_0888[3] = {
    anim_0888__v0_l0,
    anim_0888__v1_l0,
    anim_0888__v2_l0,
};

const s32 anim_0889__v0_l0[] = {
    -2, 456, (((u16)16 << 0) | ((u16)0x90 << 16)), -1, 0x19F97, 42, 1, 0,

        -4,
};

const s32 *const anim_0889[1] = {
    anim_0889__v0_l0,
};

const s32 anim_0890__v0_l0[] = {
    -2, 458, (((u16)16 << 0) | ((u16)0x20 << 16)), -1, 0x19FC1, 24, 1, 0,

        -4,
};

const s32 *const anim_0890[1] = {
    anim_0890__v0_l0,
};

const s32 anim_0891__v0_l0[] = {
    -2, 68, (((u16)16 << 0) | ((u16)0x20 << 16)), -1, 0x19FD9, 40, 1, 0,

        -4,
};

const s32 anim_0891__v1_l0[] = {
    -2, 68, (((u16)16 << 0) | ((u16)0x20 << 16)), -1, 0x1A001, 28, 1, 1,

        -4,
};

const s32 anim_0891__v2_l0[] = {
    -2, 68, (((u16)16 << 0) | ((u16)0x20 << 16)), -1, 0x1A01D, 12, 1, 2,

        -4,
};

const s32 anim_0891__v3_l0[] = {
    -2, 68, (((u16)16 << 0) | ((u16)0x20 << 16)), -1, 0x1A029, 8, 1, 3,

        -4,
};

const s32 anim_0891__v4_l0[] = {
    -2, 68, (((u16)16 << 0) | ((u16)0x20 << 16)), -1, 0x1A031, 4, 1, 4,

        -4,
};

const s32 anim_0891__v5_l0[] = {
    -2, 68, (((u16)16 << 0) | ((u16)0x20 << 16)), -1, 0x1A035, 4, 1, 5,

        -4,
};

const s32 anim_0891__v6_l0[] = {
    -2, 68, (((u16)16 << 0) | ((u16)0x20 << 16)), -1, 0x1A039, 4, 1, 6,

        -4,
};

const s32 anim_0891__v7_l0[] = {
    -2, 68, (((u16)16 << 0) | ((u16)0x20 << 16)), -1, 0x1A03D, 4, 1, 7,

        -4,
};

const s32 anim_0891__v8_l0[] = {
    -2, 68, (((u16)16 << 0) | ((u16)0x20 << 16)), -1, 0x1A041, 12, 1, 8,

        -4,
};

const s32 anim_0891__v9_l0[] = {
    -2, 68, (((u16)16 << 0) | ((u16)0x20 << 16)), -1, 0x1A04D, 10, 1, 9,

        -4,
};

const s32 *const anim_0891[10] = {
    anim_0891__v0_l0, anim_0891__v1_l0, anim_0891__v2_l0, anim_0891__v3_l0, anim_0891__v4_l0,
    anim_0891__v5_l0, anim_0891__v6_l0, anim_0891__v7_l0, anim_0891__v8_l0, anim_0891__v9_l0,
};

const s32 anim_0892__v0_l0[] = {
    -2, 453, (((u16)16 << 0) | ((u16)0x0 << 16)), -1, 0x1A057, 42, 1, 0,

        -4,
};

const s32 anim_0892__v1_l0[] = {
    -2, 453, (((u16)16 << 0) | ((u16)0x0 << 16)), -1, 0x1A081, 42, 1, 1,

        -4,
};

const s32 anim_0892__v2_l0[] = {
    -2, 453, (((u16)16 << 0) | ((u16)0x0 << 16)), -1, 0x1A0AB, 10, 1, 2,

        -4,
};

const s32 anim_0892__v3_l0[] = {
    -2, 453, (((u16)16 << 0) | ((u16)0x0 << 16)), -1, 0x1A0B5, 12, 1, 3,

        -4,
};

const s32 *const anim_0892[4] = {
    anim_0892__v0_l0,
    anim_0892__v1_l0,
    anim_0892__v2_l0,
    anim_0892__v3_l0,
};

const s32 anim_0893__v0_l0[] = {
    -2, 179, (((u16)16 << 0) | ((u16)0x0 << 16)), -1, 0x1A0C1, 46, 1, 0,

        -3, 8,
};

const s32 *const anim_0893[1] = {
    anim_0893__v0_l0,
};

const s32 anim_0894__v0_l0[] = {
    -2, 68, (((u16)16 << 0) | ((u16)0x20 << 16)), -1, 0x1A0EF, 18, 1, 0,

        -4,
};

const s32 anim_0894__v1_l0[] = {
    -2, 68, (((u16)16 << 0) | ((u16)0x20 << 16)), -1, 0x1A101, 22, 1, 1,

        -4,
};

const s32 anim_0894__v2_l0[] = {
    -2, 68, (((u16)16 << 0) | ((u16)0x20 << 16)), -1, 0x1A117, 26, 1, 2,

        -4,
};

const s32 anim_0894__v3_l0[] = {
    -2, 68, (((u16)16 << 0) | ((u16)0x20 << 16)), -1, 0x1A131, 32, 1, 3,

        -4,
};

const s32 anim_0894__v4_l0[] = {
    -2, 68, (((u16)16 << 0) | ((u16)0x20 << 16)), -1, 0x1A151, 15, 1, 4,

        -4,
};

const s32 anim_0894__v5_l0[] = {
    -2, 68, (((u16)16 << 0) | ((u16)0x20 << 16)), -1, 0x1A160, 8, 1, 5,

        -4,
};

const s32 anim_0894__v6_l0[] = {
    -2, 68, (((u16)16 << 0) | ((u16)0x20 << 16)), -1, 0x1A168, 8, 1, 6,

        -4,
};

const s32 anim_0894__v7_l0[] = {
    -2, 68, (((u16)16 << 0) | ((u16)0x20 << 16)), -1, 0x1A170, 8, 1, 7,

        -4,
};

const s32 anim_0894__v8_l0[] = {
    -2, 68, (((u16)16 << 0) | ((u16)0x20 << 16)), -1, 0x1A178, 8, 1, 8,

        -4,
};

const s32 *const anim_0894[9] = {
    anim_0894__v0_l0, anim_0894__v1_l0, anim_0894__v2_l0, anim_0894__v3_l0, anim_0894__v4_l0,
    anim_0894__v5_l0, anim_0894__v6_l0, anim_0894__v7_l0, anim_0894__v8_l0,
};

const s32 anim_0895__v0_l0[] = {
    -2, 459, (((u16)16 << 0) | ((u16)0x0 << 16)), -1, 0x1A180, 10, 1, 0,

        -4,
};

const s32 anim_0895__v1_l0[] = {
    -2, 459, (((u16)16 << 0) | ((u16)0x0 << 16)), -1, 0x1A18A, 20, 1, 1,

        -4,
};

const s32 *const anim_0895[2] = {
    anim_0895__v0_l0,
    anim_0895__v1_l0,
};

const s32 anim_0896__v0_l0[] = {
    -2, 460, (((u16)16 << 0) | ((u16)0x90 << 16)), -1, 0x1A19E, 8, 1, 0,

        -4,
};

const s32 anim_0896__v1_l0[] = {
    -2, 460, (((u16)16 << 0) | ((u16)0x90 << 16)), -1, 0x1A1A6, 10, 1, 1,

        -4,
};

const s32 anim_0896__v2_l0[] = {
    -2, 460, (((u16)16 << 0) | ((u16)0x90 << 16)), -1, 0x1A1B0, 10, 1, 2,

        -4,
};

const s32 anim_0896__v3_l0[] = {
    -2, 460, (((u16)16 << 0) | ((u16)0x90 << 16)), -1, 0x1A1BA, 4, 1, 3,

        -4,
};

const s32 anim_0896__v4_l0[] = {
    -2, 460, (((u16)16 << 0) | ((u16)0x90 << 16)), -1, 0x1A1BE, 2, 1, 4,

        -4,
};

const s32 anim_0896__v5_l0[] = {
    -2, 460, (((u16)16 << 0) | ((u16)0x90 << 16)), -1, 0x1A1C0, 4, 1, 5,

        -4,
};

const s32 anim_0896__v6_l0[] = {
    -2, 460, (((u16)16 << 0) | ((u16)0x90 << 16)), -1, 0x1A1C4, 4, 1, 6,

        -4,
};

const s32 anim_0896__v7_l0[] = {
    -2, 460, (((u16)16 << 0) | ((u16)0x90 << 16)), -1, 0x1A1C8, 4, 1, 7,

        -4,
};

const s32 anim_0896__v8_l0[] = {
    -2, 460, (((u16)16 << 0) | ((u16)0x90 << 16)), -1, 0x1A1CC, 4, 1, 8,

        -4,
};

const s32 anim_0896__v9_l0[] = {
    -2, 460, (((u16)16 << 0) | ((u16)0x90 << 16)), -1, 0x1A1D0, 4, 1, 9,

        -4,
};

const s32 anim_0896__v10_l0[] = {
    -2, 460, (((u16)16 << 0) | ((u16)0x90 << 16)), -1, 0x1A1D4, 4, 1, 10,

        -4,
};

const s32 anim_0896__v11_l0[] = {
    -2, 460, (((u16)16 << 0) | ((u16)0x90 << 16)), -1, 0x1A1D8, 4, 1, 11,

        -4,
};

const s32 anim_0896__v12_l0[] = {
    -2, 460, (((u16)16 << 0) | ((u16)0x90 << 16)), -1, 0x1A1DC, 4, 1, 12,

        -4,
};

const s32 anim_0896__v13_l0[] = {
    -2, 460, (((u16)16 << 0) | ((u16)0x90 << 16)), -1, 0x1A1E0, 14, 1, 13,

        -4,
};

const s32 *const anim_0896[14] = {
    anim_0896__v0_l0, anim_0896__v1_l0, anim_0896__v2_l0, anim_0896__v3_l0, anim_0896__v4_l0, anim_0896__v5_l0, anim_0896__v6_l0,
    anim_0896__v7_l0, anim_0896__v8_l0, anim_0896__v9_l0, anim_0896__v10_l0, anim_0896__v11_l0, anim_0896__v12_l0, anim_0896__v13_l0,
};

const s32 anim_0897__v0_l0[] = {
    -2, 461, (((u16)16 << 0) | ((u16)0x0 << 16)), -1, 0x1A1EE, 38, 1, 0,

        -4,
};

const s32 anim_0897__v1_l0[] = {
    -2, 461, (((u16)16 << 0) | ((u16)0x0 << 16)), -1, 0x1A214, 40, 1, 1,

        -4,
};

const s32 *const anim_0897[2] = {
    anim_0897__v0_l0,
    anim_0897__v1_l0,
};

const s32 anim_0898__v0_l0[] = {
    -2, 88, (((u16)16 << 0) | ((u16)0x0 << 16)), -1, 0x1A23C, 20, 1, 0,

        -4,
};

const s32 anim_0898__v1_l0[] = {
    -2, 2, (((u16)16 << 0) | ((u16)0x10 << 16)), -1, 0x1A250, 24, 1, 1,

        -4,
};

const s32 anim_0898__v2_l0[] = {
    -2, 462, (((u16)16 << 0) | ((u16)0x20 << 16)), -1, 0x1A268, 20, 1, 2,

        -4,
};

const s32 anim_0898__v3_l0[] = {
    -2, 7, (((u16)16 << 0) | ((u16)0x30 << 16)), -1, 0x1A27C, 20, 1, 3,

        -4,
};

const s32 *const anim_0898[4] = {
    anim_0898__v0_l0,
    anim_0898__v1_l0,
    anim_0898__v2_l0,
    anim_0898__v3_l0,
};

const s32 anim_0899__v0_l0[] = {
    -2, 453, (((u16)16 << 0) | ((u16)0x0 << 16)), -1, 0x1A290, 22, 1, 0,

        -4,
};

const s32 anim_0899__v1_l0[] = {
    -2, 453, (((u16)16 << 0) | ((u16)0x0 << 16)), -1, 0x1A2A6, 18, 1, 1,

        -4,
};

const s32 anim_0899__v2_l0[] = {
    -2, 453, (((u16)16 << 0) | ((u16)0x0 << 16)), -1, 0x1A2B8, 18, 1, 2,

        -4,
};

const s32 anim_0899__v3_l0[] = {
    -2, 453, (((u16)16 << 0) | ((u16)0x0 << 16)), -1, 0x1A2CA, 16, 1, 3,

        -4,
};

const s32 anim_0899__v4_l0[] = {
    -2, 453, (((u16)16 << 0) | ((u16)0x0 << 16)), -1, 0x1A2DA, 26, 1, 4,

        -4,
};

const s32 anim_0899__v5_l0[] = {
    -2, 453, (((u16)16 << 0) | ((u16)0x0 << 16)), -1, 0x1A2F4, 14, 1, 5,

        -4,
};

const s32 anim_0899__v6_l0[] = {
    -2, 455, (((u16)16 << 0) | ((u16)0x0 << 16)), -1, 0x1A302, 14, 1, 6,

        -4,
};

const s32 anim_0899__v7_l0[] = {
    -2, 453, (((u16)16 << 0) | ((u16)0x0 << 16)), -1, 0x1A310, 10, 1, 7,

        -4,
};

const s32 anim_0899__v8_l0[] = {
    -2, 453, (((u16)16 << 0) | ((u16)0x0 << 16)), -1, 0x1A31A, 10, 1, 8,

        -4,
};

const s32 anim_0899__v9_l0[] = {
    -2, 453, (((u16)16 << 0) | ((u16)0x0 << 16)), -1, 0x1A324, 10, 1, 9,

        -4,
};

const s32 anim_0899__v10_l0[] = {
    -2, 453, (((u16)16 << 0) | ((u16)0x0 << 16)), -1, 0x1A32E, 10, 1, 10,

        -4,
};

const s32 *const anim_0899[11] = {
    anim_0899__v0_l0, anim_0899__v1_l0, anim_0899__v2_l0, anim_0899__v3_l0, anim_0899__v4_l0, anim_0899__v5_l0,
    anim_0899__v6_l0, anim_0899__v7_l0, anim_0899__v8_l0, anim_0899__v9_l0, anim_0899__v10_l0,
};

const s32 anim_0900__v0_l0[] = {
    -2, 460, (((u16)16 << 0) | ((u16)0x90 << 16)), -1, 0x1A338, 6, 1, 0,

        -4,
};

const s32 anim_0900__v1_l0[] = {
    -2, 460, (((u16)16 << 0) | ((u16)0x90 << 16)), -1, 0x1A33E, 6, 1, 1,

        -4,
};

const s32 anim_0900__v2_l0[] = {
    -2, 460, (((u16)16 << 0) | ((u16)0x90 << 16)), -1, 0x1A344, 14, 1, 2,

        -4,
};

const s32 *const anim_0900[3] = {
    anim_0900__v0_l0,
    anim_0900__v1_l0,
    anim_0900__v2_l0,
};

const s32 anim_0901__v0_l0[] = {
    -2, 461, (((u16)16 << 0) | ((u16)0x0 << 16)), -1, 0x1A352, 34, 1, 0,

        -4,
};

const s32 anim_0901__v1_l0[] = {
    -2, 461, (((u16)16 << 0) | ((u16)0x0 << 16)), -1, 0x1A374, 30, 1, 1,

        -4,
};

const s32 *const anim_0901[2] = {
    anim_0901__v0_l0,
    anim_0901__v1_l0,
};

const s32 anim_0902__v0_l0[] = {
    -2, 463, (((u16)16 << 0) | ((u16)0x60 << 16)), -1, 0x1A392, 42, 1, 0,

        -4,
};

const s32 anim_0902__v1_l0[] = {
    -2, 463, (((u16)16 << 0) | ((u16)0x60 << 16)), -1, 0x1A3BC, 44, 1, 1,

        -3, 8,
};

const s32 anim_0902__v2_l0[] = {
    -2, 463, (((u16)16 << 0) | ((u16)0x60 << 16)), -1, 0x1A3E8, 44, 1, 2,

        -3, 8,
};

const s32 anim_0902__v3_l0[] = {
    -2, 463, (((u16)16 << 0) | ((u16)0x60 << 16)), -1, 0x1A414, 40, 1, 3,

        -3, 8,
};

const s32 *const anim_0902[4] = {
    anim_0902__v0_l0,
    anim_0902__v1_l0,
    anim_0902__v2_l0,
    anim_0902__v3_l0,
};

const s32 anim_0903__v0_l0[] = {
    -2, 68, (((u16)16 << 0) | ((u16)0x60 << 16)), -1, 0x1A43C, 12, 1, 0,

        -4,
};

const s32 anim_0903__v1_l0[] = {
    -2, 68, (((u16)16 << 0) | ((u16)0x60 << 16)), -1, 0x1A448, 13, 1, 1,

        -4,
};

const s32 anim_0903__v2_l0[] = {
    -2, 68, (((u16)16 << 0) | ((u16)0x60 << 16)), -1, 0x1A455, 12, 1, 2,

        -4,
};

const s32 anim_0903__v3_l0[] = {
    -2, 68, (((u16)16 << 0) | ((u16)0x60 << 16)), -1, 0x1A461, 11, 1, 3,

        -4,
};

const s32 *const anim_0903[4] = {
    anim_0903__v0_l0,
    anim_0903__v1_l0,
    anim_0903__v2_l0,
    anim_0903__v3_l0,
};

const s32 anim_0904__v0_l0[] = {
    -2, 68, (((u16)16 << 0) | ((u16)0x60 << 16)), -1, 0x1A46C, 8, 1, 0,

        -4,
};

const s32 anim_0904__v1_l0[] = {
    -2, 68, (((u16)16 << 0) | ((u16)0x60 << 16)), -1, 0x1A474, 12, 1, 1,

        -4,
};

const s32 anim_0904__v2_l0[] = {
    -2, 68, (((u16)16 << 0) | ((u16)0x60 << 16)), -1, 0x1A480, 12, 1, 2,

        -4,
};

const s32 anim_0904__v3_l0[] = {
    -2, 68, (((u16)16 << 0) | ((u16)0x60 << 16)), -1, 0x1A48C, 8, 1, 3,

        -4,
};

const s32 anim_0904__v4_l0[] = {
    -2, 68, (((u16)16 << 0) | ((u16)0x60 << 16)), -1, 0x1A494, 8, 1, 4,

        -4,
};

const s32 anim_0904__v5_l0[] = {
    -2, 68, (((u16)16 << 0) | ((u16)0x60 << 16)), -1, 0x1A49C, 8, 1, 5,

        -4,
};

const s32 anim_0904__v6_l0[] = {
    -2, 68, (((u16)16 << 0) | ((u16)0x60 << 16)), -1, 0x1A4A4, 8, 1, 6,

        -4,
};

const s32 *const anim_0904[7] = {
    anim_0904__v0_l0, anim_0904__v1_l0, anim_0904__v2_l0, anim_0904__v3_l0, anim_0904__v4_l0, anim_0904__v5_l0, anim_0904__v6_l0,
};

const s32 anim_0905__v0_l0[] = {
    -2, 68, (((u16)16 << 0) | ((u16)0x20 << 16)), -1, 0x1A4AC, 24, 60, 0,

        60, -1,

            -3, 10,
};

const s32 *const anim_0905[1] = {
    anim_0905__v0_l0,
};

const s32 anim_0906__v0_l0[] = {
    -2, 38, (((u16)16 << 0) | ((u16)0xB0 << 16)), -1, 0x1A4C4, 32, -6, 0, (((0 & 0xFF) << 0) | ((3 & 0xFF) << 8) | ((64 & 0xFF) << 16) | ((23 & 0xFF) << 24)), 1, 0,

        -4,
};

const s32 *const anim_0906[1] = {
    anim_0906__v0_l0,
};

const s32 anim_0907__v0_l0[] = {
    -2, 68, (((u16)16 << 0) | ((u16)0x60 << 16)), -1, 0x1A4E4, 2, 1, 0,

        -4,
};

const s32 anim_0907__v1_l0[] = {
    -2, 68, (((u16)16 << 0) | ((u16)0x60 << 16)), -1, 0x1A4E6, 2, 1, 1,

        -4,
};

const s32 anim_0907__v2_l0[] = {
    -2, 68, (((u16)16 << 0) | ((u16)0x60 << 16)), -1, 0x1A4E8, 2, 1, 2,

        -4,
};

const s32 anim_0907__v3_l0[] = {
    -2, 68, (((u16)16 << 0) | ((u16)0x60 << 16)), -1, 0x1A4EA, 2, 1, 3,

        -4,
};

const s32 anim_0907__v4_l0[] = {
    -2, 68, (((u16)16 << 0) | ((u16)0x60 << 16)), -1, 0x1A4EC, 2, 1, 4,

        -4,
};

const s32 anim_0907__v5_l0[] = {
    -2, 68, (((u16)16 << 0) | ((u16)0x60 << 16)), -1, 0x1A4EE, 2, 1, 5,

        -4,
};

const s32 anim_0907__v6_l0[] = {
    -2, 68, (((u16)16 << 0) | ((u16)0x60 << 16)), -1, 0x1A4F0, 2, 1, 6,

        -4,
};

const s32 anim_0907__v7_l0[] = {
    -2, 68, (((u16)16 << 0) | ((u16)0x60 << 16)), -1, 0x1A4F2, 2, 1, 7,

        -4,
};

const s32 anim_0907__v8_l0[] = {
    -2, 68, (((u16)16 << 0) | ((u16)0x60 << 16)), -1, 0x1A4F4, 2, 1, 8,

        -4,
};

const s32 anim_0907__v9_l0[] = {
    -2, 68, (((u16)16 << 0) | ((u16)0x60 << 16)), -1, 0x1A4F6, 2, 1, 9,

        -4,
};

const s32 anim_0907__v10_l0[] = {
    -2, 68, (((u16)16 << 0) | ((u16)0x60 << 16)), -1, 0x1A4F8, 2, 1, 10,

        -4,
};

const s32 anim_0907__v11_l0[] = {
    -2, 68, (((u16)16 << 0) | ((u16)0x60 << 16)), -1, 0x1A4FA, 2, 1, 11,

        -4,
};

const s32 anim_0907__v12_l0[] = {
    -2, 68, (((u16)16 << 0) | ((u16)0x60 << 16)), -1, 0x1A4FC, 2, 1, 12,

        -4,
};

const s32 anim_0907__v13_l0[] = {
    -2, 68, (((u16)16 << 0) | ((u16)0x60 << 16)), -1, 0x1A4FE, 2, 1, 13,

        -4,
};

const s32 anim_0907__v14_l0[] = {
    -2, 68, (((u16)16 << 0) | ((u16)0x60 << 16)), -1, 0x1A500, 2, 1, 14,

        -4,
};

const s32 anim_0907__v15_l0[] = {
    -2, 68, (((u16)16 << 0) | ((u16)0x60 << 16)), -1, 0x1A502, 2, 1, 15,

        -4,
};

const s32 anim_0907__v16_l0[] = {
    -2, 68, (((u16)16 << 0) | ((u16)0x60 << 16)), -1, 0x1A504, 2, 1, 16,

        -4,
};

const s32 anim_0907__v17_l0[] = {
    -2, 68, (((u16)16 << 0) | ((u16)0x60 << 16)), -1, 0x1A506, 2, 1, 17,

        -4,
};

const s32 anim_0907__v18_l0[] = {
    -2, 68, (((u16)16 << 0) | ((u16)0x60 << 16)), -1, 0x1A508, 2, 1, 18,

        -4,
};

const s32 anim_0907__v19_l0[] = {
    -2, 68, (((u16)16 << 0) | ((u16)0x60 << 16)), -1, 0x1A50A, 2, 1, 19,

        -4,
};

const s32 anim_0907__v20_l0[] = {
    -2, 68, (((u16)16 << 0) | ((u16)0x60 << 16)), -1, 0x1A50C, 2, 1, 20,

        -4,
};

const s32 anim_0907__v21_l0[] = {
    -2, 68, (((u16)16 << 0) | ((u16)0x60 << 16)), -1, 0x1A50E, 2, 1, 21,

        -4,
};

const s32 *const anim_0907[22] = {
    anim_0907__v0_l0, anim_0907__v1_l0, anim_0907__v2_l0, anim_0907__v3_l0, anim_0907__v4_l0, anim_0907__v5_l0,
    anim_0907__v6_l0, anim_0907__v7_l0, anim_0907__v8_l0, anim_0907__v9_l0, anim_0907__v10_l0, anim_0907__v11_l0,
    anim_0907__v12_l0, anim_0907__v13_l0, anim_0907__v14_l0, anim_0907__v15_l0, anim_0907__v16_l0, anim_0907__v17_l0,
    anim_0907__v18_l0, anim_0907__v19_l0, anim_0907__v20_l0, anim_0907__v21_l0,
};
