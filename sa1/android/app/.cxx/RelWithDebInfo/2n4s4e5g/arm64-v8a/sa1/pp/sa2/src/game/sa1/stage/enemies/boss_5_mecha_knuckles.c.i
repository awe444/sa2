# 1 "/home/awaszczak/git/sa2/sa1/../src/game/sa1/stage/enemies/boss_5_mecha_knuckles.c"
# 1 "<built-in>" 1
# 1 "<built-in>" 3
# 384 "<built-in>" 3
# 1 "<command line>" 1
# 1 "<built-in>" 2
# 1 "/home/awaszczak/git/sa2/sa1/../src/game/sa1/stage/enemies/boss_5_mecha_knuckles.c" 2
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
# 2 "/home/awaszczak/git/sa2/sa1/../src/game/sa1/stage/enemies/boss_5_mecha_knuckles.c" 2
# 1 "/home/awaszczak/git/sa2/sa1/../include/trig.h" 1





extern const s16 gSineTable[1280];
# 3 "/home/awaszczak/git/sa2/sa1/../src/game/sa1/stage/enemies/boss_5_mecha_knuckles.c" 2
# 1 "/home/awaszczak/git/sa2/sa1/../include/malloc_vram.h" 1
# 24 "/home/awaszczak/git/sa2/sa1/../include/malloc_vram.h"
void *VramMalloc(u32);
void VramResetHeapState(void);
void VramFree(void *);
# 4 "/home/awaszczak/git/sa2/sa1/../src/game/sa1/stage/enemies/boss_5_mecha_knuckles.c" 2
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
# 5 "/home/awaszczak/git/sa2/sa1/../src/game/sa1/stage/enemies/boss_5_mecha_knuckles.c" 2
# 1 "/home/awaszczak/git/sa2/sa1/../include/game/shared/stage/collision.h" 1



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
# 5 "/home/awaszczak/git/sa2/sa1/../include/game/shared/stage/collision.h" 2

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
# 6 "/home/awaszczak/git/sa2/sa1/../src/game/sa1/stage/enemies/boss_5_mecha_knuckles.c" 2

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
# 8 "/home/awaszczak/git/sa2/sa1/../src/game/sa1/stage/enemies/boss_5_mecha_knuckles.c" 2
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
# 9 "/home/awaszczak/git/sa2/sa1/../src/game/sa1/stage/enemies/boss_5_mecha_knuckles.c" 2
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
# 10 "/home/awaszczak/git/sa2/sa1/../src/game/sa1/stage/enemies/boss_5_mecha_knuckles.c" 2
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
# 11 "/home/awaszczak/git/sa2/sa1/../src/game/sa1/stage/enemies/boss_5_mecha_knuckles.c" 2
# 1 "/home/awaszczak/git/sa2/sa1/../include/game/shared/stage/dust_effect_braking.h" 1





struct Task *CreateBrakingDustEffect(s32, s32);
void CreateBrakingDustEffectRelatedTask(void);
void DestroyBrakingDustEffectRelatedTask(void);

typedef struct {
               u16 x;
               u16 y;
               u16 unk4;
               u16 unk6;
               Sprite s;
} BrakeDustEffect;

typedef struct {
    s8 unk0;
    struct Task *t;
} DustEffectBraking;

extern DustEffectBraking gDustEffectBrakingTask;
# 12 "/home/awaszczak/git/sa2/sa1/../src/game/sa1/stage/enemies/boss_5_mecha_knuckles.c" 2
# 1 "/home/awaszczak/git/sa2/sa1/../include/game/sa1/stage/player_controls.h" 1





struct ButtonConfig {
    u16 jump;
    u16 attack;
    u16 trick;
};

extern struct ButtonConfig gPlayerControls;

s32 GetAirDashDirection(s32 n);
void sub_804D13C(u16 param0);
void SetPlayerControls(bool32);

extern u16 gUnknown_030060F0[64];
# 13 "/home/awaszczak/git/sa2/sa1/../src/game/sa1/stage/enemies/boss_5_mecha_knuckles.c" 2
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
# 14 "/home/awaszczak/git/sa2/sa1/../src/game/sa1/stage/enemies/boss_5_mecha_knuckles.c" 2
# 1 "/home/awaszczak/git/sa2/sa1/../include/game/shared/stage/screen_shake.h" 1






struct Task *CreateScreenShake(u32 p0, u32 p1, u32 p2, u32 p3, u32 flags);
# 15 "/home/awaszczak/git/sa2/sa1/../src/game/sa1/stage/enemies/boss_5_mecha_knuckles.c" 2

# 1 "/home/awaszczak/git/sa2/sa1/../include/game/shared/stage/water_effects.h" 1
# 15 "/home/awaszczak/git/sa2/sa1/../include/game/shared/stage/water_effects.h"
typedef struct {



} WaterData;


typedef struct {


               bool8 isActive;

               u8 sa2__unk1;
               u8 sa2__unk2;






                    s16 currentWaterLevel;
                    s16 targetWaterLevel;
                    u32 unk8;
                    u32 mask;


               struct Task *t;
               Sprite s;
} Water;

extern Water gWater;
# 55 "/home/awaszczak/git/sa2/sa1/../include/game/shared/stage/water_effects.h"
struct Task *CreateWaterfallSurfaceHitEffect(s32 x, s32 y);
void LoadPalette423Anim(void);
# 17 "/home/awaszczak/git/sa2/sa1/../src/game/sa1/stage/enemies/boss_5_mecha_knuckles.c" 2

# 1 "/home/awaszczak/git/sa2/sa1/../include/constants/sa1/animations.h" 1






# 1 "/home/awaszczak/git/sa2/sa1/../include/constants/sa1/anim_sizes.h" 1
# 8 "/home/awaszczak/git/sa2/sa1/../include/constants/sa1/animations.h" 2
# 19 "/home/awaszczak/git/sa2/sa1/../src/game/sa1/stage/enemies/boss_5_mecha_knuckles.c" 2

# 1 "/home/awaszczak/git/sa2/sa1/../include/constants/sa1/char_states.h" 1
# 21 "/home/awaszczak/git/sa2/sa1/../src/game/sa1/stage/enemies/boss_5_mecha_knuckles.c" 2
# 1 "/home/awaszczak/git/sa2/sa1/../include/constants/sa1/songs.h" 1
# 22 "/home/awaszczak/git/sa2/sa1/../src/game/sa1/stage/enemies/boss_5_mecha_knuckles.c" 2
# 1 "/home/awaszczak/git/sa2/sa1/../include/game/shared/stage/underwater_effects.h" 1






extern void InitWaterPalettes(void);

struct Task *SpawnDrowningCountdownNum(Player *p, s32 countdown);
struct Task *SpawnAirBubbles(s32 p0, s32 p1, s32 p2, s32 p3);
struct Task *SpawnBubblesAfterDrowning(Player *p);
bool32 RandomlySpawnAirBubbles(Player *p);

extern u8 gSmallAirBubbleCount;
# 23 "/home/awaszczak/git/sa2/sa1/../src/game/sa1/stage/enemies/boss_5_mecha_knuckles.c" 2




typedef enum {
    MKPHASE_A,
    MKPHASE_B,

    MKPHASE_COUNT
} MechaKnucklesPhases;

typedef enum {
             MKSTATE_ACTIVATE,
             MKSTATE_B,
             MKSTATE_C,
             MKPHASE_ACTIVATE_2,
             MKSTATE_IDLE,
             MKSTATE_IDLE_2,
             MKSTATE_SPIN,
             MKSTATE_GLIDE,
             MKSTATE_LAND,
             MKSTATE_LAND_2,
             MKSTATE_COVER,
             MKSTATE_SPINDASH,
             MKSTATE_SPIN_2,
             MKSTATE_PUNCH,
             MKSTATE_PUNCH_2,
             MKSTATE_LAUNCH_ROCKET,
             MKSTATE_LAUNCH_ROCKET_2,
             MKSTATE_HIT,
             MKSTATE_HIT_2,
             MKSTATE_DEFEATED,
             MKSTATE_DEFEATED_2,
             MKSTATE_DEFEATED_3,
             MKSTATE_EGGMOBILE,
             MKSTATE_EGGMOBILE_2,
             MKSTATE_EGGMOBILE_3,

             MKSTATE_COUNT
} MechaKnucklesStates;

typedef struct MechaKnuckles {
               SpriteBase base;
               Sprite s;
               Hitbox reserved;
               Sprite s2;
               s32 qUnk74;
               s32 qUnk78;
               s16 unk7C;
               s16 unk7E;
               s16 unk80;
               s16 unk82;
               u16 unk84;
               u32 flags88;
               s32 spawnX;
               s32 spawnY;
               s8 phase;
               s8 lives;
               s8 unk96;
               s8 unk97;
               s8 unk98;
               s8 unk99;
               s8 state;
               s8 state2;
} MechaKnuckles;

typedef struct MechaKnucklesRocket {
               s32 unk0;
               s32 unk4;
               s16 unk8;
               s16 unkA;
               s16 unkC;
               s16 unkE;
               s16 unk10;
               s16 unk12;
               Sprite s;
               SpriteTransform transform;
} MechaKnucklesRocket;

typedef struct MechaKnucklesParts {
               s32 unk0;
               s32 unk4;
               s16 unk8;
               s16 unkA;
               s16 unkC;
               s16 unkE;
               s16 unk10;
               s16 unk12;
               s16 unk14;
               Sprite s;
               SpriteTransform transform;
} MechaKnucklesParts;

typedef bool32 (*MechaKnuxPlayerFn)(MechaKnuckles *boss, Player *p);
typedef void (*MechaKnuxFn)(MechaKnuckles *boss, Player *p);

typedef struct Unk {
    s16 anim;
    u8 variant;
    u8 unk3;
} Unk;

void Task_MechaKnucklesInit(void);
void TaskDestructor_MechaKnuckles(struct Task *t);
void sub_804E8D4(MechaKnuckles *boss, s32 param1);
void sub_804EC60(MechaKnuckles *boss, MapEntity *me);

void CreateMechaKnucklesRocket(MechaKnuckles *boss);
void Task_MechaKnucklesRocketInit(void);
void TaskDestructor_MechaKnuckles_Rocket(struct Task *t);

struct Task *CreateMechaKnucklesParts(MechaKnuckles *boss, s32 variant);
void Task_MechaKnucklesPartsInit(void);
void TaskDestructor_MechaKnuckles_Parts(struct Task *t);

void sub_804EB04(MechaKnuckles *boss);
void sub_804EB90(MechaKnuckles *boss);
bool32 sub_804EE20(MechaKnuckles *boss);
void sub_804FDD4(MechaKnuckles *boss);

void sub_804F73C(MechaKnuckles *boss, Player *p);
void sub_804F760(MechaKnuckles *boss, Player *p);
void sub_804F788(MechaKnuckles *boss, Player *p);
void sub_804F78C(MechaKnuckles *boss, Player *p);
void sub_804F790(MechaKnuckles *boss, Player *p);
void sub_804F7B0(MechaKnuckles *boss, Player *p);
void sub_804F7B4(MechaKnuckles *boss, Player *p);
void sub_804F7C0(MechaKnuckles *boss, Player *p);
void sub_804F7C4(MechaKnuckles *boss, Player *p);
void sub_804F7C8(MechaKnuckles *boss, Player *p);
void sub_804F7CC(MechaKnuckles *boss, Player *p);
void sub_804F7D0(MechaKnuckles *boss, Player *p);
void sub_804F7D4(MechaKnuckles *boss, Player *p);
void sub_804F7D8(MechaKnuckles *boss, Player *p);
void sub_804F7DC(MechaKnuckles *boss, Player *p);
void sub_804F7E8(MechaKnuckles *boss, Player *p);
void sub_804F7EC(MechaKnuckles *boss, Player *p);
void sub_804F7F0(MechaKnuckles *boss, Player *p);
void sub_804F7F4(MechaKnuckles *boss, Player *p);
void sub_804F834(MechaKnuckles *boss, Player *p);
void sub_804F860(MechaKnuckles *boss, Player *p);
void sub_804F888(MechaKnuckles *boss, Player *p);
void sub_804F8D4(MechaKnuckles *boss, Player *p);
void sub_804F8D8(MechaKnuckles *boss, Player *p);
void sub_804F8DC(MechaKnuckles *boss, Player *p);
void sub_804F934(MechaKnuckles *boss, Player *p);
void sub_804F95C(MechaKnuckles *boss, Player *p);

bool32 sub_804EEA8(MechaKnuckles *boss, Player *p);
bool32 sub_804EF18(MechaKnuckles *boss, Player *p);
bool32 sub_804EFA0(MechaKnuckles *boss, Player *p);
bool32 sub_804F020(MechaKnuckles *boss, Player *p);
bool32 sub_804F984(MechaKnuckles *boss, Player *p);
bool32 sub_804F990(MechaKnuckles *boss, Player *p);
bool32 sub_804F9B0(MechaKnuckles *boss, Player *p);
bool32 sub_804FA08(MechaKnuckles *boss, Player *p);
bool32 sub_804FA38(MechaKnuckles *boss, Player *p);
bool32 sub_804FA54(MechaKnuckles *boss, Player *p);
bool32 sub_804FA70(MechaKnuckles *boss, Player *p);
bool32 sub_804FA9C(MechaKnuckles *boss, Player *p);
bool32 sub_804FAC8(MechaKnuckles *boss, Player *p);
bool32 sub_804FAF0(MechaKnuckles *boss, Player *p);
bool32 sub_804FB10(MechaKnuckles *boss, Player *p);
bool32 sub_804FB30(MechaKnuckles *boss, Player *p);
bool32 sub_804FB5C(MechaKnuckles *boss, Player *p);
bool32 sub_804FB7C(MechaKnuckles *boss, Player *p);
bool32 sub_804FBA8(MechaKnuckles *boss, Player *p);
bool32 sub_804FBE4(MechaKnuckles *boss, Player *p);
bool32 sub_804FC28(MechaKnuckles *boss, Player *p);
bool32 sub_804FC78(MechaKnuckles *boss, Player *p);
bool32 sub_804FCA4(MechaKnuckles *boss, Player *p);
bool32 sub_804FCEC(MechaKnuckles *boss, Player *p);
bool32 sub_804FD54(MechaKnuckles *boss, Player *p);
bool32 sub_804ED80(MechaKnuckles *boss, Player *p);

typedef struct ProcDataBoss5 {
    MechaKnuxPlayerFn knuxPlayerFn;
    MechaKnuxFn changeState;
    s16 unk8;
    s16 unkA;
    s16 unkC;
    s16 unkE;
    u16 unk10;
    u16 unk12;
    s32 unk14;

    s8 unk18;
    s8 unk19;
    Unk unk1C[MKPHASE_COUNT];
} ProcDataBoss5;

const ProcDataBoss5 sBoss5ProcData[MKSTATE_COUNT] = {
    [MKSTATE_ACTIVATE] = { sub_804EEA8,
                           sub_804F73C,
                           0x0000,
                           0x0000,
                           00,
                           00,
                           0x00,
                           0,
                           0x0000,
                           6,
                           14,
                           { { 631, 0, 0 }, { -1, -1, 0 } } },
    [MKSTATE_B] = { sub_804EF18, sub_804F760, 0x0000, 0x0000, 00, 00, 0x00, 0, 0x0000, 6, 14, { { -1, -1, 0 }, { -1, -1, 0 } } },
    [MKSTATE_C] = { sub_804F984, sub_804F788, 0x0000, 0x0000, 00, 00, 0x00, 0, 0x0000, 6, 14, { { -1, -1, 0 }, { -1, -1, 0 } } },
    [MKPHASE_ACTIVATE_2] = { sub_804F990,
                             sub_804F78C,
                             0x0000,
                             0x0000,
                             00,
                             00,
                             0x00,
                             0,
                             0x0000,
                             6,
                             14,
                             { { 631, 1, 0 }, { -1, -1, 0 } } },
    [MKSTATE_IDLE] = { sub_804F9B0,
                       sub_804F790,
                       0x0000,
                       0x0000,
                       00,
                       00,
                       0x00,
                       0,
                       0x0000,
                       6,
                       14,
                       { { 632, 0, 0 }, { -1, -1, 0 } } },
    [MKSTATE_IDLE_2] = { sub_804FA08,
                         sub_804F7B0,
                         0x0000,
                         0x0000,
                         00,
                         00,
                         0x5A,
                         0,
                         0x0200,
                         6,
                         14,
                         { { 632, 0, 0 }, { 644, 0, 0 } } },
    [MKSTATE_SPIN] = { sub_804FA38,
                       sub_804F7B4,
                       0x0000,
                       0xFB20,
                       00,
                       42,
                       0x00,
                       0,
                       0x0210,
                       6,
                       9,
                       { { 636, 0, 0 }, { 648, 0, 0 } } },
    [MKSTATE_GLIDE] = { sub_804EFA0,
                        sub_804F7C0,
                        0x0300,
                        0x0180,
                        03,
                        00,
                        0x00,
                        0,
                        0x1210,
                        6,
                        6,
                        { { 638, 0, 0 }, { 650, 0, 0 } } },
    [MKSTATE_LAND] = { sub_804FA54,
                       sub_804F7C4,
                       0x0000,
                       0x0000,
                       00,
                       42,
                       0x00,
                       0,
                       0x0010,
                       6,
                       14,
                       { { 640, 0, 0 }, { 652, 0, 0 } } },
    [MKSTATE_LAND_2] = { sub_804FA70,
                         sub_804F7C8,
                         0x0000,
                         0x0000,
                         00,
                         00,
                         0x00,
                         0,
                         0x0000,
                         6,
                         14,
                         { { 640, 1, 0 }, { 652, 1, 0 } } },
    [MKSTATE_COVER] = { sub_804FA9C,
                        sub_804F7CC,
                        0x0000,
                        0x0000,
                        00,
                        00,
                        0x00,
                        0,
                        0x1200,
                        6,
                        14,
                        { { 642, 0, 0 }, { 654, 0, 0 } } },
    [MKSTATE_SPINDASH] = { sub_804FAC8,
                           sub_804F7D0,
                           0x0000,
                           0x0000,
                           00,
                           00,
                           0x3C,
                           0,
                           0x0900,
                           6,
                           9,
                           { { 637, 0, 0 }, { 649, 0, 0 } } },
    [MKSTATE_SPIN_2] = { sub_804FAF0,
                         sub_804F7DC,
                         0x0480,
                         0x0000,
                         00,
                         00,
                         0x00,
                         0,
                         0x2400,
                         6,
                         9,
                         { { 636, 0, 0 }, { 648, 0, 0 } } },
    [MKSTATE_PUNCH] = { sub_804FB10,
                        sub_804F7E8,
                        0x0000,
                        0x0000,
                        00,
                        00,
                        0x00,
                        0,
                        0x0200,
                        6,
                        14,
                        { { 643, 0, 0 }, { 643, 0, 0 } } },
    [MKSTATE_PUNCH_2] = { sub_804FB30,
                          sub_804F7EC,
                          0x0000,
                          0x0000,
                          00,
                          00,
                          0x00,
                          0,
                          0x0200,
                          6,
                          14,
                          { { 643, 1, 0 }, { 643, 1, 0 } } },
    [MKSTATE_LAUNCH_ROCKET] = { sub_804FB5C,
                                sub_804F7F0,
                                0x0000,
                                0x0000,
                                00,
                                00,
                                0x00,
                                0,
                                0x1200,
                                6,
                                14,
                                { { 655, 0, 0 }, { 655, 0, 0 } } },
    [MKSTATE_LAUNCH_ROCKET_2] = { sub_804FB7C,
                                  sub_804F7F4,
                                  0xFB80,
                                  0x0000,
                                  96,
                                  00,
                                  0x00,
                                  0,
                                  0x6400,
                                  6,
                                  14,
                                  { { 655, 1, 0 }, { 655, 1, 0 } } },
    [MKSTATE_HIT] = { sub_804FBA8,
                      sub_804F834,
                      0xFE80,
                      0xFD00,
                      00,
                      42,
                      0x00,
                      0,
                      0x1210,
                      6,
                      9,
                      { { 634, 0, 0 }, { 646, 0, 0 } } },
    [MKSTATE_HIT_2] = { sub_804FBE4,
                        sub_804F860,
                        0x0000,
                        0x0000,
                        00,
                        00,
                        0x00,
                        0,
                        0x0000,
                        6,
                        9,
                        { { 635, 0, 0 }, { 646, 0, 0 } } },
    [MKSTATE_DEFEATED] = { sub_804FC28,
                           sub_804F888,
                           0xFE80,
                           0xFD00,
                           00,
                           21,
                           0x00,
                           0,
                           0x1210,
                           6,
                           9,
                           { { 657, 0x00, 0 }, { 657, 0x00, 0 } } },
    [MKSTATE_DEFEATED_2] = { sub_804FC78,
                             sub_804F8D4,
                             0x0000,
                             0x0000,
                             00,
                             00,
                             0x78,
                             0,
                             0x0000,
                             6,
                             9,
                             { { 657, 0x01, 0 }, { 657, 0x01, 0 } } },
    [MKSTATE_DEFEATED_3] = { sub_804FCA4,
                             sub_804F8D8,
                             0x0000,
                             0x0000,
                             00,
                             00,
                             0x78,
                             0,
                             0x0000,
                             6,
                             14,
                             { { 657, 0x01, 0 }, { 657, 0x01, 0 } } },
    [MKSTATE_EGGMOBILE] = { sub_804FCEC,
                            sub_804F8DC,
                            0x0000,
                            0x0000,
                            00,
                            00,
                            0x00,
                            0,
                            0x6000000,
                            0,
                            0,
                            { { 693, 0x00, 0 }, { 693, 0x00, 0 } } },
    [MKSTATE_EGGMOBILE_2] = { sub_804F020,
                              sub_804F934,
                              0x0000,
                              0x0000,
                              00,
                              00,
                              0x00,
                              0,
                              0x6000000,
                              0,
                              0,
                              { { 693, 0x01, 0 }, { 693, 0x01, 0 } } },
    [MKSTATE_EGGMOBILE_3] = { sub_804FD54,
                              sub_804F95C,
                              0x0400,
                              0x0000,
                              00,
                              00,
                              0x00,
                              0,
                              0x6000000,
                              0,
                              0,
                              { { 693, 0x00, 0 }, { 693, 0x00, 0 } } },
};

const TileInfoFirework sMechaKnucklesParts[6] = {
    { 658, 0, ((32 / 8) * (32 / 8)) },
    { 658, 1, ((32 / 8) * (32 / 8)) },
    { 658, 2, ((32 / 8) * (32 / 8)) },
    { 658, 3, ((32 / 8) * (32 / 8)) },
    { 658, 4, ((32 / 8) * (32 / 8)) },
    { 658, 5, ((32 / 8) * (32 / 8)) },
};


void CreateEntity_MechaKnuckles(MapEntity *me, u16 regionX, u16 regionY, u8 id)
{
    struct Task *t;
    MechaKnuckles *boss;

    if ((!(((gGameMode == 0) || (gGameMode == 1))))) {
        { s32 negativeTwo; s16 forMatching; negativeTwo = (-2); forMatching = negativeTwo; me->x = forMatching; };
        return;
    }

    t = TaskCreate(Task_MechaKnucklesInit, sizeof(MechaKnuckles), 0x2000, 0, TaskDestructor_MechaKnuckles);
    boss = (void *)((t)->data);
# 526 "/home/awaszczak/git/sa2/sa1/../src/game/sa1/stage/enemies/boss_5_mecha_knuckles.c"
    boss->base.regionX = regionX;
    boss->base.regionY = regionY;
    boss->base.me = me;
    boss->base.meX = me->x;
    boss->base.id = id;
    { s32 negativeTwo; s16 forMatching; negativeTwo = (-2); forMatching = negativeTwo; me->x = forMatching; };

    sub_804EC60(boss, me);

    if (gRingsScatterTask != ((void*)0)) {
        RingsScatter *scatter = (void *)((gRingsScatterTask)->data);
        scatter->sa2__unk2B6 |= 1;
    }
}


void Task_MechaKnucklesInit()
{
    Sprite *s;
    Sprite *s2;
    s32 sp4;
    u32 var_r0;
    u32 var_r5;

    Player *p = &gPlayer;
    MechaKnuckles *boss;



    boss = (void *)((gCurTask)->data);

    s = &boss->s;
    s2 = &boss->s2;

    if ((!((p)->moveState & 0x00000080))) {
        gDispCnt &= ~0x8000;
        s->frameFlags &= ~0x180;
    }

    sp4 = sBoss5ProcData[boss->state].knuxPlayerFn(boss, p);
    sub_804EB04(boss);
    if (!(boss->flags88 & 0x04000000)) {
        sub_804FDD4(boss);
    }
    if (!(boss->flags88 & 0x02000000)) {
        sub_804EB90(boss);
    }

    var_r5 = sub_800BFEC(s, boss->spawnX + ((int)((boss->qUnk74) >> 8)), boss->spawnY + ((int)((boss->qUnk78) >> 8)), p);
    if (gNumSingleplayerCharacters == 2) {
        var_r5 |= sub_800BFEC(s, boss->spawnX + ((int)((boss->qUnk74) >> 8)), boss->spawnY + ((int)((boss->qUnk78) >> 8)), &gPartner);
    }

    if (var_r5 == 0) {
        if (boss->unk97 <= 0) {



            Player *player;

            var_r5 = sub_800C0E0(s, boss->spawnX + ((int)((boss->qUnk74) >> 8)), boss->spawnY + ((int)((boss->qUnk78) >> 8)), p);
            if (gNumSingleplayerCharacters == 2) {
                var_r0 = sub_800C0E0(s, boss->spawnX + ((int)((boss->qUnk74) >> 8)), boss->spawnY + ((int)((boss->qUnk78) >> 8)), &gPartner);
            } else {
                var_r0 = 0;
            }

            if (var_r5 != 0) {
                if (((boss->state == MKSTATE_IDLE_2) || (boss->state == MKSTATE_COVER)) && !(p->moveState & 2)) {
                    if (boss->state != MKSTATE_COVER) {
                        sp4 = 0;
                        boss->state2 = MKSTATE_COVER;
                        player = p;
                        player->qSpeedAirX = -player->qSpeedAirX;
                        player->qSpeedGround = -player->qSpeedGround;
                    }
                } else {
                    sp4 = 0;
                    boss->state2 = MKSTATE_HIT;
                    if (--boss->lives <= 0) {
                        boss->state2 = MKSTATE_DEFEATED;
                    }
                    boss->unk97 = 0x20;
                }
            } else if (var_r0 != 0) {
                if (((boss->state == MKSTATE_IDLE_2) || (boss->state == MKSTATE_COVER)) && ((gPartner.moveState & 2) == 0)) {
                    if (boss->state != MKSTATE_COVER) {
                        sp4 = 0;
                        boss->state2 = MKSTATE_COVER;
                        player = &gPartner;
                        player->qSpeedAirX = -player->qSpeedAirX;
                        player->qSpeedGround = -player->qSpeedGround;
                    }
                } else {
                    sp4 = 0;
                    boss->state2 = MKSTATE_HIT;
                    if (--boss->lives <= 0) {
                        boss->state2 = MKSTATE_DEFEATED;
                    }
                    boss->unk97 = 0x20;
                }
            }
        }
    }

    if (boss->unk97 != 0) {
        if (!(gStageTime & 2) && !(gPlayer.moveState & 0x80)) {
            s->frameFlags |= 0x100;
            gDispCnt |= 0x8000;
            gWinRegs[5] = 0x3F3F;
        }

        if (boss->state2 != MKSTATE_HIT && boss->state2 != MKSTATE_HIT_2) {
            boss->unk97--;
        }
    }

    s->x = s2->x = (boss->spawnX + ((int)((boss->qUnk74) >> 8))) - gCamera.x;
    s->y = s2->y = (boss->spawnY + ((int)((boss->qUnk78) >> 8))) - gCamera.y;

    if (boss->flags88 & 0x20) {
        UpdateSpriteAnimation(s);
        DisplaySprite(s);
    }
    if (boss->flags88 & 0x40) {
        UpdateSpriteAnimation(s2);
        DisplaySprite(s2);
    }

    if (sp4 == 0) {
        boss->state = boss->state2;
        sub_804E8D4(boss, boss->state);
    }
}


void sub_804E8D4(MechaKnuckles *boss, s32 state)
{
    s32 phase;
    const ProcDataBoss5 *procData;
    Player *p;
    Sprite *s;
    s32 var_r7;
    s32 var_r8;
    s32 temp_r1;
    s32 temp_r3;
    s32 temp_r5_2;
    s32 var_r2;

    procData = &sBoss5ProcData[state];

    p = &gPlayer;

    s = &boss->s;
    phase = boss->phase;
    var_r7 = procData->unk8;
    var_r8 = procData->unkC;
    var_r2 = boss->flags88;
    temp_r3 = procData->unk14;
    temp_r5_2 = (0x400 & temp_r3);
    if (temp_r5_2 == 0) {
        var_r2 = (var_r2 & 0xFFFFF8FF) | (0x300 & temp_r3);
    }
    temp_r1 = 0x2000 & temp_r3;
    if (temp_r1 == 0) {
        var_r2 = (var_r2 & 0xFFFFC7FF) | (0x1800 & temp_r3);
    }
    var_r2 = ((((((((var_r2 | temp_r5_2 | temp_r1) & ~0x10) | (temp_r3 & 0x10)) & 0xFFFF3FFF) | (0xC000 & temp_r3)) & 0xFDFFFFFF)
               | (0x02000000 & temp_r3))
              & 0xFBFFFFFF)
        | (temp_r3 & 0x04000000);
    if (var_r2 & 0x10) {
        var_r2 &= ~1;
    }
    boss->flags88 = var_r2;

    temp_r1 = procData->unk10;
    boss->unk84 = temp_r1;

    temp_r1 = procData->unk18;
    if (temp_r1 != boss->unk98) {
        boss->unk98 = procData->unk18;
    }

    temp_r1 = procData->unk19;
    if (temp_r1 != boss->unk99) {
        boss->qUnk78 -= ((s32)((boss->unk99 - temp_r1)*256));
        boss->unk99 = procData->unk19;
    }

    switch (0x1800 & var_r2) {
        case 0x800: {
            if (((int)((boss->qUnk74) >> 8)) > 0x77) {
                var_r7 = -var_r7;
                var_r8 = -var_r8;
            }
        } break;
        case 0x1000: {
            if ((((int)((boss->qUnk74) >> 8)) + boss->spawnX) >= ((int)((p->qWorldX) >> 8))) {
                var_r7 = -var_r7;
                var_r8 = -var_r8;
            }
        } break;
    }
    boss->unk7C = var_r7;
    boss->unk7E = procData->unkA;
    boss->unk80 = var_r8;
    boss->unk82 = procData->unkE;

    switch (0x300 & var_r2) {
        case 0x100: {
            if (((int)((boss->qUnk74) >> 8)) > 0x77) {
                (s)->frameFlags &= ~(((1) << (10)));
            } else {
                (s)->frameFlags |= (((1) << (10)));
            }

        } break;

        case 0x200: {
            if ((((int)((boss->qUnk74) >> 8)) + boss->spawnX) >= ((int)((p->qWorldX) >> 8))) {
                (s)->frameFlags &= ~(((1) << (10)));
            } else {
                (s)->frameFlags |= (((1) << (10)));
            }

        } break;
    }

    if ((procData->unk1C[phase].anim >= 0)
        && ((s->graphics.anim != procData->unk1C[phase].anim) || (s->variant != procData->unk1C[phase].variant))) {
        s->graphics.anim = procData->unk1C[phase].anim;
        s->variant = procData->unk1C[phase].variant;
        s->prevVariant = -1;
        (s)->frameFlags &= ~(((1) << (14)));
        s->hitboxes[0].index = -1;
        s->hitboxes[1].index = -1;
    }

    procData->changeState(boss, p);
}

void sub_804EB04(MechaKnuckles *boss)
{
    s32 var_r2;
    s32 var_r3;
    s32 var_r4;

    var_r3 = boss->unk7C;
    var_r4 = boss->unk7E;
    boss->qUnk74 += var_r3;
    boss->qUnk78 += var_r4;
    var_r2 = var_r3 & 0x80000000;
    var_r3 += boss->unk80;

    if ((boss->flags88 & 0x4000) && (var_r2 != (var_r3 & 0x80000000))) {
        var_r3 = 0;
        boss->unk80 = 0;
    }

    boss->unk7C = var_r3;
    var_r2 = var_r4;
    var_r2 &= 0x80000000;
    var_r4 = var_r4 + boss->unk82;

    if ((boss->flags88 & 0x8000) && (var_r2 != (var_r4 & 0x80000000))) {
        var_r4 = 0;
        boss->unk82 = 0;
    }

    boss->unk7E = var_r4;
}

void sub_804EB90(MechaKnuckles *boss)
{
    s32 *parts;
    s32 *temp_r5_2;
    s32 temp_r0;
    s32 res;
    s32 temp_r6;
    s32 temp_r7;

    temp_r7 = boss->spawnX + ((int)((boss->qUnk74) >> 8));
    temp_r6 = boss->spawnY + ((int)((boss->qUnk78) >> 8));

    boss->flags88 &= ~1;

    res = sa2__sub_801E4E4(temp_r6 + boss->unk99, temp_r7, 1, 8, ((void*)0), sa2__sub_801EE64);
    if (boss->flags88 & 0x10) {
        if (res < 0) {
            boss->qUnk78 += res << 8;
            boss->flags88 |= 1;
        }
    } else if (res <= 0xA) {
        boss->qUnk78 += res << 8;
        boss->flags88 |= 1;
    }

    boss->flags88 &= ~2;

    if (boss->unk7E < 0) {
        res = sa2__sub_801E4E4(temp_r6 - boss->unk99, temp_r7, 1, -8, ((void*)0), sa2__sub_801EE64);

        if (res < 0) {
            boss->qUnk78 -= ((s32)((res)*256));
            boss->flags88 |= 2;
        }
    }
}

void sub_804EC60(MechaKnuckles *boss, MapEntity *me)
{
    Sprite *s;
    s8 *ptr_r1;
    s8 *ptr_r3;
    s32 off_r1;
    Sprite *s2;
    u32 difficulty;

    boss->spawnX = ((boss->base.meX)*8 + (boss->base.regionX)*256);
    boss->spawnY = ((me->y)*8 + (boss->base.regionY)*256);
    boss->qUnk74 = ((s32)((208)*256));
    boss->qUnk78 = -((s32)((32)*256));
    boss->unk7C = 0;
    boss->unk7E = 0;
    boss->unk80 = 0;
    boss->unk82 = 0;
    boss->flags88 = 0;
    boss->unk84 = 0;
    boss->phase = MKPHASE_A;

    ptr_r3 = &boss->lives;
    off_r1 = 8;
    difficulty = (&gLoadedSaveGame)->difficultyLevel;
    *ptr_r3 = off_r1 -= (difficulty * 2);
    ptr_r1 = &boss->unk96;
    *ptr_r1 = 4 - difficulty;

    boss->unk97 = 0;
    boss->unk98 = 0;
    boss->unk99 = 0;
    boss->state = MKSTATE_ACTIVATE;
    boss->state2 = MKSTATE_ACTIVATE;

    s = &boss->s;

    s->graphics.dest = VramMalloc(64);
    s->oamFlags = ((20) << 6);
    s->graphics.size = 0;
    s->animCursor = 0;
    s->qAnimDelay = 0;
    s->prevVariant = 0xFF;
    s->animSpeed = 0x10;
    s->palId = 0;
    s->hitboxes[0].index = -1;
    s->hitboxes[1].index = -1;
    s->frameFlags = ((2) << (12));

    s2 = &boss->s2;

    s2->graphics.dest = VramMalloc(30);
    s2->oamFlags = ((20) << 6);
    s2->graphics.size = 0;
    s2->animCursor = 0;
    s2->qAnimDelay = 0;
    s2->prevVariant = -1;
    s2->animSpeed = 0x10;
    s2->palId = 0;
    s2->frameFlags = ((2) << (12));
    sub_804E8D4(boss, boss->state);
}

MechaKnucklesStates sub_804ED80(MechaKnuckles *boss, Player *p)
{
    s32 temp_r1;
    s32 temp_r2;
    s32 rnd;
    u32 result;
    s32 diffX;

    temp_r2 = ((int)((p->qWorldX) >> 8));
    temp_r1 = boss->spawnX + ((int)((boss->qUnk74) >> 8));
    diffX = temp_r2 - temp_r1;
    if (diffX < 0) {
        diffX = temp_r1 - temp_r2;
    }

    rnd = ({ gPseudoRandom = (gPseudoRandom * 0x196225) + 0x3C6EF35F; gPseudoRandom; });

    if (boss->phase == MKPHASE_A) {
        if (diffX < 80) {
            if (diffX < 32) {
                result = (p->moveState & 0x00000002) ? 6 : 13;
            } else {
                if (0x1000 & rnd) {
                    result = 5;
                } else {
                    result = (rnd & 0x100) ? 11 : 6;
                }
            }
        } else {
            result = (rnd & 0x100) ? 11 : 6;
        }
    } else {
        if (diffX >= 80) {
            if (0x3000 & rnd) {
                result = 0xF;
            } else {
                result = (rnd & 0x100) ? 11 : 6;
            }
        } else if (p->moveState & 0x00000002) {
            result = 6;
        } else {
            result = (rnd & 0x100) ? 11 : 6;
        }
    }

    return result;
}

bool32 sub_804EE20(MechaKnuckles *boss)
{
    u32 temp_r0;
    u32 temp_r3;
    s32 result = 0;

    if (!(gStageTime & 7)) {
        struct Task *t;
        NutsAndBolts *bolts;

        temp_r0 = (((u32)({ gPseudoRandom = (gPseudoRandom * 0x196225) + 0x3C6EF35F; gPseudoRandom; }) & 0x1FFF00) >> 8) - 4096;
        temp_r3 = (((u32)({ gPseudoRandom = (gPseudoRandom * 0x196225) + 0x3C6EF35F; gPseudoRandom; }) & 0x1FFF00) >> 8) - 4096;
        t = sub_8017540(boss->qUnk74 + ((s32)((boss->spawnX)*256)) + temp_r0, boss->qUnk78 + ((s32)((boss->spawnY)*256)) + temp_r3);

        bolts = (void *)((t)->data);
        bolts->s.oamFlags = ((19) << 6);
        result = 1;
    }
    return result;
}

bool32 sub_804EEA8(MechaKnuckles *boss, Player *p)
{
    bool32 result = 1;
    Camera *cam = &gCamera;






    cam->minX = cam->x;

    if (cam->maxY > boss->spawnY) {
        cam->maxY--;
    } else if (cam->maxY < boss->spawnY) {
        cam->maxY++;
    }

    if (cam->minY > boss->spawnY - 240) {
        cam->minY--;
    } else if (cam->minY < boss->spawnY - 240) {
        cam->minY++;
    }

    if (((int)((p->qWorldX) >> 8)) >= (boss->spawnX + 0x20)) {
        boss->state2 = MKSTATE_B;
        result = 0;
    }

    return result;
}

u32 sub_804EF18(MechaKnuckles *boss, Player *p)
{
    bool32 result = 1;
    Camera *cam = &gCamera;






    if (cam->minX < boss->spawnX) {
        cam->minX++;
    }

    if (cam->maxY > boss->spawnY) {
        cam->maxY--;
    } else if (cam->maxY < boss->spawnY) {
        cam->maxY++;
    }

    if (cam->minY > boss->spawnY - 240) {
        cam->minY--;
    } else if (cam->minY < boss->spawnY - 240) {
        cam->minY++;
    }

    if (boss->spawnX <= cam->minX) {
        if (boss->spawnY >= cam->maxY) {
            boss->state2 = MKSTATE_C;
            result = 0;
        }
    }

    return result;
}

bool32 sub_804EFA0(MechaKnuckles *boss, Player *p)
{
    s16 *temp_r0;
    s16 *temp_r1;
    s16 temp_r4;
    s16 var_r0;
    bool32 result;
    u16 temp_r2;

    result = 1;
    if (boss->unk7E < 0x80) {
        boss->unk7E += 0x18;
    } else {
        boss->unk7E -= 0x18;
    }

    if ((boss->flags88 & 0xC) || ((boss->unk7C < 0) && ((((int)((p->qWorldX) >> 8)) - (boss->spawnX + ((int)((boss->qUnk74) >> 8)))) > 0x20))
        || ((boss->unk7C > 0) && (((int)((p->qWorldX) >> 8)) - (boss->spawnX + ((int)((boss->qUnk74) >> 8))) < -0x20))) {
        boss->state2 = MKSTATE_LAND;
        result = 0;
    }
    return result;
}

bool32 sub_804F020(MechaKnuckles *boss, Player *p)
{
    bool32 result;

    result = 1;
    if (gCamera.minX < gCamera.maxX - 320) {
        gCamera.minX++;
    }
    if (gCamera.minX < gCamera.x) {
        gCamera.minX = gCamera.x;
    }
    if ((((&boss->s)->frameFlags & (((1) << (14)))) >> ((14)))) {
        boss->state2 = MKSTATE_EGGMOBILE_3;
        result = 0;
        CreateBossCapsule(boss->spawnX + ((int)((boss->qUnk74) >> 8)), boss->spawnY + ((int)((boss->qUnk78) >> 8)));
        gMusicManagerState.unk1 = 0x32;
    }
    return result;
}

void CreateMechaKnucklesRocket(MechaKnuckles *boss)
{
    s32 isFlippedX;
    Sprite *s;
    SpriteTransform *tf;
    struct Task *t;
    MechaKnucklesRocket *rocket;
    t = TaskCreate(Task_MechaKnucklesRocketInit, sizeof(MechaKnucklesRocket), 0x2001U, 0U, TaskDestructor_MechaKnuckles_Rocket);
    rocket = (void *)((t)->data);

    s = &rocket->s;
    tf = &rocket->transform;
    isFlippedX = boss->s.frameFlags & ((1) << (10));

    rocket->unk0 = (((s32)((boss->spawnX)*256)) + boss->qUnk74);
    rocket->unk4 = (((s32)((boss->spawnY)*256)) + boss->qUnk78 - ((s32)((6)*256)));
    rocket->unk8 = -((s32)((0.25)*256));

    if (isFlippedX) {
        rocket->unk8 = 0x40;
    }
    rocket->unkA = 0;
    rocket->unkC = 0x40;

    if (({ gPseudoRandom = (gPseudoRandom * 0x196225) + 0x3C6EF35F; gPseudoRandom; }) & 0x1000) {
        rocket->unkC = 0x20;
    }

    rocket->unk10 = 0;
    rocket->unk12 = 0;
    if (!isFlippedX) {
        rocket->unk12 = 0x80;
    }

    s->graphics.dest = VramMalloc(((64 / 8) * (64 / 8)));
    s->graphics.size = 0;
    s->graphics.anim = 656;
    s->variant = 0;
    s->prevVariant = -1;
    s->oamFlags = ((21) << 6);
    s->qAnimDelay = ((s32)((0)*256));
    s->animSpeed = ((int)((float)(1.0)*0x10));
    s->palId = 0;
    s->frameFlags = 0x2000;

    tf->rotation = 0;
    tf->qScaleX = ((s32)((1)*256));
    if (isFlippedX) {
        tf->qScaleX = -tf->qScaleX;
    }

    tf->qScaleY = ((s32)((1)*256));
    tf->x = 0;
    tf->y = 0;
}


void Task_MechaKnucklesRocketInit(void)
{
    Sprite *s;
    SpriteTransform *tf;
    s32 qWorldX;
    s32 qWorldY;
    s32 temp_r0_2;
    s32 temp_r0_3;
    s32 temp_r4;
    s32 screenX;
    s32 screenY;
    s32 temp_r0;
    s32 temp_r2;
    s32 temp_r2_2;
    s32 temp_r6;
    s32 collPlayer;
    s32 collPartner;
    s32 var_r0;
    s32 var_r1;
    u32 var_r8;
    s32 var_r9;

    s32 unk8, unkA;

    MechaKnucklesRocket *rocket = (void *)((gCurTask)->data);

    s = &rocket->s;
    tf = &rocket->transform;
    qWorldX = rocket->unk0;
    qWorldY = rocket->unk4;
    var_r8 = rocket->unk12 & 0xFF;
    if (rocket->unk10 > 0x18) {
        s32 qPlayerX = gPlayer.qWorldX;
        s32 qPlayerY = gPlayer.qWorldY;
        temp_r6 = (qPlayerY - qWorldY);

        unk8 = rocket->unk8;
        unkA = rocket->unkA;
        var_r1 = unkA + (((int)(((gSineTable[((var_r9 = (var_r8 & 0xFF) * 4))])) >> 6)) * 8);
        var_r0 = qPlayerX - qWorldX;
        var_r0 = ((var_r0) >= 0 ? (var_r0) : -(var_r0));
        temp_r0 = var_r1 * var_r0 / (((unk8 + ((((int)(((gSineTable[((var_r8 & 0xFF) * 4) + 256])) >> 6))) * 8))) >= 0 ? ((unk8 + ((((int)(((gSineTable[((var_r8 & 0xFF) * 4) + 256])) >> 6))) * 8))) : -((unk8 + ((((int)(((gSineTable[((var_r8 & 0xFF) * 4) + 256])) >> 6))) * 8))));

        if (temp_r0 < (temp_r6 - ((s32)((8)*256)))) {
            if (unk8 > 0) {
                var_r8 += 3;
            } else {
                var_r8 -= 3;
            }
        } else if (temp_r0 > temp_r6) {
            if (unk8 > 0) {
                var_r8 -= 3;
            } else {
                var_r8 += 3;
            }
        }

        var_r8 &= 0xFF;
        rocket->unk12 = var_r8;
    }
    qWorldX += rocket->unk8;
    qWorldY += rocket->unkA;
    if (rocket->unk10 > 16) {
        rocket->unk8 += ((int)((rocket->unkC * ((int)(((gSineTable[((var_r8 & 0xFF) * 4) + 256])) >> 6))) >> 8));
        rocket->unkA += ((int)((rocket->unkC * ((int)(((gSineTable[((var_r8 & 0xFF) * 4)])) >> 6))) >> 8));
    }

    rocket->unk0 = qWorldX;
    rocket->unk4 = qWorldY;

    collPlayer = sub_800BF10(s, ((int)((qWorldX) >> 8)), ((int)((qWorldY) >> 8)), &gPlayer);
    if (gNumSingleplayerCharacters == 2) {
        collPartner = sub_800BF10(s, ((int)((qWorldX) >> 8)), ((int)((qWorldY) >> 8)), &gPartner);
    } else {
        collPartner = 0;
    }
    if ((collPlayer | collPartner) != 0) {
        s32 q21 = ((s32)((21)*256));
        sub_8017540(qWorldX + ((q21 * ((int)(((gSineTable[((0xFF & var_r8) * 4) + 256])) >> 6))) >> 8), qWorldY + ((q21 * ((int)(((gSineTable[((0xFF & var_r8) * 4)])) >> 6))) >> 8));
        TaskDestroy(gCurTask);
        return;
    }
    screenX = ((int)((qWorldX) >> 8)) - gCamera.x;
    screenY = ((int)((qWorldY) >> 8)) - gCamera.y;
    temp_r2_2 = (({ gPseudoRandom = (gPseudoRandom * 0x196225) + 0x3C6EF35F; gPseudoRandom; }) & 0x3FF) - ((s32)((26)*256));

    CreateBrakingDustEffect(((int)((qWorldX + ((temp_r2_2 * ((int)(((gSineTable[((var_r8 & 0xFF) * 4) + 256])) >> 6))) >> 8)) >> 8)),
                            ((int)((qWorldY + ((temp_r2_2 * ((int)(((gSineTable[((var_r8 & 0xFF) * 4)])) >> 6))) >> 8)) >> 8)));

    if (((u32)(screenX + 32) >= 320 + 64) || ((u32)(screenY + 64) >= 240 + 128)) {
        TaskDestroy(gCurTask);
        return;
    }

    rocket->unk10++;
    tf->x = screenX;
    tf->y = screenY;
    var_r1 = var_r8;
    if (tf->qScaleX < 0) {
        var_r1 += 0x80;
    }
    tf->rotation = ((var_r1 + 0x80) * 4) & 0x3FF;
    s->frameFlags = 0x2000;
    s->frameFlags |= (gOamMatrixIndex++ | 0x20);
    UpdateSpriteAnimation(s);
    TransformSprite(s, tf);
    DisplaySprite(s);
}


struct Task *CreateMechaKnucklesParts(MechaKnuckles *boss, s32 variant)
{
    struct Task *sp4;
    TileInfoFirework *temp_r4;
    s32 temp_r0_2;
    s32 temp_r0_3;
    s32 temp_r1;
    s32 temp_r2;
    s32 temp_r2_2;
    u32 numTiles;
    struct Task *t;
    MechaKnucklesParts *parts;
    SpriteTransform *tf;
    Sprite *s;
    s32 val;

    t = TaskCreate(Task_MechaKnucklesPartsInit, sizeof(MechaKnucklesParts), 0x4001U, 0U, TaskDestructor_MechaKnuckles_Parts);
    parts = (void *)((t)->data);
    s = &parts->s;
    tf = &parts->transform;
    {
        const TileInfoFirework *tileInfo = &sMechaKnucklesParts[variant];
        s->graphics.dest = VramMalloc(tileInfo->numTiles);
        s->graphics.anim = tileInfo->anim;
        s->variant = tileInfo->variant;
    }
    s->oamFlags = ((19) << 6);
    s->frameFlags = 0x2000;
    parts->unk0 = ((s32)((boss->spawnX)*256)) + boss->qUnk74;
    parts->unk4 = ((s32)((boss->spawnY)*256)) + boss->qUnk78;
    val = (((u32)(({ gPseudoRandom = (gPseudoRandom * 0x196225) + 0x3C6EF35F; gPseudoRandom; }) << 0xD) >> 0x15) - ((s32)((4)*256)));
    parts->unk8 = val;
    {
        s32 val = -((u32)(({ gPseudoRandom = (gPseudoRandom * 0x196225) + 0x3C6EF35F; gPseudoRandom; }) << 15) >> 23) - ((s32)((2)*256));
        parts->unkA = val;
    }
    parts->unkC = 0;
    parts->unkE = (s16)(0x2A - ((u32)(0x1F00 & ({ gPseudoRandom = (gPseudoRandom * 0x196225) + 0x3C6EF35F; gPseudoRandom; })) >> 8));
    parts->unk10 = 0;
    parts->unk12 = ((u32)({ gPseudoRandom = (gPseudoRandom * 0x196225) + 0x3C6EF35F; gPseudoRandom; }) >> 8);
    val = ((u32)(({ gPseudoRandom = (gPseudoRandom * 0x196225) + 0x3C6EF35F; gPseudoRandom; }) << 0xC) >> 0x14) - ((s32)((8)*256));
    parts->unk14 = val;
    s->graphics.size = 0;
    s->prevVariant = -1;
    s->qAnimDelay = 0;
    s->animSpeed = ((int)((float)(1.0)*0x10));
    s->palId = 0;

    tf->rotation = 0;
    tf->qScaleX = ((s32)((1)*256));
    tf->qScaleY = ((s32)((1)*256));
    tf->x = 0;
    tf->y = 0;

    return t;
}

void Task_MechaKnucklesPartsInit()
{
    Sprite *s;
    SpriteTransform *tf;
    Camera *cam;
    s32 screenX;
    s32 screenY;

    MechaKnucklesParts *parts = (void *)((gCurTask)->data);

    s = &parts->s;
    tf = &parts->transform;
    cam = &gCamera;

    parts->unk0 += parts->unk8;
    parts->unk4 += parts->unkA;
    parts->unk8 += parts->unkC;
    parts->unkA += parts->unkE;
    parts->unk12 += parts->unk14;

    if (parts->unk14 != 0) {
        if (parts->unk14 > 0) {
            parts->unk14 = parts->unk14 - 8;

            if (parts->unk14 < 0) {
                parts->unk14 = 0;
            }
        }

        if (parts->unk14 < 0) {
            parts->unk14 += 8;

            if (parts->unk14 > 0) {
                parts->unk14 = 0;
            }
        }
    }

    screenX = ((int)((parts->unk0) >> 8)) - cam->x;
    screenY = ((int)((parts->unk4) >> 8)) - cam->y;

    if (((screenX + 0x20) > 0x12FU) || (screenY > 0xDF)) {
        TaskDestroy(gCurTask);
        return;
    }

    tf->x = screenX;
    tf->y = screenY;
    tf->rotation = ((u16)parts->unk12 >> 6);
    s->frameFlags &= ~0x1F;

    s->frameFlags |= (gOamMatrixIndex++ | 0x20);
    UpdateSpriteAnimation(s);
    TransformSprite(s, tf);
    DisplaySprite(s);
}

void sub_804F73C(MechaKnuckles *boss, Player *p)
{
    gCamera.maxX = boss->spawnX + 320;
    gCamera.minY = gCamera.y;
    gCamera.maxY = gCamera.y + 240;
    boss->flags88 |= 0x20;
}

void sub_804F760(MechaKnuckles *boss, Player *p)
{
    gCamera.minX = gCamera.x;
    p->qSpeedGround = 0;
    p->qSpeedAirX = 0;
    p->qSpeedAirY = 0;
    p->moveState |= 0x00200000;
    p->moveState &= ~0x00000001;
    p->heldInput = 0;
    p->frameInput = 0;
}

void sub_804F788(MechaKnuckles *boss, Player *p) { }

void sub_804F78C(MechaKnuckles *boss, Player *p) { }

void sub_804F790(MechaKnuckles *boss, Player *p)
{
    p->charState = 39;
    p->moveState |= 0x00800000;
    gMusicManagerState.unk1 = 0x11;
}

void sub_804F7B0(MechaKnuckles *boss, Player *p) { }

void sub_804F7B4(MechaKnuckles *boss, Player *p) { m4aSongNumStart(116); }

void sub_804F7C0(MechaKnuckles *boss, Player *p) { }

void sub_804F7C4(MechaKnuckles *boss, Player *p) { }

void sub_804F7C8(MechaKnuckles *boss, Player *p) { }

void sub_804F7CC(MechaKnuckles *boss, Player *p) { }

void sub_804F7D0(MechaKnuckles *boss, Player *p) { m4aSongNumStart(109); }

void sub_804F7DC(MechaKnuckles *boss, Player *p) { m4aSongNumStart(110); }

void sub_804F7E8(MechaKnuckles *boss, Player *p) { }

void sub_804F7EC(MechaKnuckles *boss, Player *p) { }

void sub_804F7F0(MechaKnuckles *boss, Player *p) { }

void sub_804F7F4(MechaKnuckles *boss, Player *p)
{
    CreateMechaKnucklesRocket(boss);
    m4aSongNumStart(200);
    CreateScreenShake(0x200U, 0x10U, 0x100U, -1U, 0x80U);
    CreateScreenShake(0x400U, 0x10U, 0x80U, -1U, 0x40U);
}

void sub_804F834(MechaKnuckles *boss, Player *p)
{
    if (boss->lives == (s8)boss->unk96) {
        boss->unk80 >>= 1;
        boss->unk82 >>= 1;
    }
}

void sub_804F860(MechaKnuckles *boss, Player *p)
{
    if (boss->lives == (s8)boss->unk96) {
        boss->phase = MKPHASE_B;
        gMusicManagerState.unk1 = 0x12;
    }
}

void sub_804F888(MechaKnuckles *boss, Player *p) { { s32 divResA, divResB; s32 oldScore = gLevelScore; gLevelScore += 1000; divResA = ({((50000) != 0) ? ((s32)(gLevelScore) / (s32)(50000)) : 0;}); divResB = ({((50000) != 0) ? ((s32)(oldScore) / (s32)(50000)) : 0;}); if ((divResA != divResB) && (gGameMode == 0)) { u16 lives = divResA - divResB; lives += gNumLives;; ({ if ((lives) > 255) (lives) = 255; gNumLives = (lives); }); if (0) gMusicManagerState.unk3 = 0x10 | 0x0; } }; }

void sub_804F8D4(MechaKnuckles *boss, Player *p) { }

void sub_804F8D8(MechaKnuckles *boss, Player *p) { }

void sub_804F8DC(MechaKnuckles *boss, Player *p)
{
    Camera *cam = &gCamera;
    boss->qUnk74 = +((s32)((272)*256));
    boss->qUnk78 = -((s32)((100)*256));
    cam->maxX = gRefCollision->pxWidth;
    boss->s.frameFlags &= ~0x400;
    boss->s2.frameFlags &= ~0x400;
    boss->s2.graphics.anim = 694;
    boss->s2.variant = 3;
    boss->s2.prevVariant = -1;
    boss->flags88 |= 0x40;
}

void sub_804F934(MechaKnuckles *boss, Player *p)
{
    boss->s.frameFlags &= ~0x400;
    boss->s2.graphics.anim = 694;
    boss->s2.variant = 9;
    boss->s2.prevVariant = -1;
}

void sub_804F95C(MechaKnuckles *boss, Player *p)
{
    boss->s.frameFlags |= 0x400;
    boss->s2.graphics.anim = 694;
    boss->s2.variant = 6;
    boss->s2.prevVariant = -1;
}

u32 sub_804F984(MechaKnuckles *boss, Player *p)
{
    boss->state2 = MKPHASE_ACTIVATE_2;
    return 0;
}

bool32 sub_804F990(MechaKnuckles *boss, Player *p)
{
    s32 result = 1;

    if (boss->s.frameFlags & 0x4000) {
        boss->state2 = MKSTATE_IDLE;
        result = 0;
    }

    return result;
}

u32 sub_804F9B0(MechaKnuckles *boss, Player *p)
{
    s32 result = 1;

    if (p->spriteInfoBody->s.frameFlags & 0x4000) {
        boss->state2 = MKSTATE_IDLE_2;
        result = 0;
        p->moveState &= ~0x00200000;
        p->heldInput |= gPlayerControls.jump | gPlayerControls.attack;
        p->moveState &= ~0x00800000;
        p->charState = 0;
    }

    return result;
}

u32 sub_804FA08(MechaKnuckles *boss, Player *p)
{
    s32 result = 1;
    u16 *temp_r0;
    s16 temp_r1 = boss->unk84;
    boss->unk84--;

    if (temp_r1 <= 0) {
        boss->state2 = sub_804ED80(boss, p);
        result = 0;
    }
    return result;
}

u32 sub_804FA38(MechaKnuckles *boss, Player *p)
{
    s32 result = 1;
    if (boss->unk7E >= 0) {
        boss->state2 = MKSTATE_GLIDE;
        result = 0;
    }
    return result;
}

u32 sub_804FA54(MechaKnuckles *boss, Player *p)
{
    s32 result = 1;

    if (boss->flags88 & 1) {
        boss->state2 = MKSTATE_LAND_2;
        result = 0;
    }

    return result;
}

u32 sub_804FA70(MechaKnuckles *boss, Player *p)
{
    s32 result = 1;

    if (boss->s.frameFlags & 0x4000) {
        boss->state2 = sub_804ED80(boss, p);
        result = 0;
    }

    return result;
}

u32 sub_804FA9C(MechaKnuckles *boss, Player *p)
{
    s32 result = 1;

    if (boss->s.frameFlags & 0x4000) {
        boss->state2 = sub_804ED80(boss, p);
        result = 0;
    }

    return result;
}

u32 sub_804FAC8(MechaKnuckles *boss, Player *p)
{
    s32 result = 1;
    u16 *temp_r0;
    s16 temp_r1 = boss->unk84;
    boss->unk84--;

    if (temp_r1 <= 0) {
        boss->state2 = MKSTATE_SPIN_2;
        result = 0;
    }

    return result;
}

u32 sub_804FAF0(MechaKnuckles *boss, Player *p)
{
    s32 result = 1;

    if (boss->flags88 & (0x8 | 0x4)) {
        boss->state2 = MKSTATE_IDLE_2;
        result = 0;
    }

    return result;
}

u32 sub_804FB10(MechaKnuckles *boss, Player *p)
{
    s32 result = 1;

    if (boss->s.frameFlags & 0x4000) {
        boss->state2 = MKSTATE_PUNCH_2;
        result = 0;
    }

    return result;
}

u32 sub_804FB30(MechaKnuckles *boss, Player *p)
{
    s32 result = 1;

    if (boss->s.frameFlags & 0x4000) {
        boss->state2 = sub_804ED80(boss, p);
        result = 0;
    }

    return result;
}

u32 sub_804FB5C(MechaKnuckles *boss, Player *p)
{
    s32 result = 1;

    if (boss->s.frameFlags & 0x4000) {
        boss->state2 = MKSTATE_LAUNCH_ROCKET_2;
        result = 0;
    }

    return result;
}

u32 sub_804FB7C(MechaKnuckles *boss, Player *p)
{
    s32 result = 1;

    if (boss->s.frameFlags & 0x4000) {
        boss->state2 = sub_804ED80(boss, p);
        result = 0;
    }

    return result;
}

u32 sub_804FBA8(MechaKnuckles *boss, Player *p)
{
    s32 result = 1;

    if (boss->lives == boss->unk96) {
        sub_804EE20(boss);
    }

    if (boss->flags88 & 1) {
        boss->state2 = MKSTATE_HIT_2;
        result = 0;
    }

    return result;
}

u32 sub_804FBE4(MechaKnuckles *boss, Player *p)
{
    s32 result = 1;

    if (boss->lives == boss->unk96) {
        sub_804EE20(boss);
    }

    if (boss->s.frameFlags & 0x4000) {
        boss->state2 = sub_804ED80(boss, p);
        result = 0;
    }

    return result;
}

u32 sub_804FC28(MechaKnuckles *boss, Player *p)
{
    s32 result = 1;

    sub_804EE20(boss);

    if (boss->flags88 & 4) {
        boss->unk7C = -boss->unk7C;
    }
    if (boss->flags88 & 8) {
        boss->unk7C = -boss->unk7C;
    }
    if (boss->flags88 & 1) {
        boss->state2 = MKSTATE_DEFEATED_2;
        result = 0;
    }
    return result;
}

u32 sub_804FC78(MechaKnuckles *boss, Player *p)
{
    s32 result = 1;
    u16 *temp_r0;
    s16 temp_r1;

    sub_804EE20(boss);

    temp_r1 = boss->unk84;
    boss->unk84--;

    if (temp_r1 <= 0) {
        boss->state2 = MKSTATE_DEFEATED_3;
        result = 0;
    }

    return result;
}

u32 sub_804FCA4(MechaKnuckles *boss, Player *p)
{
    s32 result = 1;
    if (sub_804EE20(boss)) {
        boss->state2 = MKSTATE_EGGMOBILE;
        result = 0;

        CreateMechaKnucklesParts(boss, 0);
        CreateMechaKnucklesParts(boss, 1);
        CreateMechaKnucklesParts(boss, 2);
        CreateMechaKnucklesParts(boss, 3);
        CreateMechaKnucklesParts(boss, 4);



        CreateMechaKnucklesParts(boss, 5);

    }
    return result;
}

u32 sub_804FCEC(MechaKnuckles *boss, Player *p)
{
    s32 result = 1;

    if (gCamera.minX < (gCamera.maxX - 320)) {
        gCamera.minX++;
    }

    if (gCamera.minX < gCamera.x) {
        gCamera.minX = gCamera.x;
    }

    if (((boss->spawnX + ((int)((boss->qUnk74) >> 8)) + 0x20) <= (gCamera.x + 320))
        && ((s32)gCamera.minX >= (s32)(gCamera.maxX - 320))) {
        boss->state2 = MKSTATE_EGGMOBILE_2;
        result = 0;
    }

    return result;
}

u32 sub_804FD54(MechaKnuckles *boss, Player *p)
{
    s32 result = 1;

    if (gCamera.minX < (gCamera.maxX - 320)) {
        gCamera.minX++;
    }

    if (gCamera.minX < gCamera.x) {
        gCamera.minX = gCamera.x;
    }

    if (boss->spawnX + ((int)((boss->qUnk74) >> 8)) >= (gCamera.maxX + 32)) {
        boss->flags88 &= ~0x60;
        TaskDestroy(gCurTask);
    }

    return result;
}

void TaskDestructor_MechaKnuckles(struct Task *t)
{
    MechaKnuckles *boss = (void *)((t)->data);
    VramFree(boss->s.graphics.dest);
    VramFree(boss->s2.graphics.dest);
}

void sub_804FDD4(MechaKnuckles *boss)
{
    s32 temp_r0;
    s32 temp_r0_2;
    s32 var_r2;
    s32 var_r3;

    var_r2 = boss->qUnk74;
    var_r3 = boss->flags88;
    var_r3 &= ~(0x4 | 0x8);
    temp_r0 = (((int)((boss->qUnk74) >> 8)) - boss->unk98) - 6;

    if (temp_r0 < 0) {
        var_r2 -= ((s32)((temp_r0)*256));
        var_r3 |= 4;
    }

    temp_r0 = (((int)((var_r2) >> 8)) + boss->unk98) - 234;
    if (temp_r0 > 0) {
        var_r2 -= ((s32)((temp_r0)*256));
        var_r3 |= 8;
    }

    boss->qUnk74 = var_r2;
    boss->flags88 = var_r3;
}

void TaskDestructor_MechaKnuckles_Rocket(struct Task *t)
{
    MechaKnucklesRocket *rocket = (void *)((t)->data);
    Sprite *s = &rocket->s;
    VramFree(s->graphics.dest);
    m4aSongNumStop(200);
}

void TaskDestructor_MechaKnuckles_Parts(struct Task *t)
{
    MechaKnucklesParts *parts = (void *)((t)->data);
    Sprite *s = &parts->s;
    VramFree(s->graphics.dest);
}
