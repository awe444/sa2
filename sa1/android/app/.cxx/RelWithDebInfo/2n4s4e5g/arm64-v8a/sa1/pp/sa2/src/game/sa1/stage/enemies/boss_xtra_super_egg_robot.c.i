# 1 "/home/awaszczak/git/sa2/sa1/../src/game/sa1/stage/enemies/boss_xtra_super_egg_robot.c"
# 1 "<built-in>" 1
# 1 "<built-in>" 3
# 384 "<built-in>" 3
# 1 "<command line>" 1
# 1 "<built-in>" 2
# 1 "/home/awaszczak/git/sa2/sa1/../src/game/sa1/stage/enemies/boss_xtra_super_egg_robot.c" 2
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
# 2 "/home/awaszczak/git/sa2/sa1/../src/game/sa1/stage/enemies/boss_xtra_super_egg_robot.c" 2
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
# 3 "/home/awaszczak/git/sa2/sa1/../src/game/sa1/stage/enemies/boss_xtra_super_egg_robot.c" 2
# 1 "/home/awaszczak/git/sa2/sa1/../include/trig.h" 1





extern const s16 gSineTable[1280];
# 4 "/home/awaszczak/git/sa2/sa1/../src/game/sa1/stage/enemies/boss_xtra_super_egg_robot.c" 2

# 1 "/home/awaszczak/git/sa2/sa1/../include/bg_triangles.h" 1



typedef struct {
# 15 "/home/awaszczak/git/sa2/sa1/../include/bg_triangles.h"
    u16 unk0;
    u16 unk1;
    u16 unk2;
    u16 unk3;
    u16 unk4;
    u16 unk5;
    u16 unk6;
    u16 unk7;

} TriParam1;

extern void sa2__sub_8006DB4(u8 bg, TriParam1 *arg1, s32 unused, s32 arg3);
extern void sa2__sub_800724C(u8 bg, TriParam1 *param1);
extern void sa2__sub_80075D0(u8 bg, int_vcount param1, int_vcount param2, s16 param3, s16 param4, u16 param5);
extern void sa2__sub_8007738(u8 bg, int_vcount minY, int_vcount maxY, u16 param3, u8 param4, u8 param5, u16 param6, u8 param7,
                                   u8 param8, s16 param9, s16 param10);
extern void sa2__sub_8007858(u8 param0, int_vcount minY, int_vcount maxY, u16 param3, u16 param4);
extern void sa2__sub_80078D4(u8 bg, int_vcount minY, int_vcount maxY, u16 offsetEven, u16 offsetOdd);
void sa2__sub_8007958(u8 bg, int_vcount minY, int_vcount maxY, s16 param3, s8 param4, u16 param5, u16 param6);
# 6 "/home/awaszczak/git/sa2/sa1/../src/game/sa1/stage/enemies/boss_xtra_super_egg_robot.c" 2
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
# 7 "/home/awaszczak/git/sa2/sa1/../src/game/sa1/stage/enemies/boss_xtra_super_egg_robot.c" 2
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
# 8 "/home/awaszczak/git/sa2/sa1/../src/game/sa1/stage/enemies/boss_xtra_super_egg_robot.c" 2
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
# 9 "/home/awaszczak/git/sa2/sa1/../src/game/sa1/stage/enemies/boss_xtra_super_egg_robot.c" 2
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
# 10 "/home/awaszczak/git/sa2/sa1/../src/game/sa1/stage/enemies/boss_xtra_super_egg_robot.c" 2

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
# 12 "/home/awaszczak/git/sa2/sa1/../src/game/sa1/stage/enemies/boss_xtra_super_egg_robot.c" 2
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
# 13 "/home/awaszczak/git/sa2/sa1/../src/game/sa1/stage/enemies/boss_xtra_super_egg_robot.c" 2
# 1 "/home/awaszczak/git/sa2/sa1/../include/game/sa1/stage/extra_stage.h" 1



extern void CreateExtraStageResults();
# 14 "/home/awaszczak/git/sa2/sa1/../src/game/sa1/stage/enemies/boss_xtra_super_egg_robot.c" 2


# 1 "/home/awaszczak/git/sa2/sa1/../include/game/sa1/stage/enemies/boss_xtra_super_egg_robo.h" 1





# 1 "/home/awaszczak/git/sa2/sa1/../include/game/sa1/stage/some_task_manager.h" 1



typedef struct GfxInfo {
    TileInfoBitfield tileInfo;
    u8 *vram;
} GfxInfo;

struct SomeTaskManager_7C;
typedef struct {
               s16 unk0;
               u8 unk2;
               u8 unk3;
               s32 unk4;
               struct SomeTaskManager_7C *unk8;
               SpriteTransform transform;
               Sprite s;
               Hitbox reserved;
               s32 qUnk50;
               s32 qUnk54;
               s16 qUnk58;
               s16 qUnk5A;
               u16 qUnk5C;
               u16 qUnk5E;
} SomeTaskManager_60;

typedef struct SomeTaskManager_7C {
               SomeTaskManager_60 unk0;
               u32 unk60;
               s32 unk64;
               s32 unk68;
               s32 unk6C;
               u16 unk70;
               s16 unk72;
               u16 unk74;
               u16 unk76;
               u8 filler78[0x4];
} SomeTaskManager_7C;

void sub_804CFA0(SomeTaskManager_60 *taskData);
bool32 sub_804CFE0(u16 *param0, u16 param1, u16 param2);
struct Task *CreateSomeTaskManager_60_Task(GfxInfo *gfx, TaskMain proc, TaskDestructor dtor);
struct Task *CreateSomeTaskManager_7C_Task(GfxInfo *gfx, TaskMain proc, TaskDestructor dtor);
void TaskDestructor_SomeTaskManager_60_Common(struct Task *t);
# 7 "/home/awaszczak/git/sa2/sa1/../include/game/sa1/stage/enemies/boss_xtra_super_egg_robo.h" 2








typedef struct {
               SpriteBase base;
               Sprite unusedSprite;
               Hitbox reserved;
               s32 qUnk44;
               s32 qUnk48;
               s16 qUnk4C;
               s16 qUnk4E;
               s16 qUnk50;
               s16 qUnk52;
               s16 qUnk54;
               s16 qUnk56;
               u32 flags58;
               s32 unk5C;
               s32 unk60;
               s32 qUnk64;
               s8 unk68;
               s8 unk69;
               s8 unk6A;
               s8 unk6B;
               s16 unk6C;
               s8 unk6E;
               s8 unk6F;
} SuperEggRobo;

typedef struct ExtraBossTaskData {
    SuperEggRobo *boss;
    SomeTaskManager_7C *parts[18];
} ExtraBossTaskData;

extern ExtraBossTaskData gExtraBossTaskData;





typedef s32 CapsuleState;

s32 ExtraBoss__CapsuleGetCaptureState(SomeTaskManager_7C *mgr, Sprite *s, SuperEggRobo *extraBoss, Player *p);
# 17 "/home/awaszczak/git/sa2/sa1/../src/game/sa1/stage/enemies/boss_xtra_super_egg_robot.c" 2

# 1 "/home/awaszczak/git/sa2/sa1/../include/constants/sa1/animations.h" 1






# 1 "/home/awaszczak/git/sa2/sa1/../include/constants/sa1/anim_sizes.h" 1
# 8 "/home/awaszczak/git/sa2/sa1/../include/constants/sa1/animations.h" 2
# 19 "/home/awaszczak/git/sa2/sa1/../src/game/sa1/stage/enemies/boss_xtra_super_egg_robot.c" 2

# 1 "/home/awaszczak/git/sa2/sa1/../include/constants/sa1/songs.h" 1
# 21 "/home/awaszczak/git/sa2/sa1/../src/game/sa1/stage/enemies/boss_xtra_super_egg_robot.c" 2
# 1 "/home/awaszczak/git/sa2/sa1/../include/constants/sa1/vram_hardcoded.h" 1
# 22 "/home/awaszczak/git/sa2/sa1/../src/game/sa1/stage/enemies/boss_xtra_super_egg_robot.c" 2



void sub_804B2BC(s32 a, s32 b);
bool32 sub_80520B8(SuperEggRobo *boss);
void sub_80523D4(SuperEggRobo *boss);
void sub_80523F8(SuperEggRobo *boss);
void sub_8052424(SuperEggRobo *boss);
void sub_8052468(SuperEggRobo *boss);

ExtraBossTaskData gExtraBossTaskData = { 0 };

const u8 gUnknown_084AE560[] = { 0, 0, 1, 1, 1, 1, 1, 0, 0, 0, 0, 0, 1, 1, 1, 0, 0, 0, 0, 0 };

SomeTaskManager_7C *sub_8052474(SomeTaskManager_7C *strc, s32 param1, s32 param2, s32 param3);
SomeTaskManager_7C *sub_80524F0(SomeTaskManager_7C *strc, s32 param1, s32 param2, s32 param3);
SomeTaskManager_7C *sub_8052578(SomeTaskManager_7C *strc, s32 param1, s32 param2, s32 param3);
SomeTaskManager_7C *sub_80525E0(SomeTaskManager_7C *strc, s32 param1, s32 param2, s32 param3);
SomeTaskManager_7C *sub_805265C(SomeTaskManager_7C *strc, s32 param1, s32 param2, s32 param3);
SomeTaskManager_7C *sub_8052838(SuperEggRobo *boss, s32 param1, s32 param2, s32 param3);

SomeTaskManager_7C *sub_80526C4(SomeTaskManager_7C *strc, s32 param1, s32 param2, GfxInfo *gfx, s32 param4);
SomeTaskManager_7C *sub_8052724(SomeTaskManager_7C *strc, s32 param1, s32 param2, GfxInfo *gfx, s32 param4);
SomeTaskManager_7C *sub_8052780(SomeTaskManager_7C *strc, s32 param1, s32 param2, GfxInfo *gfx, s32 param4);
SomeTaskManager_7C *sub_80527DC(SomeTaskManager_7C *strc, s32 param1, s32 param2, GfxInfo *gfx, s32 param4);

void sub_804B570(s32, s32);
bool32 sub_8052150(s32 arg0, s32 arg1, u16 arg2, SomeTaskManager_7C *arg3);

void Task_SuperEggRobotInit()
{
    SuperEggRobo *boss = (void *)((gCurTask)->data);

    if (!(boss->flags58 & 0x400000)) {
        if (boss->flags58 & 0x2) {
            sub_8052424(boss);
            sub_8052468(boss);
            sub_80523F8(boss);
        } else {
            sub_80523D4(boss);
            sub_8052424(boss);
        }
    }

    switch (boss->unk6E) {
        case 2: {
            if (!(boss->flags58 & 0x2)) {
                boss->unk6F++;
            }
        } break;

        case 3: {
            if (boss->qUnk54++ >= 60) {
                boss->unk6F++;
            }
        } break;

        case 9: {
            if (boss->qUnk54++ >= 300) {
                boss->qUnk56 = 0;
                boss->unk6F++;
            }
        } break;

        case 4:
        case 5:
        case 6:
        case 7:
        case 8:
        case 10:
        case 11: {
            if (boss->unk5C != 0) {
                boss->unk6F++;
            }
        } break;

        case 12: {
            if (boss->unk5C == 0) {

            } else {
                if (++boss->qUnk56 < 4) {
                    boss->unk6F = 0xB;
                } else {
                    boss->unk6F = 3;
                }
            }
        } break;

        case 0: {
            if (boss->qUnk44 < ((s32)((416)*256))) {
                boss->qUnk48 = -((s32)((128)*256));
                boss->qUnk4E = 0;
                boss->qUnk4C = ((s32)((4)*256));
            } else {
                boss->qUnk50 = -0x10;
                boss->unk6F = 1;
            }
        } break;

        case 1: {
            if (boss->qUnk44 < ((s32)((416)*256))) {
                boss->qUnk50 = 0;
                boss->qUnk4C = 0;
                boss->qUnk44 = ((s32)((416)*256));
                boss->unk6F = 2;
            } else {
                boss->qUnk4C = (((-((s32)((2)*256))) > (boss->qUnk4C)) ? (-((s32)((2)*256))) : (boss->qUnk4C));
            }
        } break;

        case 13: {
            if (boss->unk5C != 0) {
                boss->unk6F = 0xE;
            }
        } break;

        case 14: {
            if (!(boss->flags58 & 0x2)) {
                boss->qUnk50 = -0x10;
                if (boss->qUnk4C < -((s32)((6)*256))) {
                    boss->qUnk4C = -((s32)((6)*256));
                    boss->qUnk50 = 0;
                }
                if (boss->qUnk44 <= -((s32)((120)*256))) {
                    boss->qUnk4C = 0;
                }
            }
        } break;

        default: {
            boss->qUnk4C = 0;
            boss->qUnk50 = 0;
        } break;
    }
    if (boss->flags58 & 0x80) {
        s32 fade = boss->qUnk54 - 120;
        if (fade < 0) {
            fade = 0;
        }
        fade >>= 2;
        if (fade > 0x10) {
            fade = 0x10;
        }

        if (boss->unk69 == 0) {
            gDispCnt &= 0x7FFF;
            gWinRegs[5] = 0x3F3F;
            gBldRegs.bldCnt = 0xBF;
            gBldRegs.bldY = fade;
        }

        if (fade == 0x10) {
            TasksDestroyInPriorityRange(0, 0xFFFF);
            gBackgroundsCopyQueueCursor = gBackgroundsCopyQueueIndex;;
            gBgSpritesCount = 0;
            gVramGraphicsCopyCursor = gVramGraphicsCopyQueueIndex;;
            CreateExtraStageResults();
            return;
        }
        sub_80520B8(boss);

        if (++boss->qUnk54 < 0) {
            boss->qUnk54--;
        }
    } else if (boss->unk6E > 1) {
        if (--boss->unk6C <= 0) {
            boss->unk6C = 240;
            sub_804B2BC(((s32)((boss->unk60)*256)) + boss->qUnk44 + -((s32)((21)*256)), ((s32)((boss->qUnk64)*256)) + boss->qUnk48 + -((s32)((10)*256)));
        }
    }

    if (boss->unk6E != boss->unk6F) {
        s32 i;
        for (i = 0; i < (s32)(sizeof(gExtraBossTaskData.parts) / sizeof((gExtraBossTaskData.parts)[0])); i++) {
            SomeTaskManager_7C *parts = gExtraBossTaskData.parts[i];
            parts->unk0.unk2 = 0;
            parts->unk0.unk4 = 0;
        }

        boss->unk5C = 0;
        boss->qUnk54 = 0;
        boss->unk6E = boss->unk6F;
    }
}


s32 sub_8050194(SuperEggRobo *boss)
{
    SuperEggRobo *sp4;
    u32 sp8;
    u32 spC;
    SomeTaskManager_7C *temp_r8;
    SomeTaskManager_7C *temp_r8_2;
    s32 temp_r0;
    s32 temp_r0_2;
    s32 temp_r1;
    s32 temp_r1_3;
    s32 temp_r1_6;
    s32 temp_r2_3;
    s32 temp_r3;
    s32 temp_r4;
    s32 temp_r4_2;
    s32 temp_r5_3;
    s32 temp_r6;
    s32 temp_r7;
    s32 temp_sb;
    s32 temp_sb_2;
    s32 var_r0;
    s32 var_r0_2;
    s32 var_r0_3;
    s32 var_r1;
    s32 var_r3;
    s32 var_r4;
    s32 var_r6;
    s32 var_r7;
    s32 var_r7_2;
    s32 var_sl;
    u16 temp_r5;
    u32 temp_r5_2;
    s16 temp_r1_2;
    s16 theta;
    s16 temp_r1_5;
    u32 temp_r2;
    u32 temp_r2_2;
    s32 sinV;

    BrakeDustEffect *brakeDust;

    sp4 = boss;
    temp_r8 = gExtraBossTaskData.parts[0xE];
    temp_r5 = gExtraBossTaskData.parts[0xE]->unk70;
    sp8 = gExtraBossTaskData.parts[0xD]->unk70;
    var_r7 = ((int)((temp_r8->unk0.qUnk50) >> 8)) + (gStageTime * 8);
    temp_r1 = var_r7 - 72;
    if (temp_r1 >= 0xA80) {
        var_r7 = temp_r1;
        var_r7 = ({((0xA80) != 0) ? ((s32)(var_r7) % (s32)(0xA80)) : 0;}) + 72;
    }
    temp_r1_2 = temp_r5 >> 6;
    var_r3 = ((int)((temp_r8->unk0.qUnk54) >> 8));
    sinV = (((int)(((gSineTable[(temp_r1_2)])) >> 6)) << 0xC);
    temp_r6 = var_r3 + ((((((int)(((gSineTable[(temp_r1_2) + 256])) >> 6)) * ((s32)((9)*256))) - (sinV)) >> 0x10) + 6);
    temp_sb = sa2__sub_801F100(temp_r6, var_r7 + 0x10, 1, 8, sa2__sub_801EC3C);
    temp_r4 = ((int)((temp_r8->unk0.qUnk54) >> 8));
    temp_r2 = sp8 >> 6;
    temp_r4 = (temp_r4 + (((((((int)(((gSineTable[(temp_r2)])) >> 6))) * ((s32)((21)*256))) + (((int)(((gSineTable[(temp_r2) + 256])) >> 6)) << 0xB)) >> 0x10))) + 6;
    var_sl = sa2__sub_801F100(temp_r4, var_r7 + 21, 1, 8, sa2__sub_801EC3C);
    if (var_sl > temp_sb) {
        var_sl = temp_sb;
    }
    if ((var_sl <= 0) && (sp4->unk6E != 1) && (gStageTime & 1)) {
        if (!(({ gPseudoRandom = (gPseudoRandom * 0x196225) + 0x3C6EF35F; gPseudoRandom; }) & 0x30000)) {
            s32 var = ((int)((temp_r8->unk0.qUnk50) >> 8));
            var_r0_2 = temp_r4;
            if (var_r0_2 < temp_r6) {
                var_r0_2 = temp_r6;
            }
            brakeDust = (void *)((CreateBrakingDustEffect(var, var_r0_2 - 2))->data);
            brakeDust->unk4 = -4;
        }
    }

    temp_r8_2 = gExtraBossTaskData.parts[0x11];
    temp_r5_2 = gExtraBossTaskData.parts[0x11]->unk70;
    spC = gExtraBossTaskData.parts[0x10]->unk70;

    var_r7_2 = (temp_r8_2->unk0.qUnk50 >> 8);
    var_r7_2 += (gStageTime * 8);
    if (var_r7_2 - 72 >= 0xA80) {
        var_r7_2 = ({((0xA80) != 0) ? ((s32)(var_r7_2 - 72) % (s32)(0xA80)) : 0;}) + 72;
    }
    var_r3 = ((int)((temp_r8_2->unk0.qUnk54) >> 8));
    sinV = ((((int)(((gSineTable[(temp_r5_2 >> 6)])) >> 6))) << 0xC);
    temp_r5_3 = var_r3 + (((((((int)(((gSineTable[(temp_r5_2 >> 6) + 256])) >> 6))) * ((s32)((9)*256))) - sinV) >> 0x10) + 6);
    temp_sb_2 = sa2__sub_801F100(temp_r5_3, var_r7_2 + 16, 1, 8, sa2__sub_801EC3C);
    temp_r4_2 = ((int)((temp_r8_2->unk0.qUnk54) >> 8));
    temp_r4_2 += ((((((int)(((gSineTable[(spC >> 6)])) >> 6))) * ((s32)((21)*256))) + ((((int)(((gSineTable[(spC >> 6) + 256])) >> 6))) << 0xB)) >> 0x10) + 6;
    var_r6 = sa2__sub_801F100(temp_r4_2, var_r7_2 + 21, 1, 8, sa2__sub_801EC3C);
    if (var_r6 > temp_sb_2) {
        var_r6 = temp_sb_2;
    }
    if ((var_r6 <= 0) && (sp4->unk6E != 1) && !(gStageTime & 1)) {
        if (!(({ gPseudoRandom = (gPseudoRandom * 0x196225) + 0x3C6EF35F; gPseudoRandom; }) & 0x30000)) {
            s32 var = ((int)((temp_r8_2->unk0.qUnk50) >> 8));
            var_r0_3 = temp_r4_2;
            if (var_r0_3 < temp_r5_3) {
                var_r0_3 = temp_r5_3;
            }
            brakeDust = (void *)((CreateBrakingDustEffect(var, var_r0_3 - 2))->data);
            brakeDust->unk4 = -4;
        }
    }

    theta = (gExtraBossTaskData.parts[0]->unk70 >> 6);
    temp_r2_3 = ((int)(((gSineTable[(theta) + 256])) >> 6));
    temp_r3 = ((int)(((gSineTable[(theta)])) >> 6));
    temp_r7 = ((int)((gExtraBossTaskData.parts[0]->unk0.qUnk54) >> 8)) + (((temp_r3 * ((s32)((27)*256))) - (temp_r2_3 * ((s32)((22)*256)))) >> 0x10);
    var_r4 = ((int)((gExtraBossTaskData.parts[0]->unk0.qUnk50) >> 8)) + (((temp_r2_3 * ((s32)((27)*256))) + (temp_r3 * ((s32)((22)*256)))) >> 0x10) + (gStageTime * 8);

    if (var_r4 - 72 >= 0xA80) {
        var_r4 = ({((0xA80) != 0) ? ((s32)(var_r4 - 72) % (s32)(0xA80)) : 0;}) + 72;
    }

    var_r0 = sa2__sub_801F100(temp_r7, var_r4, 1, 8, sa2__sub_801EC3C);
    var_r1 = var_r6;
    if (var_r1 > var_sl) {
        var_r1 = var_sl;
    }
    if (var_r0 > var_r1) {
        var_r0 = var_r1;
    }
    return var_r0;
}



void sub_80504DC(SuperEggRobo *boss, MapEntity *me)
{
    GfxInfo gfx;
    GfxInfo gfx2;
    SomeTaskManager_7C *strc, *prevStrc;
    s32 index;

    ExtraBossTaskData *extraBoss;
    SomeTaskManager_7C *parts;
    Sprite *s;

    boss->unk60 = 0;
    boss->qUnk64 = ((me->y)*8 + (boss->base.regionY)*256);
    boss->qUnk44 = -0x10000;
    boss->qUnk48 = -0x3600;
    boss->qUnk4C = 0;
    boss->qUnk4E = 0;
    boss->qUnk50 = 0;
    boss->qUnk52 = 0;
    boss->flags58 = 0x400002;
    boss->unk5C = 0;
    boss->qUnk54 = 0;
    boss->qUnk56 = 0;
    boss->unk6C = 240;
    boss->unk68 = 8;
    boss->unk68 -= ((&gLoadedSaveGame)->difficultyLevel * 2);
    boss->unk69 = 0;
    boss->unk6A = 0x24;
    boss->unk6B = 0x36;
    boss->unk6E = 0;
    boss->unk6F = 0;

    extraBoss = &gExtraBossTaskData;
    index = 0;
    prevStrc = sub_8052838(boss, 0, 0, 21);
    extraBoss->parts[index] = prevStrc;
    prevStrc->unk0.unk0 = index;
    index = 1;
    prevStrc = sub_8052474(prevStrc, 0x400, 0xFFFFE400, 0x16);
    extraBoss->parts[index] = prevStrc;
    prevStrc->unk0.unk0 = index;
    index = 2;

    prevStrc = sub_80524F0(extraBoss->parts[0], 0xB00, 0xFFFFE900, 0xF);
    extraBoss->parts[index] = prevStrc;
    extraBoss->parts[index]->unk0.unk0 = index;
    extraBoss->parts[index]->unk0.s.frameFlags &= ~((3) << (12));
    (&extraBoss->parts[index]->unk0.s)->frameFlags |= ((1) << (12));
    index = 3;
    prevStrc = sub_8052578(extraBoss->parts[index - 1], 0, 0x1400, 0x10);
    extraBoss->parts[index] = prevStrc;
    extraBoss->parts[index]->unk0.unk0 = index;
    extraBoss->parts[index]->unk0.s.frameFlags &= ~((3) << (12));
    (&extraBoss->parts[index]->unk0.s)->frameFlags |= ((1) << (12));
    index = 4;
    prevStrc = sub_80525E0(extraBoss->parts[index - 1], 0, 0x1200, 0xF);
    extraBoss->parts[index] = prevStrc;
    extraBoss->parts[index]->unk0.unk0 = index;
    extraBoss->parts[index]->unk0.s.frameFlags &= ~((3) << (12));
    (&extraBoss->parts[index]->unk0.s)->frameFlags |= ((1) << (12));
    index = 5;
    prevStrc = sub_8052578(extraBoss->parts[index - 1], 0, 0x1200, 0x10);
    extraBoss->parts[index] = prevStrc;
    extraBoss->parts[index]->unk0.unk0 = index;
    extraBoss->parts[index]->unk0.s.frameFlags &= ~((3) << (12));
    (&extraBoss->parts[index]->unk0.s)->frameFlags |= ((1) << (12));
    index = 6;
    prevStrc = sub_805265C(extraBoss->parts[index - 1], 0, 0x800, 0xE);
    prevStrc = prevStrc;
    extraBoss->parts[index] = prevStrc;
    extraBoss->parts[index]->unk0.unk0 = index;
    extraBoss->parts[index]->unk0.s.frameFlags &= ~((3) << (12));
    (&extraBoss->parts[index]->unk0.s)->frameFlags |= ((1) << (12));

    index = 7;
    prevStrc = sub_80524F0(extraBoss->parts[0], 0xFFFFFB00, 0xFFFFE700, 0x1B);
    extraBoss->parts[index] = prevStrc;
    extraBoss->parts[index]->unk0.unk0 = index;
    index = 8;
    prevStrc = sub_8052578(prevStrc, 0, 0x1400, 0x1C);
    extraBoss->parts[index] = prevStrc;
    extraBoss->parts[index]->unk0.unk0 = index;
    index = 9;
    prevStrc = sub_80525E0(prevStrc, 0, 0x1200, 0x1B);
    extraBoss->parts[index] = prevStrc;
    extraBoss->parts[index]->unk0.unk0 = index;
    index = 10;
    prevStrc = sub_8052578(prevStrc, 0, 0x1200, 0x1C);
    extraBoss->parts[index] = prevStrc;
    extraBoss->parts[index]->unk0.unk0 = index;
    index = 11;
    prevStrc = sub_805265C(prevStrc, 0, 0x800, 0x1A);
    extraBoss->parts[index] = prevStrc;
    extraBoss->parts[index]->unk0.unk0 = index;

    gfx.tileInfo.anim = 0x29B;
    gfx.tileInfo.variant = 0;
    gfx.vram = VramMalloc(0x10U);
    index = 12;
    strc = sub_80526C4(extraBoss->parts[0], 0x200, 0x500, &gfx, 0x14);
    extraBoss->parts[index] = strc;
    extraBoss->parts[index]->unk0.unk0 = index;
    extraBoss->parts[index]->unk76 = 0xE000;
    extraBoss->parts[index]->unk72 = 0x100;
    extraBoss->parts[index]->unk0.s.frameFlags &= ~((3) << (12));
    (&extraBoss->parts[index]->unk0.s)->frameFlags |= ((1) << (12));

    {
        SomeTaskManager_7C *strcInner;
        gfx.tileInfo.anim = 0x29D;
        gfx.tileInfo.variant = 0;
        gfx.vram = VramMalloc(9U);
        strcInner = sub_8052724(strc, 0, 0, &gfx, 0x13);
        strcInner->unk0.s.frameFlags &= ~((3) << (12));
        (&strcInner->unk0.s)->frameFlags |= ((1) << (12));
    }

    gfx.tileInfo.anim = 0x29C;
    gfx.tileInfo.variant = 0;
    gfx.vram = VramMalloc(64);
    index = 13;
    strc = sub_8052780(strc, 0xFFFFF700, 0xC00, &gfx, 0x12);
    extraBoss->parts[index] = strc;
    extraBoss->parts[index]->unk0.unk0 = index;
    extraBoss->parts[index]->unk0.s.frameFlags &= ~((3) << (12));
    (&extraBoss->parts[index]->unk0.s)->frameFlags |= ((1) << (12));

    gfx.tileInfo.anim = 0x29B;
    gfx.tileInfo.variant = 2;
    gfx.vram = VramMalloc(0x10U);
    index = 14;
    extraBoss->parts[index] = sub_80527DC(strc, 0x300, 0x1B00, &gfx, 0x11);
    strc = extraBoss->parts[index];
    extraBoss->parts[index]->unk0.unk0 = index;
    extraBoss->parts[index]->unk0.s.frameFlags &= ~((3) << (12));
    (&extraBoss->parts[index]->unk0.s)->frameFlags |= ((1) << (12));

    gfx2.tileInfo.anim = 0x29B;
    gfx2.tileInfo.variant = 1;
    gfx2.vram = VramMalloc(0x10U);
    index = 15;
    strc = sub_80526C4(extraBoss->parts[0], 0xFFFFFA00, 0x500, &gfx2, 0x17);
    extraBoss->parts[index] = strc;
    extraBoss->parts[index]->unk0.unk0 = index;
    extraBoss->parts[index]->unk76 = 0x2000;
    extraBoss->parts[index]->unk72 = -0x100;

    {
        SomeTaskManager_7C *strcInner;
        gfx2.tileInfo.anim = 0x29C;
        gfx2.tileInfo.variant = 1;
        gfx2.vram = VramMalloc(0x40U);
        index = 16;
        strc = sub_8052780(strc, 0xFFFFF700, 0xB00, &gfx2, 0x16);
        extraBoss->parts[index] = strc;
        extraBoss->parts[index]->unk0.unk0 = index;
    }

    gfx2.tileInfo.anim = 0x29B;
    gfx2.tileInfo.variant = 3;
    gfx2.vram = VramMalloc(0x10U);
    index = 17;
    extraBoss->parts[index] = sub_80527DC(strc, 0x300, 0x1B00, &gfx2, 0x18);
    extraBoss->parts[index]->unk0.unk0 = index;

    if (gInput == (0x0002 | 0x0008 | (0x0080 | 0x0040) | (0x0020 | 0x0010))) {
        boss->flags58 |= 0x80000000;
    }
}


void sub_8050888()
{
    Sprite *s;
    SuperEggRobo *boss;
    Player *p;
    Camera *cam;
    s32 screenY;
    s32 screenX;
    u16 *var_r0;
    u16 var_r1;
    s16 var_r1_2;

    SomeTaskManager_7C *strc = (void *)((gCurTask)->data);

    boss = gExtraBossTaskData.boss;
    s = &strc->unk0.s;
    p = &gPlayer;
    cam = &gCamera;
    strc->unk0.qUnk50 = strc->unk60 + ((boss->unk60 << 8) + boss->qUnk44);
    strc->unk0.qUnk54 = strc->unk64 + ((boss->qUnk64 << 8) + boss->qUnk48);
    strc->unk70 = strc->unk76;
    screenX = ((int)((strc->unk0.qUnk50) >> 8)) - cam->x;
    screenY = ((int)((strc->unk0.qUnk54) >> 8)) - cam->y;
    if ((p->timerInvulnerability == 0) && !(boss->flags58 & 0x80)) {
        sub_800BFEC(s, ((int)((strc->unk0.qUnk50) >> 8)), ((int)((strc->unk0.qUnk54) >> 8)), p);
    }
    s->x = 0x80;
    s->y = 0x80;
    s->frameFlags = (s->frameFlags & 0xFFFE7FFF) | 0x10000;
    UpdateSpriteAnimation_BG(s);
    DisplaySprite_BG(s);
    sa2__sub_8003EE4((strc->unk70 >> 6), 0x100, 0x100, 0x7C, 0x80, screenX, screenY, gBgAffineRegs);

    switch (boss->unk6E) {
        case 4:
        case 5:
            var_r1_2 = (gExtraBossTaskData.parts[2]->unk76 - ((s32)((64)*256)));
            var_r1_2 >>= 2;
            if (boss->unk6E == 4) {
                sub_804CFE0(&strc->unk76, var_r1_2, 64);
            } else {
                strc->unk76 = var_r1_2;
            }

            break;
        case 6:
        case 7:
            var_r1_2 = (gExtraBossTaskData.parts[7]->unk76 - ((s32)((64)*256)));
            var_r1_2 >>= 2;
            if (boss->unk6E == 6) {
                sub_804CFE0(&strc->unk76, var_r1_2, 64);
            } else {
                strc->unk76 = var_r1_2;
            }

            break;
        case 0:
            var_r0 = &strc->unk76;
            var_r1 = 0x800;
            sub_804CFE0(var_r0, var_r1, 0x80);
            break;
        case 1:
            var_r0 = &strc->unk76;
            var_r1 = 0xF800;
            sub_804CFE0(var_r0, var_r1, 0x80);
            break;
        case 13:
            var_r0 = &strc->unk76;
            var_r1 = 0;
            sub_804CFE0(var_r0, var_r1, 0x80);
            break;
        case 14:
            sub_804CFE0(&strc->unk76, 0x4000U, 0x200);
            break;
        default:
            sub_804CFE0(&strc->unk76, 0U, 0x80);
            break;
    }
}


void sub_8050A88()
{
    SomeTaskManager_7C *strc = (void *)((gCurTask)->data);
    SomeTaskManager_7C *strc2 = strc->unk0.unk8;
    SuperEggRobo *boss = gExtraBossTaskData.boss;
    Sprite *s = &strc->unk0.s;
    SpriteTransform *tf = &strc->unk0.transform;
    s32 sp4, sp8;
    s32 temp_r2_4;

    u16 *unk70 = &strc2->unk70;
    strc->unk60 = ((strc->unk68 * ((int)(((gSineTable[(strc2->unk70 >> 6) + 256])) >> 6))) - (strc->unk6C * ((int)(((gSineTable[(strc2->unk70 >> 6)])) >> 6)))) >> 8;
    strc->unk64 = ((strc->unk68 * ((int)(((gSineTable[(strc2->unk70 >> 6)])) >> 6))) + (strc->unk6C * ((int)(((gSineTable[(strc2->unk70 >> 6) + 256])) >> 6)))) >> 8;
    strc->unk0.qUnk50 = strc->unk60 + strc2->unk0.qUnk50;
    strc->unk0.qUnk54 = strc->unk64 + strc2->unk0.qUnk54;
    strc->unk70 = strc->unk76 + strc2->unk70;
    sp4 = ((int)((strc->unk0.qUnk50) >> 8)) - gCamera.x;
    sp8 = ((int)((strc->unk0.qUnk54) >> 8)) - gCamera.y;

    if ((gPlayer.sa2__unk62 != 0) && (sub_800C0E0(s, ((int)((strc->unk0.qUnk50) >> 8)), ((int)((strc->unk0.qUnk54) >> 8)), &gPlayer))) {
        if (!(boss->flags58 & 0x80) && (boss->unk69 <= 0)) {
            boss->unk69 = 0x20;
            gPlayer.sa2__unk62 = 0;
            gPlayer.timerInvulnerability = 8;
            gPlayer.qSpeedAirX = -((s32)((2)*256));
            gPlayer.qSpeedGround = -((s32)((2)*256));

            if (--boss->unk68 <= 0) {
                gDispCnt &= 0xDFFF;
                gBldRegs.bldCnt = 0;
                gFlags &= ~4;
                boss->unk6E = 0xD;
                boss->unk6F = 0xD;
                boss->qUnk4C = 0x180;
                boss->qUnk4E = 0xFF00;
                boss->flags58 |= 0x80;
                boss->qUnk54 = 0;
                gStageFlags |= 1;

                { s32 divResA, divResB; s32 oldScore = gLevelScore; gLevelScore += 1000; divResA = ({((50000) != 0) ? ((s32)(gLevelScore) / (s32)(50000)) : 0;}); divResB = ({((50000) != 0) ? ((s32)(oldScore) / (s32)(50000)) : 0;}); if ((divResA != divResB) && (gGameMode == 0)) { u16 lives = divResA - divResB; lives += gNumLives;; ({ if ((lives) > 255) (lives) = 255; gNumLives = (lives); }); if (0) gMusicManagerState.unk3 = 0x10 | 0x0; } };
            }
        }
    } else {
        if ((gPlayer.timerInvulnerability == 0) && !(boss->flags58 & 0x80)) {
            sub_800BFEC(s, ((int)((strc->unk0.qUnk50) >> 8)), ((int)((strc->unk0.qUnk54) >> 8)), &gPlayer);
        }
    }
    s->frameFlags &= ~0x180;
    if (!(boss->flags58 & 0x80) || (boss->unk69 != 0)) {
        if ((!(gPlayer.moveState & 0x00000080))) {
            gDispCnt &= ~0x8000;
            gWinRegs[5] = 0;
            gBldRegs.bldCnt = 0;
            gBldRegs.bldY = 0;
        }
        if (boss->unk69 != 0) {
            if (!(gStageTime & 2)) {
                s->frameFlags |= 0x100;
                gDispCnt |= 0x8000;
                gWinRegs[5] = 0x3F1F;
                gBldRegs.bldCnt = 0xBF;
                gBldRegs.bldY = 0x10;
            }

            boss->unk69--;
        }
    }
    tf->x = sp4;
    tf->y = sp8;
    tf->rotation = (strc->unk70 >> 6);
    s->frameFlags &= ~0x1F;
    s->frameFlags |= (gOamMatrixIndex++ | 0x20);
    UpdateSpriteAnimation(s);
    TransformSprite(s, tf);
    DisplaySprite(s);

    switch (boss->unk6E) {
        case 2:
        case 3:
            sub_804CFE0(&strc->unk76, 0, 0x200);
            break;
        case 10:
            if (sub_804CFE0(&strc->unk76, 0xF000, 0x200) != 0) {
                boss->unk5C |= 1 << strc->unk0.unk0;
            }
            break;
        case 11:
            gDispCnt &= 0xDFFF;
            if (strc->unk0.unk4 == 0) {
                s->graphics.anim = 0x299;
                s->variant = 1;
                s->prevVariant = -1;
                m4aSongNumStart(0x9BU);
            }
            if (strc->unk0.unk4 == 10) {
                m4aSongNumStop(0x9BU);
            }

            if (strc->unk0.unk4 > 0xF) {
                boss->unk5C |= 1 << strc->unk0.unk0;
                gBldRegs.bldCnt = 0;
                gFlags &= ~4;
                s->graphics.anim = 0x299;
                s->variant = 0;
                s->prevVariant = 0xFF;
            } else {
                u16 a = (((((s32)((1)*256)) - ((int)(((gSineTable[((((strc->unk0.unk4 << 10) >> 6) & 0x3FF)) + 256])) >> 6))) * 32) + ((s32)((92)*256)));
                if ((!(gPlayer.moveState & 0x00000080))) {
                    if ((sub_8052150(sp4, sp8, a, strc) == 0))
                        gFlags &= ~4;
                }

                strc->unk0.unk4 += 1;
            }

            break;
        case 12:
            if (!(7 & strc->unk0.unk4)) {
                temp_r2_4 = ((strc->unk0.qUnk50 - (strc->unk0.unk4 << 0xA)) - ((s32)((100)*256)));
                if (temp_r2_4 < -((s32)((32)*256))) {
                    boss->unk5C |= 1 << strc->unk0.unk0;
                } else {
                    sub_804B570(temp_r2_4, ((s32)((boss->qUnk64)*256)));
                }
            }

            strc->unk0.unk4 += 1;
            break;
        case 13:
            sub_804CFE0(&strc->unk76, 0x1800, 0x100);
            break;
        case 14:
            sub_804CFE0(&strc->unk76, 0x2000, 0x100);
            break;
        default:
            sub_804CFE0(&strc->unk76, 0, 0x100);
            break;
    }
}



void sub_8050FB4()
{
    SpriteTransform *sp0;
    Sprite *s;
    SpriteTransform *tf;
    SuperEggRobo *boss;
    s32 var_r0_2;
    s32 var_r0_3;
    s32 var_r0_4;
    s32 var_r1_2;
    u16 *var_r0;
    u16 var_r1;
    SomeTaskManager_7C *strc2;
    u32 var_r2;
    s32 screenX, screenY;

    SomeTaskManager_7C *strc = (void *)((gCurTask)->data);
    boss = gExtraBossTaskData.boss;
    s = &strc->unk0.s;
    tf = &strc->unk0.transform;
    sp0 = tf;
    strc2 = strc->unk0.unk8;
    strc->unk60 = ((strc->unk68 * ((int)(((gSineTable[(strc2->unk70 >> 6) + 256])) >> 6))) - (((int)(((gSineTable[(strc2->unk70 >> 6)])) >> 6)) * strc->unk6C)) >> 8;
    strc->unk64 = ((strc->unk68 * ((int)(((gSineTable[(strc2->unk70 >> 6)])) >> 6))) + (((int)(((gSineTable[(strc2->unk70 >> 6) + 256])) >> 6)) * strc->unk6C)) >> 8;
    strc->unk0.qUnk50 = strc->unk60 + strc2->unk0.qUnk50;
    strc->unk0.qUnk54 = strc->unk64 + strc2->unk0.qUnk54;
    strc->unk70 = strc->unk76 + strc2->unk70;
    screenX = ((int)((strc->unk0.qUnk50) >> 8)) - gCamera.x;
    screenY = ((int)((strc->unk0.qUnk54) >> 8)) - gCamera.y;
    tf->x = screenX;
    tf->y = screenY;
    s->frameFlags &= ~0x1F;
    s->frameFlags |= (u8)(gOamMatrixIndex++ | 0x20);
    UpdateSpriteAnimation(s);
    TransformSprite(s, tf);
    DisplaySprite(s);

    switch (boss->unk6E) {
        case 2:
            sub_804CFE0(&strc->unk76, 0U, 0x100);
            break;
        case 3:
            if (1 & gUnknown_084AE560[strc->unk0.unk0]) {
                var_r0 = &strc->unk76;
                var_r1 = 0x1000;
            } else {
                var_r0 = &strc->unk76;
                var_r1 = 0x2000;
            }
            sub_804CFE0(var_r0, var_r1, 0x200);
            break;
        case 4:
            if (1 & gUnknown_084AE560[strc->unk0.unk0]) {
                u16 v = 0x6000;
                sub_804CFE0(&strc->unk76, v, 0x100);
                if (strc->unk76 == v) {
                    if (strc->unk0.unk4++ >= 0x1E) {
                        boss->unk5C |= 1 << strc->unk0.unk0;
                    }
                }
            }

            break;
        case 5:
            if (1 & gUnknown_084AE560[strc->unk0.unk0]) {
                var_r0_2 = strc->unk0.unk4;
                if (var_r0_2 > 0x10) {
                    var_r0_2 = 0x10;
                }
                var_r2 = (u32)((((s32)((1)*256)) - ((int)(((gSineTable[(((u32)(var_r0_2 << 0x1A) >> 0x16)) + 256])) >> 6))) << 0x10) >> 0xA;
                var_r0_3 = 0x5800;

                sub_804CFE0(&strc->unk76, (var_r0_3 - var_r2), 0x800);
                if (strc->unk0.unk4++ >= 76) {
                    boss->unk5C |= 1 << strc->unk0.unk0;
                }
            }
            break;
        case 6:
            if (!(gUnknown_084AE560[strc->unk0.unk0] & 0x1)) {
                u16 v = 0x6000;
                sub_804CFE0(&strc->unk76, v, 0x100);
                if (strc->unk76 == v) {
                    if (strc->unk0.unk4++ >= 0x1E) {
                        boss->unk5C |= 1 << strc->unk0.unk0;
                    }
                }
            }
            break;
        case 7:
            if (!(1 & gUnknown_084AE560[strc->unk0.unk0])) {
                u16 val;
                var_r0_4 = strc->unk0.unk4;
                if (var_r0_4 > 0x10) {
                    var_r0_4 = 0x10;
                }
                var_r2 = ((u32)((0x100 - ((int)(((gSineTable[(((u32)(var_r0_4 << 0x1A) >> 0x16)) + 256])) >> 6))) << 0x10) >> 0xA);
                var_r0_3 = 0x6000;

                sub_804CFE0(&strc->unk76, (var_r0_3 - var_r2), 0x800);
                if (strc->unk0.unk4++ >= 0x4C) {
                    boss->unk5C |= (1 << strc->unk0.unk0);
                }
            }
            break;
        case 8:
        case 9:
            if (sub_804CFE0(&strc->unk76, 0xF000U, 0x100) != 0) {
                if (boss->qUnk54++ >= 0x3C) {
                    boss->unk5C |= (1 << strc->unk0.unk0);
                    asm("");
                }
            }
            break;
        case 13:
            sub_804CFE0(&strc->unk76, 0xD000U, 0x400);
            return;
        case 14:
            sub_804CFE0(&strc->unk76, 0xF000U, 0x100);
            return;
        default:
            sub_804CFE0(&strc->unk76, 0U, 0x100);
            break;
    }
}



void sub_8051344()
{
    u16 *var_r0_2;
    u16 *var_r0_3;
    s32 var_r0_4;
    s32 var_r1_2;
    u16 var_r1_3;
    u16 *var_r0;
    u16 var_r1;
    u16 v_r1;
    u32 var_r2;

    SomeTaskManager_7C *strc = (void *)((gCurTask)->data);
    SomeTaskManager_7C *strc2 = strc->unk0.unk8;
    SuperEggRobo *boss = gExtraBossTaskData.boss;
    Sprite *s = &strc->unk0.s;
    SpriteTransform *tf = &strc->unk0.transform;
    s32 screenX, screenY;
    strc->unk60 = ((strc->unk68 * ((int)(((gSineTable[(strc2->unk70 >> 6) + 256])) >> 6))) - (((int)(((gSineTable[(strc2->unk70 >> 6)])) >> 6)) * strc->unk6C)) >> 8;
    strc->unk64 = ((strc->unk68 * ((int)(((gSineTable[(strc2->unk70 >> 6)])) >> 6))) + (((int)(((gSineTable[(strc2->unk70 >> 6) + 256])) >> 6)) * strc->unk6C)) >> 8;
    strc->unk0.qUnk50 = strc->unk60 + strc2->unk0.qUnk50;
    strc->unk0.qUnk54 = strc->unk64 + strc2->unk0.qUnk54;
    strc->unk70 = strc->unk76 + strc2->unk70;
    screenX = ((int)((strc->unk0.qUnk50) >> 8)) - gCamera.x;
    screenY = ((int)((strc->unk0.qUnk54) >> 8)) - gCamera.y;
    tf->x = screenX;
    tf->y = screenY;
    s->frameFlags &= ~0x1F;
    s->frameFlags |= (u8)(gOamMatrixIndex++ | 0x20);
    UpdateSpriteAnimation(s);
    TransformSprite(s, tf);
    DisplaySprite(s);

    switch (boss->unk6E) {
        case 2:
            sub_804CFE0((&strc->unk76), 0U, 0x100U);
            break;
        case 3:
            if (1 & gUnknown_084AE560[strc->unk0.unk0]) {
                sub_804CFE0(&strc->unk76, 0x6000, 0x200U);
            } else {
                sub_804CFE0(&strc->unk76, 0x6800, 0x200U);
            }

            break;
        case 4:
            if (1 & gUnknown_084AE560[strc->unk0.unk0]) {
                var_r0_2 = &strc->unk76;
                var_r1_2 = 0x6000;
                sub_804CFE0(var_r0_2, var_r1_2, 0x100U);
            }
            break;
        case 5:
            if (1 & gUnknown_084AE560[strc->unk0.unk0]) {
                var_r0_3 = &strc->unk76;
                var_r1_3 = 0x1000;
                sub_804CFE0(var_r0_3, var_r1_3, 0x400U);
            }
            break;
        case 6:
            if (!(1 & gUnknown_084AE560[strc->unk0.unk0])) {
                var_r0_2 = &strc->unk76;
                var_r1_2 = 0x6000;
                sub_804CFE0(var_r0_2, var_r1_2, 0x100U);
            }
            break;
        case 7:
            if (!(1 & gUnknown_084AE560[strc->unk0.unk0])) {
                var_r0_3 = &strc->unk76;
                var_r1_3 = 0x1000;
                sub_804CFE0(var_r0_3, var_r1_3, 0x400U);
            }
            break;
        case 8:
            var_r0 = &strc->unk76;
            var_r1 = 0x4000;
            sub_804CFE0(var_r0, var_r1, 0x200U);
            break;
        case 9:
            v_r1 = 0x4000;
            v_r1 -= ((u32)(({ gPseudoRandom = (gPseudoRandom * 0x196225) + 0x3C6EF35F; gPseudoRandom; }) << 0xC) >> 0x14);
            sub_804CFE0((&strc->unk76), v_r1, 0x1000U);
            break;
        case 13:
            var_r0_3 = &strc->unk76;
            var_r1_3 = 0x2000;
            sub_804CFE0(var_r0_3, var_r1_3, 0x400U);
            break;
        case 14:
            var_r0_2 = &strc->unk76;
            var_r1_2 = 0x1000;
            sub_804CFE0(var_r0_2, var_r1_2, 0x100U);
            break;
        default:
            sub_804CFE0((&strc->unk76), 0U, 0x100U);
            break;
    }
}



void sub_8051604()
{
    SpriteTransform *sp0;
    u16 mask;
    Sprite *s;
    SpriteTransform *tf;
    SuperEggRobo *boss;
    u16 *var_r0_2;
    s32 var_r0_3;
    s32 var_r0_4;
    s32 var_r1_2;
    u16 *var_r0;
    u16 var_r1;
    SomeTaskManager_7C *strc2;
    u32 var_r2;
    s32 screenX, screenY;

    SomeTaskManager_7C *strc = (void *)((gCurTask)->data);
    strc2 = strc->unk0.unk8;
    boss = gExtraBossTaskData.boss;
    s = &strc->unk0.s;
    tf = &strc->unk0.transform;
    sp0 = tf;
    strc->unk60 = ((strc->unk68 * ((int)(((gSineTable[(strc2->unk70 >> 6) + 256])) >> 6))) - (((int)(((gSineTable[(strc2->unk70 >> 6)])) >> 6)) * strc->unk6C)) >> 8;
    mask = 0x3FF;
    strc->unk64 = ((strc->unk68 * ((int)(((gSineTable[(strc2->unk70 >> 6)])) >> 6))) + (((int)(((gSineTable[(strc2->unk70 >> 6) + 256])) >> 6)) * strc->unk6C)) >> 8;
    strc->unk0.qUnk50 = strc->unk60 + strc2->unk0.qUnk50;
    strc->unk0.qUnk54 = strc->unk64 + strc2->unk0.qUnk54;
    strc->unk70 = strc->unk76 + strc2->unk70;
    screenX = ((int)((strc->unk0.qUnk50) >> 8)) - gCamera.x;
    screenY = ((int)((strc->unk0.qUnk54) >> 8)) - gCamera.y;

    if ((gPlayer.timerInvulnerability == 0) && !(boss->flags58 & 0x80)) {
        s32 temp_r2_5 = ((((u32)strc->unk70 - ((s32)((64)*256))) << 0x10) >> 0x16) & mask;
        sub_800BFEC(s, (strc->unk0.qUnk50 + (-(((int)(((gSineTable[(temp_r2_5) + 256])) >> 6)) * ((s32)((23)*256))) >> 0x10)),
                    (strc->unk0.qUnk54 + ((0 - ((int)(((gSineTable[(temp_r2_5)])) >> 6)) * 0x1700) >> 0x10)), &gPlayer);
    }

    tf->x = screenX;
    tf->y = screenY;
    tf->y = ((((u32)strc->unk70 - ((s32)((64)*256))) << 16) >> 22);
    s->frameFlags &= ~0x1F;
    s->frameFlags |= (u8)(gOamMatrixIndex++ | 0x20);
    UpdateSpriteAnimation(s);
    TransformSprite(s, tf);
    DisplaySprite(s);

    switch (boss->unk6E) {
        case 2:
            var_r0 = &strc->unk76;
            var_r1 = 0x4000;
            sub_804CFE0((u16 *)var_r0, var_r1, 0x200U);
            break;
        case 3:
            sub_804CFE0(&strc->unk76, 0U, 0x200);
            break;
        case 8:
            sub_804CFE0(&strc->unk76, -strc->unk70, 0x200U);
            break;
        case 9:
            sub_804CFE0(&strc->unk76, -strc->unk70, 0x200U);
            if (!(gStageTime & 0x1F)) {
                s32 qX = strc->unk0.qUnk50;
                s32 qY = strc->unk0.qUnk54 + 0x1700;
                bool32 var_r2_2 = 0;
                if (!(({ gPseudoRandom = (gPseudoRandom * 0x196225) + 0x3C6EF35F; gPseudoRandom; }) & 0x30000)) {
                    var_r2_2 = 1;
                }
                sub_804A8A8(qX, qY, var_r2_2);
            }
            break;
        case 13:
            sub_804CFE0((u16 *)(&strc->unk76), 0xB000U, 0x400U);
            break;
        case 14:
            var_r0_2 = &strc->unk76;
            var_r2 = 0x100;
            sub_804CFE0((u16 *)var_r0_2, 0U, var_r2);
            break;
        default:
            sub_804CFE0((u16 *)(&strc->unk76), 0U, 0x100U);
            break;
    }
}


void sub_80518E8()
{
    SomeTaskManager_7C *strc = (void *)((gCurTask)->data);
    SomeTaskManager_7C *strc2 = strc->unk0.unk8;
    Sprite *s = &strc->unk0.s;
    Camera *cam = &gCamera;
    s32 screenX, screenY;

    strc->unk60
        = (s32)((strc->unk68 * ((int)(((gSineTable[(strc2->unk70 >> 6) + 256])) >> 6))) - (((s32)((u16)(gSineTable[(strc2->unk70 >> 6)]) << 0x10) >> 0x16) * strc->unk6C)) >> 8;
    strc->unk64
        = (s32)((strc->unk68 * ((int)(((gSineTable[(strc2->unk70 >> 6)])) >> 6))) + (((s32)((u16)(gSineTable[(strc2->unk70 >> 6) + 256]) << 0x10) >> 0x16) * strc->unk6C)) >> 8;
    strc->unk0.qUnk50 = strc->unk60 + strc2->unk0.qUnk50;
    strc->unk0.qUnk54 = strc->unk64 + strc2->unk0.qUnk54;
    strc->unk70 = strc->unk76 + strc2->unk70;
    screenX = ((int)((strc->unk0.qUnk50) >> 8)) - cam->x;
    screenY = ((int)((strc->unk0.qUnk54) >> 8)) - cam->y;
    s->x = screenX;
    s->y = screenY;
    UpdateSpriteAnimation(s);
    DisplaySprite(s);
    sub_804CFE0(&strc->unk76, 0U, 0x100U);
}


void sub_80519E8()
{
    u16 *var_r0;
    u16 var_r1;
    u16 v_r1;
    u32 var_r2;

    SomeTaskManager_7C *strc = (void *)((gCurTask)->data);
    SomeTaskManager_7C *strc2 = strc->unk0.unk8;
    SuperEggRobo *boss = gExtraBossTaskData.boss;
    Sprite *s = &strc->unk0.s;
    SpriteTransform *tf = &strc->unk0.transform;
    s32 screenX, screenY;
    strc->unk60 = ((strc->unk68 * ((int)(((gSineTable[(strc2->unk70 >> 6) + 256])) >> 6))) - (((int)(((gSineTable[(strc2->unk70 >> 6)])) >> 6)) * strc->unk6C)) >> 8;
    strc->unk64 = ((strc->unk68 * ((int)(((gSineTable[(strc2->unk70 >> 6)])) >> 6))) + (((int)(((gSineTable[(strc2->unk70 >> 6) + 256])) >> 6)) * strc->unk6C)) >> 8;
    strc->unk0.qUnk50 = strc->unk60 + strc2->unk0.qUnk50;
    strc->unk0.qUnk54 = strc->unk64 + strc2->unk0.qUnk54;
    strc->unk70 = strc->unk76 + strc2->unk70;
    screenX = ((int)((strc->unk0.qUnk50) >> 8)) - gCamera.x;
    screenY = ((int)((strc->unk0.qUnk54) >> 8)) - gCamera.y;
    tf->x = screenX;
    tf->y = screenY;
    tf->rotation = strc->unk70 >> 6;
    s->frameFlags &= ~0x1F;
    s->frameFlags |= (u8)(gOamMatrixIndex++ | 0x20);
    UpdateSpriteAnimation(s);
    TransformSprite(s, tf);
    DisplaySprite(s);

    switch (boss->unk6E) {
        case 2:
        case 3:
            sub_804CFE0(&strc->unk76, 0U, 0x200U);
            break;
        case 4:
            sub_804CFE0(&strc->unk76, strc2->unk76, 0x100U);
            break;
        case 5:
            if (!(1 & gUnknown_084AE560[strc->unk0.unk0])) {
                sub_804CFE0(&strc->unk76, 0xE800U, 0x200);
            }
            break;
        case 6:
            break;
        case 7:
            if (1 & gUnknown_084AE560[strc->unk0.unk0]) {
                sub_804CFE0(&strc->unk76, 0xE800U, 0x200);
            }
            break;
        case 0:
            sub_804CFE0(&strc->unk76, 0x1000U, 0x80U);
            break;
        case 13:
            sub_804CFE0(&strc->unk76, 0x4000U, 0x200U);
            if ((boss->unk69 == 0) && (strc->unk76 == 0x4000)) {
                boss->unk5C |= 1 << strc->unk0.unk0;
            }
            break;
        case 14:
            var_r0 = &strc->unk76;
            var_r1 = 0xE800;
            sub_804CFE0(var_r0, var_r1, 0x100U);
            return;
        default:
            var_r0 = &strc->unk76;
            var_r1 = 0;
            sub_804CFE0(var_r0, var_r1, 0x80U);
            break;
    }
}



void sub_8051C44()
{
    u16 *var_r0;
    u16 var_r1;
    u16 v_r1;
    u32 var_r2;

    SomeTaskManager_7C *strc = (void *)((gCurTask)->data);
    SomeTaskManager_7C *strc2 = strc->unk0.unk8;
    SuperEggRobo *boss = gExtraBossTaskData.boss;
    Sprite *s = &strc->unk0.s;
    SpriteTransform *tf = &strc->unk0.transform;
    s32 screenX, screenY;
    strc->unk60 = ((strc->unk68 * ((int)(((gSineTable[(strc2->unk70 >> 6) + 256])) >> 6))) - (((int)(((gSineTable[(strc2->unk70 >> 6)])) >> 6)) * strc->unk6C)) >> 8;
    strc->unk64 = ((strc->unk68 * ((int)(((gSineTable[(strc2->unk70 >> 6)])) >> 6))) + (((int)(((gSineTable[(strc2->unk70 >> 6) + 256])) >> 6)) * strc->unk6C)) >> 8;
    strc->unk0.qUnk50 = strc->unk60 + strc2->unk0.qUnk50;
    strc->unk0.qUnk54 = strc->unk64 + strc2->unk0.qUnk54;
    strc->unk70 = strc->unk76 + strc2->unk70;
    screenX = ((int)((strc->unk0.qUnk50) >> 8)) - gCamera.x;
    screenY = ((int)((strc->unk0.qUnk54) >> 8)) - gCamera.y;
    tf->x = screenX;
    tf->y = screenY;
    tf->rotation = strc->unk70 >> 6;
    s->frameFlags &= ~0x1F;
    s->frameFlags |= (u8)(gOamMatrixIndex++ | 0x20);
    UpdateSpriteAnimation(s);
    TransformSprite(s, tf);
    DisplaySprite(s);

    switch (boss->unk6E) {
        case 2:
            sub_804CFE0(&strc->unk76, 0U, 0x200U);
            break;
        case 8:
        case 9:
            sub_804CFE0(&strc->unk76, 0, 0x200U);
            break;
        case 0:
            sub_804CFE0(&strc->unk76, 0x2000U, 0x80U);
            break;
        case 1:
            sub_804CFE0(&strc->unk76, 0xE000U, 0x80U);
            break;
        case 13:
            sub_804CFE0(&strc->unk76, 0, 0x400);
            break;
        case 14:
            sub_804CFE0(&strc->unk76, 0x1800, 0x100U);
            break;
        default:
            sub_804CFE0(&strc->unk76, 0x2000, 0x100U);
            break;
    }
}



void sub_8051E38()
{
    SomeTaskManager_7C *strc = (void *)((gCurTask)->data);
    SomeTaskManager_7C *strc2 = strc->unk0.unk8;
    SuperEggRobo *boss = gExtraBossTaskData.boss;
    Sprite *s = &strc->unk0.s;
    SpriteTransform *tf = &strc->unk0.transform;
    s32 screenX, screenY;
    strc->unk60 = ((strc->unk68 * ((int)(((gSineTable[(strc2->unk70 >> 6) + 256])) >> 6))) - (((int)(((gSineTable[(strc2->unk70 >> 6)])) >> 6)) * strc->unk6C)) >> 8;
    strc->unk64 = ((strc->unk68 * ((int)(((gSineTable[(strc2->unk70 >> 6)])) >> 6))) + (((int)(((gSineTable[(strc2->unk70 >> 6) + 256])) >> 6)) * strc->unk6C)) >> 8;
    strc->unk0.qUnk50 = strc->unk60 + strc2->unk0.qUnk50;
    strc->unk0.qUnk54 = strc->unk64 + strc2->unk0.qUnk54;
    strc->unk70 = strc->unk76 + strc2->unk70;
    screenX = ((int)((strc->unk0.qUnk50) >> 8)) - gCamera.x;
    screenY = ((int)((strc->unk0.qUnk54) >> 8)) - gCamera.y;
    tf->x = screenX;
    tf->y = screenY;
    tf->rotation = strc->unk70 >> 6;
    s->frameFlags &= ~0x1F;
    s->frameFlags |= (u8)(gOamMatrixIndex++ | 0x20);
    UpdateSpriteAnimation(s);
    TransformSprite(s, tf);
    DisplaySprite(s);

    switch (boss->unk6E) {
        case 2:
        case 3:
            break;
        case 4:
        case 5:
        case 6:
        case 7:
            if (strc->unk70 < 0x1000) {
                sub_804CFE0(&strc->unk76, -strc->unk70, 0x100U);
            } else {
                sub_804CFE0(&strc->unk76, 0, 0x100U);
            }
            break;
        case 0:
        case 11:
        case 12:
            sub_804CFE0(&strc->unk76, 0xE000U, 0x100U);
            break;
        case 13:
            sub_804CFE0(&strc->unk76, 0xF800, 0x400);
            break;
        case 14:
            sub_804CFE0(&strc->unk76, 0, 0x100U);
            break;
        default:
            sub_804CFE0(&strc->unk76, 0, 0x100U);
            break;
    }
}


void sub_805202C()
{
    u16 *temp_r1;
    s32 screenX, screenY;

    SomeTaskManager_7C *strc = (void *)((gCurTask)->data);
    SomeTaskManager_7C *strc2 = strc->unk0.unk8;
    Sprite *s = &strc->unk0.s;
    Camera *cam = &gCamera;
    strc->unk0.qUnk50 = strc->unk60 + strc2->unk0.qUnk50;
    strc->unk0.qUnk54 = strc->unk64 + strc2->unk0.qUnk54;
    strc->unk70 = strc->unk76 + strc2->unk70;
    screenX = ((s32)strc->unk0.qUnk50 >> 8) - cam->x;
    screenY = ((s32)strc->unk0.qUnk54 >> 8) - cam->y;
    s->x = screenX;
    s->y = screenY;
    UpdateSpriteAnimation(s);
    DisplaySprite(s);
    sub_804CFE0(&strc->unk76, 0U, 0x100U);
}

bool32 sub_80520B8(SuperEggRobo *boss)
{
    bool32 result = 0;
    s32 temp_r0;
    NutsAndBolts *bolts;
    s32 temp_r3;

    if (!(0xF & gStageTime) || ((boss->unk6E == 0xE) && !(gStageTime & 7))) {
        s32 a, b;
        temp_r0 = (((u32)({ gPseudoRandom = (gPseudoRandom * 0x196225) + 0x3C6EF35F; gPseudoRandom; }) << 10) >> 18) - ((s32)((32)*256));
        temp_r3 = (((u32)({ gPseudoRandom = (gPseudoRandom * 0x196225) + 0x3C6EF35F; gPseudoRandom; }) << 9) >> 17) - ((s32)((64)*256));
        a = boss->qUnk44 + ((s32)((boss->unk60)*256)) + temp_r0;
        b = boss->qUnk48 + ((s32)((boss->qUnk64)*256)) + temp_r3;
        bolts = (void *)((sub_8017540(a, b))->data);
        bolts->s.frameFlags = 0x1000;
        bolts->s.oamFlags = 0x380;

        result = 1;
    }

    return result;
}

bool32 sub_8052150(s32 arg0, s32 arg1, u16 arg2, SomeTaskManager_7C *arg3)
{
    int_vcount sp0[8];
    s32 sp8;
    s32 temp_r4_2;
    s32 temp_r2_2;
    s32 temp_r5;
    s32 temp_r6;
    s32 var_r0;
    s32 var_r1;
    s32 var_r2;
    s32 var_r3;
    s32 var_r4;
    s32 var_r4_2;
    s32 var_r5;
    s32 var_r6;
    s32 var_r7;
    s32 var_r8;
    s32 var_sb;
    s32 var_sl;

    s32 v;

    temp_r5 = ((int)(((gSineTable[(arg3->unk70 >> 6) + 256])) >> 6));
    temp_r6 = ((int)(((gSineTable[(arg3->unk70 >> 6)])) >> 6));
    v = (temp_r5 * 0xF00);
    var_r7 = arg0 + (((temp_r6 << 0xC) - v) >> 0x10);
    v = (temp_r6 * 0xF00);
    var_r5 = arg1 + (((0 - (temp_r5 << 0xC)) - v) >> 0x10);
    var_r6 = var_r5 + 3;
    var_sl = 0;
    sp8 = 0;
    temp_r4_2 = (s16)({((((int)(((gSineTable[(arg2 >> 6) + 256])) >> 6))) != 0) ? ((s32)(((int)(((gSineTable[(arg2 >> 6)])) >> 6)) << 8) / (s32)(((int)(((gSineTable[(arg2 >> 6) + 256])) >> 6)))) : 0;});
    temp_r2_2 = ({((temp_r4_2) != 0) ? ((s32)(0x10000) / (s32)(temp_r4_2)) : 0;});
    var_r1 = var_r5 - ((var_r7 * temp_r4_2) >> 8);
    var_r8 = var_r1 + 3;
    if (var_r7 > (320 - 1)) {
        var_r0 = ((int)((temp_r4_2 * (320 - var_r7)) >> 8));
        var_r5 += var_r0;
        var_r6 += var_r0;
        var_r7 = (320 - 1);
    }

    if (var_r5 >= (240 - 1)) {
        return 0;
    }

    {
        var_sb = var_r7;
        var_r4 = var_r7;
        if (var_r5 < 0) {
            var_r4 = var_r7 - ((var_r5 * temp_r2_2) >> 8);
            var_r5 = 0;
            if (var_r6 < 0) {
                var_sb = var_r7 - ((var_r6 * temp_r2_2) >> 8);
                var_r6 = 0;
            }
        }

        var_r5 = ({ s32 clamped; if ((var_r5) >= (0)) { clamped = (var_r5) > ((240 - 1)) ? ((240 - 1)) : (var_r5); } else { clamped = (0); } clamped; });
        var_r6 = ({ s32 clamped; if ((var_r6) >= (0)) { clamped = (var_r6) > ((240 - 1)) ? ((240 - 1)) : (var_r6); } else { clamped = (0); } clamped; });

        if (var_r8 > (240 - 1)) {
            s32 r8 = (240 - var_r8);
            sp8 += (r8 * temp_r2_2) >> 8;
            var_r8 = (240 - 1);
            if (var_r1 > (240 - 1)) {
                var_sl += (temp_r2_2 * (240 - var_r1)) >> 8;
                var_r1 = (240 - 1);
            }
        }
        if ((var_sl >= (320 - 1)) || (var_r5 >= (240 - 1)) || (var_r7 == var_sl) || (var_r5 == var_r1)
            || (var_r6 == var_r8)) {
            return 0;
        }

        var_sl = ({ s32 clamped; if ((var_sl) >= (0)) { clamped = (var_sl) > (320 - 1) ? (320 - 1) : (var_sl); } else { clamped = (0); } clamped; });
        var_r2 = ({ s32 clamped; if ((sp8) >= (0)) { clamped = (sp8) > ((320 - 1)) ? ((320 - 1)) : (sp8); } else { clamped = (0); } clamped; });

        sp0[0] = var_r4;
        sp0[1] = var_r5;
        sp0[2] = var_sl;
        sp0[3] = var_r1;
        sp0[4] = var_sb;
        sp0[5] = var_r6;
        sp0[6] = var_r2;
        sp0[7] = var_r8;
        sa2__sub_8006DB4(0U, (TriParam1 *)&sp0, 0, var_r7 + 1);

        if (var_r5 >= 0) {
            var_r4_2 = var_r5;
            if (var_r4_2 > (240 - 1)) {
                var_r4_2 = (240 - 1);
            }
        } else {
            var_r4_2 = 0;
        }

        var_r3 = ({ s32 clamped; if ((var_r8) >= (0)) { clamped = (var_r8) > ((240 - 1)) ? ((240 - 1)) : (var_r8); } else { clamped = (0); } clamped; });

        gDispCnt |= 0x2000;
        gWinRegs[2] = (var_r4_2 << 8) | var_r3;
        gWinRegs[5] = 0x1F1F;
        gWinRegs[4] = 0x3F3F;
        gBldRegs.bldCnt = 0x3FBF;
        gBldRegs.bldY = 0xE;
    }

    return 1;
}

void CreateEntity_SuperEggRobot(MapEntity *me, u16 regionX, u16 regionY, u8 id)
{
    if ((!(((gGameMode == 0) || (gGameMode == 1))))) {
        { s32 negativeTwo; s16 forMatching; negativeTwo = (-2); forMatching = negativeTwo; me->x = forMatching; };
        return;
    } else {
        struct Task *t = TaskCreate(Task_SuperEggRobotInit, sizeof(SuperEggRobo), 0x2000, 0, ((void*)0));
        SuperEggRobo *boss = (void *)((t)->data);

        boss->base.regionX = regionX;
        boss->base.regionY = regionY;
        boss->base.me = me;
        boss->base.meX = me->x;
        boss->base.id = id;
        { s32 negativeTwo; s16 forMatching; negativeTwo = (-2); forMatching = negativeTwo; me->x = forMatching; };

        sub_80504DC(boss, me);

        gExtraBossTaskData.boss = boss;
    }
}

static void TaskDestructor_unused(struct Task *t)
{
    SuperEggRobo *boss = (void *)((t)->data);
    VramFree(boss->unusedSprite.graphics.dest);
}

void sub_80523D4(SuperEggRobo *boss)
{
    s32 temp_r0;

    temp_r0 = sub_8050194(boss);
    if (temp_r0 <= 3) {
        boss->qUnk4E = ((s32)((temp_r0)*256));
    } else {
        boss->flags58 |= 2;
    }
}

void sub_80523F8(SuperEggRobo *boss)
{
    s32 temp_r0;

    temp_r0 = sub_8050194(boss);
    if (temp_r0 < 0) {
        boss->qUnk48 += ((s32)((temp_r0)*256));
        boss->flags58 &= ~2;
        boss->qUnk4E = 0;
    }
}

void sub_8052424(SuperEggRobo *boss)
{
    boss->qUnk44 += boss->qUnk4C;
    boss->qUnk48 += boss->qUnk4E;
    boss->qUnk4C += boss->qUnk50;
    boss->qUnk4E += boss->qUnk52;
}

void sub_8052468(SuperEggRobo *boss) { boss->qUnk4E += ((s32)((16. / 256.)*256)); }

SomeTaskManager_7C *sub_8052474(SomeTaskManager_7C *strc, s32 param1, s32 param2, s32 param3)
{
    SomeTaskManager_7C *strc2;
    GfxInfo gfx;
    struct Task *t;
    Sprite *s;

    gfx.tileInfo.anim = 665;
    gfx.tileInfo.variant = 0;
    gfx.vram = VramMalloc(((64 / 8) * (64 / 8)));
    t = CreateSomeTaskManager_7C_Task(&gfx, sub_8050A88, TaskDestructor_SomeTaskManager_60_Common);
    strc2 = (void *)((t)->data);
    strc2->unk0.unk8 = strc;
    strc2->unk68 = param1;
    strc2->unk6C = param2;
    strc2->unk72 = 0xFFC0;
    strc2->unk0.s.oamFlags = (param3 << 6);
    strc2->unk0.s.frameFlags = 0x2000;
    return strc2;
}

SomeTaskManager_7C *sub_80524F0(SomeTaskManager_7C *strc, s32 param1, s32 param2, s32 param3)
{
    SomeTaskManager_7C *strc2;
    GfxInfo gfx;
    struct Task *t;
    Sprite *s;

    gfx.tileInfo.anim = 674;
    gfx.tileInfo.variant = 0;
    gfx.vram = (void *)(&VRAM[0x10000] + 0x2E00);
    t = CreateSomeTaskManager_7C_Task(&gfx, sub_8050FB4, ((void*)0));
    strc2 = (void *)((t)->data);
    strc2->unk0.unk8 = strc;
    strc2->unk68 = param1;
    strc2->unk6C = param2;
    strc2->unk76 = 0;
    strc2->unk72 = 0x80;
    strc2->unk0.s.oamFlags = (param3 << 6);
    strc2->unk0.s.frameFlags = 0x2040;
    strc2->unk0.transform.qScaleX = ((s32)((1.5)*256));
    strc2->unk0.transform.qScaleY = ((s32)((1.5)*256));
    return strc2;
}

SomeTaskManager_7C *sub_8052578(SomeTaskManager_7C *strc, s32 param1, s32 param2, s32 param3)
{
    SomeTaskManager_7C *strc2;
    GfxInfo gfx;
    struct Task *t;
    Sprite *s;

    gfx.tileInfo.anim = 674;
    gfx.tileInfo.variant = 0;
    gfx.vram = (void *)(&VRAM[0x10000] + 0x2E00);
    t = CreateSomeTaskManager_7C_Task(&gfx, sub_80518E8, ((void*)0));
    strc2 = (void *)((t)->data);
    strc2->unk0.unk8 = strc;
    strc2->unk68 = param1;
    strc2->unk6C = param2;
    strc2->unk0.s.oamFlags = (param3 << 6);
    strc2->unk0.s.frameFlags = 0x2000;
    return strc2;
}

SomeTaskManager_7C *sub_80525E0(SomeTaskManager_7C *strc, s32 param1, s32 param2, s32 param3)
{
    SomeTaskManager_7C *strc2;
    GfxInfo gfx;
    struct Task *t;
    Sprite *s;

    gfx.tileInfo.anim = 674;
    gfx.tileInfo.variant = 0;
    gfx.vram = (void *)(&VRAM[0x10000] + 0x2E00);
    t = CreateSomeTaskManager_7C_Task(&gfx, sub_8051344, ((void*)0));
    strc2 = (void *)((t)->data);
    strc2->unk0.unk8 = strc;
    strc2->unk72 = 0x80;
    strc2->unk68 = param1;
    strc2->unk6C = param2;
    strc2->unk0.s.oamFlags = (param3 << 6);
    strc2->unk0.s.frameFlags = 0x2040;
    strc2->unk0.transform.qScaleX = ((s32)((1.25)*256));
    strc2->unk0.transform.qScaleY = ((s32)((1.25)*256));
    return strc2;
}

SomeTaskManager_7C *sub_805265C(SomeTaskManager_7C *strc, s32 param1, s32 param2, s32 param3)
{
    SomeTaskManager_7C *strc2;
    GfxInfo gfx;
    struct Task *t;
    Sprite *s;

    gfx.tileInfo.anim = 673;
    gfx.tileInfo.variant = 0;
    gfx.vram = (void *)(&VRAM[0x10000] + 0x2600);
    t = CreateSomeTaskManager_7C_Task(&gfx, sub_8051604, ((void*)0));
    strc2 = (void *)((t)->data);
    strc2->unk0.unk8 = strc;
    strc2->unk68 = param1;
    strc2->unk6C = param2;
    strc2->unk0.s.oamFlags = (param3 << 6);
    strc2->unk0.s.frameFlags = 0x2000;
    return strc2;
}

SomeTaskManager_7C *sub_80526C4(SomeTaskManager_7C *strc, s32 param1, s32 param2, GfxInfo *gfx, s32 param4)
{
    SomeTaskManager_7C *strc2;
    struct Task *t;
    Sprite *s;

    t = CreateSomeTaskManager_7C_Task(gfx, sub_80519E8, TaskDestructor_SomeTaskManager_60_Common);
    strc2 = (void *)((t)->data);
    strc2->unk0.unk8 = strc;
    strc2->unk68 = param1;
    strc2->unk6C = param2;
    strc2->unk76 = 0;
    strc2->unk72 = 0x100;
    strc2->unk0.s.oamFlags = (param4 << 6);
    strc2->unk0.s.frameFlags = 0x2000;
    return strc2;
}

SomeTaskManager_7C *sub_8052724(SomeTaskManager_7C *strc, s32 param1, s32 param2, GfxInfo *gfx, s32 param4)
{
    SomeTaskManager_7C *strc2;
    struct Task *t;
    Sprite *s;

    t = CreateSomeTaskManager_7C_Task(gfx, sub_805202C, TaskDestructor_SomeTaskManager_60_Common);
    strc2 = (void *)((t)->data);
    strc2->unk0.unk8 = strc;
    strc2->unk68 = param1;
    strc2->unk6C = param2;
    strc2->unk76 = 0;
    strc2->unk72 = 0;
    strc2->unk0.s.oamFlags = (param4 << 6);
    strc2->unk0.s.frameFlags = 0x2000;
    return strc2;
}

SomeTaskManager_7C *sub_8052780(SomeTaskManager_7C *strc, s32 param1, s32 param2, GfxInfo *gfx, s32 param4)
{
    SomeTaskManager_7C *strc2;
    struct Task *t;
    Sprite *s;

    t = CreateSomeTaskManager_7C_Task(gfx, sub_8051C44, TaskDestructor_SomeTaskManager_60_Common);
    strc2 = (void *)((t)->data);
    strc2->unk0.unk8 = strc;
    strc2->unk68 = param1;
    strc2->unk6C = param2;
    strc2->unk76 = 0;
    strc2->unk72 = 0x80;
    strc2->unk0.s.oamFlags = (param4 << 6);
    strc2->unk0.s.frameFlags = 0x2000;
    return strc2;
}

SomeTaskManager_7C *sub_80527DC(SomeTaskManager_7C *strc, s32 param1, s32 param2, GfxInfo *gfx, s32 param4)
{
    SomeTaskManager_7C *strc2;
    struct Task *t;
    Sprite *s;

    t = CreateSomeTaskManager_7C_Task(gfx, sub_8051E38, TaskDestructor_SomeTaskManager_60_Common);
    strc2 = (void *)((t)->data);
    strc2->unk0.unk8 = strc;
    strc2->unk68 = param1;
    strc2->unk6C = param2;
    strc2->unk76 = 0;
    strc2->unk72 = 0x80;
    strc2->unk0.s.oamFlags = (param4 << 6);
    strc2->unk0.s.frameFlags = 0x2000;
    return strc2;
}



SomeTaskManager_7C *sub_8052838(SuperEggRobo *boss, s32 param1, s32 param2, s32 param3)
{
    SomeTaskManager_7C *strc2;
    GfxInfo gfx;
    struct Task *t;
    Sprite *s;

    gfx.tileInfo.anim = 666;
    gfx.tileInfo.variant = 0;
    gfx.vram = ((void *)&VRAM[0] + 0x4040);
    t = CreateSomeTaskManager_7C_Task(&gfx, sub_8050888, ((void*)0));
    strc2 = (void *)((t)->data);
    strc2->unk0.unk8 = (void *)boss;
    strc2->unk60 = param1;
    strc2->unk64 = param2;
    strc2->unk72 = 0;
    strc2->unk0.s.oamFlags = (param3 << 6);
    strc2->unk0.s.frameFlags = 0x2000;
    return strc2;
}
