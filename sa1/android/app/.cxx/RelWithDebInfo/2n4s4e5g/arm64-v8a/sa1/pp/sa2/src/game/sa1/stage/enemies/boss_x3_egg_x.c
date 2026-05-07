# 1 "/home/awaszczak/git/sa2/sa1/../src/game/sa1/stage/enemies/boss_x3_egg_x.c"
# 1 "<built-in>" 1
# 1 "<built-in>" 3
# 384 "<built-in>" 3
# 1 "<command line>" 1
# 1 "<built-in>" 2
# 1 "/home/awaszczak/git/sa2/sa1/../src/game/sa1/stage/enemies/boss_x3_egg_x.c" 2
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
# 2 "/home/awaszczak/git/sa2/sa1/../src/game/sa1/stage/enemies/boss_x3_egg_x.c" 2
# 1 "/home/awaszczak/git/sa2/sa1/../include/core.h" 1




# 1 "/home/awaszczak/Android/Sdk/ndk/25.1.8937393/toolchains/llvm/prebuilt/linux-x86_64/sysroot/usr/include/string.h" 1 3 4
# 33 "/home/awaszczak/Android/Sdk/ndk/25.1.8937393/toolchains/llvm/prebuilt/linux-x86_64/sysroot/usr/include/string.h" 3 4
# 1 "/home/awaszczak/Android/Sdk/ndk/25.1.8937393/toolchains/llvm/prebuilt/linux-x86_64/lib64/clang/14.0.6/include/stddef.h" 1 3 4
# 34 "/home/awaszczak/Android/Sdk/ndk/25.1.8937393/toolchains/llvm/prebuilt/linux-x86_64/sysroot/usr/include/string.h" 2 3 4
# 1 "/home/awaszczak/Android/Sdk/ndk/25.1.8937393/toolchains/llvm/prebuilt/linux-x86_64/sysroot/usr/include/xlocale.h" 1 3 4
# 44 "/home/awaszczak/Android/Sdk/ndk/25.1.8937393/toolchains/llvm/prebuilt/linux-x86_64/sysroot/usr/include/xlocale.h" 3 4
struct __locale_t;




typedef struct __locale_t* locale_t;
# 35 "/home/awaszczak/Android/Sdk/ndk/25.1.8937393/toolchains/llvm/prebuilt/linux-x86_64/sysroot/usr/include/string.h" 2 3 4

# 1 "/home/awaszczak/Android/Sdk/ndk/25.1.8937393/toolchains/llvm/prebuilt/linux-x86_64/sysroot/usr/include/bits/strcasecmp.h" 1 3 4
# 37 "/home/awaszczak/Android/Sdk/ndk/25.1.8937393/toolchains/llvm/prebuilt/linux-x86_64/sysroot/usr/include/bits/strcasecmp.h" 3 4
# 1 "/home/awaszczak/Android/Sdk/ndk/25.1.8937393/toolchains/llvm/prebuilt/linux-x86_64/sysroot/usr/include/sys/types.h" 1 3 4
# 32 "/home/awaszczak/Android/Sdk/ndk/25.1.8937393/toolchains/llvm/prebuilt/linux-x86_64/sysroot/usr/include/sys/types.h" 3 4
# 1 "/home/awaszczak/Android/Sdk/ndk/25.1.8937393/toolchains/llvm/prebuilt/linux-x86_64/lib64/clang/14.0.6/include/stddef.h" 1 3 4
# 33 "/home/awaszczak/Android/Sdk/ndk/25.1.8937393/toolchains/llvm/prebuilt/linux-x86_64/sysroot/usr/include/sys/types.h" 2 3 4



# 1 "/home/awaszczak/Android/Sdk/ndk/25.1.8937393/toolchains/llvm/prebuilt/linux-x86_64/sysroot/usr/include/linux/types.h" 1 3 4
# 21 "/home/awaszczak/Android/Sdk/ndk/25.1.8937393/toolchains/llvm/prebuilt/linux-x86_64/sysroot/usr/include/linux/types.h" 3 4
# 1 "/home/awaszczak/Android/Sdk/ndk/25.1.8937393/toolchains/llvm/prebuilt/linux-x86_64/sysroot/usr/include/aarch64-linux-android/asm/types.h" 1 3 4
# 19 "/home/awaszczak/Android/Sdk/ndk/25.1.8937393/toolchains/llvm/prebuilt/linux-x86_64/sysroot/usr/include/aarch64-linux-android/asm/types.h" 3 4
# 1 "/home/awaszczak/Android/Sdk/ndk/25.1.8937393/toolchains/llvm/prebuilt/linux-x86_64/sysroot/usr/include/asm-generic/types.h" 1 3 4
# 21 "/home/awaszczak/Android/Sdk/ndk/25.1.8937393/toolchains/llvm/prebuilt/linux-x86_64/sysroot/usr/include/asm-generic/types.h" 3 4
# 1 "/home/awaszczak/Android/Sdk/ndk/25.1.8937393/toolchains/llvm/prebuilt/linux-x86_64/sysroot/usr/include/asm-generic/int-ll64.h" 1 3 4
# 21 "/home/awaszczak/Android/Sdk/ndk/25.1.8937393/toolchains/llvm/prebuilt/linux-x86_64/sysroot/usr/include/asm-generic/int-ll64.h" 3 4
# 1 "/home/awaszczak/Android/Sdk/ndk/25.1.8937393/toolchains/llvm/prebuilt/linux-x86_64/sysroot/usr/include/aarch64-linux-android/asm/bitsperlong.h" 1 3 4
# 22 "/home/awaszczak/Android/Sdk/ndk/25.1.8937393/toolchains/llvm/prebuilt/linux-x86_64/sysroot/usr/include/aarch64-linux-android/asm/bitsperlong.h" 3 4
# 1 "/home/awaszczak/Android/Sdk/ndk/25.1.8937393/toolchains/llvm/prebuilt/linux-x86_64/sysroot/usr/include/asm-generic/bitsperlong.h" 1 3 4
# 23 "/home/awaszczak/Android/Sdk/ndk/25.1.8937393/toolchains/llvm/prebuilt/linux-x86_64/sysroot/usr/include/aarch64-linux-android/asm/bitsperlong.h" 2 3 4
# 22 "/home/awaszczak/Android/Sdk/ndk/25.1.8937393/toolchains/llvm/prebuilt/linux-x86_64/sysroot/usr/include/asm-generic/int-ll64.h" 2 3 4

typedef __signed__ char __s8;
typedef unsigned char __u8;
typedef __signed__ short __s16;
typedef unsigned short __u16;
typedef __signed__ int __s32;
typedef unsigned int __u32;

__extension__ typedef __signed__ long long __s64;
__extension__ typedef unsigned long long __u64;
# 22 "/home/awaszczak/Android/Sdk/ndk/25.1.8937393/toolchains/llvm/prebuilt/linux-x86_64/sysroot/usr/include/asm-generic/types.h" 2 3 4
# 20 "/home/awaszczak/Android/Sdk/ndk/25.1.8937393/toolchains/llvm/prebuilt/linux-x86_64/sysroot/usr/include/aarch64-linux-android/asm/types.h" 2 3 4
# 22 "/home/awaszczak/Android/Sdk/ndk/25.1.8937393/toolchains/llvm/prebuilt/linux-x86_64/sysroot/usr/include/linux/types.h" 2 3 4

# 1 "/home/awaszczak/Android/Sdk/ndk/25.1.8937393/toolchains/llvm/prebuilt/linux-x86_64/sysroot/usr/include/linux/posix_types.h" 1 3 4
# 21 "/home/awaszczak/Android/Sdk/ndk/25.1.8937393/toolchains/llvm/prebuilt/linux-x86_64/sysroot/usr/include/linux/posix_types.h" 3 4
# 1 "/home/awaszczak/Android/Sdk/ndk/25.1.8937393/toolchains/llvm/prebuilt/linux-x86_64/sysroot/usr/include/linux/stddef.h" 1 3 4
# 21 "/home/awaszczak/Android/Sdk/ndk/25.1.8937393/toolchains/llvm/prebuilt/linux-x86_64/sysroot/usr/include/linux/stddef.h" 3 4
# 1 "/home/awaszczak/Android/Sdk/ndk/25.1.8937393/toolchains/llvm/prebuilt/linux-x86_64/sysroot/usr/include/linux/compiler_types.h" 1 3 4




# 1 "/home/awaszczak/Android/Sdk/ndk/25.1.8937393/toolchains/llvm/prebuilt/linux-x86_64/sysroot/usr/include/linux/compiler.h" 1 3 4
# 6 "/home/awaszczak/Android/Sdk/ndk/25.1.8937393/toolchains/llvm/prebuilt/linux-x86_64/sysroot/usr/include/linux/compiler_types.h" 2 3 4
# 22 "/home/awaszczak/Android/Sdk/ndk/25.1.8937393/toolchains/llvm/prebuilt/linux-x86_64/sysroot/usr/include/linux/stddef.h" 2 3 4
# 22 "/home/awaszczak/Android/Sdk/ndk/25.1.8937393/toolchains/llvm/prebuilt/linux-x86_64/sysroot/usr/include/linux/posix_types.h" 2 3 4


typedef struct {
  unsigned long fds_bits[1024 / (8 * sizeof(long))];
} __kernel_fd_set;
typedef void(* __kernel_sighandler_t) (int);
typedef int __kernel_key_t;
typedef int __kernel_mqd_t;
# 1 "/home/awaszczak/Android/Sdk/ndk/25.1.8937393/toolchains/llvm/prebuilt/linux-x86_64/sysroot/usr/include/aarch64-linux-android/asm/posix_types.h" 1 3 4
# 21 "/home/awaszczak/Android/Sdk/ndk/25.1.8937393/toolchains/llvm/prebuilt/linux-x86_64/sysroot/usr/include/aarch64-linux-android/asm/posix_types.h" 3 4
typedef unsigned short __kernel_old_uid_t;
typedef unsigned short __kernel_old_gid_t;

# 1 "/home/awaszczak/Android/Sdk/ndk/25.1.8937393/toolchains/llvm/prebuilt/linux-x86_64/sysroot/usr/include/asm-generic/posix_types.h" 1 3 4
# 23 "/home/awaszczak/Android/Sdk/ndk/25.1.8937393/toolchains/llvm/prebuilt/linux-x86_64/sysroot/usr/include/asm-generic/posix_types.h" 3 4
typedef long __kernel_long_t;
typedef unsigned long __kernel_ulong_t;


typedef __kernel_ulong_t __kernel_ino_t;


typedef unsigned int __kernel_mode_t;


typedef int __kernel_pid_t;


typedef int __kernel_ipc_pid_t;


typedef unsigned int __kernel_uid_t;
typedef unsigned int __kernel_gid_t;


typedef __kernel_long_t __kernel_suseconds_t;


typedef int __kernel_daddr_t;


typedef unsigned int __kernel_uid32_t;
typedef unsigned int __kernel_gid32_t;






typedef unsigned int __kernel_old_dev_t;







typedef __kernel_ulong_t __kernel_size_t;
typedef __kernel_long_t __kernel_ssize_t;
typedef __kernel_long_t __kernel_ptrdiff_t;



typedef struct {
  int val[2];
} __kernel_fsid_t;

typedef __kernel_long_t __kernel_off_t;
typedef long long __kernel_loff_t;
typedef __kernel_long_t __kernel_old_time_t;
typedef __kernel_long_t __kernel_time_t;
typedef long long __kernel_time64_t;
typedef __kernel_long_t __kernel_clock_t;
typedef int __kernel_timer_t;
typedef int __kernel_clockid_t;
typedef char * __kernel_caddr_t;
typedef unsigned short __kernel_uid16_t;
typedef unsigned short __kernel_gid16_t;
# 25 "/home/awaszczak/Android/Sdk/ndk/25.1.8937393/toolchains/llvm/prebuilt/linux-x86_64/sysroot/usr/include/aarch64-linux-android/asm/posix_types.h" 2 3 4
# 31 "/home/awaszczak/Android/Sdk/ndk/25.1.8937393/toolchains/llvm/prebuilt/linux-x86_64/sysroot/usr/include/linux/posix_types.h" 2 3 4
# 24 "/home/awaszczak/Android/Sdk/ndk/25.1.8937393/toolchains/llvm/prebuilt/linux-x86_64/sysroot/usr/include/linux/types.h" 2 3 4

typedef __u16 __le16;
typedef __u16 __be16;
typedef __u32 __le32;
typedef __u32 __be32;
typedef __u64 __le64;
typedef __u64 __be64;
typedef __u16 __sum16;
typedef __u32 __wsum;



typedef unsigned __poll_t;
# 37 "/home/awaszczak/Android/Sdk/ndk/25.1.8937393/toolchains/llvm/prebuilt/linux-x86_64/sysroot/usr/include/sys/types.h" 2 3 4


# 1 "/home/awaszczak/Android/Sdk/ndk/25.1.8937393/toolchains/llvm/prebuilt/linux-x86_64/sysroot/usr/include/bits/pthread_types.h" 1 3 4
# 32 "/home/awaszczak/Android/Sdk/ndk/25.1.8937393/toolchains/llvm/prebuilt/linux-x86_64/sysroot/usr/include/bits/pthread_types.h" 3 4
# 1 "/home/awaszczak/Android/Sdk/ndk/25.1.8937393/toolchains/llvm/prebuilt/linux-x86_64/sysroot/usr/include/sys/types.h" 1 3 4
# 33 "/home/awaszczak/Android/Sdk/ndk/25.1.8937393/toolchains/llvm/prebuilt/linux-x86_64/sysroot/usr/include/bits/pthread_types.h" 2 3 4

typedef struct {
  uint32_t flags;
  void* stack_base;
  size_t stack_size;
  size_t guard_size;
  int32_t sched_policy;
  int32_t sched_priority;

  char __reserved[16];

} pthread_attr_t;
# 60 "/home/awaszczak/Android/Sdk/ndk/25.1.8937393/toolchains/llvm/prebuilt/linux-x86_64/sysroot/usr/include/bits/pthread_types.h" 3 4
typedef struct {

  int32_t __private[12];



} pthread_cond_t;

typedef long pthread_condattr_t;

typedef int pthread_key_t;

typedef struct {

  int32_t __private[10];



} pthread_mutex_t;

typedef long pthread_mutexattr_t;

typedef int pthread_once_t;

typedef struct {

  int32_t __private[14];



} pthread_rwlock_t;

typedef long pthread_rwlockattr_t;
# 104 "/home/awaszczak/Android/Sdk/ndk/25.1.8937393/toolchains/llvm/prebuilt/linux-x86_64/sysroot/usr/include/bits/pthread_types.h" 3 4
typedef long pthread_t;
# 40 "/home/awaszczak/Android/Sdk/ndk/25.1.8937393/toolchains/llvm/prebuilt/linux-x86_64/sysroot/usr/include/sys/types.h" 2 3 4


typedef __kernel_gid32_t __gid_t;
typedef __gid_t gid_t;
typedef __kernel_uid32_t __uid_t;
typedef __uid_t uid_t;
typedef __kernel_pid_t __pid_t;
typedef __pid_t pid_t;
typedef uint32_t __id_t;
typedef __id_t id_t;

typedef unsigned long blkcnt_t;
typedef unsigned long blksize_t;
typedef __kernel_caddr_t caddr_t;
typedef __kernel_clock_t clock_t;

typedef __kernel_clockid_t __clockid_t;
typedef __clockid_t clockid_t;

typedef __kernel_daddr_t daddr_t;
typedef unsigned long fsblkcnt_t;
typedef unsigned long fsfilcnt_t;

typedef __kernel_mode_t __mode_t;
typedef __mode_t mode_t;

typedef __kernel_key_t __key_t;
typedef __key_t key_t;

typedef __kernel_ino_t __ino_t;
typedef __ino_t ino_t;

typedef uint64_t ino64_t;

typedef uint32_t __nlink_t;
typedef __nlink_t nlink_t;

typedef void* __timer_t;
typedef __timer_t timer_t;

typedef __kernel_suseconds_t __suseconds_t;
typedef __suseconds_t suseconds_t;


typedef uint32_t __useconds_t;
typedef __useconds_t useconds_t;





typedef uint64_t dev_t;



typedef __kernel_time_t __time_t;
typedef __time_t time_t;




typedef int64_t off_t;
typedef off_t loff_t;
typedef loff_t off64_t;
# 115 "/home/awaszczak/Android/Sdk/ndk/25.1.8937393/toolchains/llvm/prebuilt/linux-x86_64/sysroot/usr/include/sys/types.h" 3 4
typedef uint32_t __socklen_t;

typedef __socklen_t socklen_t;

typedef __builtin_va_list __va_list;
# 128 "/home/awaszczak/Android/Sdk/ndk/25.1.8937393/toolchains/llvm/prebuilt/linux-x86_64/sysroot/usr/include/sys/types.h" 3 4
typedef __kernel_ssize_t ssize_t;


typedef unsigned int uint_t;
typedef unsigned int uint;


typedef unsigned char u_char;
typedef unsigned short u_short;
typedef unsigned int u_int;
typedef unsigned long u_long;

typedef uint32_t u_int32_t;
typedef uint16_t u_int16_t;
typedef uint8_t u_int8_t;
typedef uint64_t u_int64_t;
# 38 "/home/awaszczak/Android/Sdk/ndk/25.1.8937393/toolchains/llvm/prebuilt/linux-x86_64/sysroot/usr/include/bits/strcasecmp.h" 2 3 4
# 49 "/home/awaszczak/Android/Sdk/ndk/25.1.8937393/toolchains/llvm/prebuilt/linux-x86_64/sysroot/usr/include/bits/strcasecmp.h" 3 4
int strcasecmp(const char* __s1, const char* __s2) __attribute__((__pure__));
# 68 "/home/awaszczak/Android/Sdk/ndk/25.1.8937393/toolchains/llvm/prebuilt/linux-x86_64/sysroot/usr/include/bits/strcasecmp.h" 3 4
int strncasecmp(const char* __s1, const char* __s2, size_t __n) __attribute__((__pure__));
# 37 "/home/awaszczak/Android/Sdk/ndk/25.1.8937393/toolchains/llvm/prebuilt/linux-x86_64/sysroot/usr/include/string.h" 2 3 4







void* memccpy(void* __dst, const void* __src, int __stop_char, size_t __n);
void* memchr(const void* __s, int __ch, size_t __n) __attribute__((__pure__));




void* memrchr(const void* __s, int __ch, size_t __n) __attribute__((__pure__));

int memcmp(const void* __lhs, const void* __rhs, size_t __n) __attribute__((__pure__));
void* memcpy(void*, const void*, size_t);







void* memmove(void* __dst, const void* __src, size_t __n);
void* memset(void* __dst, int __ch, size_t __n);
void* memmem(const void* __haystack, size_t __haystack_size, const void* __needle, size_t __needle_size) __attribute__((__pure__));

char* strchr(const char* __s, int __ch) __attribute__((__pure__));


char* __strchr_chk(const char* __s, int __ch, size_t __n) __attribute__((__availability__(android,strict,introduced=18)));
# 88 "/home/awaszczak/Android/Sdk/ndk/25.1.8937393/toolchains/llvm/prebuilt/linux-x86_64/sysroot/usr/include/string.h" 3 4
char* strrchr(const char* __s, int __ch) __attribute__((__pure__));


char* __strrchr_chk(const char* __s, int __ch, size_t __n) __attribute__((__availability__(android,strict,introduced=18)));



size_t strlen(const char* __s) __attribute__((__pure__));


size_t __strlen_chk(const char* __s, size_t __n) __attribute__((__availability__(android,strict,introduced=17)));



int strcmp(const char* __lhs, const char* __rhs) __attribute__((__pure__));


char* stpcpy(char* __dst, const char* __src) __attribute__((__availability__(android,strict,introduced=21)));


char* strcpy(char* __dst, const char* __src);
char* strcat(char* __dst, const char* __src);
char* strdup(const char* __s);

char* strstr(const char* __haystack, const char* __needle) __attribute__((__pure__));




char* strcasestr(const char* __haystack, const char* __needle) __attribute__((__pure__));

char* strtok(char* __s, const char* __delimiter);
char* strtok_r(char* __s, const char* __delimiter, char** __pos_ptr);

char* strerror(int __errno_value);
# 131 "/home/awaszczak/Android/Sdk/ndk/25.1.8937393/toolchains/llvm/prebuilt/linux-x86_64/sysroot/usr/include/string.h" 3 4
int strerror_r(int __errno_value, char* __buf, size_t __n);


size_t strnlen(const char* __s, size_t __n) __attribute__((__pure__));
char* strncat(char* __dst, const char* __src, size_t __n);
char* strndup(const char* __s, size_t __n);
int strncmp(const char* __lhs, const char* __rhs, size_t __n) __attribute__((__pure__));


char* stpncpy(char* __dst, const char* __src, size_t __n) __attribute__((__availability__(android,strict,introduced=21)));


char* strncpy(char* __dst, const char* __src, size_t __n);

size_t strlcat(char* __dst, const char* __src, size_t __n);
size_t strlcpy(char* __dst, const char* __src, size_t __n);

size_t strcspn(const char* __s, const char* __reject) __attribute__((__pure__));
char* strpbrk(const char* __s, const char* __accept) __attribute__((__pure__));
char* strsep(char** __s_ptr, const char* __delimiter);
size_t strspn(const char* __s, const char* __accept);

char* strsignal(int __signal);

int strcoll(const char* __lhs, const char* __rhs) __attribute__((__pure__));
size_t strxfrm(char* __dst, const char* __src, size_t __n);


int strcoll_l(const char* __lhs, const char* __rhs, locale_t __l) __attribute__((__pure__)) __attribute__((__availability__(android,strict,introduced=21)));
size_t strxfrm_l(char* __dst, const char* __src, size_t __n, locale_t __l) __attribute__((__availability__(android,strict,introduced=21)));
# 187 "/home/awaszczak/Android/Sdk/ndk/25.1.8937393/toolchains/llvm/prebuilt/linux-x86_64/sysroot/usr/include/string.h" 3 4
# 1 "/home/awaszczak/Android/Sdk/ndk/25.1.8937393/toolchains/llvm/prebuilt/linux-x86_64/sysroot/usr/include/bits/fortify/string.h" 1 3 4
# 41 "/home/awaszczak/Android/Sdk/ndk/25.1.8937393/toolchains/llvm/prebuilt/linux-x86_64/sysroot/usr/include/bits/fortify/string.h" 3 4
char* __stpncpy_chk2(char*, const char*, size_t, size_t, size_t) __attribute__((__availability__(android,strict,introduced=21)));
char* __strncpy_chk2(char*, const char*, size_t, size_t, size_t) __attribute__((__availability__(android,strict,introduced=21)));




size_t __strlcpy_chk(char*, const char*, size_t, size_t) __attribute__((__availability__(android,strict,introduced=17)));
size_t __strlcat_chk(char*, const char*, size_t, size_t) __attribute__((__availability__(android,strict,introduced=17)));




extern void* __memrchr_real(const void*, int, size_t) __asm__("memrchr");



static __inline__ __attribute__((no_stack_protector)) __attribute__((__always_inline__))
void* memcpy(void* const dst __attribute__((pass_object_size(0))), const void* src, size_t copy_amount)
        __attribute__((diagnose_as_builtin(__builtin_memcpy, 1, 2, 3)))
        __attribute__((overloadable)) {
    return __builtin___memcpy_chk(dst, src, copy_amount, __builtin_object_size(((dst)), (0)));
}


static __inline__ __attribute__((no_stack_protector)) __attribute__((__always_inline__))
void* memmove(void* const dst __attribute__((pass_object_size(0))), const void* src, size_t len)
        __attribute__((diagnose_as_builtin(__builtin_memmove, 1, 2, 3)))
        __attribute__((overloadable)) {
    return __builtin___memmove_chk(dst, src, len, __builtin_object_size(((dst)), (0)));
}
# 92 "/home/awaszczak/Android/Sdk/ndk/25.1.8937393/toolchains/llvm/prebuilt/linux-x86_64/sysroot/usr/include/bits/fortify/string.h" 3 4
static __inline__ __attribute__((no_stack_protector)) __attribute__((__always_inline__))
char* stpcpy(char* const dst __attribute__((pass_object_size(1))), const char* src)
        __attribute__((overloadable))
        __attribute__((diagnose_if(((__builtin_object_size(((dst)), (1))) != ((size_t) -1) && (__builtin_object_size(((dst)), (1))) <= (__builtin_strlen(src))), "'stpcpy' called with string bigger than buffer", "error"))) {


    return __builtin___stpcpy_chk(dst, src, __builtin_object_size(((dst)), (1)));



}

static __inline__ __attribute__((no_stack_protector)) __attribute__((__always_inline__))
char* strcpy(char* const dst __attribute__((pass_object_size(1))), const char* src)
        __attribute__((diagnose_as_builtin(__builtin_strcpy, 1, 2)))
        __attribute__((overloadable))
        __attribute__((diagnose_if(((__builtin_object_size(((dst)), (1))) != ((size_t) -1) && (__builtin_object_size(((dst)), (1))) <= (__builtin_strlen(src))), "'strcpy' called with string bigger than buffer", "error"))) {


    return __builtin___strcpy_chk(dst, src, __builtin_object_size(((dst)), (1)));



}

static __inline__ __attribute__((no_stack_protector)) __attribute__((__always_inline__))
char* strcat(char* const dst __attribute__((pass_object_size(1))), const char* src)
        __attribute__((overloadable))
        __attribute__((diagnose_if(((__builtin_object_size(((dst)), (1))) != ((size_t) -1) && (__builtin_object_size(((dst)), (1))) <= (__builtin_strlen(src))), "'strcat' called with string bigger than buffer", "error"))) {


    return __builtin___strcat_chk(dst, src, __builtin_object_size(((dst)), (1)));



}



static __inline__ __attribute__((no_stack_protector)) __attribute__((__always_inline__))
char* strncat(char* const dst __attribute__((pass_object_size(1))), const char* src, size_t n)
       __attribute__((diagnose_as_builtin(__builtin_strncat, 1, 2, 3)))
       __attribute__((overloadable)) {
    return __builtin___strncat_chk(dst, src, n, __builtin_object_size(((dst)), (1)));
}



static __inline__ __attribute__((no_stack_protector)) __attribute__((__always_inline__))
void* memset(void* const s __attribute__((pass_object_size(0))), int c, size_t n) __attribute__((overloadable))
        __attribute__((diagnose_as_builtin(__builtin_memset, 1, 2, 3)))

        __attribute__((diagnose_if(c && !n, "'memset' will set 0 bytes; maybe the arguments got flipped?", "warning"))) {

    return __builtin___memset_chk(s, c, n, __builtin_object_size(((s)), (0)));



}
# 178 "/home/awaszczak/Android/Sdk/ndk/25.1.8937393/toolchains/llvm/prebuilt/linux-x86_64/sysroot/usr/include/bits/fortify/string.h" 3 4
static __inline__ __attribute__((no_stack_protector)) __attribute__((__always_inline__))
char* stpncpy(char* const dst __attribute__((pass_object_size(1))), const char* const src __attribute__((pass_object_size(1))), size_t n)
        __attribute__((diagnose_as_builtin(__builtin_stpncpy, 1, 2, 3)))
        __attribute__((overloadable)) {
    size_t bos_dst = __builtin_object_size(((dst)), (1));
    size_t bos_src = __builtin_object_size(((src)), (1));


    if (bos_src == ((size_t) -1)) {
        return __builtin___stpncpy_chk(dst, src, n, bos_dst);
    }

    return __stpncpy_chk2(dst, src, n, bos_dst, bos_src);
}


static __inline__ __attribute__((no_stack_protector)) __attribute__((__always_inline__))
char* strncpy(char* const dst __attribute__((pass_object_size(1))), const char* const src __attribute__((pass_object_size(1))), size_t n)
        __attribute__((diagnose_as_builtin(__builtin_strncpy, 1, 2, 3)))
        __attribute__((overloadable)) {
    size_t bos_dst = __builtin_object_size(((dst)), (1));
    size_t bos_src = __builtin_object_size(((src)), (1));


    if (bos_src == ((size_t) -1)) {
        return __builtin___strncpy_chk(dst, src, n, bos_dst);
    }

    return __strncpy_chk2(dst, src, n, bos_dst, bos_src);
}


static __inline__ __attribute__((no_stack_protector)) __attribute__((__always_inline__))
size_t strlcpy(char* const dst __attribute__((pass_object_size(1))), const char* src, size_t size)
        __attribute__((overloadable))
        __attribute__((diagnose_if(((__builtin_object_size(((dst)), (1))) != ((size_t) -1) && (__builtin_object_size(((dst)), (1))) < (size)), "'strlcpy' called with size bigger than buffer", "error"))) {


    return __strlcpy_chk(dst, src, size, __builtin_object_size(((dst)), (1)));



}

static __inline__ __attribute__((no_stack_protector)) __attribute__((__always_inline__))
size_t strlcat(char* const dst __attribute__((pass_object_size(1))), const char* src, size_t size)
        __attribute__((overloadable))
        __attribute__((diagnose_if(((__builtin_object_size(((dst)), (1))) != ((size_t) -1) && (__builtin_object_size(((dst)), (1))) < (size)), "'strlcat' called with size bigger than buffer", "error"))) {


    return __strlcat_chk(dst, src, size, __builtin_object_size(((dst)), (1)));



}


static __inline__ __attribute__((no_stack_protector)) __attribute__((__always_inline__))
size_t strlen(const char* const s __attribute__((pass_object_size(0)))) __attribute__((overloadable)) {
    return __strlen_chk(s, __builtin_object_size(((s)), (0)));
}


static __inline__ __attribute__((no_stack_protector)) __attribute__((__always_inline__))
char* strchr(const char* const s __attribute__((pass_object_size(1))), int c) __attribute__((overloadable)) {

    size_t bos = __builtin_object_size(((s)), (1));

    if (bos != ((size_t) -1)) {
        return __strchr_chk(s, c, bos);
    }

    return __builtin_strchr(s, c);
}

static __inline__ __attribute__((no_stack_protector)) __attribute__((__always_inline__))
char* strrchr(const char* const s __attribute__((pass_object_size(1))), int c) __attribute__((overloadable)) {

    size_t bos = __builtin_object_size(((s)), (1));

    if (bos != ((size_t) -1)) {
        return __strrchr_chk(s, c, bos);
    }

    return __builtin_strrchr(s, c);
}
# 188 "/home/awaszczak/Android/Sdk/ndk/25.1.8937393/toolchains/llvm/prebuilt/linux-x86_64/sysroot/usr/include/string.h" 2 3 4
# 6 "/home/awaszczak/git/sa2/sa1/../include/core.h" 2



# 1 "/home/awaszczak/git/sa2/sa1/../include/sprite.h" 1




# 1 "/home/awaszczak/git/sa2/sa1/../include/rect.h" 1



typedef struct {
               s8 left;
               s8 top;
               s8 right;
               s8 bottom;
} Rect8;
# 6 "/home/awaszczak/git/sa2/sa1/../include/sprite.h" 2
# 1 "/home/awaszczak/git/sa2/sa1/../include/malloc_vram.h" 1
# 24 "/home/awaszczak/git/sa2/sa1/../include/malloc_vram.h"
void *VramMalloc(u32);
void VramResetHeapState(void);
void VramFree(void *);
# 7 "/home/awaszczak/git/sa2/sa1/../include/sprite.h" 2

typedef u16 AnimId;

typedef struct GraphicsData {
               const void *src;
               void *dest;
               u16 size;
               AnimId anim;
} GraphicsData;
# 67 "/home/awaszczak/git/sa2/sa1/../include/sprite.h"
typedef struct {
               struct GraphicsData graphics;
# 82 "/home/awaszczak/git/sa2/sa1/../include/sprite.h"
               u16 *layoutVram;



               const u16 *layout;




               u16 xTiles;
               u16 yTiles;

               u16 unk18;
               u16 unk1A;
               u16 tilemapId;
               u16 unk1E;

               u16 unk20;
               u16 unk22;
               u16 unk24;




               u16 targetTilesX;
               u16 targetTilesY;

               u8 paletteOffset;
               u8 animFrameCounter;
               u8 animDelayCounter;

               u16 flags;


               u16 scrollX;
               u16 scrollY;
               u16 prevScrollX;
               u16 prevScrollY;


               const MetatileIndexType *metatileMap;
               u16 mapWidth;
               u16 mapHeight;
} Background;

typedef struct {






               u8 flip;



               u8 oamIndex;




               u16 numSubframes;


               u16 width;

               u16 height;

               s16 offsetX;
               s16 offsetY;
} SpriteOffset;





typedef struct {

               s32 index;
               Rect8 b;
} Hitbox;





typedef struct {
               struct GraphicsData graphics;
               const SpriteOffset *dimensions;


               u32 frameFlags;
# 191 "/home/awaszczak/git/sa2/sa1/../include/sprite.h"
               u16 animCursor;

               s16 x;
               s16 y;

               u16 oamFlags;

               s16 qAnimDelay;
               u16 prevAnim;
               u8 variant;
               u8 prevVariant;


               u8 animSpeed;

               u8 oamBaseIndex;
               u8 numSubFrames;
               u8 palId;
               Hitbox hitboxes[1];
} Sprite ;


typedef struct {
    Sprite s;
    Hitbox hb1;
} Sprite2;


typedef struct {
    Sprite s;
    Hitbox hb1;
    Hitbox hb2;
} Sprite3;

typedef struct {
               u16 rotation;
               s16 qScaleX;
               s16 qScaleY;
               s16 x;
               s16 y;
} SpriteTransform;

typedef struct {
               s16 unk0[4];
               s16 qDirX;
               s16 qDirY;

               s16 unkC[2];

               s32 posX;
               s32 posY;

               s16 unk18[2][2];
               u16 affineIndex;
} UnkSpriteStruct;

typedef struct {
               u32 numTiles;
               AnimId anim;
               u8 variant;
} TileInfo;


typedef struct {
               void *tiles;
               AnimId anim;
               u8 variant;
} TileInfoPtr;

typedef struct __attribute__((packed)) TileInfo16 { u16 numTiles; AnimId anim; u16 variant;} TileInfo16;;






typedef struct {
    u32 anim : 16;
    u32 variant : 8;
    u32 size : 8;
} TileInfoBitfield;



typedef struct {
               AnimId anim;
               u8 variant;
               u8 numTiles;
} TileInfoFirework;

typedef struct {
    AnimId anim;
    u16 variant;
} TileInfoBarrel;


extern const u8 gOamShapesSizes[12][2];

typedef enum {
    ACMD_RESULT__ANIM_CHANGED = -1,
    ACMD_RESULT__ENDED = 0,
    ACMD_RESULT__RUNNING = +1,
} AnimCmdResult;

AnimCmdResult UpdateSpriteAnimation(Sprite *);

void DisplaySprite(Sprite *);
void DrawBackground(Background *);
bool32 sa2__sub_8002B20(void);
bool32 sa2__sub_80039E4(void);
bool32 sa2__sub_8004010(void);
void ProcessOamBuffers(void);
OamData *OamMalloc(u8 order);

void TransformSprite(Sprite *, SpriteTransform *);

void UnusedTransform(Sprite *, SpriteTransform *);
void sa2__sub_8004E14(Sprite *, SpriteTransform *);

void sa2__sub_8003EE4(u16 p0, s16 p1, s16 p2, s16 p3, s16 p4, s16 p5, s16 p6, BgAffineReg *affine);
void sa2__sub_8006228(u8 p0, u8 p1, u8 p2, u8 p3, u8 p4, u8 p5);
void sa2__sub_80064A8(u8 p0, u8 p1, u8 p2, u8 p3, u8 p4, u8 p5);

s32 UpdateSpriteAnimation_BG(Sprite *);
void DisplaySprite_BG(Sprite *);
void sa2__sub_80047A0(u16 angle, s16 p1, s16 p2, u16 affineIndex);

s16 sa2__sub_8004418(s16 x, s16 y);
void numToASCII(u8 digits[5], u16 number);
# 10 "/home/awaszczak/git/sa2/sa1/../include/core.h" 2
# 1 "/home/awaszczak/git/sa2/sa1/../include/task.h" 1





struct Task;

typedef void (*TaskMain)(void);
typedef void (*TaskDestructor)(struct Task *);
# 25 "/home/awaszczak/git/sa2/sa1/../include/task.h"
typedef struct Task *TaskPtr;
typedef TaskPtr TaskPtr32;




typedef void *IwramData;
# 55 "/home/awaszczak/git/sa2/sa1/../include/task.h"
typedef struct Task {
               TaskPtr parent;
               TaskPtr prev;
               TaskPtr next;
               IwramData data;

    u32 dataSize;

               TaskMain main;
               TaskDestructor dtor;
               u16 priority;
               u16 flags;
# 79 "/home/awaszczak/git/sa2/sa1/../include/task.h"
} Task;





struct IwramNode;

typedef struct IwramNode *IwramNodePtr;
typedef IwramNodePtr IwramNodePtr32;




struct IwramNode {
    IwramNodePtr next;
    s16 state;

    u8 __attribute__((aligned(sizeof(void *)))) space[0];
};
# 113 "/home/awaszczak/git/sa2/sa1/../include/task.h"
extern struct Task gTasks[128];
extern struct Task gEmptyTask;
extern struct Task *gTaskPtrs[128];
extern s32 gNumTasks;



extern struct Task *gNextTask;
extern struct Task *gCurTask;
extern u8 gIwramHeap[((0x881) * sizeof(uintptr_t))];

u32 TasksInit(void);
void TasksExec(void);
# 141 "/home/awaszczak/git/sa2/sa1/../include/task.h"
struct Task *TaskCreate(TaskMain taskMain, u16 structSize, u16 priority, u16 flags, TaskDestructor taskDestructor);


void TaskDestroy(struct Task *);
void *IwramMalloc(u16);
void IwramFree(void *p);
void TasksDestroyInPriorityRange(u16, u16);
# 11 "/home/awaszczak/git/sa2/sa1/../include/core.h" 2
# 1 "/home/awaszczak/git/sa2/sa1/../include/flags.h" 1
# 23 "/home/awaszczak/git/sa2/sa1/../include/flags.h"
extern u32 gFlags;
# 12 "/home/awaszczak/git/sa2/sa1/../include/core.h" 2
# 1 "/home/awaszczak/git/sa2/sa1/../include/tilemap.h" 1
# 10 "/home/awaszczak/git/sa2/sa1/../include/tilemap.h"
typedef struct {




    u16 index : 10;
    u16 xFlip : 1;
    u16 yFlip : 1;
    u16 pal : 4;

} Tile;

typedef struct {
               u16 xTiles;
               u16 yTiles;
               u16 animTileSize;
               u8 animFrameCount;
               u8 animDelay;
               const u8 *tiles;
               u32 tilesSize;

               const u16 *palette;



               u16 palOffset;
               u16 palLength;



               const u16 *map;
} Tilemap;

struct MapHeader {
               Tilemap tileset;
               const MetatileIndexType *metatileMap;
               u16 mapWidth;
               u16 mapHeight;
};
# 13 "/home/awaszczak/git/sa2/sa1/../include/core.h" 2
# 1 "/home/awaszczak/git/sa2/sa1/../include/input_recorder.h" 1
# 12 "/home/awaszczak/git/sa2/sa1/../include/input_recorder.h"
struct InputRecorder {
               s32 playbackHead;
               s32 recordHead;
               u8 mode;
};

void InputRecorderResetRecordHead(void);
void InputRecorderResetPlaybackHead(void);
void InputRecorderLoadTape(void);
u16 InputRecorderRead(void);
void InputRecorderWrite(u16);
# 14 "/home/awaszczak/git/sa2/sa1/../include/core.h" 2
# 1 "/home/awaszczak/git/sa2/sa1/../include/animation_commands.h" 1








typedef AnimCmdResult (*AnimationCommandFunc)(void *cursor, Sprite *sprite);

typedef struct {
               s32 cmdId;



               s32 tileIndex;

               u32 numTilesToCopy;
} ACmd_GetTiles;

typedef struct {
               s32 cmdId;

               s32 palId;
               u16 numColors;
               u16 insertOffset;
} ACmd_GetPalette;

typedef struct {
               s32 cmdId;

               s32 offset;
} ACmd_JumpBack;

typedef struct {
               s32 cmdId;
} ACmd_4;

typedef struct {
               s32 cmdId;

               u16 songId;
} ACmd_PlaySoundEffect;


typedef struct {
               s32 cmdId;

               Hitbox hitbox;
} ACmd_Hitbox;

typedef struct {
               s32 cmdId;

               u16 x;
               u16 y;
} ACmd_TranslateSprite;

typedef struct {
               s32 cmdId;

               s32 unk4;
               s32 unk8;
} ACmd_8;

typedef struct {
               s32 cmdId;

               AnimId animId;
               u16 variant;
} ACmd_SetIdAndVariant;

typedef struct {
               s32 cmdId;

               s32 unk4;
               s32 unk8;
               s32 unkC;
} ACmd_10;

typedef struct {
               s32 cmdId;

               s32 priority;
} ACmd_SetSpritePriority;

typedef struct {
               s32 cmdId;

               s32 orderIndex;
} ACmd_SetOamOrder;

typedef struct {

    s32 delay;


    s32 index;
} ACmd_ShowFrame;

typedef union {
    s32 id;

    ACmd_GetTiles tiles;
    ACmd_GetPalette pal;
    ACmd_JumpBack jump;
    ACmd_4 end;
    ACmd_PlaySoundEffect sfx;
    ACmd_Hitbox _6;
    ACmd_TranslateSprite translate;
    ACmd_8 _8;
    ACmd_SetIdAndVariant setAnimId;
    ACmd_10 _10;
    ACmd_SetSpritePriority _11;
    ACmd_SetOamOrder setOamOrder;

    ACmd_ShowFrame show;
} ACmd;

u32 Base10DigitsToHexNibbles(u16 num);
# 15 "/home/awaszczak/git/sa2/sa1/../include/core.h" 2

struct MultiSioData_0_0 {

    u16 unk0;

    u8 unk2;

    u8 unk3;
    u32 unk4;
    u16 unk8[3];



    u8 unkE;
    u8 unkF;
    u32 unk10;
};

struct MultiSioData_0_1 {

    u16 unk0;

    u8 unk2;

    u8 unk3;

    u16 unk4;
    u16 unk6;

    u16 unk8[3];



    u8 unkE;
    u8 unkF;
    u32 unk10;
};
struct MultiSioData_0_2 {

    u8 unk0;
    u8 filler1;

    u8 unk2;

    u8 unk3;

    u16 unk4;
    u16 unk6;

    u16 unk8[3];



    u8 unkE;
    u8 unkF;
    u32 unk10;
};

struct MultiSioData_0_3 {

    u16 unk0;

    u8 unk2;

    u8 unk3;

    u16 unk4;
    u16 unk6;

    u32 unk8;
    u16 unkC;



    u8 unkE;
    u8 unkF;
    u32 unk10;
};

struct MultiSioData_0_4 {

    u16 unk0;

    s16 x;
    s16 y;
    u16 unk6;
    u16 unk8;
    u8 unkA;
    u8 unkB;
    u8 unkC;
    u8 unkD;



    u8 unkE;
    u8 numRings;
    u8 unk10;
    u8 unk11;
    u8 unk12;
    u8 unk13;
};

struct MultiSioData_0_5 {

    u16 unk0;

    s16 x;
    s16 y;

    u8 filler3[0x9];
    u8 sioId;
    u8 unk10;
    u8 unk11;
    u8 unk12;
    u8 unk13;
};

union MultiSioData {
    struct MultiSioData_0_0 pat0;
    struct MultiSioData_0_1 pat1;
    struct MultiSioData_0_2 pat2;
    struct MultiSioData_0_3 pat3;
    struct MultiSioData_0_4 pat4;
    struct MultiSioData_0_5 pat5;
};





typedef u16 collPxDim_t;





typedef struct {
               const s8 *height_map;
               const u8 *tile_rotation;
               const u16 *metatiles;
               const MetatileIndexType *map[2];
               const u16 *flags;
               u16 levelX, levelY;
               collPxDim_t pxWidth, pxHeight;


} Collision;

struct Unk_03003674_1_Sub {
    u16 unk0, unk2, unk4, unk6;
    s16 unk8, unkA;
};

struct Unk_03003674_1_Full {
    struct Unk_03003674_1_Sub sub;
    u32 unkC;
};

union Unk_03003674_1 {
    const struct Unk_03003674_1_Sub *sub;
    const struct Unk_03003674_1_Full *full;
};

struct Unk_03003674 {
    const union Unk_03003674_0 *const *unk0;
    const union Unk_03003674_1 *unk4;
    const u16 *const *unk8;
    const void *unkC;
    const void *unk10;
    const void *unk14;
    const s32 *unk18;
};

struct SpriteTables {
               const ACmd **const *animations;
               const SpriteOffset *const *dimensions;
               const u16 **const oamData;
               const ColorRaw *const palettes;
               const u8 *const tiles_4bpp;
               const u8 *const tiles_8bpp;
};
# 219 "/home/awaszczak/git/sa2/sa1/../include/core.h"
extern u32 gFlags;
extern u32 gFlagsPreVBlank;

extern u32 gFrameCount;
# 237 "/home/awaszczak/git/sa2/sa1/../include/core.h"
extern IntrFunc gIntrTable[16];
extern IntrFunc const gIntrTableTemplate[14];
extern u32 gIntrMainBuf[0x80];

extern struct Task *gCurTask;
extern struct Task gTasks[128];
extern struct Task *gTaskPtrs[128];
extern struct Task *gNextTask;
extern struct Task gEmptyTask;
extern s32 gNumTasks;

extern u16 gInput;
extern u16 gPrevInput;
extern u16 gPhysicalInput;
extern u16 gReleasedKeys;
extern u16 gRepeatedKeys;
extern u16 gPressedKeys;
extern u8 gKeysFirstRepeatIntervals[10];
extern u8 gRepeatedKeysTestCounter[10];
extern u8 gKeysContinuedRepeatIntervals[10];

extern const u8 *gInputPlaybackData;
extern struct InputRecorder gInputRecorder;
extern u16 *gInputRecorderTapeBuffer;

extern union MultiSioData gMultiSioSend;
extern union MultiSioData gMultiSioRecv[4];
extern u32 gMultiSioStatusFlags;
extern bool8 gMultiSioEnabled;

extern HBlankIntrFunc gHBlankIntrs[4];
extern HBlankIntrFunc gHBlankCallbacks[4];
extern u8 gNumHBlankCallbacks;
extern u8 gNumHBlankIntrs;

extern u8 gIwramHeap[((0x881) * sizeof(uintptr_t))];

extern void *gVramHeapStartAddr;
extern u16 gVramHeapMaxTileSlots;
extern u16 gVramHeapState[((0x18000 + (0x800 * (14))) - 0x10000) / (4 * 32)];

extern bool8 gExecSoundMain;

extern u16 gDispCnt;
# 296 "/home/awaszczak/git/sa2/sa1/../include/core.h"
extern winreg_t gWinRegs[6];
extern struct BlendRegs gBldRegs;
extern BgAffineReg gBgAffineRegs[2];

extern u16 gObjPalette[0x200 / sizeof(u16)];
extern u16 gBgPalette[0x200 / sizeof(u16)];




extern u16 gBgCntRegs[4];



extern s16 gBgScrollRegs[4][2];

extern OamData gOamMallocBuffer[128];
extern OamData gOamBuffer[128];


extern int_vcount gBgOffsetsBuffer[2][240][4];
extern Background *gBackgroundsCopyQueue[16];


extern void *gBgOffsetsHBlankPrimary;

extern u16 gSpriteTransformScaleX;
extern Vec2_16 gSpriteOffset;
extern u8 gOamMallocOrders_StartIndex[32];
extern IntrFunc gVBlankCallbacks[4];

extern u8 gOamFreeIndex;
extern u16 gSpriteTransformRotation;
extern u8 gNumVBlankIntrs;
extern s16 gSpriteTransformX;

extern Tilemap **gTilemapsRef;
extern u8 gBgSprites_Unknown2[4][4];
extern u8 gBgSprites_Unknown1[16];
# 344 "/home/awaszczak/git/sa2/sa1/../include/core.h"
extern struct GraphicsData *gVramGraphicsCopyQueue[32];
extern u8 gVramGraphicsCopyQueueIndex;
# 361 "/home/awaszczak/git/sa2/sa1/../include/core.h"
extern struct GraphicsData gVramGraphicsCopyQueueBuffer[32];
# 384 "/home/awaszczak/git/sa2/sa1/../include/core.h"
extern void *gBgOffsetsHBlankSecondary;
extern void *gBgOffsetsSecondary;




extern s16 gSpriteTransformY;
extern u8 gVCountSetting;
extern void *gHBlankCopyTarget;
extern u8 gBackgroundsCopyQueueIndex;
extern u8 gHBlankCopySize;
extern u16 sa2__gUnknown_03002A8C;


extern u8 gOamFirstPausedIndex;
extern u8 gBackgroundsCopyQueueCursor;
extern Sprite *gBgSprites[16];
extern u8 gNumVBlankCallbacks;
extern void *gBgOffsetsPrimary;
extern u16 sa2__gUnknown_03004D58;
extern u8 gVramGraphicsCopyCursor;
extern u8 gOamMallocOrders_EndIndex[0x20];
extern u8 gBgSpritesCount;
extern u16 gSpriteTransformScaleY;
extern u16 gSpriteTransformScaleUnknown;
extern IntrFunc gVBlankIntrs[4];
extern s32 gPseudoRandom;
extern u8 gOamMallocCopiedOrder[128];
extern struct MultiBootParam gMultiBootParam;

extern const struct SpriteTables *gRefSpriteTables;

void EngineInit(void);
void EngineMainLoop(void);
# 3 "/home/awaszczak/git/sa2/sa1/../src/game/sa1/stage/enemies/boss_x3_egg_x.c" 2

# 1 "/home/awaszczak/git/sa2/sa1/../include/trig.h" 1





extern const s16 gSineTable[1280];
# 5 "/home/awaszczak/git/sa2/sa1/../src/game/sa1/stage/enemies/boss_x3_egg_x.c" 2

# 1 "/home/awaszczak/git/sa2/sa1/../include/lib/m4a/m4a.h" 1



# 1 "/home/awaszczak/git/sa2/sa1/../include/lib/m4a/m4a_internal.h" 1
# 111 "/home/awaszczak/git/sa2/sa1/../include/lib/m4a/m4a_internal.h"
typedef s32 fixed8_24;






struct MP2KTrack;
struct MP2KPlayerState;

typedef void (*MP2KEventNoteFunc)(u8, struct MP2KPlayerState *, struct MP2KTrack *);
typedef void (*MP2KEventFunc)(struct MP2KPlayerState *, struct MP2KTrack *);
typedef void (*CgbSoundFunc)(void);
typedef void (*CgbOscOffFunc)(u8);
typedef u32 (*MidiKeyToCgbFreqFunc)(u8, u8, u8);
typedef void (*ExtVolPitFunc)(void);
typedef void (*MPlayMainFunc)(struct MP2KPlayerState *);

struct MixerSource {
    u8 status;
    u8 type;
    u8 rightVol;
    u8 leftVol;

    union {
        struct {
            u8 attack;
            u8 decay;
            u8 sustain;
            u8 release;
            u8 key;
            u8 envelopeVol;

            u8 envelopeGoal;
            u8 envelopeCtr;

            u8 echoVol;
            u8 echoLen;
            u8 padding1;
            u8 padding2;
            u8 gateTime;
            u8 untransposedKey;
            u8 velocity;
            u8 priority;
            u8 rhythmPan;
            u8 padding3;
            u8 padding4;
            u8 padding5;

            u8 padding6;
            u8 sustainGoal;
            u8 nrx4;
            u8 pan;

            u8 panMask;
            u8 cgbStatus;
            u8 length;
            u8 sweep;

            u32 freq;
        } cgb;
        struct {
            u8 attack;
            u8 decay;
            u8 sustain;
            u8 release;
            u8 key;
            u8 envelopeVol;

            u8 envelopeVolR;
            u8 envelopeVolL;

            u8 echoVol;
            u8 echoLen;
            u8 padding1;
            u8 padding2;
            u8 gateTime;
            u8 untransposedKey;
            u8 velocity;
            u8 priority;
            u8 rhythmPan;
            u8 padding3;
            u8 padding4;
            u8 padding5;

            u32 ct;
            fixed8_24 fw;

            u32 freq;
        } sound;
    } data;

    void *wav;
    void *current;

    struct MP2KTrack *track;
    struct MixerSource *prev;
    struct MixerSource *next;
    u32 padding7;
    u32 blockCount;
};

struct SoundMixerState {


    u32 lockStatus;

    vu8 dmaCounter;


    u8 reverb;
    u8 numChans;
    u8 masterVol;
    u8 freqOption;

    u8 extensionFlags;
    u8 cgbCounter15;
    u8 framesPerDmaCycle;
    u8 maxScanlines;
    u8 gap[3];
    s32 samplesPerFrame;
    s32 sampleRate;



    float sampleRateReciprocal;

    struct MixerSource *cgbChans;
    MPlayMainFunc MPlayMainHead;
    struct MP2KPlayerState *musicPlayerHead;
    CgbSoundFunc CgbSound;
    CgbOscOffFunc CgbOscOff;
    MidiKeyToCgbFreqFunc MidiKeyToCgbFreq;
    void **MPlayJumpTable;
    MP2KEventNoteFunc plynote;
    ExtVolPitFunc ExtVolPit;
    void *reserved2;
    void *reserved3;
    void *reversed4;
    void *reserved5;
    struct MixerSource chans[12];



    fixed8_24 pcmBuffer[4907 * 2];

};

struct MP2KVoiceGroup {
    u8 type;
    u8 drumKey;
    u8 cgbLength;
    u8 pan_sweep;
    union {
        struct {
            struct WaveData *wav;
            u8 attack;
            u8 decay;
            u8 sustain;
            u8 release;
        } sound;
        struct {
            struct MP2KVoiceGroup *group;
            u8 *keySplitTable;
        } keySplit;
    } data;
};

struct WaveData {
    u16 type;
    u16 status;

    u32 freq;
    u32 loopStart;
    u32 size;
    s8 data[1];
};

struct MP2KSongHeader {
    u8 trackCount;
    u8 blockCount;
    u8 priority;
    u8 reverb;
    struct MP2KVoiceGroup *voicegroup;
    u8 *part[1];
};

struct MP2KTrack {
    u8 status;
    u8 wait;
    u8 patternLevel;
    u8 repeatCount;
    u8 gateTime;
    u8 key;
    u8 velocity;
    u8 runningStatus;
    s8 keyShiftCalculated;
    u8 pitchCalculated;
    s8 keyShift;
    s8 keyShiftPublic;
    s8 tune;
    u8 pitchPublic;
    s8 bend;
    u8 bendRange;
    u8 volRightCalculated;
    u8 volLeftCalculated;
    u8 vol;
    u8 volPublic;
    s8 pan;
    s8 panPublic;
    s8 modCalculated;
    u8 modDepth;
    u8 modType;
    u8 lfoSpeed;
    u8 lfoSpeedCounter;
    u8 lfoDelay;
    u8 lfoDelayCounter;
    u8 priority;
    u8 echoVolume;
    u8 echoLength;

    struct MixerSource *chan;
    struct MP2KVoiceGroup voicegroup;

    u8 gap[10];
    u16 unk_3A;
    u32 unk_3C;
    u8 *cmdPtr;
    u8 *patternStack[3];
};

struct MP2KPlayerState {
    struct MP2KSongHeader *songHeader;
    u32 status;
    u8 trackCount;
    u8 priority;
    u8 cmd;
    bool8 checkSongPriority;
    u32 clock;
    u8 padding[8];
    u8 *memAccArea;
    u16 tempoRawBPM;
    u16 tempoScale;
    u16 tempoInterval;
    u16 tempoCounter;
    u16 fadeInterval;
    u16 fadeCounter;
    u16 fadeOV;
    struct MP2KTrack *tracks;
    struct MP2KVoiceGroup *voicegroup;
    u32 lockStatus;
    MPlayMainFunc nextPlayerFunc;
    struct MP2KPlayerState *nextPlayer;
};

struct MusicPlayer {
    struct MP2KPlayerState *info;
    struct MP2KTrack *track;
    u8 numTracks;
    u16 unk_A;
};

struct Song {
    struct MP2KSongHeader *header;
    u16 ms;
    u16 me;
};

typedef void (*XcmdFunc)(struct MP2KPlayerState *, struct MP2KTrack *);

extern char SoundMainRAM[];
extern u8 gMPlayMemAccArea[];
extern void *gMPlayJumpTable[];
extern struct MixerSource gCgbChans[];

extern const struct MusicPlayer gMPlayTable[4];
extern const struct Song gSongTable[];
extern const XcmdFunc gXcmdTable[];

extern const u8 gClockTable[];
extern const u8 gScaleTable[];
extern const u32 gFreqTable[];
extern const u16 gPcmSamplesPerVBlankTable[];
extern void *const gMPlayJumpTableTemplate[];

extern const u8 gCgbScaleTable[];
extern const s16 gCgbFreqTable[];
extern const u8 gNoiseTable[];
extern const u8 gCgb3Vol[];






u32 MidiKeyToFreq(struct WaveData *wav, u8 key, u8 fineAdjust);
u32 umul3232H32(u32 multiplier, u32 multiplicand);
void SoundMain(void);
void SoundMainBTM(void *ptr);
void TrackStop(struct MP2KPlayerState *player, struct MP2KTrack *track);
void MP2KPlayerMain(struct MP2KPlayerState *);

void ClearChain(struct MixerSource *chan);
void MP2KClearChain(struct MixerSource *chan);

void MPlayContinue(struct MP2KPlayerState *mplayInfo);
void MPlayStart(struct MP2KPlayerState *mplayInfo, struct MP2KSongHeader *songHeader);
void MPlayStop(struct MP2KPlayerState *mplayInfo);
void FadeOutBody(struct MP2KPlayerState *mplayInfo);
void TrkVolPitSet(struct MP2KPlayerState *mplayInfo, struct MP2KTrack *track);
void MPlayFadeOut(struct MP2KPlayerState *mplayInfo, u16 speed);
void Clear64byte(void *addr);
void SoundInit(struct SoundMixerState *soundInfo);
void MPlayExtender(struct MixerSource *cgbChans);
void m4aSoundMode(u32 mode);
void MPlayOpen(struct MP2KPlayerState *mplayInfo, struct MP2KTrack *tracks, u8 trackCount);
void CgbSound(void);
void CgbOscOff(u8);
void CgbModVol(struct MixerSource *chan);
u32 MidiKeyToCgbFreq(u8, u8, u8);
void MPlayJumpTableCopy(void **mplayJumpTable);
void SampleFreqSet(u32 freq);
void m4aSoundVSyncOn(void);
void m4aSoundVSyncOff(void);

void m4aMPlayTempoControl(struct MP2KPlayerState *mplayInfo, u16 tempo);
void m4aMPlayVolumeControl(struct MP2KPlayerState *mplayInfo, u16 trackBits, u16 volume);
void m4aMPlayPitchControl(struct MP2KPlayerState *mplayInfo, u16 trackBits, s16 pitch);
void m4aMPlayPanpotControl(struct MP2KPlayerState *mplayInfo, u16 trackBits, s8 pan);
void ClearModM(struct MP2KTrack *track);
void m4aMPlayModDepthSet(struct MP2KPlayerState *mplayInfo, u16 trackBits, u8 modDepth);
void m4aMPlayLFOSpeedSet(struct MP2KPlayerState *mplayInfo, u16 trackBits, u8 lfoSpeed);


void MP2K_event_fine(struct MP2KPlayerState *, struct MP2KTrack *);
void MP2K_event_goto(struct MP2KPlayerState *, struct MP2KTrack *);
void MP2K_event_patt(struct MP2KPlayerState *, struct MP2KTrack *);
void MP2K_event_pend(struct MP2KPlayerState *, struct MP2KTrack *);
void MP2K_event_rept(struct MP2KPlayerState *, struct MP2KTrack *);
void MP2K_event_memacc(struct MP2KPlayerState *, struct MP2KTrack *);
void MP2K_event_prio(struct MP2KPlayerState *, struct MP2KTrack *);
void MP2K_event_tempo(struct MP2KPlayerState *, struct MP2KTrack *);
void MP2K_event_keysh(struct MP2KPlayerState *, struct MP2KTrack *);
void MP2K_event_voice(struct MP2KPlayerState *, struct MP2KTrack *);
void MP2K_event_vol(struct MP2KPlayerState *, struct MP2KTrack *);
void MP2K_event_pan(struct MP2KPlayerState *, struct MP2KTrack *);
void MP2K_event_bend(struct MP2KPlayerState *, struct MP2KTrack *);
void MP2K_event_bendr(struct MP2KPlayerState *, struct MP2KTrack *);
void MP2K_event_lfos(struct MP2KPlayerState *, struct MP2KTrack *);
void MP2K_event_lfodl(struct MP2KPlayerState *, struct MP2KTrack *);
void MP2K_event_mod(struct MP2KPlayerState *, struct MP2KTrack *);
void MP2K_event_modt(struct MP2KPlayerState *, struct MP2KTrack *);
void MP2K_event_tune(struct MP2KPlayerState *, struct MP2KTrack *);
void MP2K_event_port(struct MP2KPlayerState *, struct MP2KTrack *);
void MP2K_event_xcmd(struct MP2KPlayerState *, struct MP2KTrack *);
void MP2K_event_endtie(struct MP2KPlayerState *, struct MP2KTrack *);
void MP2K_event_nxx(u8 clock, struct MP2KPlayerState *, struct MP2KTrack *);


void MP2K_event_xxx(struct MP2KPlayerState *, struct MP2KTrack *);
void MP2K_event_xwave(struct MP2KPlayerState *, struct MP2KTrack *);
void MP2K_event_xtype(struct MP2KPlayerState *, struct MP2KTrack *);
void MP2K_event_xatta(struct MP2KPlayerState *, struct MP2KTrack *);
void MP2K_event_xdeca(struct MP2KPlayerState *, struct MP2KTrack *);
void MP2K_event_xsust(struct MP2KPlayerState *, struct MP2KTrack *);
void MP2K_event_xrele(struct MP2KPlayerState *, struct MP2KTrack *);
void MP2K_event_xiecv(struct MP2KPlayerState *, struct MP2KTrack *);
void MP2K_event_xiecl(struct MP2KPlayerState *, struct MP2KTrack *);
void MP2K_event_xleng(struct MP2KPlayerState *, struct MP2KTrack *);
void MP2K_event_xswee(struct MP2KPlayerState *, struct MP2KTrack *);
void MP2K_event_xcmd_0C(struct MP2KPlayerState *, struct MP2KTrack *);
void MP2K_event_xcmd_0D(struct MP2KPlayerState *, struct MP2KTrack *);
# 5 "/home/awaszczak/git/sa2/sa1/../include/lib/m4a/m4a.h" 2

extern struct SoundMixerState gSoundInfo;

extern struct MP2KPlayerState gMPlayInfo_BGM;
extern struct MP2KPlayerState gMPlayInfo_SE1;
extern struct MP2KPlayerState gMPlayInfo_SE2;
extern struct MP2KPlayerState gMPlayInfo_SE3;

void m4aSoundVSync(void);

void m4aSoundInit(void);
void m4aSoundMain(void);
void m4aSongNumStart(u16);
void m4aSongNumStartOrChange(u16);
void m4aSongNumStartOrContinue(u16);
void m4aSongNumStop(u16 n);
void m4aMPlayAllStop(void);
void m4aMPlayAllContinue(void);
void m4aMPlayContinue(struct MP2KPlayerState *mplayInfo);
void m4aMPlayFadeOut(struct MP2KPlayerState *mplayInfo, u16 speed);
void m4aMPlayFadeOutTemporarily(struct MP2KPlayerState *mplayInfo, u16 speed);
void m4aMPlayFadeIn(struct MP2KPlayerState *mplayInfo, u16 speed);
void m4aMPlayImmInit(struct MP2KPlayerState *mplayInfo);

void m4aMPlayTempoControl(struct MP2KPlayerState *mplayInfo, u16 tempo);
void m4aMPlayVolumeControl(struct MP2KPlayerState *mplayInfo, u16 trackBits, u16 volume);
void m4aMPlayPitchControl(struct MP2KPlayerState *mplayInfo, u16 trackBits, s16 pitch);
void m4aMPlayPanpotControl(struct MP2KPlayerState *mplayInfo, u16 trackBits, s8 pan);
# 7 "/home/awaszczak/git/sa2/sa1/../src/game/sa1/stage/enemies/boss_x3_egg_x.c" 2
# 1 "/home/awaszczak/git/sa2/sa1/../include/game/shared/stage/entity.h" 1







# 1 "/home/awaszczak/git/sa2/sa1/../include/game/globals.h" 1



# 1 "/home/awaszczak/git/sa2/sa1/../include/multi_sio.h" 1
# 83 "/home/awaszczak/git/sa2/sa1/../include/multi_sio.h"
struct MultiSioPacket {
    u8 frameCounter;
    u8 recvErrorFlags : 4;
    u8 loadRequest : 1;
    u8 downloadSuccessFlag : 1;
    u8 loadSuccessFlag : 1;
    u8 reserved_0 : 1;
    u16 checkSum;
    u16 data[20 / 2];
    u16 overrunCatch[2];
};


struct MultiSioArea {
    u8 type;
    u8 state;
    u8 connectedFlags;
    u8 recvSuccessFlags;

    u8 syncRecvFlag[4];

    u8 downloadSuccessFlags : 4;
    u8 loadEnable : 1;
    u8 loadRequest : 1;
    u8 loadSuccessFlag : 1;
    u8 startFlag : 1;

    u8 hardError;
    u8 recvFlagsAvailableCounter;


    u8 sendFrameCounter;
    u8 recvFrameCounter[4][2];

    s32 sendBufCounter;
    s32 recvBufCounter[4];

    u16 *nextSendBufp;
    u16 *currentSendBufp;
    u16 *currentRecvBufp[4];
    u16 *lastRecvBufp[4];
    u16 *recvCheckBufp[4];

    struct MultiSioPacket sendBuf[2];
    struct MultiSioPacket recvBuf[4][3];

};







extern struct MultiSioArea gMultiSioArea;





extern void MultiSioInit(u32 connectedFlags);
# 155 "/home/awaszczak/git/sa2/sa1/../include/multi_sio.h"
void MultiSioStart(void);
# 164 "/home/awaszczak/git/sa2/sa1/../include/multi_sio.h"
void MultiSioStop(void);







extern u32 MultiSioMain(void *sendp, void *recvp, u32 loadRequest);
# 224 "/home/awaszczak/git/sa2/sa1/../include/multi_sio.h"
struct MultiSioReturn {
    u32 recvSuccessFlags : 4;
    u32 loadEnable : 1;
    u32 loadRequest : 1;
    u32 loadSuccessFlag : 1;
    u32 type : 1;
    u32 connectedFlags : 4;
    u32 hardError : 1;
    u32 idOverError : 1;
    u32 reserved : 1;
    u32 recvFlagsAvailable : 1;
};





extern void MultiSioIntr(void);
# 257 "/home/awaszczak/git/sa2/sa1/../include/multi_sio.h"
extern void MultiSioSendDataSet(void *sendp, u32 loadReq);
# 272 "/home/awaszczak/git/sa2/sa1/../include/multi_sio.h"
extern u32 MultiSioRecvDataCheck(void *recvp);
# 5 "/home/awaszczak/git/sa2/sa1/../include/game/globals.h" 2
# 72 "/home/awaszczak/git/sa2/sa1/../include/game/globals.h"
typedef struct {
    u8 unk0;
    u8 unk1;
    u8 unk2;
    u8 unk3;
    u8 unk4;
    u8 unk5;
    u16 fadeoutSpeed;
} MusicManagerState;

typedef struct {
    s32 squarePlayerDistance;
    u16 angle;
} HomingTarget;






typedef struct {
    u8 type;

    u8 opaque[7];
} RoomEvent;


typedef struct {
               s32 squarePlayerDistance;
               struct Task *task;
} CheeseTarget;


extern u8 gDemoPlayCounter;


extern u16 __attribute__((aligned(4))) gSpecialStageReturnX;


extern u8 gGameMode;

extern s8 gCurrentLevel;
extern s8 gSelectedCharacter;


extern s8 gTailsEnabled;
extern s8 gNumSingleplayerCharacters;





extern u8 gMultiplayerLanguage;
extern s8 gMultiplayerCurrentLevel;



extern u16 gRingCount;

extern MusicManagerState gMusicManagerState;


extern u32 gCourseTime;


extern u8 gSpecialRingCount;


extern s32 gWorldSpeedY;




extern u16 gBossCameraClampYLower;
extern u16 gBossCameraClampYUpper;
extern u8 gRandomItemBox;

extern u16 gSpecialStageCollectedRings;
extern u16 gUnknown_0300507C;

extern u8 gSpikesUnknownTimer;

extern s8 sa2__gUnknown_0300543C;
extern struct Task *gEntitiesManagerTask;

extern u8 gDestroySpotlights;

extern u8 gRoomEventQueueSendPos;



extern u16 gStageFlags;
extern u16 gPrevStageFlags;

extern u8 gDifficultyLevel;

extern s8 gTrappedAnimalVariant;

extern u8 gBossIndex;



extern u32 gStageTime;
extern u32 gMPStageStartFrameCount;

extern u32 gCheckpointTime;

extern u8 gRoomEventQueueWritePos;

extern u8 gBossRingsRespawnCount;
extern bool8 gBossRingsShallRespawn;
extern bool8 gBoostEffectTasksCreated;

extern struct Task *gMultiplayerPlayerTasks[4];
extern s8 gMultiplayerCharacters[4];
extern s8 gMultiplayerRanks[4];
extern u8 gOamMatrixIndex;

extern u8 gMultiplayerMissingHeartbeats[4];
extern u8 gActiveCollectRingEffectCount;

extern u8 gMultiplayerUnlockedCharacters;


extern u16 gSpecialStageReturnY;




extern u32 gMultiplayerIds[4];
extern u16 gMultiplayerNames[4][6];

extern u32 gMultiplayerPseudoRandom;

extern s32 gLevelScore;
extern u8 gNumLives;
extern bool8 gFinalBossActive;

extern HomingTarget gHomingTarget;

extern u8 gMultiplayerConnections;


extern s32 gStageGoalX;

extern u8 gMPRingCollectWins[4];
extern u8 gMultiplayerCharRings[4];

extern RoomEvent gRoomEventQueue[16];

extern CheeseTarget gCheeseTarget;

extern struct Task *gChaoTasks[3];
# 241 "/home/awaszczak/git/sa2/sa1/../include/game/globals.h"
extern void LinkCommunicationError(void);
# 9 "/home/awaszczak/git/sa2/sa1/../include/game/shared/stage/entity.h" 2
# 1 "/home/awaszczak/git/sa2/sa1/../include/game/shared/stage/collision.h" 1





# 1 "/home/awaszczak/git/sa2/sa1/../include/game/shared/stage/camera.h" 1








typedef s16 CamCoord;
# 27 "/home/awaszczak/git/sa2/sa1/../include/game/shared/stage/camera.h"
typedef void (*BgUpdate)(s32, s32);





typedef struct Camera {
                    CamCoord x;
                    CamCoord y;

               s16 sa2__unk8;
               s16 sa2__unkC;
               CamCoord sa2__unk10;
               CamCoord sa2__unk14;
               s16 shiftX;
               s16 shiftY;
               s16 sa2__unk20;
               s16 sa2__unk24;




               s16 minY;
               s16 maxY;
               s16 minX;
               s16 maxX;
               s16 sa2__unk40;
               s16 sa2__unk44;
               s16 sa2__unk48;
               s16 sa2__unk4C;
               u16 unk24;
               u16 sa2__unk50;
               u16 sa2__unk52;
               u16 sa2__unk54;
               BgUpdate fnBgUpdate;
               struct Task *movementTask;
               s16 shakeOffsetX;
               s16 shakeOffsetY;
               s16 sa2__unk64;
               u8 spectatorTarget;
               u8 filler3B[0x2];
# 107 "/home/awaszczak/git/sa2/sa1/../include/game/shared/stage/camera.h"
} Camera;

extern struct Camera gCamera;
# 160 "/home/awaszczak/git/sa2/sa1/../include/game/shared/stage/camera.h"
struct Backgrounds {
    Background unk0;
    Background unk40;
    Background unk80;
    Background unkC0;
};

extern const Background gStageCameraBgTemplates[4];

void InitCamera(u32);
void UpdateCamera(void);
void DestroyCameraMovementTask(void);
# 185 "/home/awaszczak/git/sa2/sa1/../include/game/shared/stage/camera.h"
extern const Collision *gRefCollision;


extern const u16 gBossCameraYClamps[][2];
extern struct Backgrounds gStageBackgroundsRam;
# 7 "/home/awaszczak/git/sa2/sa1/../include/game/shared/stage/collision.h" 2
# 1 "/home/awaszczak/git/sa2/sa1/../include/game/shared/stage/player.h" 1







# 1 "/home/awaszczak/git/sa2/sa1/../include/constants/sa1/characters.h" 1




typedef enum {
    CHARACTER_SONIC,



    CHARACTER_TAILS,
    CHARACTER_KNUCKLES,
    CHARACTER_AMY,

    NUM_CHARACTERS
} ECharacters;
# 9 "/home/awaszczak/git/sa2/sa1/../include/game/shared/stage/player.h" 2



# 1 "/home/awaszczak/git/sa2/sa1/../include/constants/sa1/move_states.h" 1
# 13 "/home/awaszczak/git/sa2/sa1/../include/game/shared/stage/player.h" 2







# 1 "/home/awaszczak/git/sa2/sa1/../include/game/shared/parameters/characters.h" 1




# 1 "/home/awaszczak/git/sa2/sa1/../include/constants/sa1/zones.h" 1
# 6 "/home/awaszczak/git/sa2/sa1/../include/game/shared/parameters/characters.h" 2
# 21 "/home/awaszczak/git/sa2/sa1/../include/game/shared/stage/player.h" 2







typedef struct {
              SpriteTransform transform;
              Sprite s;
              Hitbox reserved;
} PlayerSpriteInfo;




extern PlayerSpriteInfo gPlayerBodyPSI;

extern PlayerSpriteInfo gPartnerBodyPSI;




typedef struct {
                    u8 flags;
                    s8 sa2__unkAD;
                    u16 sa2__unkAE;
                    u16 sa2__unkB0;
} SonicFlags;
# 59 "/home/awaszczak/git/sa2/sa1/../include/game/shared/stage/player.h"
typedef struct {
                    u8 flags;
                    s8 shift;
                    s8 sa2__unkAE;
                    s8 sa2__unkAF;


                    s32 flyingDuration;
} TailsFlags;

typedef struct {
                    u8 flags;
                    s8 shift;
                    s8 sa2__unkAE;
} KnucklesFlags;

typedef struct {
               u8 flags;
} AmyFlags;
# 137 "/home/awaszczak/git/sa2/sa1/../include/game/shared/stage/player.h"
struct Player_;
typedef void (*PlayerCallback)(struct Player_ *);


typedef struct Player_ {




               s32 qWorldX;
               s32 qWorldY;

               s16 qSpeedAirX;
               s16 qSpeedAirY;
               s16 qSpeedGround;



               s8 spriteOffsetX;
               s8 spriteOffsetY;





               u32 moveState;

               u8 rotation;
               u8 sa2__unk25;
               s16 qSpindashAccel;
               u8 sa2__unk28;
               u8 sa2__unk29;
               s16 sa2__unk2A;
               s16 timerInvulnerability;
               s16 timerInvincibility;
               s16 timerSpeedup;
               u16 timerConfusion;
               u16 itemEffect20Timer;



               u8 itemEffect;
               u8 layer;
               Sprite *stoodObj;
               s32 maxSpeed;



               s32 acceleration;
               s32 deceleration;
# 196 "/home/awaszczak/git/sa2/sa1/../include/game/shared/stage/player.h"
               u16 heldInput;
               u16 frameInput;
               s8 playerID;
               s8 sa2__unk61;
               s8 sa2__unk62;
               s8 sa2__unk63;

               s8 charState;
               s8 prevCharState;




               AnimId anim;
               u16 variant;
# 227 "/home/awaszczak/git/sa2/sa1/../include/game/shared/stage/player.h"
               s16 sa2__unk72;
               s16 checkPointX;
               s16 checkPointY;
               u32 checkpointTime;


               u16 sa2__unk7C;
               u16 sa2__unk7E;
               s16 sa2__unk80;
               s16 sa2__unk82;



               s8 defeatScoreIndex;

               s8 character;
               s8 secondsUntilDrown;
               s8 framesUntilDrownCountDecrement;
               s8 framesUntilWaterSurfaceEffect;

               struct Task *spriteTask;
               PlayerSpriteInfo *spriteInfoBody;
               PlayerSpriteInfo *spriteInfoLimbs;
# 260 "/home/awaszczak/git/sa2/sa1/../include/game/shared/stage/player.h"
               s8 __attribute__((aligned(4))) sa2__unk99[16];
               u8 sa2__unk98;






    union {
        SonicFlags sf;



        TailsFlags tf;
        KnucklesFlags kf;
        AmyFlags af;
    } w;

               u8 filler88[0x8];

} Player;

typedef struct {
               s8 pid;
               u32 unk4;
} player_0_Task;


typedef struct {
               player_0_Task unk0;
               s32 unk8;
               s32 qXs[16];
               s32 qYs[16];
} MaybeSuperSonic;


void CreatePlayer(u32 __attribute__((unused)) characterId, u32 levelId, Player *player);
s32 sa2__sub_8022F58(u8 param0, Player *p);

extern Player gPlayer;


extern Player gPartner;







typedef s32 type8029A28;

void Player_SetMovestate_IsInScriptedSequence(void);
void Player_ClearMovestate_IsInScriptedSequence(void);

void InitializePlayer(Player *p);

bool32 Player_TrySpindash(Player *p);

void DestroyPlayerTasks(Player *player);
void Player_TransitionCancelFlyingAndBoost(Player *p);
void Player_HandleSpriteYOffsetChange(Player *, s32);


void sa2__sub_8022190(Player *p);
void sa2__sub_8022318(Player *p);
void sa2__sub_8022838(Player *p);
void sa2__sub_8022D6C(Player *p);
void sa2__sub_80231C0(Player *p);


void sa2__sub_8023260(Player *);
void sa2__sub_80232D0(Player *p);

void Player_AirInputControls(Player *);
void Player_TouchGround(Player *p);
void Player_Uncurl(Player *p);
void Player_HandlePhysicsWithAirInput(Player *p);

void sa2__sub_8028204(Player *p);
void sa2__sub_80282EC(Player *p);
void sa2__sub_80283C4(Player *p);
void sa2__sub_8029C84(Player *p);
void sa2__sub_8029CA0(Player *p);
void sa2__sub_8029D14(Player *p);
void sa2__sub_8029ED8(Player *p);
void sa2__sub_8029FA4(Player *p);



void sub_804A8A8(s32 qX, s32 qY, s32 param2);


void Player_DisableInputAndBossTimer(void);
void Player_DisableInputAndBossTimer_FinalBoss(void);


void Player_8043DDC(Player *p);
bool32 Player_8044250(Player *p);
void Player_8044670(Player *p);
void Player_8044750(Player *p);
void Player_8044F7C(Player *p);
void Player_80470AC(Player *p);
void sub_80472B8(Player *p);
void Player_804726C(Player *p);
void Player_8047224(Player *p);
void Player_8047280(Player *p);
void sub_8047714(Player *p);


void Player_UpdatePosition(Player *p);
void PlayerFn_Cmd_UpdateAirFallSpeed(Player *p);


void SetStageSpawnPos(u32 character, u32 level, u32 p2, Player *player);
void CallSetStageSpawnPos(u32 character, u32 level, u32 p2, Player *p);



struct Task *Player_Tails_InitGfxMarbleTrack(Player *p);


void sa2__sub_8021BE0(Player *p);
s32 sa2__sub_8029B88(Player *player, u8 *p1, s32 *out);
s32 sa2__sub_8029AC0(Player *player, u8 *p1, s32 *out);
s32 sa2__sub_8029B0C(Player *player, u8 *p1, s32 *out);

type8029A28 sa2__sub_8029A28(Player *player, u8 *p1, type8029A28 *out);
type8029A28 sa2__sub_8029A74(Player *player, u8 *p1, type8029A28 *out);

bool32 Player_TryJump(Player *);
bool32 Player_TryAttack(Player *);
# 420 "/home/awaszczak/git/sa2/sa1/../include/game/shared/stage/player.h"
extern const u16 sCharStateAnimInfo[][2];
extern const AnimId gPlayerCharacterIdleAnims[];
# 8 "/home/awaszczak/git/sa2/sa1/../include/game/shared/stage/collision.h" 2
# 25 "/home/awaszczak/git/sa2/sa1/../include/game/shared/stage/collision.h"
typedef enum EHit {
    HIT_NONE = 0,
    HIT_ENEMY = 1,
    HIT_PLAYER = 2,
} EHit;

u32 Coll_Player_Entity_RectIntersection(Sprite *s, CamCoord sx, CamCoord sy, Player *p, Rect8 *rectPlayer);



u32 Coll_Player_Itembox(Sprite *s, CamCoord worldX, CamCoord worldY, Player *p);
# 48 "/home/awaszczak/git/sa2/sa1/../include/game/shared/stage/collision.h"
u32 sa2__sub_800DA4C(Sprite *opponent, s16 oppX, s16 oppY, __attribute__((unused)) s32 param3, __attribute__((unused)) s32 param4, u8 layer);


u32 Coll_Player_SkatingStone(Sprite *, CamCoord x, CamCoord y, Player *);
u32 Coll_Player_Gate(Sprite *s, CamCoord worldX, CamCoord worldY, Player *p, u32 param4);
u32 sub_800C394(Sprite *s, CamCoord screenX, CamCoord screenY, Player *p);
u32 Coll_Player_Spring_Sideways(Sprite *s, CamCoord worldX, CamCoord worldY, Player *p);
u32 Coll_Player_PlatformCrumbling(Sprite *s, CamCoord worldX, CamCoord worldY, Player *p);
u32 sub_800C1E8(Sprite *inSprite, Rect8 rectB, s16 sx, s16 sy, Player *p);
EHit sub_800C2B8(Sprite *s, s16 sx, s16 sy, Player *p);
bool32 sub_800C934(Sprite *s, s32 x, s32 y, Rect8 *rectPlayer, u32 __attribute__((unused)) param4, Player *p, u32 *moveState);
bool32 sub_800CBBC(Sprite *s, s32 x, s32 y, Rect8 *rectPlayer, u32 __attribute__((unused)) param4, Player *p, u32 *param6);
u32 sub_800CCB8(Sprite *, s32 x, s32 y, Player *);
EHit Coll_Player_Enemy(Sprite *s, CamCoord worldX, CamCoord worldY, Player *p);
EHit Coll_Player_Boss_1(Sprite *s, CamCoord worldX, CamCoord worldY, Player *p);
EHit Coll_Player_Bosses_2_6(Sprite *s, CamCoord worldX, CamCoord worldY, Player *p);
EHit sub_800BF10(Sprite *s, CamCoord worldX, CamCoord worldY, Player *p);
EHit sub_800BFEC(Sprite *s, CamCoord worldX, CamCoord worldY, Player *p);
u32 sub_800C0E0(Sprite *s, CamCoord screenX, CamCoord screenY, Player *p);


u32 Coll_Player_Entity_Intersection(Sprite *s, CamCoord x, CamCoord y, Player *p);
u32 Coll_Player_Interactable(Sprite *s, CamCoord sx, CamCoord sy, Player *p);

bool32 Coll_DamagePlayer(Player *);
void Coll_Player_Enemy_AdjustSpeed(Player *);

u32 Coll_Player_Platform(Sprite *, CamCoord x, CamCoord y, Player *);


bool32 Coll_AmyHammer_Spring(Sprite *s, CamCoord worldX, CamCoord worldY, Player *p);


bool32 sa2__sub_800DD54(Player *p);
bool32 sa2__sub_800DE44(Player *p);
u32 sa2__sub_800D0A0(Sprite *s, s16 worldX, s16 worldY, s16 qSpeedX, s16 qSpeedY, u8 layer, u32 arg6);


bool32 Coll_Player_Enemy_Attack(Sprite *s, CamCoord worldX, CamCoord worldY);




bool32 Coll_Player_Projectile(Sprite *, CamCoord, CamCoord);


s32 sub_80097E4(Sprite *s, CamCoord x, CamCoord y, s16 qSpeedX, s16 qSpeedY, u8 layer, u8 arg6);
# 10 "/home/awaszczak/git/sa2/sa1/../include/game/shared/stage/entity.h" 2

# 1 "/home/awaszczak/git/sa2/sa1/../include/game/shared/stage/terrain_collision.h" 1






typedef s32 (*Func801F100)(s32, s32, s32);
s32 sa2__sub_801EB44(s32, s32, s32);
s32 sa2__sub_801EC3C(s32, s32, s32);

typedef s32 (*Func801F07C)(s32, s32, s32, u8 *);
s32 sa2__sub_801ED24(s32, s32, s32, u8 *);
s32 sa2__sub_801EE64(s32, s32, s32, u8 *);
s32 sa2__sub_801F07C(s32, s32, s32, s32, u8 *, Func801F07C);


s32 sa2__sub_801E4E4(s32, s32, s32, s32, u8 *, Func801F07C);
s32 sub_801E6D4(s32, s32, s32, s32, u8 *, Func801F07C);

void sa2__sub_801F044(void);
s32 sa2__sub_801F100(s32, s32, s32, s32, Func801F100);

extern const Collision *gRefCollision;
extern const Collision *const gCollisionTable[];
# 12 "/home/awaszczak/git/sa2/sa1/../include/game/shared/stage/entity.h" 2
# 25 "/home/awaszczak/git/sa2/sa1/../include/game/shared/stage/entity.h"
typedef struct __attribute__((packed)) MapEntity { u8 x; u8 y; u8 index; union { s8 sData[4]; u8 uData[4]; } d;} MapEntity;;
# 38 "/home/awaszczak/git/sa2/sa1/../include/game/shared/stage/entity.h"
typedef struct __attribute__((packed)) MapEntity_Itembox { u8 x; u8 y; u8 index;} MapEntity_Itembox;;






typedef struct __attribute__((packed)) MapEntity_Ring { u8 x; u8 y;} MapEntity_Ring;;





typedef struct {
               MapEntity *me;
               u16 regionX;
               u16 regionY;
               u8 meX;
               u8 id;
} SpriteBase;


typedef struct {
    SpriteBase base;
    Sprite s;
} EnemyBase;

u32 sub_800CDBC(Sprite *, s32, s32, Player *);

u32 Coll_Player_Entity_Intersection(Sprite *s, CamCoord x, CamCoord y, Player *p);
# 8 "/home/awaszczak/git/sa2/sa1/../src/game/sa1/stage/enemies/boss_x3_egg_x.c" 2
# 1 "/home/awaszczak/git/sa2/sa1/../include/game/sa1/save.h" 1
# 17 "/home/awaszczak/git/sa2/sa1/../include/game/sa1/save.h"
typedef u8 PlayerNameChar;
typedef u32 TimeRecord;

struct TimeRecords {
    TimeRecord table[NUM_CHARACTERS][18][3];
};



typedef struct MultiplayerScoreDataSplit {

    PlayerNameChar playerName[6 + 2];

    u8 wins;
    u8 losses;
    u8 draws;
} MultiplayerScoreDataSplit;

typedef union {
    MultiplayerScoreDataSplit split;
    u8 raw[sizeof(MultiplayerScoreDataSplit)];
} MultiplayerScoreData;

struct MultiplayerScore {
    u32 playerId;
    MultiplayerScoreData data;
};






typedef struct SaveGame {
                u32 security;
                s32 unk4;
                u16 unlockedLevels[NUM_CHARACTERS];
                PlayerNameChar playerName[6 + 2];
                u8 difficultyLevel;
                u8 uiLanguage;
                u8 language;
                u8 timeLimitDisabled;
                u8 btnConfig;
                u8 chaosEmeralds;
                struct TimeRecords timeRecords;
                struct MultiplayerScore multiplayerScores[10];
                u32 unk420;
                u8 unk424;
                u8 unk425;
                u8 unk426;
                u8 unk427;
                u32 score;
                u32 checksum;
} SaveGame;


extern struct SaveGame gLoadedSaveGame;







void InsertMultiplayerProfile(u32 playerId, u16 *name);
void RecordOwnMultiplayerResult(s16 result);
void RecordMultiplayerResult(u32 id, u16 *name, s16 result);

bool32 RegisterTimeRecord(TimeRecord newRecord);

void SaveInit(void);
bool32 SaveGameExists(void);
u16 WriteSaveGame(void);
s16 NewSaveGame(void);
s16 LoadSaveGame(void);
void LoadCompletedSaveGame(void);
# 9 "/home/awaszczak/git/sa2/sa1/../src/game/sa1/stage/enemies/boss_x3_egg_x.c" 2
# 1 "/home/awaszczak/git/sa2/sa1/../include/game/sa1/stage/enemies/bosses_shared.h" 1



typedef struct {
               Sprite s;
               SpriteTransform transform;
               s16 unk3C;
               s16 unk3E;
               u16 unk40;
               s16 unk42;
               s16 qUnk44;
               s16 qUnk46;
               s16 unk48;
} Strc_sub_80168F0;

void CreateBossCapsule(s16, s16);

void CreatePostBossEggMobile(CamCoord worldX, CamCoord worldY);

struct Task *sub_80168F0(CamCoord worldX, CamCoord worldY, u16 numTiles, AnimId anim, u8 variant);
struct Task *Bosses_SetCamBounds(CamCoord minY, CamCoord maxY, CamCoord minX, CamCoord maxX);
struct Task *CreatePreBossCameraPan(s16 yMin, s16 yMax);
struct Task *sub_8017540(s32 param0, s32 param1);
struct Task *sub_8016D80(CamCoord worldX, CamCoord worldY, AnimId anim, u8 variant);
# 10 "/home/awaszczak/git/sa2/sa1/../src/game/sa1/stage/enemies/boss_x3_egg_x.c" 2
# 1 "/home/awaszczak/git/sa2/sa1/../include/game/sa1/stage/nuts_and_bolts_task.h" 1





typedef struct {
               Sprite s;
               s32 qUnk30;
               s32 qUnk34;
               s16 qUnk38;
               s16 qUnk3A;
               u16 qUnk3C;
               s16 qUnk3E;
               u16 qUnk40;
} NutsAndBolts;

extern struct Task *CreateNutsAndBoltsTask(u16 taskFlags, void *vramTiles, u16 anim, u8 variant, TaskDestructor dtor);
extern void Task_NutsAndBolts(void);
extern void TaskDestructor_NutsAndBolts(struct Task *t);

extern const u16 gUnknown_080BB41C[8];
extern const u8 gUnknown_080BB42C[8];
extern const u8 gUnknown_080BB434[8];
# 11 "/home/awaszczak/git/sa2/sa1/../src/game/sa1/stage/enemies/boss_x3_egg_x.c" 2


# 1 "/home/awaszczak/git/sa2/sa1/../include/game/sa1/ui/stage_results.h" 1






u32 CreateStageResults(u32, u32);
void StageResults_AnimateSeparator(void);
void StageResults_AnimateTitle(void);

extern const u16 gAnimsGotThroughZoneAndActNames[][3];
extern const u16 gStageResultsHeadlineTexts[][3];
extern const u16 gAnimsGotThroughCharacterNames[][3];
# 14 "/home/awaszczak/git/sa2/sa1/../src/game/sa1/stage/enemies/boss_x3_egg_x.c" 2
# 1 "/home/awaszczak/git/sa2/sa1/../include/game/shared/stage/rings_scatter.h" 1
# 14 "/home/awaszczak/git/sa2/sa1/../include/game/shared/stage/rings_scatter.h"
typedef struct {
               s32 x;
               s32 y;
               s16 velX;
               s16 velY;
               u16 unkC;
               s16 unkE;



} ScatterRing;

typedef struct {
                      Sprite sprRing;
                      ScatterRing rings[48];
                      u32 sa2__unk2B0;
                      u16 sa2__unk2B4;
                      u16 sa2__unk2B6;
} RingsScatter;

extern struct Task *gRingsScatterTask;

void InitPlayerHitRingsScatter(void);
void DestroyRingsScatterTask(void);

void InitScatteringRings(s32 x, s32 y, s32 numRings);


void InitScatteringRings_ExtraBossCapsule(s32 x, s32 y, s32 numRings);
# 15 "/home/awaszczak/git/sa2/sa1/../src/game/sa1/stage/enemies/boss_x3_egg_x.c" 2
# 1 "/home/awaszczak/git/sa2/sa1/../include/game/shared/stage/screen_shake.h" 1






struct Task *CreateScreenShake(u32 p0, u32 p1, u32 p2, u32 p3, u32 flags);
# 16 "/home/awaszczak/git/sa2/sa1/../src/game/sa1/stage/enemies/boss_x3_egg_x.c" 2
# 1 "/home/awaszczak/git/sa2/sa1/../include/game/shared/stage/stage.h" 1
# 14 "/home/awaszczak/git/sa2/sa1/../include/game/shared/stage/stage.h"
void ApplyGameStageSettingsAndStart(void);




void CreateGameStage(void);
void GoToNextLevel(void);

void HandleLifeLost(void);
void HandleDeath(void);

extern struct Task *gGameStageTask;
# 17 "/home/awaszczak/git/sa2/sa1/../src/game/sa1/stage/enemies/boss_x3_egg_x.c" 2


# 1 "/home/awaszczak/git/sa2/sa1/../include/constants/sa1/animations.h" 1






# 1 "/home/awaszczak/git/sa2/sa1/../include/constants/sa1/anim_sizes.h" 1
# 8 "/home/awaszczak/git/sa2/sa1/../include/constants/sa1/animations.h" 2
# 20 "/home/awaszczak/git/sa2/sa1/../src/game/sa1/stage/enemies/boss_x3_egg_x.c" 2

# 1 "/home/awaszczak/git/sa2/sa1/../include/constants/sa1/char_states.h" 1
# 22 "/home/awaszczak/git/sa2/sa1/../src/game/sa1/stage/enemies/boss_x3_egg_x.c" 2
# 1 "/home/awaszczak/git/sa2/sa1/../include/constants/sa1/songs.h" 1
# 23 "/home/awaszczak/git/sa2/sa1/../src/game/sa1/stage/enemies/boss_x3_egg_x.c" 2




typedef struct EggX_10 {
    u16 unk0;
    u16 unk2;
    u16 unk4;
    u16 unk6;
    u8 unk8;
    u8 unk9;
    s16 unkA;
    s16 qUnkC;
    u16 unkE;
} EggX_10;

typedef struct EggX_48 {
    Sprite s;
    u16 unk30;
    u8 filler32[0x2];
    s32 qUnk34;
    s32 qUnk38;
    s16 qUnk3C;
    s16 qUnk3E;
    u16 unk40;
    u16 unk42;
    u16 unk44;
    u8 filler46[0x2];
} EggX_48;

typedef struct EggX_Sparkle {
               Sprite s;
               SpriteTransform transform;
               u16 unk3C;
               u8 filler3E[0x2];
               s32 unk40;
               s32 unk44;
               s16 unk48;
               s16 unk4A;
               s16 unk4C;
               s16 unk4E;
               s16 unk50;
               s16 unk52;
               s32 unk54;
               s32 unk58;
               s16 unk5C;
               s16 unk5E;
               u8 unk60;
               u8 unk61;
               u8 unk62;
} EggX_Sparkle;

typedef struct EggX_7C {
    Sprite s;
    Sprite s2;
    s16 unk60;
    u8 filler62[0x2];
    s32 unk64;
    s32 unk68;
    s32 unk6C;
    s32 unk70;
    u16 unk74;
    u16 unk76;
    u8 unk78;
    u8 unk79;
    u8 unk7A;
    u8 unk7B;
} EggX_7C;

typedef struct EggX {
               SpriteBase base;
               Sprite s;
               Hitbox reserved;
               Sprite s2;
               s32 qUnk74;
               s32 qUnk78;
               s32 qUnk7C;
               s32 qUnk80;
               s32 unk84;
               s16 unk88;
               s16 unk8A;
               s16 unk8C;
               s16 unk8E;
               u16 unk90;
               u16 unk92;
               s8 unk94;
               s8 unk95;
               u16 unk96;
               u8 unk98;
               u8 unk99;
               u8 unk9A;
               struct Task *task9C;
} EggX;

void Task_EggXMain(void);
void sub_8036E20(CamCoord worldX, CamCoord worldY);
enum EHit sub_8036F9C(CamCoord worldX, CamCoord worldY, u8 arg2);
void sub_80370B4(void);
u8 sub_803711C(s16 arg0);
void Task_803753C(void);
void Task_803775C(void);
void sub_803803C(void);
void Task_8038154(void);
void sub_8038E34(void);
void sub_8038B38(void);
void sub_8038BC8(void);
void sub_8038C20(void);
void sub_8038D2C(void);
void sub_8038420(CamCoord worldX, CamCoord worldY);
void sub_8038F04(void);
void sub_8039074(u8 param0);
void sub_8039108(void);
void sub_803918C(u8 param0);
void Task_8039264(void);
void Task_803A2F8(void);
void sub_803967C(void);
void Task_80397A8(void);
void sub_8039940(void);
void Task_8039A64(void);
void sub_803A1D8(void);
void Task_803A46C(void);
void sub_803A54C(void);
void sub_803A594(void);
void sub_803A170(u32 param0);

void TaskDestructor_EggX7C(struct Task *t);
void TaskDestructor_EggX_Sparkle(struct Task *t);
void sub_80472AC(Player *p);
void TaskDestructor_EggX(struct Task *t);
void TaskDestructor_EggX48(struct Task *t);

extern const s16 gUnknown_084ACF1C[4];
extern const s16 gUnknown_084ACF24[];
extern const s16 gUnknown_084ACF2C[];
extern const s16 gUnknown_084ACF34[];

static inline void sub_803A614__inline()
{
    { u16 tmp = (u16)(0x7FFF); DmaSet(3, &tmp, &gObjPalette[12 * 16], (u32)((0x8000 | 0x0000 | 0x0000 | 0x0100 | 0x0000) << 16 | ((0x20)/(16/8)))); };
    gFlags |= 0x2;
}

static inline void ChangeVariant2__inline()
{
    EggX *boss = (void *)(((struct Task *)((gCurTask)->parent))->data);
    Sprite *s2 = &boss->s2;
    s2->variant = 3;
    s2->frameFlags &= ~0x4000;
    s2->prevVariant = -1;
}

static inline void sub_803A650__inline(CamCoord worldX, CamCoord worldY)
{
    enum EHit collPlayer;
    enum EHit collPartner;

    EggX_7C *strc7C = (void *)((gCurTask)->data);
    Sprite *s = &strc7C->s;
    collPlayer = sub_800BF10(s, worldX, worldY, &gPlayer);

    if (gNumSingleplayerCharacters == 2) {
        collPartner = sub_800BF10(s, worldX, worldY, &gPartner);
    } else {
        collPartner = HIT_NONE;
    }

    if ((collPlayer == HIT_PLAYER) || (collPartner == HIT_PLAYER)) {
        EggX *boss = (void *)(((struct Task *)((gCurTask)->parent))->data);
        Sprite *s2 = &boss->s2;
        s2->variant = 3;
        s2->frameFlags &= ~0x4000;
        s2->prevVariant = -1;
    }
}


static inline void ChangeVariant__inline()
{
    EggX *boss = (void *)((gCurTask)->data);
    Sprite *s2 = &boss->s2;
    if ((s2->variant != 0) && (s2->frameFlags & 0x4000)) {
        s2->variant = 0;
        s2->prevVariant = -1;
    }
}


static inline void CopySpritePos__inline()
{
    EggX *boss = (void *)((gCurTask)->data);
    Sprite *s = &boss->s;
    Sprite *s2 = &boss->s2;

    s2->x = s->x;
    s2->y = s->y;
}


static inline void SetSpritePos__inline(CamCoord worldX, CamCoord worldY)
{
    EggX *boss = (void *)((gCurTask)->data);
    Sprite *s = &boss->s;
    s->x = worldX - gCamera.x;
    s->y = worldY - gCamera.y;
}

static inline void sub_803A900__inline(u8 arg)
{
    EggX_7C *strc7C = (void *)((gCurTask)->data);
    switch (arg) {
        case 1:
            strc7C->unk78 = 8;
            break;
        case 2:
            strc7C->unk78 = 9;
            break;
        case 3:
            strc7C->unk78 = 10;
            break;
    }
}

void sub_8036E20(s16 worldX, s16 worldY)
{
    s32 sp0;
    s32 sp4;
    EggX *sp8;
    s32 spC;
    s32 temp_r3;
    u16 temp_r5;
    u16 temp_r6;
    u8 *temp_r1_2;
    u8 *temp_r1_3;
    u8 *temp_r1_4;
    u8 temp_r1;

    EggX *boss = (void *)((gCurTask)->data);
    Sprite *s = &boss->s;
    Sprite *s2;
    EggX_7C *strc7C;

    if ((!(gPlayer.moveState & 0x00000080))) {
        boss->s.palId = 0;
    }

    if (boss->unk95 == 0) {
        EHit collPlayer = HIT_NONE;
        EHit collPartner = HIT_NONE;
        s2 = &boss->s2;
        strc7C = (void *)((boss->task9C)->data);

        if (!(4 & strc7C->unk7A)) {
            collPlayer = Coll_Player_Enemy(s, worldX, worldY, &gPlayer);
        }
        if (collPlayer == HIT_NONE) {
            collPlayer = sub_800BFEC(s, worldX, worldY, &gPlayer);
        }
        if (gNumSingleplayerCharacters == 2) {
            if (!(4 & strc7C->unk7A)) {
                collPartner = Coll_Player_Enemy(s, worldX, worldY, &gPartner);
            }
            if (collPartner == HIT_NONE) {
                collPartner = sub_800BFEC(s, worldX, worldY, &gPartner);
            }
        }

        if ((collPlayer == HIT_ENEMY) || (collPartner == HIT_ENEMY)) {
            boss->unk94++;
            boss->unk95 = 0x20;
            s2->variant = 2;
            s2->prevVariant = -1;
            s2->frameFlags &= 0xFFFFBFFF;
            m4aSongNumStart(0x8FU);
        } else if ((collPlayer == HIT_PLAYER) || (collPartner == HIT_PLAYER)) {
            s2->variant = 3;
            s2->prevVariant = -1;
            s2->frameFlags &= 0xFFFFBFFF;
        }
    }
}

enum EHit sub_8036F9C(CamCoord worldX, CamCoord worldY, u8 arg2)
{
    enum EHit collPlayer;
    enum EHit collPartner;
    EggX_Sparkle *sparkle = (void *)((gCurTask)->data);
    Sprite *s = &sparkle->s;

    if (arg2 == 0) {
        collPlayer = sub_800BF10(s, worldX, worldY, &gPlayer);
        if (gNumSingleplayerCharacters == 2) {
            collPartner = sub_800BF10(s, worldX, worldY, &gPartner);
        } else {
            collPartner = HIT_NONE;
        }
    } else {
        collPlayer = sub_800C2B8(s, worldX, worldY, &gPlayer);
        if (gNumSingleplayerCharacters == 2) {
            collPartner = sub_800BF10(s, worldX, worldY, &gPartner);
        } else {
            collPartner = HIT_NONE;
        }
    }
    if ((collPlayer == HIT_PLAYER) || (collPartner == HIT_PLAYER)) {
        EggX *boss = (void *)(((struct Task *)((gCurTask)->parent))->data);
        Sprite *s2 = &boss->s2;
        s2->variant = 3;
        s2->frameFlags &= 0xFFFFBFFF;
        s2->prevVariant = -1;
    }

    if ((arg2 != 0) && (collPlayer == HIT_PLAYER) && (gRingCount == 0)) {
        Coll_DamagePlayer(&gPlayer);
        collPlayer = HIT_NONE;
    }

    return collPlayer;
}

void sub_80370B4()
{
    s8 *temp_r2;
    s8 temp_r1;

    EggX *boss = (void *)((gCurTask)->data);
    Sprite *s = &boss->s;
    Sprite *s2 = &boss->s2;

    if (boss->unk95 != 0) {
        if ((--boss->unk95 > 16) && !(boss->unk95 & 2) && (!(gPlayer.moveState & 0x00000080))) {
            s->palId = 253;
        }
    }

    DisplaySprite(s);
    DisplaySprite(s2);
}

u8 sub_803711C(s16 arg0)
{
    const s16 *ptr;
    s16 temp_r0;
    s16 temp_r1;
    s16 var_r0;
    s32 temp_r0_2;
    s16 var_r2_2;
    s32 var_r1;
    u8 i;

    var_r2_2 = ((int)((gPlayer.qWorldX) >> 8)) - arg0;
    if (var_r2_2 < 0) {
        var_r2_2 = ((var_r2_2) >= 0 ? (var_r2_2) : -(var_r2_2));
    }

    if (gPlayer.moveState & 2) {
        if (var_r2_2 > 120) {
            ptr = &gUnknown_084ACF34[0];
        } else {
            ptr = &gUnknown_084ACF24[0];
        }
    } else {
        if (var_r2_2 > 120) {
            ptr = &gUnknown_084ACF2C[0];
        } else {
            ptr = &gUnknown_084ACF1C[0];
        }
    }

    var_r1 = ({ gPseudoRandom = (gPseudoRandom * 0x196225) + 0x3C6EF35F; gPseudoRandom; }) % 100U;

    for (i = 0; i < 4; i++) {
        var_r1 -= ptr[i];

        if (var_r1 <= 0) {
            break;
        }
    }

    return ++i;
}



void CreateEntity_EggX(MapEntity *me, u16 regionX, u16 regionY, u8 id)
{
    s16 sp4;
    s16 *temp_r1_2;
    s16 *temp_r6;
    u8 *temp_r0;
    u8 *temp_r0_2;
    EggX *boss;
    Sprite *s;
    Sprite *s2;

    if ((!(((gGameMode == 0) || (gGameMode == 1))))) {
        { s32 negativeTwo; s16 forMatching; negativeTwo = (-2); forMatching = negativeTwo; me->x = forMatching; };
        return;
    }
    boss = (void *)((TaskCreate(Task_EggXMain, sizeof(EggX), 0x2000U, 0U, TaskDestructor_EggX))->data);
    boss->base.regionX = regionX;
    boss->base.regionY = regionY;
    boss->base.me = me;
    boss->base.meX = me->x;
    boss->base.id = id;
    boss->unk92 = 120;
    boss->unk95 = 0;
    boss->unk99 = 0;
    boss->unk98 = 0;
    boss->qUnk74 = ((s32)((116)*256));
    boss->qUnk78 = ((s32)((232)*256));
    boss->qUnk7C = 0;
    boss->qUnk80 = 0;
    boss->unk84 = 0;
    boss->unk96 = 0;
    if ((&gLoadedSaveGame)->difficultyLevel != 0) {
        boss->unk94 = 2;
    } else {
        boss->unk94 = 0;
    }

    boss->unk88 = (me->x * 8) + (regionX << 8);
    temp_r1_2 = &boss->unk8A;
    boss->unk8A = (me->y * 8) + (regionY << 8);
    { s32 negativeTwo; s16 forMatching; negativeTwo = (-2); forMatching = negativeTwo; me->x = forMatching; };
    s = &boss->s;
    s->x = boss->unk88;
    s->y = boss->unk8A;
    s->graphics.dest = VramMalloc(((48 / 8) * (56 / 8)));
    s->oamFlags = ((22) << 6);
    s->graphics.size = 0;
    s->graphics.anim = 687;
    s->variant = 0;
    s->animCursor = 0;
    s->qAnimDelay = 0;
    s->prevVariant = -1;
    s->animSpeed = ((int)((float)(1.0)*0x10));
    s->palId = 0;
    s->hitboxes[0].index = -1;
    s->frameFlags = 0x2000;

    s2 = &boss->s2;
    s2->x = boss->unk88;
    s2->y = boss->unk8A;
    s2->graphics.dest = VramMalloc(((32 / 8) * (24 / 8)));
    s2->oamFlags = ((21) << 6);
    s2->graphics.size = 0;
    s2->graphics.anim = 691;
    s2->variant = 0;
    s2->animCursor = 0;
    s2->qAnimDelay = 0;
    s2->prevVariant = -1;
    s2->animSpeed = ((int)((float)(1.0)*0x10));
    s2->palId = 0;
    s2->hitboxes[0].index = -1;
    s2->frameFlags = 0x2000;

    if ((!(gPlayer.moveState & 0x00000080))) {
        gWinRegs[0] = (((0) << 16) | (320));
        gWinRegs[2] = (((0) << 16) | (240));
        gWinRegs[4] = 0x1F1F;
        gWinRegs[5] = 0x1F1F;
        gBldRegs.bldCnt = 0xBF;
        gBldRegs.bldY = 0xC;
        gDispCnt |= 0x2000;
    }

    sub_803A614__inline();
}

void Task_EggXMain()
{
    EggX *boss = (void *)((gCurTask)->data);

    switch (boss->unk99) {
        case 0:
            if ((boss->unk88 - (320 / 2)) <= gCamera.x) {
                gCamera.minX = (u16)boss->unk88 - ((320 / 2) + 24);
                gCamera.maxX = (u16)boss->unk88 + ((320 / 2) + 24);
                boss->unk99 = 1;
                return;
            }
            return;
        case 1:
            if ((boss->unk8A - 40) <= gCamera.y) {
                CreatePreBossCameraPan((s16)(boss->unk8A - 40), (s16)(boss->unk8A + 240));
                boss->unk99 = 2;
                return;
            }
            break;
        case 2:
            if ((gCamera.minY == (boss->unk8A - 40)) && (gCamera.maxY == (boss->unk8A + 240))) {
                boss->unk99 = 3;
                return;
            }
            break;
        case 3:
            boss->unk99 = 0;
            boss->qUnk80 = -((s32)((1)*256));
            boss->unk8C = boss->unk88 + ((int)((boss->qUnk74) >> 8));
            boss->unk8E = boss->unk8A + ((int)((boss->qUnk78) >> 8));
            sub_8038F04();
            gCurTask->main = Task_803753C;
            CreateScreenShake(0x400U, 4U, 0x100U, 0x7AU, 0x80U);
            gMusicManagerState.unk1 = 0x16;
            break;
    }
}

void Task_803753C()
{
    EggX *boss = (void *)((gCurTask)->data);
    EggX_7C *strc7C = (void *)((boss->task9C)->data);
    Sprite *s = &boss->s;
    Sprite *s2 = &boss->s2;
    CamCoord worldX, worldY;

    boss->qUnk74 += boss->qUnk7C;
    boss->qUnk78 += boss->qUnk80;
    worldX = ((int)((boss->qUnk74) >> 8)) + boss->unk88;
    worldY = ((int)((boss->qUnk78) >> 8)) + boss->unk8A;

    if (boss->qUnk80 == 0) {
        boss->unk90 += 8;
        boss->unk90 &= 0x3FF;
        worldY += ((int)(((gSineTable[(boss->unk90) + 256])) >> 6)) >> 6;
    } else {
        boss->unk90 = 0;
    }

    boss->unk8C = worldX;
    boss->unk8E = worldY;

    SetSpritePos__inline(worldX, worldY);
    UpdateSpriteAnimation(s);
    UpdateSpriteAnimation(s2);

    CopySpritePos__inline();

    sub_80370B4();
    switch (boss->unk99) {
        case 0:
            if (boss->qUnk78 <= ((s32)((110)*256))) {
                boss->qUnk78 = ((s32)((110)*256));
                boss->qUnk7C = 0;
                boss->qUnk80 = 0;
                boss->unk92 = 15;
                boss->unk99++;
            }

            break;
        case 1:
            if (--boss->unk92 == 0) {
                strc7C->unk79 = 1;
                boss->unk99++;
            }
            break;
        case 2:
            if (strc7C->unk79 == 4) {
                s2->variant = 1;
                s2->prevVariant = -1;
                boss->unk99++;
            }
            break;
        case 3:
            if (s2->frameFlags & ((1) << (14))) {
                strc7C->unk79 = 5;
                s2->variant = 0;
                s2->prevVariant = -1;
                boss->unk99++;
            }
            break;
        case 4:
            if (strc7C->unk79 == 7) {
                boss->unk92 = 0xF;
                boss->unk99++;
            }
            break;
        case 5:
            if (--boss->unk92 == 0) {
                boss->unk98 = 0xFF;
                boss->unk99 = 0;
                gCurTask->main = Task_803775C;
            }
            break;
    }
}


void Task_803775C()
{
    Sprite *s2;
    s32 sp8 = 0;
    Sprite *spC;
    Rect8 sp10;
    Sprite *sp14;
    Rect8 sp18;
    Sprite *s;
    s16 temp_r1_10;
    s16 temp_r1_11;
    s16 var_r0_2;
    s16 var_r5;
    s32 *temp_r0_14;
    s32 *temp_r3_5;
    s32 temp_r1;
    s32 temp_r1_3;
    s32 temp_r1_8;
    s32 temp_r4_2;
    s32 var_r0_4;
    s32 var_r0_6;
    s32 var_r2;
    s32 var_r4_3;
    s32 var_r6;
    u16 *temp_r2;
    s16 temp_r5_2;
    s16 var_r1_2;
    u16 var_r1_3;
    s16 var_r3;
    CamCoord worldX, worldY;
    u16 var_r4_2;

    EggX *boss = (void *)((gCurTask)->data);
    EggX_7C *strc7C;
    strc7C = (void *)((boss->task9C)->data);
    s = &boss->s;
    s2 = &boss->s2;

    if (s->frameFlags & 0x400) {
        boss->qUnk7C += boss->unk84;
        boss->qUnk74 -= boss->qUnk7C;
    } else {
        boss->qUnk7C += boss->unk84;
        boss->qUnk74 += boss->qUnk7C;
    }

    temp_r1 = boss->qUnk78 + boss->qUnk80;
    boss->qUnk78 = temp_r1;
    worldX = boss->unk88 + ((int)((boss->qUnk74) >> 8));
    worldY = boss->unk8A + ((int)((temp_r1) >> 8));
    if (boss->qUnk80 == 0) {
        boss->unk90 = (boss->unk90 + 8);
        boss->unk90 &= 0x3FF;
        worldY += (((int)(((gSineTable[(boss->unk90) + 256])) >> 6)) >> 6);
    } else {
        boss->unk90 = 0;
    }

    boss->unk8C = worldX;
    boss->unk8E = worldY;
    sub_8036E20(worldX, worldY);

    if (boss->unk94 > 7) {
        sub_803803C();
        return;
    }

    SetSpritePos__inline(worldX, worldY);

    ChangeVariant__inline();
    UpdateSpriteAnimation(s);
    UpdateSpriteAnimation(s2);
    CopySpritePos__inline();
    sub_80370B4();

    switch (boss->unk99) {
        s32 rnd;
        case 0x0:
            boss->unk9A = 0;
            strc7C->unk79 = 8;
            boss->unk99++;
            rnd = ((u32)({ gPseudoRandom = (gPseudoRandom * 0x196225) + 0x3C6EF35F; gPseudoRandom; }) & 0x30) >> 4;
            switch (rnd) {
                case 3:
                case 0:
                    boss->unk92 = 0x5A;
                    break;
                case 1:
                    boss->unk92 = 0xB4;
                    break;
                case 2:
                    boss->unk92 = 0xF0;
                    break;
            }


        case 0x1:
            if (--boss->unk92 != 0) {
                return;
            }

            boss->unk9A = sub_803711C(worldX);
            if (boss->unk9A != 4) {
                boss->unk92 = 10;
                boss->unk99++;
            } else {
                strc7C->unk79 = 10;
                boss->unk92 = 0x14;
                boss->unk99 = 64;
            }

            break;
        case 0x2:
            strc7C->unk7A = strc7C->unk7A & 0x1;
            if (strc7C->unk7A == 0) {
                return;
            }

            if (--boss->unk92 == 0) {
                boss->unk92 = 0xA;
                boss->unk99++;
                strc7C->unk79 = 0xA;
            }

            break;
        case 0x3:
            if (!(2 & strc7C->unk7A)) {
                return;
            }

            if (--boss->unk92 != 0) {
                return;
            }
            strc7C->unk79 = 0xD;
            boss->unk99 = boss->unk9A * 0x10;

            if (boss->unk9A == 2) {
                boss->unk92 = 0x1E;
                m4aSongNumStart(0xACU);
            } else if (boss->unk9A == 1) {
                boss->unk92 = 0;
            }

            break;
        case 0x4:
            strc7C->unk79 = 0xF;
            boss->unk9A = 0;
            boss->unk99++;
            break;
        case 0x10:
            sub_803967C();
            boss->unk92++;
            boss->qUnk7C = 0x200;
            boss->unk84 = -0x40;
            boss->unk99++;
            break;
        case 0x11:
            var_r2 = 0;
            if (boss->qUnk7C <= 0) {
                temp_r1_8 = boss->unk84;
                if (temp_r1_8 < 0) {
                    var_r0_4 = temp_r1_8 + 3;
                } else {
                    var_r0_4 = temp_r1_8;
                }
                boss->unk84 -= (var_r0_4 >> 2);
            }
            if (s->frameFlags & 0x400) {
                if (boss->qUnk74 >= -0x7400) {
                    boss->qUnk74 = -0x7400;
                    var_r2 = 1;
                }
            } else {
                if (boss->qUnk74 <= 0x7400) {
                    boss->qUnk74 = 0x7400;
                    var_r2 = 0xFF;
                }
            }

            if (var_r2 != 0) {
                boss->qUnk7C = 0;
                temp_r0_14 = &boss->unk84;
                boss->unk84 = 0;
                if (boss->unk92 != 0) {
                    boss->unk99 = 4;
                } else {
                    boss->unk99 = 0x10;
                }
            }

            break;

        case 0x20:
            if (--boss->unk92 == 0) {
                boss->unk99 = 4;
                if ((!(gPlayer.moveState & 0x00000080)) || (gNumLives != 0)) {
                    gWinRegs[4] = 0x1F1F;
                    gWinRegs[0] = (((0) << 16) | (320));
                    gWinRegs[2] = (((0) << 16) | (240));
                }
                break;
            }

            if ((!(gPlayer.moveState & 0x00000080)) || (gNumLives != 0)) {
                gWinRegs[4] = 0x3F3F;
            }

            var_r1_2 = boss->unk92 - 15;
            if (var_r1_2 < 0) {
                var_r1_2 = -var_r1_2;
            }
            var_r1_3 = (15 - (s16)var_r1_2);
            var_r4_2 = var_r1_3;
            if ((s16)var_r1_3 > 0xB) {
                var_r1_3 = 0xC;
                var_r4_2 = 0xB;
            }

            temp_r1_10 = var_r1_3;
            var_r5 = s->y - var_r1_3;
            temp_r1_11 = s->y + var_r1_3;
            var_r3 = (u16)temp_r1_11;
            if (temp_r1_11 > 240) {
                var_r3 = 240;
            }

            if (s->frameFlags & 0x400) {
                u16 some_r0, some_v;
                if ((!(gPlayer.moveState & 0x00000080)) || (gNumLives != 0)) {
                    gWinRegs[0] = (((s->x + 32) << 16) | (320));
                    gWinRegs[2] = (((var_r5) << 16) | (var_r3));
                }

                {

                    u16 v0;
                    var_r5 = gCamera.x + (320 / 2);
                    v0 = ((u16)s->x - 88);
                    spC = ((void*)0);
                    sp10.left = -v0;
                    sp10.right = 120;
                    sp10.top = -temp_r4_2;
                    sp10.bottom = +temp_r4_2;

                    var_r6 = sub_800C1E8(spC, sp10, worldX, worldY, &gPlayer);
                    if (gNumSingleplayerCharacters == 2) {
                        var_r0_6 = sub_800C1E8(spC, sp10, worldX, worldY, &gPlayer);
                    } else {
                        var_r0_6 = 0;
                    }
                }
            }
            if ((!(gPlayer.moveState & 0x00000080)) || (gNumLives != 0)) {
                gWinRegs[0] = (((0) << 16) | (s->x - 0x20));
                gWinRegs[2] = (((0) << 16) | ((s16)var_r3 | ((temp_r5_2 << 0x10) >> 8)));
            }


            var_r5 = (u16)gCamera.x + (320 / 2);
            sp14 = 0;
            sp18.left = 88;
            sp18.right = s->x - 0x98;
            sp18.top = -var_r4_2;
            sp18.bottom = +var_r4_2;

            var_r6 = sub_800C1E8(sp14, sp18, worldX, worldY, &gPlayer);
            if (gNumSingleplayerCharacters == 2) {
                var_r0_6 = sub_800C1E8(sp14, sp18, worldX, worldY, &gPlayer);
            } else {
                var_r0_6 = 0;
            }
            if ((var_r6 | var_r0_6) == 2) {
                ChangeVariant2__inline();
            }

            break;
        case 0x30:
            sub_8039940();
            boss->unk99++;
            break;
        case 0x32:
            boss->unk99 = 4;
            break;
        case 0x33:
            boss->qUnk7C = -((s32)((2)*256));
            boss->unk92 = 0;
            boss->unk99++;
            break;
        case 0x34:
            if (boss->unk92 != 0) {
                strc7C->unk79 = 0xF;
                boss->unk92 = 0;
            }
            var_r2 = 0;
            if (s->frameFlags & 0x400) {
                if (boss->qUnk74 >= +0xD000) {
                    sp8 = 0xD000;
                    var_r2 = 1;
                }
            } else {
                if (boss->qUnk74 <= -0xD000) {
                    sp8 = -0xD000;
                    var_r2 = 0xFF;
                }
            }

            if (var_r2 != 0) {
                boss->qUnk74 = sp8;
                s->frameFlags ^= 0x400;
                s2->frameFlags ^= 0x400;
                boss->unk99++;
            }
            break;
        case 0x35:
            var_r2 = 0;
            if (s->frameFlags & 0x400) {
                if (boss->qUnk74 >= -0x7400) {
                    sp8 = -0x7400;
                    var_r2 = 1;
                }
            } else {
                if (boss->qUnk74 <= 0x7400) {
                    sp8 = 0x7400;
                    var_r2 = 0xFF;
                }
            }

            if (var_r2 != 0) {
                boss->qUnk74 = sp8;
                boss->qUnk7C = 0;
                boss->unk99 = 0;
            }
            break;

        case 0x40:
            if (2 & strc7C->unk7A) {
                if (--boss->unk92 == 0) {
                    boss->qUnk7C = -0x300;
                    boss->unk99++;
                    break;
                }
            }
            break;

        case 0x41:
            var_r2 = 0;
            if (s->frameFlags & 0x400) {
                if (boss->qUnk74 >= 0xD000) {
                    sp8 = 0xD000;
                    var_r2 = 1;
                }
            } else if (boss->qUnk74 <= -((s32)((208)*256))) {
                sp8 = -((s32)((208)*256));
                var_r2 = 0xFF;
            }

            if (var_r2 != 0) {
                boss->qUnk7C = -0x200;
                strc7C->unk79 = 0x13;
                boss->qUnk74 = sp8;
                s->frameFlags ^= 0x400;
                s2->frameFlags ^= 0x400;
                boss->unk99++;
                break;
            }
            break;

        case 0x42:
            var_r2 = 0;
            if (s->frameFlags & 0x400) {
                if (boss->qUnk74 >= -((s32)((116)*256))) {
                    boss->qUnk74 = -((s32)((116)*256));
                    boss->qUnk7C = 0;
                    var_r2 = 1;
                }
            } else {
                if (boss->qUnk74 <= +((s32)((116)*256))) {
                    boss->qUnk74 = +((s32)((116)*256));
                    boss->qUnk7C = 0;
                    var_r2 = 0xFF;
                }
            }

            if (var_r2 != 0) {
                if (4 & strc7C->unk7A) {
                    boss->unk99 = 0;
                    break;
                }
            }

            break;

        case 0x5:
            if (4 & strc7C->unk7A) {
                boss->unk99 = 0;
                break;
            }
            break;
    }
}


void sub_803803C(void)
{
    EggX *boss = (void *)((gCurTask)->data);
    Sprite *s = &boss->s;
    boss->unk99 = 0;
    boss->qUnk7C = 0;
    boss->qUnk80 = 0;
    boss->s2.variant = 2;
    boss->s2.prevVariant = 0xFF;
    gCamera.minX = gCamera.x;
    gCamera.maxX = gCamera.x + 320;
    m4aSongNumStart(144);

    s->frameFlags &= ~0x180;
    if ((!(gPlayer.moveState & 0x00000080))) {
        gDispCnt &= ~0x8000;
        gWinRegs[5] = 0;
        gBldRegs.bldCnt = 0;
        gBldRegs.bldY = 0;
        gDispCnt &= ~(0x2000 | 0x4000 | 0x8000);
    }

    gPlayer.qSpeedGround = 0;
    gPlayer.moveState |= 0x200000;
    gPlayer.heldInput = 0;
    gPlayer.frameInput = 0;
    gStageFlags |= 3;

    { s32 divResA, divResB; s32 oldScore = gLevelScore; gLevelScore += 1000; divResA = ({((50000) != 0) ? ((s32)(gLevelScore) / (s32)(50000)) : 0;}); divResB = ({((50000) != 0) ? ((s32)(oldScore) / (s32)(50000)) : 0;}); if ((divResA != divResB) && (gGameMode == 0)) { u16 lives = divResA - divResB; lives += gNumLives;; ({ if ((lives) > 255) (lives) = 255; gNumLives = (lives); }); if (0) gMusicManagerState.unk3 = 0x10 | 0x0; } };

    Task_8038154();
    gCurTask->main = Task_8038154;
}

void Task_8038154()
{
    Sprite *s;
    Sprite *s2;
    s32 res;

    CamCoord worldX = 0;
    CamCoord worldY = 0;

    EggX *boss = (void *)((gCurTask)->data);
    s = &boss->s;
    s2 = &boss->s2;

    if (boss->unk99 <= 1U) {
        if (boss->unk99 == 0) {
            boss->qUnk80 += 0x10;
        }

        boss->qUnk74 += boss->qUnk7C;
        boss->qUnk78 += boss->qUnk80;
        worldX = boss->unk88 + ((int)((boss->qUnk74) >> 8));
        worldY = boss->unk8A + ((int)((boss->qUnk78) >> 8));
        boss->unk8C = (s16)worldX;
        boss->unk8E = (s16)worldY;
        if (!(7 & boss->unk92)) {
            sub_8038420(worldX, worldY);
        }
        UpdateSpriteAnimation(s);
        UpdateSpriteAnimation(s2);

        SetSpritePos__inline(worldX, worldY);
        CopySpritePos__inline();
        DisplaySprite(s);
        DisplaySprite(s2);
    }

    switch (boss->unk99) {
        case 0:
            boss->unk92--;
            res = sa2__sub_801F100(worldY + 20, worldX, 1, 8, sa2__sub_801EC3C);
            if (res < 0) {
                boss->qUnk78 += ((s32)((res)*256));
                boss->qUnk80 = (boss->qUnk80 >> 2) - boss->qUnk80;
                if (boss->qUnk80 > -((s32)((1)*256))) {
                    boss->qUnk80 = 0;
                    boss->unk92 = 240;
                    boss->unk99++;
                    if ((gSelectedCharacter == CHARACTER_SONIC)
                        && (gCurrentLevel > 0xB)
                        && ((&gLoadedSaveGame)->chaosEmeralds == ((1 << (0)) | (1 << (1)) | (1 << (2)) | (1 << (3)) | (1 << (4)) | (1 << (5)) | (1 << (6))))
                        && ((&gLoadedSaveGame)->unlockedLevels[0] > 0xCU)
                        && ((&gLoadedSaveGame)->unlockedLevels[1] > 0xCU)
                        && ((&gLoadedSaveGame)->unlockedLevels[2] > 0xCU)
                        && ((&gLoadedSaveGame)->unlockedLevels[3] > 0xCU)
                        && (((&gLoadedSaveGame)->unlockedLevels[0] != 0xF) || (gMultiplayerCurrentLevel != 0xC))) {
                        sub_803A54C();
                    } else {
                        sub_803A594();
                    }
                }
            }
            break;

        case 1:
            if (--boss->unk92 == 0) {
                if ((gSelectedCharacter == CHARACTER_SONIC)
                    && (gCurrentLevel > 0xB)
                    && ((&gLoadedSaveGame)->chaosEmeralds == ((1 << (0)) | (1 << (1)) | (1 << (2)) | (1 << (3)) | (1 << (4)) | (1 << (5)) | (1 << (6))))
                    && ((&gLoadedSaveGame)->unlockedLevels[0] > 0xCU)
                    && ((&gLoadedSaveGame)->unlockedLevels[1] > 0xCU)
                    && ((&gLoadedSaveGame)->unlockedLevels[2] > 0xCU)
                    && ((&gLoadedSaveGame)->unlockedLevels[3] > 0xCU)
                    && (((&gLoadedSaveGame)->unlockedLevels[0] != 0xF) || (gMultiplayerCurrentLevel != 0xC))) {
                    CreatePostBossEggMobile(worldX, worldY - 8);
                }

                gMusicManagerState.unk1 = 0x36;
                sub_8017540(((s32)((worldX)*256)), (worldY - 24) << 8);
                sub_8017540(((s32)((worldX - 16)*256)), ((s32)((worldY)*256)));
                sub_8017540(((s32)((worldX + 16)*256)), ((s32)((worldY)*256)));
                sub_8017540(((s32)((worldX)*256)), ((s32)((worldY + 24)*256)));
                boss->unk99++;
            }
            break;

        case 2:
            TaskDestroy(gCurTask);
            return;

            break;
    }
}



void sub_8038420(CamCoord worldX, CamCoord worldY)
{
    struct Task *t;
    NutsAndBolts *bolts;
    Sprite *sprBolts;
    s32 rndIndex = ({ gPseudoRandom = (gPseudoRandom * 0x196225) + 0x3C6EF35F; gPseudoRandom; }) % (sizeof(gUnknown_080BB41C) / sizeof((gUnknown_080BB41C)[0]));
    s32 rndTheta;
    s32 a0, a1;
    s32 rnd;
    t = CreateNutsAndBoltsTask(0x2000U, VramMalloc(gUnknown_080BB434[rndIndex]), gUnknown_080BB41C[rndIndex], gUnknown_080BB42C[rndIndex],
                               TaskDestructor_NutsAndBolts);
    bolts = (void *)((t)->data);
    sprBolts = &bolts->s;
    bolts->qUnk30 = ((s32)((worldX)*256));
    bolts->qUnk34 = ((s32)((worldY + 16)*256));
    sprBolts->frameFlags = ((2) << (12));
    sprBolts->oamFlags = ((23) << 6);
    bolts->qUnk3E = ((s32)((5. / 256.)*256));
    bolts->qUnk40 = ((s32)((32. / 256.)*256));
    rndTheta = ({ gPseudoRandom = (gPseudoRandom * 0x196225) + 0x3C6EF35F; gPseudoRandom; });
    bolts->qUnk3A = (-((gSineTable[(rndTheta & 0x1FF)]) * 0x600)) >> 0xE;
    bolts->qUnk38 = (-((gSineTable[(rndTheta & 0x1FF) + 256]) * 0x600)) >> 0xE;

    rnd = ({ gPseudoRandom = (gPseudoRandom * 0x196225) + 0x3C6EF35F; gPseudoRandom; });
    sub_8017540(((s32)(((worldX + (0x3F & rnd)) - 32)*256)), ((s32)((worldY + 32 - ((rnd & 0x3F0000) >> 0x10))*256)));
}

void Task_8038554()
{
    EggX_10 *strc10 = (void *)((gCurTask)->data);

    switch (strc10->unk8) {
        case 0: {
            if (strc10->unk6 != 0) {
                strc10->unk6--;
            } else if (!(gPlayer.moveState & 2)) {
                gPlayer.heldInput = 0x10;
                gRefCollision = gCollisionTable[gCurrentLevel];
                gCamera.maxX = gRefCollision->pxWidth;
                strc10->unk8++;
            }
        } break;

        case 1: {
            if (gPlayer.qWorldX >= ((s32)((3680)*256))) {
                gPlayer.heldInput = 0x20;
                strc10->unk6 = 0xCU;
                sub_8038C20();
                strc10->unk8++;
                Bosses_SetCamBounds(gCamera.minY, gCamera.maxY, ((gPlayer.qWorldX >> 8) - 96), gCamera.maxX);
            }
        } break;

        case 2: {
            if (--strc10->unk6 == 0) {
                gPlayer.heldInput = 0;
                gPlayer.charState = 0x34;
                gPlayer.moveState |= 0x400000;
                strc10->unk6 = 0x3CU;
                strc10->unk8++;
            }
        } break;

        case 3: {
            if (--strc10->unk6 == 0) {
                strc10->unk6 = CreateStageResults(gRingCount, gCourseTime);
                strc10->unk8++;
            }
        } break;

        case 4: {
            gPlayer.sa2__unk72 = 0x3C;

            if (--strc10->unk6 == 0) {
                gPlayer.charState = 50;
                gPlayer.moveState |= 0x400000;
                gPlayer.qWorldY -= ((s32)((16)*256));
                strc10->unkE = 0;
                strc10->qUnkC = 0;
                strc10->unk6 = 0;
                strc10->unk8++;
                break;
            }
        } break;

        case 5: {
            if (++strc10->unk6 == 0x22) {
                sub_8038B38();
            }

            if (strc10->unk6 > 0x99U) {
                gPlayer.charState = 0x33;
                strc10->qUnkC = ((s32)((1)*256));
                strc10->unk6 = 120;
                strc10->unk8++;
                break;
            }

            if (strc10->unk6 > 33) {
                s16 theta;
                s16 v;
                strc10->unkE = ((strc10->unkE + 0x10));
                strc10->unkE &= (1024 - 1);
                theta = strc10->unkE;
                v = (gSineTable[(theta)]);
                v >>= 11;
                gPlayer.qWorldY = ((s32)((strc10->unkA + (v))*256));
            } else if (strc10->unk6 > 0x1FU) {
                strc10->qUnkC += ((s32)((4)*256));
                gPlayer.qWorldY += strc10->qUnkC;
                strc10->unkA = ((int)((gPlayer.qWorldY) >> 8));
            } else if (strc10->unk6 > 0x19U) {
                strc10->qUnkC -= ((s32)((1.5)*256));
                gPlayer.qWorldY += strc10->qUnkC;
            }
        } break;

        case 6: {
            if (gPlayer.qWorldX <= ((s32)((3872)*256))) {
                strc10->qUnkC += ((s32)((0.5)*256));
                gPlayer.qWorldX += strc10->qUnkC;
            } else {
                gPlayer.moveState |= 0x100000;
            }

            if (--strc10->unk6 == 0) {
                sub_8038D2C();
                strc10->unk6 = 0xB4U;
                strc10->unk8++;
                break;
            }
        } break;

        case 7: {
            if (--strc10->unk6 == 0) {
                gWinRegs[4] = 0x3F3F;
                gWinRegs[0] = (((0) << 16) | (320));
                gWinRegs[2] = (((0) << 16) | (240));
                gBldRegs.bldCnt = 0xBF;
                gBldRegs.bldY = 0;
                gDispCnt |= 0x2000;
                gDispCnt &= 0xBFFF;
                strc10->unk6 = 0;
                strc10->unk8++;
                break;
            }
        } break;

        case 8: {
            if (++strc10->unk6 > 0x80U) {
                TasksDestroyInPriorityRange(0x2000U, 0x2FFFU);
                TaskDestroy(gCurTask);
                GoToNextLevel();
            } else {
                gBldRegs.bldY = strc10->unk6 >> 3;
            }
        } break;
    }

    if (gNumSingleplayerCharacters == 2) {
        s32 v = (u8)strc10->unk8;
        if (v >= 0) {
            if (v <= 4) {
                switch (strc10->unk9) {
                    case 0:
                        if (gPartner.qWorldX >= ((s32)((3632)*256))) {
                            gPartner.moveState |= 0x200000;
                            gPartner.frameInput = 0;
                            gPartner.heldInput = 0x0020;
                            strc10->unk9++;
                        }
                        break;

                    case 1:
                        if (gPartner.qSpeedGround <= ((s32)((0.5)*256))) {
                            gPartner.heldInput = 0;
                            strc10->unk9++;
                        }
                        break;

                    case 2:
                        if (gPartner.charState == 0) {
                            gPartner.moveState |= 0x400000;
                            strc10->unk9++;
                        }

                    case 3:
                        sub_80472AC(&gPartner);
                        break;
                }
            } else if (gPartner.charState != 0x3D) {
                gPartner.charState = 0x3D;
            }
        } else {
            if (gPartner.charState != 0x3D) {
                gPartner.charState = 0x3D;
            }
        }
    }
}

void Task_Strc10_803891C()
{
    const Collision *temp_r0_7;
    s32 rndX, rndY;
    CamCoord x, y;

    EggX_10 *strc10 = (void *)((gCurTask)->data);

    if ((++strc10->unk4 & 3) == 0) {
        rndX = ({ gPseudoRandom = (gPseudoRandom * 0x196225) + 0x3C6EF35F; gPseudoRandom; });
        x = (rndX % 320) + gCamera.x;
        rndY = ({ gPseudoRandom = (gPseudoRandom * 0x196225) + 0x3C6EF35F; gPseudoRandom; });
        y = (rndY % 240) + gCamera.y;
        sub_8038420(x, y);
    }

    if (++strc10->unk2 >= strc10->unk0) {
        strc10->unk2 = 0;
        strc10->unk0 -= 2;
        if (strc10->unk0 < 4) {
            strc10->unk0 = 4;
        }

        x = ((int)((gPlayer.qWorldX) >> 8)) - 48;
        y = ((int)((gPlayer.qWorldY) >> 8));
        sub_8038420(x, y);
    }

    switch (strc10->unk8) {
        case 0:
            if (strc10->unk6 != 0) {
                strc10->unk6--;
            } else if (!(gPlayer.moveState & 0x00000002)) {
                gPlayer.heldInput = 0x10;
                gRefCollision = gCollisionTable[gCurrentLevel];
                gCamera.maxX = gRefCollision->pxWidth;

                strc10->unk8++;
            }

            break;
        case 1:
            if ((s32)gPlayer.qWorldX > 0xBFFFF) {
                gWinRegs[4] = 0x3F3F;
                gWinRegs[0] = (((0) << 16) | (320));
                gWinRegs[2] = (((0) << 16) | (240));
                gBldRegs.bldCnt = 0xBF;
                gBldRegs.bldY = 0;
                gDispCnt |= 0x2000;
                gDispCnt &= 0xBFFF;
                strc10->unk6 = 0;
                strc10->unk8++;
            }
            break;

        case 2:
            if (++strc10->unk6 > 128) {
                gPlayer.heldInput = 0;
                gPlayer.qSpeedAirX = 0;
                gPlayer.qSpeedAirY = 0;
                gPlayer.qSpeedGround = 0;
                gPlayer.moveState |= 0x100000;
                TasksDestroyInPriorityRange(0x2000U, 0x2FFFU);
                CreateStageResults((u32)gRingCount, gCourseTime);
                TaskDestroy(gCurTask);
                gBldRegs.bldCnt &= 0xFFEF;
                return;
            } else {
                gBldRegs.bldY = strc10->unk6 >> 3;
                gCamera.shiftX = 0 - ((u16)strc10->unk6 >> 1);
            }
            break;
    }
}

void sub_8038B38(void)
{
    struct Task *t;
    EggX_48 *strc48;
    Sprite *s;


    EggX_10 *strc10 = (void *)((gCurTask)->data);

    strc48 = (void *)((TaskCreate(sub_8038BC8, sizeof(EggX_48), 0x2100U, 0U, TaskDestructor_EggX48))->data);
    strc48->unk30 = 0xF;
    strc48->s.graphics.dest = VramMalloc(0x38U);
    strc48->s.oamFlags = 0x440;
    strc48->s.graphics.size = 0;
    strc48->s.graphics.anim = 398;
    strc48->s.variant = 1;
    strc48->s.animCursor = 0;
    strc48->s.qAnimDelay = 0;
    strc48->s.prevVariant = 0xFF;
    strc48->s.animSpeed = ((int)((float)(1.0)*0x10));
    strc48->s.palId = 0;
    strc48->s.frameFlags = 0x2000;
}

void sub_8038BC8(void)
{
    EggX_48 *strc48 = (void *)((gCurTask)->data);

    Sprite *s = &strc48->s;
    s->x = ((int)((gPlayer.qWorldX) >> 8)) - gCamera.x;
    s->y = ((int)((gPlayer.qWorldY) >> 8)) - gCamera.y;
    UpdateSpriteAnimation(s);
    DisplaySprite(s);

    if (--strc48->unk30 == 0) {
        TaskDestroy(gCurTask);
    }
}

void sub_8038C20(void)
{
    EggX_Sparkle *sparkle;
    Sprite *s;
    SpriteTransform *tf;

    sparkle = (void *)((TaskCreate(sub_8038E34, sizeof(EggX_Sparkle), 0x2100U, 0U, TaskDestructor_EggX_Sparkle))->data);
    sparkle->unk50 = 0xEF4;
    sparkle->unk52 = 0x120;
    sparkle->unk54 = 0;
    sparkle->unk58 = 0;
    sparkle->unk5C = -8;
    sparkle->unk5E = 4;
    sparkle->unk4A = 0x1000;
    sparkle->unk4C = -1;
    sparkle->unk3C = 0x258;

    s = &sparkle->s;
    s->graphics.dest = VramMalloc(4U);
    s->oamFlags = 0x5C0;
    s->graphics.size = 0;
    s->graphics.anim = 731;
    s->variant = 0;
    s->animCursor = 0;
    s->qAnimDelay = 0;
    s->prevVariant = 0xFF;
    s->animSpeed = ((int)((float)(1.0)*0x10));
    s->palId = 0;
    s->hitboxes[0].index = -1;
    s->frameFlags = 0x2030;

    tf = &sparkle->transform;
    tf->rotation = 0;
    tf->qScaleX = 0x100;
    tf->qScaleY = 0x100;
}

void sub_8038D2C(void)
{
    EggX_Sparkle *sparkle;
    Sprite *s;
    SpriteTransform *tf;

    sparkle = (void *)((TaskCreate(sub_8038E34, sizeof(EggX_Sparkle), 0x2100U, 0U, TaskDestructor_EggX_Sparkle))->data);
    sparkle->unk50 = 0xEF4;
    sparkle->unk52 = 0x120;
    sparkle->unk54 = 0;
    sparkle->unk58 = 0;
    sparkle->unk5C = -12;
    sparkle->unk5E = 6;
    sparkle->unk4A = 0x1000;
    sparkle->unk4C = -1;
    sparkle->unk3C = 0x258;

    s = &sparkle->s;
    s->graphics.dest = VramMalloc(16);
    s->oamFlags = 0x5C0;
    s->graphics.size = 0;
    s->graphics.anim = 732;
    s->variant = 0;
    s->animCursor = 0;
    s->qAnimDelay = 0;
    s->prevVariant = 0xFF;
    s->animSpeed = ((int)((float)(1.0)*0x10));
    s->palId = 0;
    s->hitboxes[0].index = -1;
    s->frameFlags = 0x2030;

    tf = &sparkle->transform;
    tf->rotation = 0;
    tf->qScaleX = 0x100;
    tf->qScaleY = 0x100;
}

void sub_8038E34()
{
    SpriteTransform *tf;

    EggX_Sparkle *sparkle = (void *)((gCurTask)->data);
    CamCoord worldX, worldY;

    tf = &sparkle->transform;
    sparkle->unk54 += sparkle->unk5C;
    sparkle->unk58 += sparkle->unk5E;
    worldX = sparkle->unk50 + ((int)((sparkle->unk54) >> 8));
    worldY = sparkle->unk52 + ((int)((sparkle->unk58) >> 8));
    tf->x = worldX - gCamera.x;
    tf->y = worldY - gCamera.y;
    sparkle->unk4A += sparkle->unk4C;

    if (sparkle->unk4A <= ((s32)((8)*256))) {
        sparkle->unk4A = ((s32)((8)*256));
    }

    tf->qScaleX = sparkle->unk4A >> 4;
    tf->qScaleY = sparkle->unk4A >> 4;
    UpdateSpriteAnimation(&sparkle->s);
    TransformSprite(&sparkle->s, tf);
    DisplaySprite(&sparkle->s);

    if (--sparkle->unk3C == 0) {
        TaskDestroy(gCurTask);
    }
}

void sub_8038F04(void)
{
    Sprite *s;
    Sprite *s2;
    EggX_7C *strc7C;
    EggX *boss = (void *)((gCurTask)->data);
    struct Task *t;
    CamCoord worldX, worldY;

    t = TaskCreate(Task_8039264, sizeof(EggX_7C), 0x2001U, 0U, TaskDestructor_EggX7C);
    boss->task9C = t;
    strc7C = (void *)((t)->data);
    strc7C->unk74 = boss->unk88 + ((int)((boss->qUnk74) >> 8));
    strc7C->unk76 = boss->unk8A + ((int)((boss->qUnk78) >> 8));
    strc7C->unk64 = 0;
    strc7C->unk68 = 0xFFFFE900;
    strc7C->unk6C = 0;
    strc7C->unk70 = 0;
    strc7C->unk78 = 0;
    strc7C->unk79 = 0;
    strc7C->unk7A = 0;
    s = &strc7C->s;
    s->graphics.dest = VramMalloc(0xCU);
    s->oamFlags = 0x500;
    s->graphics.size = 0;
    s->graphics.anim = 0x2B0;
    s->variant = 8;
    s->animCursor = 0;
    s->qAnimDelay = 0;
    s->prevVariant = 0xFF;
    s->animSpeed = ((int)((float)(1.0)*0x10));
    s->palId = 0;
    s->hitboxes[0].index = -1;
    s->frameFlags = 0x2000;

    s2 = &strc7C->s2;
    s2->graphics.dest = VramMalloc(0xCU);
    s2->oamFlags = 0x500;
    s2->graphics.size = 0;
    s2->graphics.anim = 0x2B0;
    s2->variant = 0xB;
    s2->animCursor = 0;
    s2->qAnimDelay = 0;
    s2->prevVariant = -1;
    s2->animSpeed = ((int)((float)(1.0)*0x10));
    s2->palId = 0;
    s2->hitboxes[0].index = -1;
    s2->frameFlags = 0x2000;
}

void sub_8039074(u8 param0)
{
    u8 var_r0;

    EggX_7C *strc7C = (void *)((gCurTask)->data);

    switch (param0) {
        case 1:
            strc7C->s.variant = 4;
            strc7C->s2.variant = 5;
            strc7C->s.prevVariant = -1;
            strc7C->s2.prevVariant = -1;
            strc7C->unk78 = 4;
            break;
        case 2:
            strc7C->s.variant = 2;
            strc7C->s2.variant = 3;
            strc7C->s.prevVariant = -1;
            strc7C->s2.prevVariant = -1;
            strc7C->unk78 = 2;
            break;
        case 3:
            strc7C->s.variant = 6;
            strc7C->s2.variant = 7;
            strc7C->s.prevVariant = -1;
            strc7C->s2.prevVariant = -1;
            strc7C->unk78 = 6;
            break;
    }
}

void sub_8039108(void)
{
    EggX_7C *strc7C = (void *)((gCurTask)->data);

    switch (strc7C->s.variant) {
        case 4:
            strc7C->s.variant = 0xE;
            strc7C->s2.variant = 17;
            strc7C->s.prevVariant = -1;
            strc7C->s2.prevVariant = -1;
            strc7C->unk78 = 14;
            break;
        case 2:
            strc7C->s.variant = 15;
            strc7C->s2.variant = 18;
            strc7C->s.prevVariant = -1;
            strc7C->s2.prevVariant = -1;
            strc7C->unk78 = 15;
            break;
        case 6:
            strc7C->s.variant = 16;
            strc7C->s2.variant = 19;
            strc7C->s.prevVariant = -1;
            strc7C->s2.prevVariant = -1;
            strc7C->unk78 = 16;
            break;
    }
}

void sub_803918C(u8 param0)
{
    EggX_7C *strc7C = (void *)((gCurTask)->data);
    Sprite *s = &strc7C->s;
    Sprite *s2 = &strc7C->s2;

    if (s->frameFlags & 0x4000) {
        if (s->variant == param0) {
            strc7C->unk7A |= 1;
            return;
        } else {
            switch (s->variant - 8) {
                case 0:
                case 6:
                    s->variant = 10;
                    s2->variant = 13;
                    break;
                case 1:
                case 7:
                    s->variant = 8;
                    s2->variant = 11;
                    break;
                case 2:
                case 8:
                    s->variant = 9;
                    s2->variant = 12;
                    break;
            }
            s->prevVariant = 0xFF;
            s2->prevVariant = -1;
        }
    }

    strc7C->unk7A &= ~1;
}

void Task_8039264()
{
    enum EHit collPlayer;
    enum EHit collPartner;
    s16 temp_r2;
    s32 worldX32, worldY32;
    CamCoord worldX, worldY;
    s32 temp_r0_4;
    s32 temp_r0_7;
    s32 temp_r0_8;
    s32 temp_r1;
    s32 temp_r3_2;
    s32 var_r0;
    s32 var_r0_2;
    u16 temp_r0_6;
    u16 temp_r0_9;
    u16 temp_r2_2;
    u8 *temp_r1_2;
    u8 *temp_r1_4;
    u8 *temp_r1_5;
    u8 *temp_r3;
    u8 *temp_r4_2;
    u8 *var_r0_3;
    u8 temp_r0_5;
    u8 var_r0_4;
    u8 var_r1;
    u8 var_r1_2;

    u32 mask;

    EggX_7C *strc7C = (void *)((gCurTask)->data);
    EggX *boss = (void *)(((struct Task *)((gCurTask)->parent))->data);
    Sprite *s = &strc7C->s;
    Sprite *s2 = &strc7C->s2;
    s->frameFlags &= 0xFFFFFBFF;
    s2->frameFlags &= 0xFFFFFBFF;
    mask = boss->s.frameFlags & 0x400;
    s->frameFlags |= mask;
    s2->frameFlags |= mask;

    if (boss->s.palId != 0) {
        s2->palId = s->palId = 254;
    } else {
        s2->palId = s->palId = 0;
    }

    strc7C->unk74 = boss->unk8C;
    strc7C->unk76 = boss->unk8E;
    if (boss->unk94 > 7) {
        if (strc7C->unk79 != 0) {
            if (s->variant != 6) {
                sub_8039108();
            }
            strc7C->unk79 = 0;
        }
        strc7C->unk6C = 0;
        strc7C->unk70 = 0;
        if (boss->unk99 > 1U) {
            TaskDestroy(gCurTask);
            return;
        }
    } else {
        switch (strc7C->unk79) {
            case 0:
                break;
            case 1: {
                EggX_7C *strc7C_ = (void *)((gCurTask)->data);
                strc7C_->unk78 = 8;
                if (1 & strc7C->unk7A) {
                    strc7C->unk60 = 30;
                    goto lbl;
                }
            } break;
            case 2:
                if (--strc7C->unk60 == 0) {
                    strc7C->unk70 = 0x100;
                    strc7C->unk79++;
                    break;
                }
                break;
            case 3:
                if ((strc7C->unk68 + strc7C->unk70) >= 0) {
                    strc7C->unk68 = 0;
                    strc7C->unk70 = 0;
                    strc7C->unk79++;
                }
                break;
            case 4:
                break;
            case 5:
                strc7C->unk70 = -0x100;
                strc7C->unk79++;
                break;
            case 7:
                break;
            case 8:
                strc7C->unk68 = -0x1700;
                strc7C->unk78 = 0;
                strc7C->unk79++;

            case 9:
                if (boss->unk9A != 0) {
                    sub_803A900__inline(boss->unk9A);
                }
                break;
            case 10:
                strc7C->unk70 = 0x200;
                strc7C->unk79++;

            case 11:
                if ((strc7C->unk68 + strc7C->unk70) >= 0) {
                    strc7C->unk68 = 0;
                    strc7C->unk70 = 0;
                    strc7C->unk79++;
                    break;
                }
                break;
            case 12:
                break;
            case 13:
                sub_8039074(boss->unk9A);
                strc7C->unk79++;
                break;
            case 14:
                break;
            case 15:
                sub_8039108();
                strc7C->unk60 = 0xA;
                strc7C->unk79++;

            case 16:
                if (--strc7C->unk60 == 0) {
                    strc7C->unk70 = -((s32)((2)*256));
                    strc7C->unk79++;
                    break;
                }
                break;
            case 18:
                break;
            case 19:
                strc7C->unk79++;
                strc7C->unk70 = -((s32)((2)*256));
                strc7C->unk79++;
                break;
            case 6:
            case 17:
            case 21:
                if ((strc7C->unk68 + strc7C->unk70) <= -0x1700) {
                    strc7C->unk68 = -0x1700;
                    strc7C->unk70 = 0;
                lbl:
                    strc7C->unk79++;
                    break;
                }
                break;
            case 22:
                break;
        }
    }
    strc7C->unk64 += strc7C->unk6C;
    strc7C->unk68 += strc7C->unk70;

    if (strc7C->unk68 <= -((s32)((23)*256))) {
        strc7C->unk7A |= 0x4;
    } else {
        strc7C->unk7A &= ~0x4;
    }
    if ((s32)strc7C->unk68 >= 0) {
        strc7C->unk7A |= 0x2;
    } else {
        strc7C->unk7A &= ~0x2;
    }

    worldX = worldX32 = ((int)((strc7C->unk64) >> 8)) + strc7C->unk74;
    worldY = worldY32 = ((int)((strc7C->unk68) >> 8)) + strc7C->unk76;
    s->x = worldX - gCamera.x;
    s->y = worldY - gCamera.y;
    s2->x = s->x;
    s2->y = s->y;
    sub_803918C(strc7C->unk78);

    if ((boss->unk98 != 0) && (boss->unk95 == 0) && (boss->unk94 < 8)) {
        sub_803A650__inline(worldX, worldY);
    }
    UpdateSpriteAnimation(s);
    UpdateSpriteAnimation(s2);
    DisplaySprite(s);
    DisplaySprite(s2);
}

void sub_803967C(void)
{
    s32 rnd = ({ gPseudoRandom = (gPseudoRandom * 0x196225) + 0x3C6EF35F; gPseudoRandom; }) & 0x800;
    EggX *boss = (void *)((gCurTask)->data);
    Sprite *s;
    struct Task *t;
    EggX_48 *strc48;
    s32 r2;
    s32 v;
    t = TaskCreate(Task_80397A8, sizeof(EggX_48), 0x2100, 0, TaskDestructor_EggX48);
    strc48 = (void *)((t)->data);
    strc48->unk40 = boss->unk88;
    strc48->unk42 = boss->unk8A;
    strc48->qUnk34 = boss->qUnk74;
    strc48->qUnk38 = boss->qUnk78;

    if (rnd) {
        strc48->unk44 = 40;
        strc48->qUnk3E = -((s32)((2)*256));
        r2 = ((s32)((3)*256));
    } else {
        strc48->unk44 = 48;
        strc48->qUnk3E = -((s32)((5)*256));
        r2 = ((s32)((1.5)*256));
    }

    if (boss->s.frameFlags & ((1) << (10))) {
        strc48->qUnk34 += ((s32)((20)*256));
        strc48->qUnk3C = +r2;
    } else {
        strc48->qUnk34 -= ((s32)((20)*256));
        strc48->qUnk3C = -r2;
    }

    s = &strc48->s;
    s->graphics.dest = VramMalloc(((16 / 8) * (16 / 8)));
    s->oamFlags = 0x5C0;
    s->graphics.size = 0;
    s->graphics.anim = 690;
    s->variant = 1;
    s->animCursor = 0;
    s->qAnimDelay = ((s32)((0)*256));
    s->prevVariant = -1;
    s->animSpeed = ((int)((float)(1.0)*0x10));
    s->palId = 0;
    s->hitboxes[0].index = -1;
    s->frameFlags = 0x2000;

    m4aSongNumStart(145);
}

void Task_80397A8(void)
{
    s32 sp4;
    enum EHit temp_r8;
    enum EHit var_r0_2;
    s32 var_r0;
    s32 temp_r0;
    s32 res;
    s32 temp_r1;
    s32 temp_r3;
    CamCoord worldX, worldY;
    u16 temp_r0_4;
    u16 temp_r2;
    u16 temp_r6;
    EggX *boss;
    Sprite *s;

    EggX_48 *strc48 = (void *)((gCurTask)->data);
    boss = (void *)(((struct Task *)((gCurTask)->parent))->data);
    s = &strc48->s;
    strc48->qUnk3E += strc48->unk44;
    strc48->qUnk34 += strc48->qUnk3C;
    strc48->qUnk38 += strc48->qUnk3E;
    worldX = ((int)((strc48->qUnk34) >> 8)) + strc48->unk40;
    worldY = ((int)((strc48->qUnk38) >> 8)) + strc48->unk42;
    res = sa2__sub_801F100(worldY + 8, worldX, 1, 8, sa2__sub_801EC3C);
    if (res < 0) {
        s32 v16;
        s32 v;
        strc48->qUnk38 += ((s32)((res)*256));
        v16 = -(u16)strc48->qUnk3E;
        var_r0 = +strc48->qUnk3E;
        if (var_r0 < 0) {
            var_r0 += 3;
        }
        strc48->qUnk3E = v16 + (var_r0 >> 2);
    }

    if (boss->unk94 <= 7) {
        sub_803A650__inline(worldX, worldY);
    }
    s->x = worldX - gCamera.x;
    s->y = worldY - gCamera.y;
    UpdateSpriteAnimation(s);
    DisplaySprite(s);
    if ((strc48->qUnk34 + 0xD000) > 0x1A000U) {
        TaskDestroy(gCurTask);
    }
}

void sub_8039940()
{
    SpriteTransform *tf;
    s16 var_r0;
    s16 var_r0_2;
    u32 temp_r0_2;
    u8 *temp_r0;
    u8 *temp_r1;

    EggX *boss = (void *)((gCurTask)->data);
    struct Task *t;
    EggX_Sparkle *sparkle;
    Sprite *s;

    t = TaskCreate(Task_8039A64, sizeof(EggX_Sparkle), 0x2100U, 0U, TaskDestructor_EggX_Sparkle);
    sparkle = (void *)((t)->data);
    sparkle->unk50 = boss->unk88 + ((int)((boss->qUnk74) >> 8));
    sparkle->unk52 = boss->unk8A + ((int)((boss->qUnk78) >> 8));
    sparkle->unk40 = ((s32)((14)*256));
    sparkle->unk48 = -((s32)((2)*256));
    sparkle->unk4A = 0;
    if (boss->s.frameFlags & 0x400) {
        sparkle->unk50 += 0x1A;
    } else {
        sparkle->unk50 -= 0x1A;
    }
    sparkle->unk3C = 0x11;
    sparkle->unk61 = 0;
    sparkle->unk62 = 0;

    s = &sparkle->s;
    s->graphics.dest = VramMalloc(0x40U);
    s->oamFlags = 0x5C0;
    s->graphics.size = 0;
    s->graphics.anim = 0x2B1;
    s->variant = 0;
    s->animCursor = 0;
    s->qAnimDelay = 0;
    s->prevVariant = -1;
    s->animSpeed = ((int)((float)(1.0)*0x10));
    s->palId = 0;
    s->hitboxes[0].index = -1;
    s->frameFlags = (boss->s.frameFlags & 0x400) | 0x2030;

    tf = &sparkle->transform;
    tf->rotation = 0;
    if (s->frameFlags & 0x400) {
        tf->qScaleX = -0x100;
    } else {
        tf->qScaleX = 0x100;
    }
    tf->qScaleY = 0x100;
}


void Task_8039A64()
{
    s32 worldX, worldY;
    s32 temp_r0;
    s16 temp_r1_3;
    s32 temp_r2_4;
    s16 var_r6;
    s16 var_ip;
    u8 temp_r2_5;
    s32 qX, qY;

    EggX *boss;
    SpriteTransform *tf;
    s32 sp8 = 0;
    EggX_Sparkle *sparkle = (void *)((gCurTask)->data);
    Sprite *s;
    boss = (void *)(((struct Task *)((gCurTask)->parent))->data);
    s = &sparkle->s;
    tf = &sparkle->transform;
    if (boss->unk94 <= 7) {
        sparkle->unk50 = boss->unk8C;
        sparkle->unk52 = boss->unk8E;
        if (s->frameFlags & 0x400) {
            sparkle->unk50 += 0x1A;
        } else {
            sparkle->unk50 -= 0x1A;
        }
    }
    sparkle->unk40 += sparkle->unk48;
    sparkle->unk4E = sparkle->unk4A;
    var_r6 = sparkle->unk4A;
    var_ip = sparkle->unk4A;

    if (s->frameFlags & 0x400) {
        var_r6 = (-var_r6 - ((s32)((2)*256)));
        var_r6 &= 0x3FF;
        var_ip = (-(var_ip << 16) >> 16) & 0x3FF;
    }
    worldX = (gSineTable[(var_r6) + 256]);
    worldX >>= 6;
    worldX *= sparkle->unk40;
    worldX = ((int)(((worldX) >> 8) >> 8));
    worldY = (gSineTable[(var_r6)]);
    worldY >>= 6;
    worldY *= sparkle->unk40;
    worldY = ((int)(((worldY) >> 8) >> 8));
    worldX += sparkle->unk50;
    worldY += sparkle->unk52;
    tf->x = worldX - gCamera.x;
    tf->y = worldY - gCamera.y;
    tf->rotation = var_ip;
    UpdateSpriteAnimation(s);
    TransformSprite(s, tf);
    DisplaySprite(s);

    if (boss->unk94 > 7) {
        sparkle->unk48 = 0;
        sparkle->unk54 = ((s32)((worldX)*256));
        sparkle->unk58 = ((s32)((worldY)*256));
        s->oamFlags = 0x5C0;
        sparkle->unk3C = 0x50;
        gCurTask->main = Task_803A46C;
        return;
    }

    {
        switch (sparkle->unk61) {
            case 0:
            case 1: {
                sp8 = sub_8036F9C(worldX, worldY, 0);
            } break;

            case 2: {
                sp8 = sub_8036F9C(worldX, worldY, 1);
            } break;
        }
    }

    switch (sparkle->unk61) {
        case 0:
            if (--sparkle->unk3C == 0) {
                temp_r0 = ({ gPseudoRandom = (gPseudoRandom * 0x196225) + 0x3C6EF35F; gPseudoRandom; });
                sparkle->unk48 = 0;
                sparkle->unk61++;
                if (((temp_r0 % 100) - 35) <= 0) {
                    sparkle->unk3C = 0xB4;
                } else if (((temp_r0 % 100) - 70) <= 0) {
                    sparkle->unk3C = 0x3C;
                } else if (((temp_r0 % 100) - 90) <= 0) {
                    sparkle->unk3C = 0x12;
                } else {
                    sparkle->unk3C = 0x12C;
                }
            }
            break;
        case 1:
            worldX = sparkle->unk50 - ((int)((gPlayer.qWorldX) >> 8));
            worldY = sparkle->unk52 - ((int)((gPlayer.qWorldY) >> 8));

            worldX = ((worldX) >= 0 ? (worldX) : -(worldX));

            worldX = (u16)sa2__sub_8004418(worldY, worldX);
            if ((u32)((u32)((worldX - 225) + 0xFF1F0000) >> 0x10) < 0x11F) {
                worldX = 224;
            }
            if ((u32)((u32)((worldX << 0x10) + 0xFDFF0000) >> 0x10) < 0x11F) {
                worldX = 800;
            }

            temp_r1_3 = (sparkle->unk4A << 6);
            if (temp_r1_3 > (temp_r0 = ((worldX << 22) >> 16))) {
                if (temp_r1_3 >= (temp_r0 + ((s32)((1.5)*256)))) {
                    sparkle->unk4A -= 6;
                } else {
                    goto lbl2;
                }
            } else if (temp_r1_3 < temp_r0) {
                if (temp_r1_3 > (temp_r0 - ((s32)((1.5)*256)))) {
                lbl2:
                    sparkle->unk4A = (s16)worldX;
                } else {
                    sparkle->unk4A += 6;
                }
            }
            sparkle->unk4A &= 0x3FF;

            if (--sparkle->unk3C == 0) {
                temp_r0 = sparkle->unk50 - ((int)((gPlayer.qWorldX) >> 8));
                temp_r2_4 = sparkle->unk52 - ((int)((gPlayer.qWorldY) >> 8));
                sparkle->unk44 = -(Sqrt(((s32)((((temp_r0) * (temp_r0)))*256)) + ((s32)((((temp_r2_4) * (temp_r2_4)))*256))) * 16) - ((s32)((16)*256));
                sparkle->unk48 = -((s32)((6)*256));
                sparkle->unk60 = 0;
                sparkle->unk61++;
                s->oamFlags = 0x3C0;
                s->variant = 1;
                s->prevVariant = -1;
                m4aSongNumStart(0xB3U);
            }
            break;
        case 2:
            temp_r2_5 = (((((int)((-sparkle->unk40) >> 8)) - 20) >> 4) + 1);
            if (sparkle->unk60 < temp_r2_5) {
                sparkle->unk60 = temp_r2_5;
                sub_803A1D8();
            }

            if (sp8 == 2) {
                sparkle->unk62 = 0xFF;
                sparkle->unk48 = 0;
                sparkle->unk61 = 7;
                s->variant = 2;
                s->prevVariant = -1;
                Player_TransitionCancelFlyingAndBoost(&gPlayer);

                gPlayer.qWorldX = ((s32)((worldX)*256));
                gPlayer.qWorldY = ((s32)((worldY)*256));
                gPlayer.qSpeedAirX = 0;
                gPlayer.qSpeedAirY = 0;
                gPlayer.qSpeedGround = 0;
                gPlayer.moveState |= 0xE00100;

                if (s->frameFlags & 0x400) {
                    gPlayer.rotation = (-sparkle->unk4A) >> 2;
                } else {
                    gPlayer.rotation = (+sparkle->unk4A) >> 2;
                }
                gPlayer.charState = 40;
                gPlayer.heldInput = 0;
                gPlayer.frameInput = 0;
            } else if (sparkle->unk40 <= sparkle->unk44) {
                sparkle->unk48 = 0;
                sparkle->unk61++;
                s->variant = 2;
                s->prevVariant = -1;
            }
            break;
        case 3:
            if (s->frameFlags & 0x4000) {
                sparkle->unk48 = 0x200;
                sparkle->unk61++;
            }
            break;
        case 4:
            if (sparkle->unk40 >= -((s32)((20)*256))) {
                sparkle->unk40 = -0x1400;
                sparkle->unk48 = 0;
                s->oamFlags = 0x5C0;
                s->variant = 0;
                s->prevVariant = -1;
                sparkle->unk61++;
            }
            break;
        case 5:
            if (sparkle->unk4A == 0) {
                s->oamFlags = 0x5C0;
                sparkle->unk48 = 0x100;
                sparkle->unk61++;
                break;
            } else if (sparkle->unk4A > 0x200) {
                sparkle->unk4A = (sparkle->unk4A + 6) & 0x3FF;
                if (sparkle->unk4A >= 7) {
                    break;
                }
                sparkle->unk4A = 0;
            } else {
                sparkle->unk4A = (sparkle->unk4A - 6) & 0x3FF;
                if (sparkle->unk4A <= 0x200) {
                    break;
                }
                sparkle->unk4A = 0;
            }
            break;
        case 6:
            if (sparkle->unk40 >= 0xE00) {
                if (sparkle->unk62 == 0) {
                    boss->unk99++;
                } else {
                    boss->unk92 = 1;
                }
                TaskDestroy(gCurTask);
                return;
            }
            break;
        case 7:
            gPlayer.qWorldX = ((s32)((worldX)*256));
            gPlayer.qWorldY = ((s32)((worldY)*256));
            if (s->frameFlags & 0x400) {
                gPlayer.rotation = (-sparkle->unk4A) >> 2;
            } else {
                gPlayer.rotation = (+sparkle->unk4A) >> 2;
            }
            if (s->frameFlags & 0x4000) {
                sparkle->unk48 = 0x600;
                sparkle->unk61++;
            }
            break;
        case 8:
            gPlayer.qWorldX = ((s32)((worldX)*256));
            gPlayer.qWorldY = ((s32)((worldY)*256));
            if (s->frameFlags & 0x400) {
                gPlayer.rotation = (-sparkle->unk4A) >> 2;
            } else {
                gPlayer.rotation = (+sparkle->unk4A) >> 2;
            }

            if (sparkle->unk40 >= -0x2400) {
                sparkle->unk40 = -0x2400;
                sparkle->unk48 = 0;
                sparkle->unk4C = 0x10;
                sparkle->unk3C = 0;
                sparkle->unk61++;
            }
            break;
        case 9:
            gPlayer.qWorldX = ((s32)((worldX)*256));
            gPlayer.qWorldY = ((s32)((worldY)*256));

            if (s->frameFlags & 0x400) {
                gPlayer.rotation = (-sparkle->unk4A) >> 2;
            } else {
                gPlayer.rotation = (+sparkle->unk4A) >> 2;
            }

            sparkle->unk4A = (sparkle->unk4A + sparkle->unk4C) & 0x3FF;
            if (sparkle->unk4A > 0x1FF) {
                u16 lostRingsCount = gRingCount;
                if ((lostRingsCount > 0) && (sparkle->unk4C < 0)) {
                    if ((u32)lostRingsCount > 5U) {
                        lostRingsCount = 5;
                    }
                    InitScatteringRings(((int)((gPlayer.qWorldX) >> 8)), ((int)((gPlayer.qWorldY) >> 8)), lostRingsCount);
                    gRingCount -= lostRingsCount;
                }
                sparkle->unk4C = 0x10;
            }
            if ((u16)(sparkle->unk4A + -((s32)((1)*256))) < ((s32)((1)*256))) {
                sparkle->unk4C = -0x10;
                if (++sparkle->unk3C == 4) {
                    boss->unk99 = 0x33;
                }

                if (sparkle->unk3C == 5) {
                    sub_803A170(s->frameFlags & 0x400);
                    sparkle->unk61 = 5;
                }
            }
            break;
    }
}



void sub_803A170(u32 arg0)
{
    s16 var_r0;

    gPlayer.timerInvulnerability = 0x78;
    if (arg0 != 0) {
        gPlayer.qSpeedAirX = -((s32)((2)*256));
    } else {
        gPlayer.qSpeedAirX = +((s32)((2)*256));
    }

    gPlayer.qSpeedAirY = -0x5E0;
    gPlayer.rotation = 0;
    gPlayer.moveState = (gPlayer.moveState & 0xFF1FFAC3) | 2;
    gPlayer.charState = 0xF;
    Player_HandleSpriteYOffsetChange(&gPlayer, 0xE);
    gPlayer.spriteOffsetX = 6;
    gPlayer.spriteOffsetY = 0xE;
    gPlayer.sa2__unk61 = 0;
    gPlayer.sa2__unk62 = 0;
}


void sub_803A1D8()
{
    s32 sp4;
    SpriteTransform *tf;
    s16 var_r0;
    struct Task *t;
    EggX_Sparkle *sparkle;
    EggX_Sparkle *sparkleParent;
    Sprite *s;

    sparkleParent = (void *)((gCurTask)->data);

    t = TaskCreate(Task_803A2F8, sizeof(EggX_Sparkle), 0x2101U, 0U, TaskDestructor_EggX_Sparkle);
    sparkle = (void *)((t)->data);
    sparkle->unk50 = sparkleParent->unk50;
    sparkle->unk52 = sparkleParent->unk52;
    sparkle->unk4A = sparkleParent->unk4E;
    sparkle->unk60 = sparkleParent->unk60;
    s = &sparkle->s;
    sparkle->s.graphics.dest = VramMalloc(((16 / 8) * (16 / 8)));
    sparkle->s.oamFlags = ((24) << 6);
    sparkle->s.graphics.size = 0;
    sparkle->s.graphics.anim = 690;
    sparkle->s.variant = 0;
    sparkle->s.animCursor = 0;
    sparkle->s.qAnimDelay = 0;
    sparkle->s.prevVariant = -1;
    sparkle->s.animSpeed = ((int)((float)(1.0)*0x10));
    sparkle->s.palId = 0;
    sparkle->s.hitboxes[0].index = -1;
    sparkle->s.frameFlags = (sparkleParent->s.frameFlags & 0x400) | 0x2030;

    tf = &sparkle->transform;
    tf->rotation = 0;
    if (sparkle->s.frameFlags & 0x400) {
        tf->qScaleX = -((s32)((1)*256));
    } else {
        tf->qScaleX = +((s32)((1)*256));
    }
    tf->qScaleY = 0x100;
}

void Task_803A2F8()
{
    s32 worldX, worldY;
    s16 temp_r0;
    s16 var_r4;
    u16 var_r6;

    EggX_Sparkle *sparkle;
    EggX_Sparkle *sparkleParent;
    SpriteTransform *tf;
    EggX *boss;
    Sprite *s;

    sparkle = (void *)((gCurTask)->data);
    s = &sparkle->s;
    sparkleParent = (void *)(((struct Task *)((gCurTask)->parent))->data);
    boss = (void *)(((struct Task *)(((struct Task *)((gCurTask)->parent))->parent))->data);

    tf = &sparkle->transform;
    sparkle->unk50 = sparkleParent->unk50;
    sparkle->unk52 = sparkleParent->unk52;
    var_r4 = var_r6 = sparkleParent->unk4E;
    if (s->frameFlags & 0x400) {
        temp_r0 = (s16)var_r6;
        var_r4 = ((-temp_r0 - ((s32)((2)*256)))) % 1024u;
        var_r6 = (-temp_r0) % 1024u;
    }

    sparkle->unk40 = sparkleParent->unk40 + (((s32)(((sparkle->unk60 * 0x10) + 8)*256)));
    worldX = (gSineTable[(var_r4) + 256]);
    worldX >>= 6;
    worldX *= sparkle->unk40;
    worldX = ((int)(((worldX) >> 8) >> 8));
    worldY = (gSineTable[(var_r4)]);
    worldY >>= 6;
    worldY *= sparkle->unk40;
    worldY = ((int)(((worldY) >> 8) >> 8));
    worldX += sparkle->unk50;
    worldY += sparkle->unk52;

    tf->x = worldX - gCamera.x;
    tf->y = worldY - gCamera.y;
    tf->rotation = var_r6;
    UpdateSpriteAnimation(s);
    TransformSprite(s, tf);
    DisplaySprite(s);
    if ((sparkle->unk40 > 0x800) || (sparkleParent->unk61 == 6)) {
        TaskDestroy(gCurTask);
    }
    if (boss->unk94 > 7) {
        sparkle->unk48 = 0;
        sparkle->unk54 = worldX << 8;
        sparkle->unk58 = worldY << 8;
        gCurTask->main = Task_803A46C;
        sparkle->unk3C = (0x50 - (sparkle->unk60 * 4));
    }
}

void Task_803A46C()
{
    EggX_Sparkle *sparkle;
    EggX_Sparkle *sparkleParent;
    SpriteTransform *tf;
    EggX *boss;
    Sprite *s;
    Sprite *s2;
    CamCoord worldX, worldY;
    s32 res;

    sparkle = (void *)((gCurTask)->data);
    s = &sparkle->s;
    tf = &sparkle->transform;

    sparkle->unk48 += 0x20;
    sparkle->unk58 += sparkle->unk48;

    worldX = ((int)((sparkle->unk54) >> 8));
    worldY = ((int)((sparkle->unk58) >> 8));

    res = sa2__sub_801F100(worldY + 8, worldX, 1, 8, sa2__sub_801EC3C);

    if (res < 0) {
        sparkle->unk58 += ((s32)((res)*256));
        sparkle->unk48 = (sparkle->unk48 >> 2) - sparkle->unk48;
    }

    tf->x = worldX - gCamera.x;
    tf->y = worldY - gCamera.y;
    UpdateSpriteAnimation(s);
    TransformSprite(s, tf);
    DisplaySprite(s);
    if ((--sparkle->unk3C == 0)) {
        sub_8017540(((s32)((worldX)*256)), ((s32)((worldY)*256)));
        TaskDestroy(gCurTask);
    }
}

void TaskDestructor_EggX(struct Task *t)
{
    EggX *boss = (void *)((t)->data);
    VramFree(boss->s.graphics.dest);
    VramFree(boss->s2.graphics.dest);
}

void sub_803A54C(void)
{
    EggX_10 *strc10;
    u16 temp_r0;

    temp_r0 = (&gLoadedSaveGame)->unlockedLevels[0];
    if (temp_r0 < 0xE) {
        temp_r0 = 0xE;
    }
    (&gLoadedSaveGame)->unlockedLevels[0] = temp_r0;

    strc10 = (void *)((TaskCreate(Task_8038554, sizeof(EggX_10), 0x1FFFU, 0U, ((void*)0)))->data);
    strc10->unk6 = 0x1A4;
    strc10->unk9 = 0;
    strc10->unk8 = 0;
}

void sub_803A594(void)
{
    EggX_10 *strc10;

    strc10 = (void *)((TaskCreate(Task_Strc10_803891C, sizeof(EggX_10), 0x1FFFU, 0U, ((void*)0)))->data);
    strc10->unk0 = 32;
    strc10->unk2 = 0;
    strc10->unk4 = 0;
    strc10->unk6 = 120;
    strc10->unk8 = 0;
}

void TaskDestructor_EggX7C(struct Task *t)
{
    EggX_7C *strc7C = (void *)((t)->data);
    VramFree(strc7C->s.graphics.dest);
    VramFree(strc7C->s2.graphics.dest);
}

void TaskDestructor_EggX48(struct Task *t)
{
    EggX_48 *strc48 = (void *)((t)->data);
    VramFree(strc48->s.graphics.dest);
}

void TaskDestructor_EggX_Sparkle(struct Task *t)
{
    EggX_Sparkle *strc48 = (void *)((t)->data);
    VramFree(strc48->s.graphics.dest);
}

void sub_803A614(void) { sub_803A614__inline(); }

void sub_803A650(CamCoord worldX, CamCoord worldY)
{
    enum EHit collPlayer;
    enum EHit collPartner;

    EggX_7C *strc7C = (void *)((gCurTask)->data);
    Sprite *s = &strc7C->s;
    collPlayer = sub_800BF10(s, worldX, worldY, &gPlayer);

    if (gNumSingleplayerCharacters == 2) {
        collPartner = sub_800BF10(s, worldX, worldY, &gPartner);
    } else {
        collPartner = HIT_NONE;
    }

    if ((collPlayer == HIT_PLAYER) || (collPartner == HIT_PLAYER)) {
        EggX *boss = (void *)(((struct Task *)((gCurTask)->parent))->data);
        Sprite *s2 = &boss->s2;
        s2->variant = 3;
        s2->frameFlags &= ~0x4000;
        s2->prevVariant = -1;
    }
}


typedef struct Test {
    Sprite *s;
} Test;


void sub_803A6EC(CamCoord worldX, CamCoord worldY, u8 param2, u8 param3, u8 param4, u8 param5)

{
    EHit collPlayer, collPartner;
    const Test test = { .s = ((void*)0) };
    Rect8 rect;
    rect.left = param2;
    rect.right = param3;
    rect.top = param4;
    rect.bottom = param5;

    collPlayer = sub_800C1E8(test.s, rect, worldX, worldY, &gPlayer);
    if (gNumSingleplayerCharacters == 2) {
        collPartner = sub_800C1E8(test.s, rect, worldX, worldY, &gPartner);
    } else {
        collPartner = 0;
    }

    if ((collPlayer | collPartner) == HIT_PLAYER) {
        EggX *strc7C = (void *)((gCurTask)->data);
        Sprite *s2 = &strc7C->s2;
        s2->variant = 3;
        s2->frameFlags &= ~0x4000;
        s2->prevVariant = -1;
    }
}


void sub_803A7D4(CamCoord worldX, CamCoord worldY)
{
    EggX_7C *strc7C = (void *)((gCurTask)->data);
    Sprite *s = &strc7C->s;
    EHit collPlayer, collPartner;

    collPlayer = sub_800BF10(s, worldX, worldY, &gPlayer);
    if (gNumSingleplayerCharacters == 2) {
        collPartner = sub_800BF10(s, worldX, worldY, &gPartner);
    } else {
        collPartner = HIT_NONE;
    }

    if ((collPlayer == HIT_PLAYER) || (collPartner == HIT_PLAYER)) {
        EggX *boss = (void *)(((struct Task *)((gCurTask)->parent))->data);
        Sprite *s2 = &boss->s2;

        s2->variant = 3;
        s2->frameFlags &= ~0x4000;
        s2->prevVariant = -1;
    }
}

static void ChangeVariant(void) { ChangeVariant__inline(); }

void sub_803A8AC(void) { CopySpritePos__inline(); }

void sub_803A8CC(CamCoord worldX, CamCoord worldY)
{
    EggX *boss = (void *)((gCurTask)->data);
    Sprite *s = &boss->s;
    s->x = worldX - gCamera.x;
    s->y = worldY - gCamera.y;
}

void sub_803A900(u8 arg0) { sub_803A900__inline(arg0); }
