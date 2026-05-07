# 1 "/home/awaszczak/git/sa2/sa1/../src/game/shared/stage/player.c"
# 1 "<built-in>" 1
# 1 "<built-in>" 3
# 384 "<built-in>" 3
# 1 "<command line>" 1
# 1 "<built-in>" 2
# 1 "/home/awaszczak/git/sa2/sa1/../src/game/shared/stage/player.c" 2
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
# 2 "/home/awaszczak/git/sa2/sa1/../src/game/shared/stage/player.c" 2
# 1 "/home/awaszczak/git/sa2/sa1/../include/trig.h" 1





extern const s16 gSineTable[1280];
# 3 "/home/awaszczak/git/sa2/sa1/../src/game/shared/stage/player.c" 2
# 1 "/home/awaszczak/git/sa2/sa1/../include/flags.h" 1
# 23 "/home/awaszczak/git/sa2/sa1/../include/flags.h"
extern u32 gFlags;
# 4 "/home/awaszczak/git/sa2/sa1/../src/game/shared/stage/player.c" 2
# 1 "/home/awaszczak/git/sa2/sa1/../include/malloc_vram.h" 1
# 24 "/home/awaszczak/git/sa2/sa1/../include/malloc_vram.h"
void *VramMalloc(u32);
void VramResetHeapState(void);
void VramFree(void *);
# 5 "/home/awaszczak/git/sa2/sa1/../src/game/shared/stage/player.c" 2

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
# 7 "/home/awaszczak/git/sa2/sa1/../src/game/shared/stage/player.c" 2

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
# 6 "/home/awaszczak/git/sa2/sa1/../include/game/globals.h" 2
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
# 9 "/home/awaszczak/git/sa2/sa1/../src/game/shared/stage/player.c" 2

# 1 "/home/awaszczak/git/sa2/sa1/../include/game/shared/stage/mp_player.h" 1






typedef struct {


    Sprite s;
    Hitbox reserved;

    SpriteTransform transform;
    s32 unk44;
    s32 unk48;
    u32 unk4C;

    Vec2_16 pos;




    u16 unk54;
    u8 unk56;
    u8 unk57;
    s8 unk58[4];
    u32 unk5C;
    u8 unk60;
    u8 unk61;
    u16 unk62;
    u8 unk64;
    s16 unk66;
    s16 unk68;
    u16 unk6A;
} MultiplayerPlayer;

void CreateMultiplayerPlayer(u8);

void sub_8018818(void);

extern bool8 gShouldSpawnMPAttack2Effect;
# 11 "/home/awaszczak/git/sa2/sa1/../src/game/shared/stage/player.c" 2
# 1 "/home/awaszczak/git/sa2/sa1/../include/game/shared/stage/music_manager.h" 1





void CreateStageMusicManager(void);

extern const u16 gLevelSongs[];
# 12 "/home/awaszczak/git/sa2/sa1/../src/game/shared/stage/player.c" 2
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
# 13 "/home/awaszczak/git/sa2/sa1/../src/game/shared/stage/player.c" 2
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
# 14 "/home/awaszczak/git/sa2/sa1/../src/game/shared/stage/player.c" 2
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
# 15 "/home/awaszczak/git/sa2/sa1/../src/game/shared/stage/player.c" 2
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
# 16 "/home/awaszczak/git/sa2/sa1/../src/game/shared/stage/player.c" 2
# 1 "/home/awaszczak/git/sa2/sa1/../include/game/shared/stage/dust_effect_spindash.h" 1



struct Task *CreateSpindashDustEffect();
# 17 "/home/awaszczak/git/sa2/sa1/../src/game/shared/stage/player.c" 2
# 1 "/home/awaszczak/git/sa2/sa1/../include/game/shared/stage/item_tasks.h" 1






extern struct Task *CreateItemTask_Shield_Normal(s8);
extern struct Task *CreateItemTask_Invincibility(s8);
extern struct Task *CreateItemTask_Shield_Magnetic(s8);
extern struct Task *CreateItemTask_Confusion(s8);
# 18 "/home/awaszczak/git/sa2/sa1/../src/game/shared/stage/player.c" 2
# 1 "/home/awaszczak/git/sa2/sa1/../include/game/shared/stage/mp_sprite_task.h" 1






typedef struct {
               s32 x;
               s32 y;
               s16 unk8;
               s16 unkA;
               u8 fillerC[0x4];
               s16 unk10;
               u16 unk12;
               u16 unk14;

               u8 mpPlayerID;





               Sprite s;
               SpriteTransform transform;
} MultiplayerSpriteTask;

extern struct Task *CreateMultiplayerSpriteTask(s16, s16, u8, s8, TaskMain, TaskDestructor);
extern void TaskDestructor_MultiplayerSpriteTask(struct Task *);

void CreateGrindEffect2(void);

struct Task *CreateStageGoalBonusPointsAnim(s32, s32, u16);
void Task_UpdateMpSpriteTaskSprite(void);
# 19 "/home/awaszczak/git/sa2/sa1/../src/game/shared/stage/player.c" 2
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
# 20 "/home/awaszczak/git/sa2/sa1/../src/game/shared/stage/player.c" 2
# 1 "/home/awaszczak/git/sa2/sa1/../include/game/shared/stage/stage.h" 1
# 14 "/home/awaszczak/git/sa2/sa1/../include/game/shared/stage/stage.h"
void ApplyGameStageSettingsAndStart(void);




void CreateGameStage(void);
void GoToNextLevel(void);

void HandleLifeLost(void);
void HandleDeath(void);

extern struct Task *gGameStageTask;
# 21 "/home/awaszczak/git/sa2/sa1/../src/game/shared/stage/player.c" 2
# 1 "/home/awaszczak/git/sa2/sa1/../include/game/shared/stage/underwater_effects.h" 1






extern void InitWaterPalettes(void);

struct Task *SpawnDrowningCountdownNum(Player *p, s32 countdown);
struct Task *SpawnAirBubbles(s32 p0, s32 p1, s32 p2, s32 p3);
struct Task *SpawnBubblesAfterDrowning(Player *p);
bool32 RandomlySpawnAirBubbles(Player *p);

extern u8 gSmallAirBubbleCount;
# 22 "/home/awaszczak/git/sa2/sa1/../src/game/shared/stage/player.c" 2
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
# 23 "/home/awaszczak/git/sa2/sa1/../src/game/shared/stage/player.c" 2
# 1 "/home/awaszczak/git/sa2/sa1/../include/game/shared/stage/amy_attack_heart_effect.h" 1
# 12 "/home/awaszczak/git/sa2/sa1/../include/game/shared/stage/amy_attack_heart_effect.h"
extern void CreateAmyAttackHeartEffect(void);
# 24 "/home/awaszczak/git/sa2/sa1/../src/game/shared/stage/player.c" 2

# 1 "/home/awaszczak/git/sa2/sa1/../include/game/shared/parameters/bosses.h" 1
# 26 "/home/awaszczak/git/sa2/sa1/../src/game/shared/stage/player.c" 2



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
# 30 "/home/awaszczak/git/sa2/sa1/../src/game/shared/stage/player.c" 2
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
# 31 "/home/awaszczak/git/sa2/sa1/../src/game/shared/stage/player.c" 2
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
# 32 "/home/awaszczak/git/sa2/sa1/../src/game/shared/stage/player.c" 2
# 1 "/home/awaszczak/git/sa2/sa1/../include/game/sa1/stage/player_sonic.h" 1



void Player_Sonic_InitInstaShield(Player *p);
# 33 "/home/awaszczak/git/sa2/sa1/../src/game/shared/stage/player.c" 2
# 1 "/home/awaszczak/git/sa2/sa1/../include/game/sa1/stage/player_tails.h" 1



void Player_Tails_InitFlying(Player *p);
struct Task *Player_Tails_InitGfxMarbleTrack(Player *p);
# 34 "/home/awaszczak/git/sa2/sa1/../src/game/shared/stage/player.c" 2
# 1 "/home/awaszczak/git/sa2/sa1/../include/game/sa1/stage/player_super_sonic.h" 1



# 1 "/home/awaszczak/git/sa2/sa1/../include/game/sa1/stage/enemies/boss_xtra_super_egg_robo.h" 1




# 1 "/home/awaszczak/git/sa2/sa1/../include/game/shared/stage/entity.h" 1








# 1 "/home/awaszczak/git/sa2/sa1/../include/game/shared/stage/collision.h" 1
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
# 6 "/home/awaszczak/git/sa2/sa1/../include/game/sa1/stage/enemies/boss_xtra_super_egg_robo.h" 2
# 15 "/home/awaszczak/git/sa2/sa1/../include/game/sa1/stage/enemies/boss_xtra_super_egg_robo.h"
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
# 5 "/home/awaszczak/git/sa2/sa1/../include/game/sa1/stage/player_super_sonic.h" 2

void Task_8049898(void);
void sub_804A1B8(Player *p);
# 35 "/home/awaszczak/git/sa2/sa1/../src/game/shared/stage/player.c" 2
# 1 "/home/awaszczak/git/sa2/sa1/../include/game/sa1/stage/spawn_positions.h" 1






extern const s16 gSpawnPositions[14][2];
extern const s16 gSpawnPositions_Modes_4_and_5[4][4][2];
extern const Vec2_32 gCheckpointPositions[];


extern s16 sa2__gUnknown_080D650C[][2];
extern s16 sa2__gUnknown_080D661C[][2];
# 36 "/home/awaszczak/git/sa2/sa1/../src/game/shared/stage/player.c" 2

# 1 "/home/awaszczak/git/sa2/sa1/../include/constants/sa1/animations.h" 1






# 1 "/home/awaszczak/git/sa2/sa1/../include/constants/sa1/anim_sizes.h" 1
# 8 "/home/awaszczak/git/sa2/sa1/../include/constants/sa1/animations.h" 2
# 38 "/home/awaszczak/git/sa2/sa1/../src/game/shared/stage/player.c" 2
# 1 "/home/awaszczak/git/sa2/sa1/../include/constants/sa1/char_states.h" 1
# 39 "/home/awaszczak/git/sa2/sa1/../src/game/shared/stage/player.c" 2
# 1 "/home/awaszczak/git/sa2/sa1/../include/constants/sa1/songs.h" 1
# 40 "/home/awaszczak/git/sa2/sa1/../src/game/shared/stage/player.c" 2
# 1 "/home/awaszczak/git/sa2/sa1/../include/constants/sa1/vram_hardcoded.h" 1
# 41 "/home/awaszczak/git/sa2/sa1/../src/game/shared/stage/player.c" 2
# 280 "/home/awaszczak/git/sa2/sa1/../src/game/shared/stage/player.c"
Player __attribute__((aligned(8))) gPlayer = {};

Player __attribute__((aligned(8))) gPartner = {};




PlayerSpriteInfo __attribute__((aligned(16))) gPartnerLimbsPSI = {};


PlayerSpriteInfo __attribute__((aligned(16))) gPlayerLimbsPSI = {};

PlayerSpriteInfo __attribute__((aligned(16))) gPlayerBodyPSI = {};

PlayerSpriteInfo __attribute__((aligned(16))) gPartnerBodyPSI = {};


void Task_PlayerMain(void);
void AllocateCharacterStageGfx(Player *p, PlayerSpriteInfo *param2);
void AllocateCharacterMidAirGfx(Player *p, PlayerSpriteInfo *param2);
void TaskDestructor_Player(struct Task *);

void sa2__sub_802486C(Player *p, PlayerSpriteInfo *psi);
void sa2__sub_8024B10(Player *p, PlayerSpriteInfo *psi);
s32 sa2__sub_8029BB8(Player *p, u8 *p1, s32 *out);
void sa2__sub_8024F74(Player *p, PlayerSpriteInfo *psi);

void Player_HandleInputs(Player *p);


void Player_80447D8(Player *p);

void Player_Sonic_80473AC(Player *p);
void Player_Tails_8047BA0(Player *p);
void Player_Knuckles_8049000(Player *p);
void Player_Amy_80497AC(Player *p);

void Player_Knuckles_InitGlide(Player *p);

void Task_8045AD8(void);
void Task_8045B38(void);
void sub_8045DF0(Player *p);
# 396 "/home/awaszczak/git/sa2/sa1/../src/game/shared/stage/player.c"
extern s16 gUnknown_084AE188[9];
extern s16 gUnknown_084AE19A[9];
# 666 "/home/awaszczak/git/sa2/sa1/../src/game/shared/stage/player.c"
void CreatePlayer(u32 __attribute__((unused)) characterId, u32 levelId, Player *player)
{
    struct Task *t;
    player_0_Task *gt;

    Player *p = player;
    s32 playerID = p->playerID;


    if (playerID == 0)

    {

        if (((levelId) == ((6)*(2)) + (1))) {
            p->spriteTask = TaskCreate(Task_8049898, sizeof(MaybeSuperSonic), 0x3000, 0, TaskDestructor_Player);
        } else

        {
            p->spriteTask = TaskCreate(Task_PlayerMain, sizeof(player_0_Task), 0x3000, 0, TaskDestructor_Player);
        }


        gt = (void *)((p->spriteTask)->data);
        gt->pid = playerID;
        gt->unk4 = 0;
# 702 "/home/awaszczak/git/sa2/sa1/../src/game/shared/stage/player.c"
        InitializePlayer(p);





        CreateBrakingDustEffectRelatedTask();
        InitPlayerHitRingsScatter();


        if ((gInputRecorder.mode == 1)) {
            InputRecorderLoadTape();
            gInputRecorder.mode = 1;
        } else if (gInputRecorder.mode == 2) {
            InputRecorderLoadTape();
            gInputRecorder.mode = 2;
        }

    }

    else {

        p->spriteTask = TaskCreate(Task_8045B38, sizeof(player_0_Task), 0x3001, 0, TaskDestructor_Player);
        gt = (player_0_Task *)(void *)((p->spriteTask)->data);
        gt->pid = playerID;
        gt->unk4 = 0;
        InitializePlayer(player);
    }
# 741 "/home/awaszczak/git/sa2/sa1/../src/game/shared/stage/player.c"
    if (p->spriteInfoBody != ((void*)0))

        AllocateCharacterStageGfx(p, p->spriteInfoBody);

    if (p->spriteInfoLimbs != ((void*)0))

        AllocateCharacterMidAirGfx(p, p->spriteInfoLimbs);


    if (((levelId) == ((6)*(2)) + (1))) {
        sub_804A1B8(p);
    }

}


void AllocateCharacterStageGfx(Player *p, PlayerSpriteInfo *psi)
{
    s32 playerID = p->playerID;
    Sprite *s = &psi->s;

    if (playerID == 0) {
        s->graphics.dest = (void *)&VRAM[0x10000];
    } else {


        s->graphics.dest = VramMalloc(((64 / 8) * (64 / 8)));



    }

    s->graphics.size = 0;
    s->graphics.anim = p->anim;
    s->variant = p->variant;
    s->prevVariant = -1;
    s->x = ((int)((p->qWorldX) >> 8));
    s->y = ((int)((p->qWorldY) >> 8));

    s->oamFlags = ((16) << 6);
    s->qAnimDelay = 0;
    s->animSpeed = ((int)((float)(1.0)*0x10));
    s->palId = 0;
# 796 "/home/awaszczak/git/sa2/sa1/../src/game/shared/stage/player.c"
    s->frameFlags = ((2) << (12));


    if ((!(((gGameMode == 0) || (gGameMode == 1)))))

    {
        s->frameFlags |= (((1) << (18)) | ((1) << (19)));
    }
    (s)->frameFlags |= (((1) << (5)));
    s->frameFlags |= playerID;

    s->hitboxes[0].index = -1;
    s->hitboxes[1].index = -1;

    psi->transform.rotation = 0;
    psi->transform.qScaleX = +((s32)((1)*256));
    psi->transform.qScaleY = +((s32)((1)*256));
    psi->transform.x = 0;
    psi->transform.y = 0;
}



void AllocateCharacterMidAirGfx(Player *p, PlayerSpriteInfo *param2)
{
    Sprite *s = &param2->s;
    PlayerSpriteInfo *extraSprite = param2;
    u32 character = p->character;


    if (character == CHARACTER_TAILS) {
        s->graphics.dest = VramMalloc(16);
        s->graphics.size = 0;
        s->graphics.anim = ((8) + CHARACTER_TAILS * (99));
        extraSprite->s.variant = 1;
    }
# 843 "/home/awaszczak/git/sa2/sa1/../src/game/shared/stage/player.c"
    else {
        return;
    }




    s->prevVariant = -1;
    s->x = ((int)((p->qWorldX) >> 8));
    s->y = ((int)((p->qWorldY) >> 8));
    s->oamFlags = ((17) << 6);
    s->qAnimDelay = 0;
    s->animSpeed = ((int)((float)(1.0)*0x10));






    {
        s->palId = 0;
    }

    s->frameFlags =



        (((2) << (12)) | ((1) << (5)) | ((4) << (0)));

    extraSprite->transform.rotation = 0;
    extraSprite->transform.qScaleX = +((s32)((1)*256));
    extraSprite->transform.qScaleY = +((s32)((1)*256));
    extraSprite->transform.x = 0;
    extraSprite->transform.y = 0;
}

void SetStageSpawnPos(u32 character, u32 level, u32 playerID, Player *p)
{
    p->playerID = playerID;
    p->character = character;


    if (((gGameMode == 0) || (gGameMode == 1)) || (gGameMode == 2) || (gGameMode == 3)) {
        p->checkPointX = gSpawnPositions[level][0];
        p->checkPointY = gSpawnPositions[level][1];
    } else if (gGameMode == 4) {
        s32 sioId = ((volatile struct SioMultiCnt *)(REG_BASE + 0x128))->id;
        p->checkPointX = gSpawnPositions_Modes_4_and_5[level - 14][sioId][0];
        p->checkPointY = gSpawnPositions_Modes_4_and_5[level - 14][sioId][1];
    } else if (gGameMode == 5) {
        s32 sioId = ((volatile struct SioMultiCnt *)(REG_BASE + 0x128))->id;

        if (level == (14 + 2)) {
            p->checkPointX = gSpawnPositions_Modes_4_and_5[level - 14][((volatile struct SioMultiCnt *)(REG_BASE + 0x128))->id][0];
            p->checkPointY = gSpawnPositions_Modes_4_and_5[level - 14][((volatile struct SioMultiCnt *)(REG_BASE + 0x128))->id][1];
        } else {
            s32 sioMask = ((gMultiplayerConnections & (0x10 << sioId))) >> (sioId + 4);
            u32 i, pid;

            for (pid = 0, i = 0; i < sioId; i++) {
                u32 ithMask = ((gMultiplayerConnections & (0x10 << i))) >> (i + 4);
                if (ithMask == sioMask) {
                    pid++;
                }
            }

            if (sioMask == 0) {
                pid = -pid;
            }

            p->checkPointX = gSpawnPositions_Modes_4_and_5[level - 14][sioMask][0] + pid * 24;
            p->checkPointY = gSpawnPositions_Modes_4_and_5[level - 14][sioMask][1];
        }
    } else {
        switch (((volatile struct SioMultiCnt *)(REG_BASE + 0x128))->id) {
            case 0: {
                p->checkPointX = 232;
                p->checkPointY = 829;
            } break;

            case 1: {
                p->checkPointX = 1585;
                p->checkPointY = 926;
            } break;

            case 2: {
                p->checkPointX = 232;
                p->checkPointY = 348;
            } break;

            case 3: {
                p->checkPointX = 1585;
                p->checkPointY = 279;
            } break;
        }
    }
# 951 "/home/awaszczak/git/sa2/sa1/../src/game/shared/stage/player.c"
    p->sa2__unk98 = 0;
    p->checkpointTime = 0;


    if (playerID == 0)

    {
        p->spriteInfoBody = &gPlayerBodyPSI;
        p->spriteInfoLimbs = &gPlayerLimbsPSI;
    }

    else {
        p->spriteInfoBody = &gPartnerBodyPSI;
        p->spriteInfoLimbs = &gPartnerLimbsPSI;
    }

}
# 976 "/home/awaszczak/git/sa2/sa1/../src/game/shared/stage/player.c"
void InitializePlayer(Player *p)
{







    p->qWorldX = ((s32)((p->checkPointX)*256));
# 997 "/home/awaszczak/git/sa2/sa1/../src/game/shared/stage/player.c"
    p->qWorldY = ((s32)((p->checkPointY)*256));





    p->heldInput = gPlayerControls.jump | gPlayerControls.attack;
    p->frameInput = gPlayerControls.jump | gPlayerControls.attack;

    p->qSpeedAirX = 0;
    p->qSpeedAirY = 0;
    p->qSpeedGround = 0;
    p->moveState = 0x00200000;
    p->rotation = 0;
    { (p)->spriteOffsetX = 6; (p)->spriteOffsetY = 14; };
    p->sa2__unk25 = 120;
    p->qSpindashAccel = 0;
    p->sa2__unk29 = 0;
    p->sa2__unk28 = 0;
    p->layer = 0x01;

    p->maxSpeed = ((s32)((4.5)*256));






    p->acceleration = ((s32)((8. / 256.)*256));
    p->deceleration = ((s32)((96. / 256.)*256));




    p->charState = 0;

    p->prevCharState = 0;



    p->anim = -1;
    p->variant = -1;
    p->timerInvulnerability = 0;
    p->timerInvincibility = 0;
    p->timerSpeedup = 0;
    p->timerConfusion = 0;
    p->stoodObj = ((void*)0);
    p->itemEffect = 0x00;
    p->sa2__unk2A = 0;
    p->sa2__unk72 = (int)(((0 * 60.) + 6) * 60);
    p->sa2__unk7E = 0;
    p->sa2__unk7C = 0;
    p->sa2__unk82 = ((s32)((1)*256));
    p->sa2__unk80 = ((s32)((1)*256));
    p->defeatScoreIndex = 0;
    p->sa2__unk61 = 0;
    p->sa2__unk62 = 0;
    p->sa2__unk63 = 0;
    p->secondsUntilDrown = 30;
    p->framesUntilDrownCountDecrement = 60;
    p->framesUntilWaterSurfaceEffect = 10;
# 1077 "/home/awaszczak/git/sa2/sa1/../src/game/shared/stage/player.c"
    {
        u32 *ptr = (u32 *)(&p->sa2__unk99[0]);
        s32 i = 3;



        do {



            *ptr++ = 0;
        } while (i-- != 0);



        p->sa2__unk99[0] = 0x7F;

    }


    if ((p->playerID == 0) && ((gGameMode == 0) || (gGameMode == 1))) {
        if (gCourseTime >= ((int)(((10 * 60.) + 0) * 60))) {
            gCheckpointTime = 0;
            gCourseTime = 0;
            p->checkpointTime = 0;
        } else {
            gCheckpointTime = p->checkpointTime;
            gCourseTime = p->checkpointTime;
        }
    }

    switch (p->character) {
        case CHARACTER_SONIC: {
            p->w.sf.flags = 0;
            p->w.sf.sa2__unkAE = 0;
            p->w.sf.sa2__unkB0 = 0;
        } break;
# 1123 "/home/awaszczak/git/sa2/sa1/../src/game/shared/stage/player.c"
        case CHARACTER_TAILS: {
            p->w.tf.flags = 0;
            p->w.tf.flyingDuration = 0;
            p->w.tf.shift = 0;
        } break;

        case CHARACTER_KNUCKLES: {
            p->w.kf.flags = 0;
            p->w.kf.shift = 0;
            p->w.kf.sa2__unkAE = 0;
        } break;

        case CHARACTER_AMY: {
            p->w.af.flags = 0;
        } break;
    }
# 1148 "/home/awaszczak/git/sa2/sa1/../src/game/shared/stage/player.c"
}
# 1200 "/home/awaszczak/git/sa2/sa1/../src/game/shared/stage/player.c"
s32 sa2__sub_802195C(Player *p, u8 *rot, s32 *out)
{
    u8 dummy;
    s32 dummyInt;
    s32 playerX, playerY;
    s32 playerX2, playerY2;
    u32 mask;
    u8 anotherByte, anotherByte2;
    s32 r5, r1;
    s32 result;

    if (rot == ((void*)0))
        rot = &dummy;
    if (out == ((void*)0))
        out = &dummyInt;

    playerX2 = ((int)((p->qWorldX) >> 8)) - (2 + p->spriteOffsetX);
    playerY2 = ((int)((p->qWorldY) >> 8)) - (p->spriteOffsetY);

    mask = p->layer;
    if (p->qSpeedAirY < ((s32)((3.0)*256))) {
        mask |= 0x80;
    }

    r5 = sa2__sub_801E4E4(playerX2, playerY2, mask, -8, &anotherByte, sa2__sub_801ED24);

    playerX = ((int)((p->qWorldX) >> 8)) - (2 + p->spriteOffsetX);
    playerY = ((int)((p->qWorldY) >> 8)) + (p->spriteOffsetY);

    mask = p->layer;
    if (p->qSpeedAirY < ((s32)((3.0)*256))) {
        mask |= 0x80;
    }

    r1 = sa2__sub_801E4E4(playerX, playerY, mask, -8, &anotherByte2, sa2__sub_801ED24);

    if (r5 < r1) {
        result = r5;
        *rot = anotherByte;
        *out = r1;
    } else {
        result = r1;
        *rot = anotherByte2;
        *out = r5;
    }

    return result;
}


s32 sa2__sub_8021A34(Player *p, u8 *rot, s32 *out)
{
    u8 dummy;
    s32 dummyInt;
    s32 playerX, playerY;
    s32 playerX2, playerY2;
    u32 mask;
    u8 anotherByte, anotherByte2;
    s32 r5, r1;
    s32 result;

    if (rot == ((void*)0))
        rot = &dummy;
    if (out == ((void*)0))
        out = &dummyInt;

    playerX2 = ((int)((p->qWorldX) >> 8)) + (2 + p->spriteOffsetX);
    playerY2 = ((int)((p->qWorldY) >> 8)) - (p->spriteOffsetY);

    mask = p->layer;
    if (p->qSpeedAirY < ((s32)((3.0)*256))) {
        mask |= 0x80;
    }

    r5 = sa2__sub_801E4E4(playerX2, playerY2, mask, +8, &anotherByte, sa2__sub_801ED24);

    playerX = ((int)((p->qWorldX) >> 8)) + (2 + p->spriteOffsetX);
    playerY = ((int)((p->qWorldY) >> 8)) + (p->spriteOffsetY);

    mask = p->layer;
    if (p->qSpeedAirY < ((s32)((3.0)*256))) {
        mask |= 0x80;
    }

    r1 = sa2__sub_801E4E4(playerX, playerY, mask, +8, &anotherByte2, sa2__sub_801ED24);

    if (r5 < r1) {
        result = r5;
        *rot = anotherByte;
        *out = r1;
    } else {
        result = r1;
        *rot = anotherByte2;
        *out = r5;
    }

    return result;
}


s32 sa2__sub_8021B08(Player *p, u8 *rot, s32 *out)
{
    u8 dummy;
    s32 dummyInt;
    s32 playerX, playerY;
    s32 playerX2, playerY2;
    u32 mask;
    u8 anotherByte, anotherByte2;
    s32 r5, r1;
    s32 result;

    if (rot == ((void*)0))
        rot = &dummy;
    if (out == ((void*)0))
        out = &dummyInt;

    playerY2 = ((int)((p->qWorldY) >> 8)) - (p->spriteOffsetY);
    playerX2 = ((int)((p->qWorldX) >> 8)) - (2 + p->spriteOffsetX);

    mask = p->layer;
    if (p->qSpeedAirY < ((s32)((3.0)*256))) {
        mask |= 0x80;
    }

    r5 = sa2__sub_801E4E4(playerY2, playerX2, mask, -8, &anotherByte, sa2__sub_801EE64);

    playerY = ((int)((p->qWorldY) >> 8)) - (p->spriteOffsetY);
    playerX = ((int)((p->qWorldX) >> 8)) + (2 + p->spriteOffsetX);

    mask = p->layer;
    if (p->qSpeedAirY < ((s32)((3.0)*256))) {
        mask |= 0x80;
    }

    r1 = sa2__sub_801E4E4(playerY, playerX, mask, -8, &anotherByte2, sa2__sub_801EE64);

    if (r5 < r1) {
        result = r5;
        *rot = anotherByte;
        *out = r1;
    } else {
        result = r1;
        *rot = anotherByte2;
        *out = r5;
    }

    return result;
}

void sa2__sub_8021BE0(Player *p)
{
    if (!(p->moveState & 0x00000200)) {
        if (!(p->moveState & 0x00800000)) {

            p->charState = 4;




        }

        if (p->moveState & 0x00000004) {
            p->moveState &= ~0x00000004;
            Player_HandleSpriteYOffsetChange(p, 14);
        }
        { (p)->spriteOffsetX = 6; (p)->spriteOffsetY = 14; };
    }







    p->moveState &= ~(0x00000020);
    p->moveState &= ~(0x00000100);
    p->moveState &= ~(0x00000400);

    p->sa2__unk61 = 0;
    p->sa2__unk62 = 0;
    p->sa2__unk63 = 0;

    p->moveState &= ~(0x00008000);

    if (p->character == CHARACTER_TAILS) {
        m4aSongNumStop(120);
    }

    if (p->character == CHARACTER_AMY) {
        p->moveState &= ~(0x04000000 | 0x02000000);
    }


    p->defeatScoreIndex = 0;


    Player_804726C(p);
    p->moveState &= ~(0x00000010 | 0x00000002);

}

void sa2__sub_8021C4C(Player *p)
{
    u8 rotation;
    s32 fnOut;
    s32 result;
    s32 playerX, playerY;
    s32 playerX2, playerY2;
    s32 *ptr;

    u32 mask;
    u32 mask2 = p->layer;

    playerX = ((int)((p->qWorldX) >> 8)) - (3 + p->spriteOffsetX);
    playerY = ((int)((p->qWorldY) >> 8));

    mask = mask2;
    if (p->qSpeedAirY < ((s32)((3.0)*256))) {
        mask = 0x80;
        mask |= mask2;
    }

    result = sa2__sub_801E4E4(playerX, playerY, mask, -8, 0, sa2__sub_801ED24);

    if (result <= 0) {
        p->qWorldX -= ((s32)((result)*256));
        p->qSpeedAirX = 0;
    }

    playerX2 = ((int)((p->qWorldX) >> 8)) + (3 + p->spriteOffsetX);
    playerY2 = ((int)((p->qWorldY) >> 8));

    mask = mask2;
    if (p->qSpeedAirY < ((s32)((3.0)*256))) {
        mask |= 0x80;
    }

    result = sa2__sub_801E4E4(playerX2, playerY2, mask, +8, 0, sa2__sub_801ED24);

    if (result <= 0) {
        p->qWorldX += ((s32)((result)*256));
        p->qSpeedAirX = 0;
    }

    ptr = &fnOut;

    if ((gStageFlags & 0x0080)) {
        result = sa2__sub_8029AC0(p, &rotation, ptr);
    } else

    {
        result = sa2__sub_8029B0C(p, &rotation, ptr);
    }

    if (result < 0) {
        s8 rotCopy;
        s32 r1 = ((int)((p->qSpeedAirY) >> 8));
        r1 += 6;
        r1 = -r1;

        if ((result >= r1) || (fnOut >= r1)) {
            s32 airY;
            p->rotation = rotation;


            if ((gStageFlags & 0x0080)) {
                result = -result;
            }


            p->qWorldY += result << 8;

            sa2__sub_8021BE0(p);

            if ((rotation + 32) & 0x40) {
                p->qSpeedAirX = 0;

                if (p->qSpeedAirY > ((s32)((11.8125)*256))) {
                    p->qSpeedAirY = ((s32)((11.8125)*256));
                }
            } else if (!((rotation + 16) & 0x20)) {
                p->qSpeedAirY = 0;
                p->qSpeedGround = p->qSpeedAirX;
                return;
            } else {
                p->qSpeedAirY >>= 1;
            }

            airY = p->qSpeedAirY;
            if (airY < 0) {
                airY = -airY;
            }
            p->qSpeedGround = airY;

            rotCopy = rotation;
            if (rotCopy < 0) {
                p->qSpeedGround = -airY;
            }
        }
    }
}

void sa2__sub_8021DB8(Player *p)
{
    u8 rotation;
    s32 fnOut;
    s32 result;
    s32 playerX, playerY;
    s32 playerX2, playerY2;
    s32 *ptr;

    u32 mask;
    u32 mask2 = p->layer;

    playerX = ((int)((p->qWorldX) >> 8)) - (3 + p->spriteOffsetX);
    playerY = ((int)((p->qWorldY) >> 8));

    mask = mask2;
    if (p->qSpeedAirY < ((s32)((3.0)*256))) {
        mask = 0x80;
        mask |= mask2;
    }

    result = sa2__sub_801E4E4(playerX, playerY, mask, -8, 0, sa2__sub_801ED24);

    if (result <= 0) {
        p->qWorldX -= ((s32)((result)*256));
        p->qSpeedAirX = 0;
    }

    playerX2 = ((int)((p->qWorldX) >> 8)) + (3 + p->spriteOffsetX);
    playerY2 = ((int)((p->qWorldY) >> 8));

    mask = mask2;
    if (p->qSpeedAirY < ((s32)((3.0)*256))) {
        mask |= 0x80;
    }

    result = sa2__sub_801E4E4(playerX2, playerY2, mask, +8, 0, sa2__sub_801ED24);

    if (result <= 0) {
        p->qWorldX += ((s32)((result)*256));
        p->qSpeedAirX = 0;
    }

    ptr = &fnOut;

    if ((gStageFlags & 0x0080)) {
        result = sa2__sub_8029B0C(p, &rotation, ptr);
    } else

    {
        result = sa2__sub_8029AC0(p, &rotation, ptr);
    }

    if (result <= 0) {

        if ((gStageFlags & 0x0080)) {
            result = -result;
        }


        p->qWorldY -= result << 8;

        if (((rotation + 32) & 0x40)) {
            s8 *pt = (s8 *)&rotation;
            if ((*pt - 0x40) > 0) {
                s32 speed;
                p->rotation = rotation;

                sa2__sub_8021BE0(p);

                speed = p->qSpeedAirY;
                if (speed < 0) {
                    speed = -speed;
                }
                p->qSpeedGround = speed;
                return;
            }
        }
        p->qSpeedAirY = 0;
    }
}

void sa2__sub_8021EE4(Player *p)
{
    u8 rotation;
    s32 fnOut;
    s32 result;
    s32 *ptr;
    u16 gravity;

    u32 mask;
    u32 mask2 = p->layer;

    gravity = (gStageFlags & 0x0080);
# 1606 "/home/awaszczak/git/sa2/sa1/../src/game/shared/stage/player.c"
        if (!gravity)

    {
        s32 playerX = ((int)((p->qWorldX) >> 8)) - (3 + p->spriteOffsetX);
        s32 playerY = ((int)((p->qWorldY) >> 8));

        mask = mask2;
        if (p->qSpeedAirY < ((s32)((3.0)*256))) {
            mask |= 0x80;
        }
        result = sa2__sub_801E4E4(playerX, playerY, mask, -8, ((void*)0), sa2__sub_801ED24);
    }

    else {
        s32 playerX = ((int)((p->qWorldX) >> 8)) - (3 + p->spriteOffsetX);
        s32 playerY = ((int)((p->qWorldY) >> 8));
        result = sa2__sub_801E4E4(playerX, playerY, mask2, -8, ((void*)0), sa2__sub_801ED24);
    }


    if (result <= 0) {
        p->qWorldX -= ((s32)((result)*256));
        p->qSpeedAirX = 0;
        p->qSpeedGround = p->qSpeedAirY;
    }

    ptr = &fnOut;

    if ((gStageFlags & 0x0080)) {
        result = sa2__sub_8029B0C(p, &rotation, ptr);
    } else

    {
        result = sa2__sub_8029AC0(p, &rotation, ptr);
    }

    if (result <= 0) {

        if ((gStageFlags & 0x0080)) {
            result = -result;
        }


        p->qWorldY -= ((s32)((result)*256));

        if (p->qSpeedAirY < 0) {
            p->qSpeedAirY = 0;
        }
    } else if (p->qSpeedAirY >= 0) {

        if ((gStageFlags & 0x0080)) {
            result = sa2__sub_8029AC0(p, &rotation, &fnOut);
        } else

        {
            result = sa2__sub_8029B0C(p, &rotation, &fnOut);
        }

        if (result <= 0) {

            if ((gStageFlags & 0x0080)) {
                result = -result;
            }


            p->qWorldY += ((s32)((result)*256));

            p->rotation = rotation;
            sa2__sub_8021BE0(p);

            p->qSpeedAirY = 0;
            p->qSpeedGround = p->qSpeedAirX;
        }
    }
}

void sa2__sub_802203C(Player *p)
{
    u8 rotation;
    s32 fnOut;
    s32 result;
    s32 *ptr;
    u16 gravity;

    u32 mask;
    u32 mask2 = p->layer;

    gravity = (gStageFlags & 0x0080);







    if (!gravity)

    {
        s32 playerX = ((int)((p->qWorldX) >> 8)) + (3 + p->spriteOffsetX);
        s32 playerY = ((int)((p->qWorldY) >> 8));

        mask = mask2;
        if (p->qSpeedAirY < ((s32)((3.0)*256))) {
            mask |= 0x80;
        }
        result = sa2__sub_801E4E4(playerX, playerY, mask, +8, ((void*)0), sa2__sub_801ED24);
    }

    else
    {
        s32 playerX = ((int)((p->qWorldX) >> 8)) + (3 + p->spriteOffsetX);
        s32 playerY = ((int)((p->qWorldY) >> 8));
        result = sa2__sub_801E4E4(playerX, playerY, mask2, +8, ((void*)0), sa2__sub_801ED24);
    }


    if (result <= 0) {
        p->qWorldX += ((s32)((result)*256));
        p->qSpeedAirX = 0;
        p->qSpeedGround = p->qSpeedAirY;
    }

    ptr = &fnOut;

    if ((gStageFlags & 0x0080)) {
        result = sa2__sub_8029B0C(p, &rotation, ptr);
    } else

    {
        result = sa2__sub_8029AC0(p, &rotation, ptr);
    }

    if (result <= 0) {

        if ((gStageFlags & 0x0080)) {
            result = -result;
        }


        p->qWorldY -= ((s32)((result)*256));

        if (p->qSpeedAirY < 0) {
            p->qSpeedAirY = 0;
        }
    } else if (p->qSpeedAirY >= 0) {

        if ((gStageFlags & 0x0080)) {
            result = sa2__sub_8029AC0(p, &rotation, &fnOut);
        } else

        {
            result = sa2__sub_8029B0C(p, &rotation, &fnOut);
        }

        if (result <= 0) {

            if ((gStageFlags & 0x0080)) {
                result = -result;
            }

            p->qWorldY += ((s32)((result)*256));

            p->rotation = rotation;
            sa2__sub_8021BE0(p);

            p->qSpeedAirY = 0;
            p->qSpeedGround = p->qSpeedAirX;
        }
    }
}




    void
    sa2__sub_8022190(Player *p)
{
    s16 airY = p->qSpeedAirY;

    u8 arcResult = ((gStageFlags & 0x0080)) ? 0x80 : 0;



    s16 airX = p->qSpeedAirX;

    if (airX || airY) {
        arcResult = ((int)((ArcTan2(airX, airY)) >> 8));
    }

    arcResult = (arcResult - 0x20) & 0xC0;

    switch (arcResult >> 6) {
        case 0: {
            sa2__sub_8021C4C(p);
        } break;

        case 2: {
            sa2__sub_8021DB8(p);
        } break;

        case 1: {
            sa2__sub_8021EE4(p);
        } break;

        case 3: {
            sa2__sub_802203C(p);
        } break;
    }
}
# 1926 "/home/awaszczak/git/sa2/sa1/../src/game/shared/stage/player.c"
void sa2__sub_8022318(Player *p)
{
    s32 offsetY;

    if (!(p->moveState & 0x00000004)) {
        p->spriteOffsetX = 6;
        p->spriteOffsetY = 14;
    } else {
        p->moveState &= ~0x00000004;
        p->charState = 0;

        offsetY = p->spriteOffsetY - 14;

        if ((gStageFlags & 0x0080)) {
            offsetY = -offsetY;
        }

        if (((p->rotation + 0x40) << 24) <= 0) {
            offsetY = -offsetY;
        }

        p->spriteOffsetX = 6;
        p->spriteOffsetY = 14;

        p->qWorldY += ((s32)((offsetY)*256));
    }

    p->moveState &= ~0x00000002;
    p->moveState &= ~0x00000020;
    p->moveState &= ~0x00000010;
    p->moveState &= ~0x00000100;

    p->defeatScoreIndex = 0;


    p->moveState &= ~0x00008000;


    p->sa2__unk25 = 120;
    p->sa2__unk61 = 0;

    if (p->charState >= 62) {
        p->charState = 0;
    }
}

void sa2__sub_80223BC(Player *p)
{
    u8 rotation;
    s32 fnOut;
    s32 result;
    s32 playerX, playerY;
    s32 playerX2, playerY2;
    s32 *ptr;

    u32 mask;
    u32 mask2 = p->layer;

    playerX = ((int)((p->qWorldX) >> 8)) - (3 + p->spriteOffsetX);
    playerY = ((int)((p->qWorldY) >> 8));

    mask = mask2;
    if (p->qSpeedAirY < ((s32)((3.0)*256))) {
        mask = 0x80;
        mask |= mask2;
    }
    result = sa2__sub_801E4E4(playerX, playerY, mask, -8, ((void*)0), sa2__sub_801ED24);

    if (result <= 0) {
        p->qWorldX -= ((s32)((result)*256));
        p->qSpeedAirX = 0;

        p->w.sf.flags |= 0x20;
    }

    playerX2 = ((int)((p->qWorldX) >> 8)) + (3 + p->spriteOffsetX);
    playerY2 = ((int)((p->qWorldY) >> 8));

    mask = mask2;
    if (p->qSpeedAirY < ((s32)((3.0)*256))) {
        mask |= 0x80;
    }
    result = sa2__sub_801E4E4(playerX2, playerY2, mask, +8, ((void*)0), sa2__sub_801ED24);

    if (result <= 0) {
        p->qWorldX += ((s32)((result)*256));
        p->qSpeedAirX = 0;
        p->w.sf.flags |= 0x20;
    }

    ptr = &fnOut;
    if ((gStageFlags & 0x0080)) {
        result = sa2__sub_8029AC0(p, &rotation, ptr);
    } else {
        result = sa2__sub_8029B0C(p, &rotation, ptr);
    }

    if (result <= 0) {
        if ((gStageFlags & 0x0080)) {
            result = -result;
        }

        p->qWorldY += ((s32)((result)*256));

        p->rotation = rotation;
        p->qSpeedAirY = 0;
        p->w.sf.flags &= ~0x2;
    }
}


void sa2__sub_80224DC(Player *p)
{
    u8 rotation;
    s32 fnOut;
    s32 result;
    s32 playerX, playerY;
    s32 playerX2, playerY2;
    s32 *ptr;

    u32 mask;
    u32 mask2 = p->layer;

    playerX = ((int)((p->qWorldX) >> 8)) - (3 + p->spriteOffsetX);
    playerY = ((int)((p->qWorldY) >> 8));

    mask = mask2;
    if (p->qSpeedAirY < ((s32)((3.0)*256))) {
        mask = 0x80;
        mask |= mask2;
    }
    result = sa2__sub_801E4E4(playerX, playerY, mask, -8, ((void*)0), sa2__sub_801ED24);

    if (result <= 0) {
        p->qWorldX -= ((s32)((result)*256));
        p->qSpeedAirX = 0;

        p->w.sf.flags |= 0x20;
    }

    playerX2 = ((int)((p->qWorldX) >> 8)) + (3 + p->spriteOffsetX);
    playerY2 = ((int)((p->qWorldY) >> 8));

    mask = mask2;
    if (p->qSpeedAirY < ((s32)((3.0)*256))) {
        mask |= 0x80;
    }
    result = sa2__sub_801E4E4(playerX2, playerY2, mask, +8, ((void*)0), sa2__sub_801ED24);

    if (result <= 0) {
        p->qWorldX += ((s32)((result)*256));
        p->qSpeedAirX = 0;
        p->w.sf.flags |= 0x20;
    }

    ptr = &fnOut;
    if ((gStageFlags & 0x0080)) {
        result = sa2__sub_8029B0C(p, &rotation, ptr);
    } else {
        result = sa2__sub_8029AC0(p, &rotation, ptr);
    }

    if (result <= 0) {
        if ((gStageFlags & 0x0080)) {
            result = -result;
        }

        p->qWorldY -= ((s32)((result)*256));

        p->qSpeedAirY = 0;
    }
}

void sa2__sub_80225E8(Player *p)
{
    u8 rotation;
    s32 fnOut;
    s32 result;
    s32 playerX, playerY;
    s32 *ptr;
    u16 gravity;

    u32 mask;
    u8 *mask2 = &p->layer;

    playerX = ((int)((p->qWorldX) >> 8)) - (2 + p->spriteOffsetX);
    playerY = ((int)((p->qWorldY) >> 8));

    mask = *mask2;
    if (p->qSpeedAirY < ((s32)((3.0)*256))) {
        mask |= 0x80;
    }
    result = sa2__sub_801E4E4(playerX, playerY, mask, -8, ((void*)0), sa2__sub_801ED24);

    if (result <= 0) {
        p->qWorldX -= ((s32)((result)*256));
        p->qSpeedAirX = 0;

        p->w.sf.flags |= 0x20;
    }

    gravity = (gStageFlags & 0x0080);
    ptr = &fnOut;
    if (gravity) {
        result = sa2__sub_8029B0C(p, &rotation, ptr);
    } else {
        result = sa2__sub_8029AC0(p, &rotation, ptr);
    }

    if (result <= 0) {
        if ((gStageFlags & 0x0080)) {
            result = -result;
        }
        p->qWorldY -= ((s32)((result)*256));

        if (p->qSpeedAirY < 0) {
            p->qSpeedAirY = 0;
        }
    } else if (p->qSpeedAirY >= 0) {

        if ((gStageFlags & 0x0080)) {
            result = sa2__sub_8029AC0(p, &rotation, ptr);
        } else {
            result = sa2__sub_8029B0C(p, &rotation, ptr);
        }

        if (result <= 0) {
            if ((gStageFlags & 0x0080)) {
                result = -result;
            }

            p->qWorldY += ((s32)((result)*256));

            p->rotation = rotation;
            p->qSpeedAirY = 0;
            p->w.sf.flags &= ~0x2;
        }
    }
}


void sa2__sub_8022710(Player *p)
{
    u8 rotation;
    s32 fnOut;
    s32 result;
    s32 playerX, playerY;
    s32 *ptr;
    u16 gravity;

    u32 mask;
    u8 *mask2 = &p->layer;

    playerX = ((int)((p->qWorldX) >> 8)) + (2 + p->spriteOffsetX);
    playerY = ((int)((p->qWorldY) >> 8));

    mask = *mask2;
    if (p->qSpeedAirY < ((s32)((3.0)*256))) {
        mask |= 0x80;
    }
    result = sa2__sub_801E4E4(playerX, playerY, mask, +8, ((void*)0), sa2__sub_801ED24);

    if (result <= 0) {
        p->qWorldX += ((s32)((result)*256));
        p->qSpeedAirX = 0;

        p->w.sf.flags |= 0x20;
    }

    gravity = (gStageFlags & 0x0080);
    ptr = &fnOut;
    if (gravity) {
        result = sa2__sub_8029B0C(p, &rotation, ptr);
    } else {
        result = sa2__sub_8029AC0(p, &rotation, ptr);
    }

    if (result <= 0) {
        if ((gStageFlags & 0x0080)) {
            result = -result;
        }
        p->qWorldY -= ((s32)((result)*256));

        if (p->qSpeedAirY < 0) {
            p->qSpeedAirY = 0;
        }
    } else if (p->qSpeedAirY >= 0) {

        if ((gStageFlags & 0x0080)) {
            result = sa2__sub_8029AC0(p, &rotation, ptr);
        } else {
            result = sa2__sub_8029B0C(p, &rotation, ptr);
        }

        if (result <= 0) {
            if ((gStageFlags & 0x0080)) {
                result = -result;
            }

            p->qWorldY += ((s32)((result)*256));

            p->rotation = rotation;
            p->qSpeedAirY = 0;
            p->w.sf.flags &= ~0x2;
        }
    }
}

void sa2__sub_8022838(Player *p)
{
    s16 airX = p->qSpeedAirX;
    s16 airY = p->qSpeedAirY;
    u8 arcResult = 0;

    if (p->moveState & 0x00000008) {
        p->w.sf.flags &= ~0x2;
        p->sa2__unk29 = 0;
        p->sa2__unk28 = 0;
    } else {
        arcResult = ((int)((ArcTan2(airX, airY)) >> 8));

        arcResult = (arcResult - 0x20) & 0xC0;

        switch (arcResult >> 6) {
            case 0: {
                sa2__sub_80223BC(p);
            } break;

            case 2: {
                sa2__sub_80224DC(p);
            } break;

            case 1: {
                sa2__sub_80225E8(p);
            } break;

            case 3: {
                sa2__sub_8022710(p);
            } break;
        }
    }
}


void sa2__sub_80228C0(Player *p)
{
    s32 val;
    u8 *p29;
    s32 resultB;
# 2290 "/home/awaszczak/git/sa2/sa1/../src/game/shared/stage/player.c"
    s32 resultA;
    u32 r0;
    s32 playerX = p->qWorldX;
    s32 playerY = p->qWorldY;
    s32 rot = p->rotation;

    u32 mask = p->layer;
    s32 py = ((int)((playerY) >> 8));

    resultA = sa2__sub_801E4E4(py + p->spriteOffsetY, (playerX = ((int)((playerX) >> 8))) - (2 + p->spriteOffsetX), mask, 8, &p->sa2__unk28,
                                     sa2__sub_801EE64);

    py = py + (p->spriteOffsetY);
    playerX += 2;
    playerX += p->spriteOffsetX;
    p29 = &p->sa2__unk29;
    resultB = sa2__sub_801E4E4(py, playerX, mask, 8, p29, sa2__sub_801EE64);

    val = resultB;
    if (resultB > resultA) {
        val = resultA;
    }

    if (val != 0) {
        if (val < 0) {
            if (val < -11) {
                return;
            }

            playerY += ((s32)((val)*256));

            if (resultA < resultB) {
                r0 = p->sa2__unk28;
            } else {
                r0 = p->sa2__unk29;
            }
            rot = r0;
        } else {
            s32 airX = p->qSpeedAirX;

            if (airX < 0) {
                airX = -airX;
            }

            airX = ((int)((airX) >> 8));
            airX += 3;

            if (airX > 11)
                airX = 11;

            if (val <= airX) {
                playerY += ((s32)((val)*256));

                if (resultA < resultB) {
                    r0 = p->sa2__unk28;
                } else {
                    r0 = p->sa2__unk29;
                }
                rot = r0;
            } else

                if (p->moveState & 0x00000800) {
                playerY += ((s32)((val)*256));
            } else

            {
                p->moveState |= 0x00000002;
                p->moveState &= ~0x00000020;
                return;
            }
        }
    } else {
        if (resultA < resultB) {
            r0 = p->sa2__unk28;
        } else {
            r0 = p->sa2__unk29;
        }
        rot = r0;
    }

    p->qWorldY = playerY;

    if (!(rot & 0x1)) {
        vu8 *pRot = &p->rotation;
        *pRot = rot;

        if ((gStageFlags & 0x0080)) {

            rot = *pRot;
            asm("" ::"r"(rot));
            r0 = rot;
            r0 += 0x40;
            r0 <<= 24;
            r0 = -r0;
            rot = r0 >> 24;
            asm("" ::"r"(r0), "r"(rot));
            r0 = rot;
            r0 -= 0x40;

            *pRot = r0;
        }

    }
}


void sa2__sub_80229EC(Player *p)
{
    s32 val;
    u8 *p29;
    s32 resultB;
    s32 playerY;
    s32 py;







    s32 resultA;
    u32 r1;
    u32 r0;
    s32 playerX;
    u32 mask;

    playerX = p->qWorldX;
    playerY = (p->qWorldY);
    mask = p->layer;
    py = ((int)((playerY) >> 8));

    resultA = sa2__sub_801E4E4(py - p->spriteOffsetY, (playerX = ((int)((playerX) >> 8))) + (2 + p->spriteOffsetX), mask, -8, &p->sa2__unk28,
                                     sa2__sub_801EE64);

    py = py - (p->spriteOffsetY);
    playerX -= 2;
    playerX -= p->spriteOffsetX;
    p29 = &p->sa2__unk29;
    resultB = sa2__sub_801E4E4(py, playerX, mask, -8, p29, sa2__sub_801EE64);

    val = resultB;
    if (resultB > resultA) {
        val = resultA;
    }

    if (val != 0) {
        if (val < 0) {
            if (val < -11) {
                return;
            }

            playerY -= ((s32)((val)*256));

            if (resultA < resultB) {
                r0 = p->sa2__unk28;
            } else {
                r0 = *p29;
            }
        } else {
            s32 airX = p->qSpeedAirX;

            if (airX < 0) {
                airX = -airX;
            }

            airX = ((int)((airX) >> 8));
            airX += 3;

            if (airX > 11)
                airX = 11;

            if (val <= airX) {
                playerY -= ((s32)((val)*256));

                if (resultA < resultB) {
                    r0 = p->sa2__unk28;
                } else {
                    r0 = *p29;
                }
            } else {
                p->moveState |= 0x00000002;
                p->moveState &= ~0x00000020;
                return;
            }
        }
    } else {
        if (resultA < resultB) {
            r0 = p->sa2__unk28;
        } else {
            r0 = p->sa2__unk29;
        }
    }

    r1 = r0;
    p->qWorldY = playerY;

    if (!(r1 & 0x1)) {
        vu8 *pRot = &p->rotation;
        *pRot = r1;

        if ((gStageFlags & 0x0080)) {

            r1 = *pRot;
            asm("" ::"r"(r1));
            r0 = r1;
            r0 += 0x40;
            r0 <<= 24;
            r0 = -r0;
            r1 = r0 >> 24;
            asm("" ::"r"(r0), "r"(r1));
            r0 = r1;
            r0 -= 0x40;

            *pRot = r0;
        }

    }
}


void sa2__sub_8022B18(Player *p)
{
    s32 val;
    u8 *p29;
    s32 resultB;
    s32 playerX;
    s32 py;







    s32 resultA;
    u32 r1;
    u32 r0;
    s32 playerY;
    u32 mask;

    playerX = p->qWorldX;
    playerY = (p->qWorldY);
    mask = p->layer;
    py = ((int)((playerX) >> 8));

    resultA = sa2__sub_801E4E4(py - p->spriteOffsetY, (playerY = ((int)((playerY) >> 8))) - (2 + p->spriteOffsetX), mask, -8, &p->sa2__unk28,
                                     sa2__sub_801ED24);

    py = py - (p->spriteOffsetY);
    playerY += 2;
    playerY += p->spriteOffsetX;
    p29 = &p->sa2__unk29;
    resultB = sa2__sub_801E4E4(py, playerY, mask, -8, p29, sa2__sub_801ED24);

    val = resultB;
    if (resultB > resultA) {
        val = resultA;
    }

    if (val != 0) {
        if (val < 0) {
            if (val < -11) {
                return;
            }

            playerX -= ((s32)((val)*256));

            if (resultA < resultB) {
                r0 = p->sa2__unk28;
            } else {
                r0 = *p29;
            }
        } else {
            s32 airY = p->qSpeedAirY;

            if (airY < 0) {
                airY = -airY;
            }

            airY = ((int)((airY) >> 8));
            airY += 3;

            if (airY > 11)
                airY = 11;

            if (val <= airY) {
                playerX -= ((s32)((val)*256));

                if (resultA < resultB) {
                    r0 = p->sa2__unk28;
                } else {
                    r0 = *p29;
                }
            } else {
                p->moveState |= 0x00000002;
                p->moveState &= ~0x00000020;
                return;
            }
        }
    } else {
        if (resultA < resultB) {
            r0 = p->sa2__unk28;
        } else {
            r0 = p->sa2__unk29;
        }
    }

    r1 = r0;
    p->qWorldX = playerX;

    if (!(r1 & 0x1)) {
        vu8 *pRot = &p->rotation;
        *pRot = r1;

        if ((gStageFlags & 0x0080)) {

            r1 = *pRot;
            asm("" ::"r"(r1));
            r0 = r1;
            r0 += 0x40;
            r0 <<= 24;
            r0 = -r0;
            r1 = r0 >> 24;
            asm("" ::"r"(r0), "r"(r1));
            r0 = r1;
            r0 -= 0x40;

            *pRot = r0;
        }

    }
}


void sa2__sub_8022C44(Player *p)
{
    s32 val;
    s32 resultB;
    s32 playerX;
    s32 py;
    s32 resultA;







    u32 r1;
    u32 r0;
    s32 playerY;
    u32 mask;

    playerX = p->qWorldX;
    playerY = (p->qWorldY);
    mask = p->layer;
    py = ((int)((playerX) >> 8));

    resultA = sa2__sub_801E4E4(py + p->spriteOffsetY, (playerY = ((int)((playerY) >> 8))) + (2 + p->spriteOffsetX), mask, +8, &p->sa2__unk28,
                                     sa2__sub_801ED24);

    py = py + (p->spriteOffsetY);
    playerY -= 2;
    playerY -= p->spriteOffsetX;
    resultB = sa2__sub_801E4E4(py, playerY, mask, +8, &p->sa2__unk29, sa2__sub_801ED24);

    val = resultB;
    if (resultB > resultA) {
        val = resultA;
    }

    if (val != 0) {
        if (val < 0) {
            if (val < -11) {
                return;
            }

            playerX += ((s32)((val)*256));

            if (resultA < resultB) {
                r0 = p->sa2__unk28;
            } else {
                r0 = p->sa2__unk29;
            }
        } else {
            s32 airY = p->qSpeedAirY;

            if (airY < 0) {
                airY = -airY;
            }

            airY = ((int)((airY) >> 8));
            airY += 3;

            if (airY > 11)
                airY = 11;

            if (val <= airY) {
                playerX += ((s32)((val)*256));

                if (resultA < resultB) {
                    r0 = p->sa2__unk28;
                } else {
                    r0 = p->sa2__unk29;
                }
            } else {
                p->moveState |= 0x00000002;
                p->moveState &= ~0x00000020;
                return;
            }
        }
    } else {
        if (resultA < resultB) {
            r0 = p->sa2__unk28;
        } else {
            r0 = p->sa2__unk29;
        }
    }

    r1 = r0;
    p->qWorldX = playerX;

    if (!(r1 & 0x1)) {
        vu8 *pRot = &p->rotation;
        *pRot = r1;

        if ((gStageFlags & 0x0080)) {
# 2731 "/home/awaszczak/git/sa2/sa1/../src/game/shared/stage/player.c"
            *pRot = 128 - r1;

        }

    }
}

void sa2__sub_8022D6C(Player *p)
{



    u8 r1 = 0;

    if (p->moveState & 0x00000008) {
        p->sa2__unk29 = 0;
        p->sa2__unk28 = 0;
        return;
    }
# 2793 "/home/awaszczak/git/sa2/sa1/../src/game/shared/stage/player.c"
    if ((gStageFlags & 0x0080)) {
        s8 rot = p->rotation;
        rot += 0x40;
        rot = -rot;
        rot -= 0x40;

        if (rot + 0x20 > 0) {
            if (rot <= 0) {
                r1 = rot + 0x20;
            } else {
                r1 = rot + 0x1F;
            }
        } else {
            if (rot > 0) {
                r1 = rot + 0x20;
            } else {
                r1 = rot + 0x1F;
            }
        }

        switch (r1 >> 6) {
            case 0: {
                sa2__sub_80228C0(p);
            } break;

            case 2: {
                sa2__sub_80229EC(p);
            } break;

            case 1: {
                sa2__sub_8022B18(p);
            } break;

            case 3: {
                sa2__sub_8022C44(p);
            } break;
        }
    } else

    {
        s8 rot = p->rotation;

        if (rot + 0x20 > 0) {
            if (rot <= 0) {
                r1 = rot + 0x20;
            } else {
                r1 = rot + 0x1F;
            }
        } else {
            if (rot > 0) {
                r1 = rot + 0x20;
            } else {
                r1 = rot + 0x1F;
            }
        }

        switch (r1 >> 6) {
            case 0: {
                sa2__sub_80228C0(p);
            } break;

            case 2: {
                sa2__sub_80229EC(p);
            } break;

            case 1: {
                sa2__sub_8022B18(p);
            } break;

            case 3: {
                sa2__sub_8022C44(p);
            } break;
        }
    }
}





void Player_8043970(Player *p)
{



    s32 qSpeedGround = p->qSpeedGround;

    s32 qMaxSpeed = p->maxSpeed;
    s32 qAcceleration = p->acceleration;
    s32 qDeceleration = p->deceleration;

    if (qSpeedGround <= ((s32)((0)*256))) {
        if (!(p->moveState & 0x00000001)) {
            p->moveState &= ~0x00000020;
            p->charState = 22;

            { Player_HandleSpriteYOffsetChange(p, 14); { (p)->spriteOffsetX = 6; (p)->spriteOffsetY = 14; } };
        }

        p->moveState |= 0x00000001;

        qSpeedGround -= qAcceleration;

        if (qSpeedGround < -qMaxSpeed) {
            qSpeedGround += qAcceleration;

            if (qSpeedGround > -qMaxSpeed) {
                qSpeedGround = -qMaxSpeed;
            }

            p->qSpeedGround = qSpeedGround;
        } else {
            p->qSpeedGround = qSpeedGround;
        }

        if (!(p->moveState & (0x00800000 | 0x00008000))) {
            if (p->charState != 22

                && p->charState != 14

            ) {
                p->charState = 4;

                { Player_HandleSpriteYOffsetChange(p, 14); { (p)->spriteOffsetX = 6; (p)->spriteOffsetY = 14; } };
            }
        }
    } else {
        qSpeedGround -= qDeceleration;

        if (qSpeedGround < ((s32)((0)*256))) {
            qSpeedGround = -((s32)((96. / 256.)*256));
        }

        p->qSpeedGround = qSpeedGround;

        if (qSpeedGround < ((s32)((3)*256))) {
            return;
        }

        m4aSongNumStart(115);

        p->charState = 9;

        { Player_HandleSpriteYOffsetChange(p, 14); { (p)->spriteOffsetX = 6; (p)->spriteOffsetY = 14; } };
    }
}




void Player_8043A2C(Player *p)
{



    s32 qSpeedGround = p->qSpeedGround;

    s32 qMaxSpeed = p->maxSpeed;
    s32 qAcceleration = p->acceleration;
    s32 qDeceleration = p->deceleration;

    if (qSpeedGround >= ((s32)((0)*256))) {
        if (p->moveState & 0x00000001) {
            p->moveState &= ~0x00000020;
            p->charState = 22;

            { Player_HandleSpriteYOffsetChange(p, 14); { (p)->spriteOffsetX = 6; (p)->spriteOffsetY = 14; } };
        }

        p->moveState &= ~0x00000001;

        qSpeedGround += qAcceleration;

        if (qSpeedGround > +qMaxSpeed) {
            qSpeedGround -= qAcceleration;

            if (qSpeedGround < +qMaxSpeed) {
                qSpeedGround = +qMaxSpeed;
            }

            p->qSpeedGround = qSpeedGround;
        } else {
            p->qSpeedGround = qSpeedGround;
        }

        if (!(p->moveState & (0x00800000 | 0x00008000))) {
            if (p->charState != 22

                && p->charState != 14

            ) {
                p->charState = 4;

                { Player_HandleSpriteYOffsetChange(p, 14); { (p)->spriteOffsetX = 6; (p)->spriteOffsetY = 14; } };
            }
        }
    } else {
        qSpeedGround += qDeceleration;

        if (qSpeedGround > ((s32)((0)*256))) {
            qSpeedGround = +((s32)((96. / 256.)*256));
        }

        p->qSpeedGround = qSpeedGround;

        if (qSpeedGround > -((s32)((3)*256))) {
            return;
        }

        m4aSongNumStart(115);

        p->charState = 9;

        { Player_HandleSpriteYOffsetChange(p, 14); { (p)->spriteOffsetX = 6; (p)->spriteOffsetY = 14; } };
    }
}



s32 sa2__sub_8022F58(u8 param0, Player *p)
{
    u32 p0;
    s32 result = 0;
    s32 r4;
    u8 sp0[4];
    s32 sp4[4];



    s32 fnRes;


    p->sa2__unk29 = param0;
    p->sa2__unk28 = param0;

    p0 = (param0 + ((s32)((0.125)*256))) & 0xC0;




    r4 = p0 >> 6;


    switch (r4) {
        case 0: {
            u8 *ptr = sp0;
            u8 temp;
            fnRes = sa2__sub_8029BB8(p, ptr, &sp4[0]);
            temp = *ptr;

            if (sp0[0] & 0x1) {
                *ptr = result;
            } else {
                if ((gStageFlags & 0x0080)) {
                    s32 v = -0x80 - temp;
                    *ptr = v;
                }
            }

            result = fnRes;
        } break;

        case 1: {
            u8 *ptr = sp0;
            u8 temp;
            fnRes = sa2__sub_802195C(p, ptr, &sp4[1]);
            temp = *ptr;

            if (temp & 0x1) {
                *ptr = result;
            } else {
                if ((gStageFlags & 0x0080)) {
                    s32 v = -0x80 - temp;
                    *ptr = v;
                }
            }

            result = fnRes;
        } break;

        case 2: {
            u8 *ptr = sp0;
            u8 temp;
            fnRes = sa2__sub_8021B08(p, ptr, &sp4[2]);
            temp = *ptr;

            if (temp & 0x1) {
                *ptr = result;
            } else {
                if ((gStageFlags & 0x0080)) {
                    s32 v = -0x80 - temp;
                    *ptr = v;
                }
            }

            result = fnRes;
        } break;

        case 3: {
            u8 *ptr = sp0;
            u8 temp;
            fnRes = sa2__sub_8021A34(p, ptr, &sp4[3]);
            temp = *ptr;

            if (temp & 0x1) {
                *ptr = result;
            } else {
                if ((gStageFlags & 0x0080)) {
                    s32 v = -0x80 - temp;
                    *ptr = v;
                }
            }

            result = fnRes;
        } break;
    }

    return result;
}

s32 sa2__sub_802302C(u8 param0, Player *p)
{
    s32 r3;
    u32 r0;
    s32 result;
    u32 temp;

    s32 px = ((int)((p->qWorldX) >> 8));
    s32 py = ((int)((p->qWorldY) >> 8));

    p->sa2__unk29 = param0;
    r3 = (s8)param0;



    p->sa2__unk28 = param0;


    if (((param0 + ((s32)((0.125)*256))) << 24) > 0) {
        if (r3 <= 0) {



            param0 += ((s32)((0.125)*256));
        } else {
            param0 += ((s32)((0.125)*256)) - 1;
        }
    } else {
        if (r3 <= 0) {
            param0 += ((s32)((0.125)*256)) - 1;
        } else {
            param0 += ((s32)((0.125)*256));
        }
    }

    switch (param0 >> 6) {
        case 0: {
            s32 y = py + 2;
            result = sa2__sub_801E4E4(y + p->spriteOffsetX, px, p->layer, +8, ((void*)0), sa2__sub_801EE64);
        } break;

        case 2: {
            s32 y = py - 2;
            result = sa2__sub_801E4E4(y - p->spriteOffsetX, px, p->layer, -8, ((void*)0), sa2__sub_801EE64);
        } break;

        case 1: {
            s32 x = (px - 2);
            result = sa2__sub_801E4E4(x - p->spriteOffsetX, py, p->layer, -8, ((void*)0), sa2__sub_801ED24);
        } break;

        case 3: {
            s32 x = (px + 2);
            result = sa2__sub_801E4E4(x + p->spriteOffsetX, py, p->layer, +8, ((void*)0), sa2__sub_801ED24);
        } break;

        default: {
            result = 0;
        }
    }

    return result;
}

void sa2__sub_8023128(Player *p)
{
    u8 r1;
    u32 temp;
    u8 r5;
    s32 r2;

    if (p->qSpeedGround == 0) {
        return;
    }

    r1 = ((s32)((0.25)*256));
    if (p->qSpeedGround >= 0) {
        r1 = -((s32)((0.25)*256));
    }


    temp = p->rotation + r1;
    r5 = temp;

    r2 = ((s32)((sa2__sub_802302C(r5, p))*256));

    if (r2 <= 0) {
        s32 rot = (r5 + ((s32)((0.125)*256)));

        switch ((rot & 0xC0) >> 6) {

            case 0: {
                p->qWorldY += r2;
                p->qSpeedAirY = 0;
            } break;

            case 1: {
                p->qWorldX -= r2;
                p->qSpeedAirX = 0;
                p->moveState |= 0x00000020;

                p->moveState &= ~0x00000004;
                { Player_HandleSpriteYOffsetChange(p, 14); { (p)->spriteOffsetX = 6; (p)->spriteOffsetY = 14; } };

                p->qSpeedGround = 0;
            } break;

            case 2: {
                p->qWorldY -= r2;
                p->qSpeedAirY = 0;
                p->moveState |= 0x00000002;
            } break;

            case 3: {
                p->qWorldX += r2;
                p->qSpeedAirX = 0;
                p->moveState |= 0x00000020;

                p->moveState &= ~0x00000004;
                { Player_HandleSpriteYOffsetChange(p, 14); { (p)->spriteOffsetX = 6; (p)->spriteOffsetY = 14; } };

                p->qSpeedGround = 0;
            } break;
        }

        p->sa2__unk62 = 0;
        p->sa2__unk63 = 0;
    }
}

void sa2__sub_80231C0(Player *p)
{
    u8 r1;
    u32 temp;
    u8 r5;
    s32 r2;

    if (p->qSpeedGround == 0) {
        return;
    }

    r1 = ((s32)((0.25)*256));
    if (p->qSpeedGround >= 0) {
        r1 = -((s32)((0.25)*256));
    }


    temp = p->rotation + r1;
    r5 = temp;

    r2 = ((s32)((sa2__sub_802302C(r5, p))*256));

    if (r2 <= 0) {
        switch (((r5 + ((s32)((0.125)*256))) & 0xC0) >> 6) {

            case 0: {
                p->qWorldY += r2;
                p->qSpeedAirY = 0;
            } break;

            case 1: {
                p->qWorldX -= r2;
                p->qSpeedAirX = 0;
                p->moveState &= ~0x00000004;

                { Player_HandleSpriteYOffsetChange(p, 14); { (p)->spriteOffsetX = 6; (p)->spriteOffsetY = 14; } };
                p->qSpeedGround = 0;
            } break;

            case 2: {
                p->qWorldY -= r2;
                p->qSpeedAirY = 0;
                p->moveState |= 0x00000002;
            } break;

            case 3: {
                p->qWorldX += r2;
                p->qSpeedAirX = 0;
                p->moveState &= ~0x00000004;

                { Player_HandleSpriteYOffsetChange(p, 14); { (p)->spriteOffsetX = 6; (p)->spriteOffsetY = 14; } };
                p->qSpeedGround = 0;
            } break;
        }
    }
}



void Player_8043DDC(Player *p)
{
    if (p->sa2__unk2A == 0) {
        s32 qSpeedGround;
        if ((p->heldInput & (0x0020 | 0x0010)) != 0x0010) {
            if ((p->heldInput & (0x0020 | 0x0010)) == 0x0020) {
                qSpeedGround = p->qSpeedGround;

                if (qSpeedGround <= ((s32)((0)*256))) {
                    p->moveState |= 0x00000001;
                } else {
                    qSpeedGround -= ((s32)((24. / 256.)*256));

                    if (qSpeedGround < ((s32)((0)*256))) {
                        qSpeedGround = -((s32)((96. / 256.)*256));
                        qSpeedGround = qSpeedGround;
                    }

                    p->qSpeedGround = qSpeedGround;
                }
            }
        } else {

            qSpeedGround = p->qSpeedGround;

            if (qSpeedGround >= 0) {
                p->moveState &= ~0x00000001;
            } else {
                qSpeedGround += ((s32)((24. / 256.)*256));

                if (qSpeedGround > ((s32)((0)*256))) {
                    qSpeedGround = +((s32)((96. / 256.)*256));
                    qSpeedGround = qSpeedGround;
                }

                p->qSpeedGround = qSpeedGround;
            }
        }
    }

    {
        s32 qHalfAccel = (p->acceleration >> 1);
        s32 qSpeedGround = p->qSpeedGround;
        if (qSpeedGround < 0) {
            qSpeedGround += qHalfAccel;
            if (qSpeedGround > ((s32)((0)*256))) {
                qSpeedGround = ((s32)((0)*256));
            }

            p->qSpeedGround = qSpeedGround;
        } else if (qSpeedGround > 0) {
            qSpeedGround -= qHalfAccel;
            if (qSpeedGround < ((s32)((0)*256))) {
                qSpeedGround = ((s32)((0)*256));
            }

            p->qSpeedGround = qSpeedGround;
        }

        if (qSpeedGround == 0) {
            if (!(p->moveState & 0x00000200)) {
                p->moveState &= ~0x00000004;

                if (p->heldInput & 0x0080) {
                    p->charState = 2;
                } else {
                    p->charState = 4;
                }

                { Player_HandleSpriteYOffsetChange(p, 14); { (p)->spriteOffsetX = 6; (p)->spriteOffsetY = 14; } };
            } else {
                qSpeedGround = ((s32)((3)*256));

                if (p->moveState & 0x00000001) {
                    qSpeedGround = -qSpeedGround;
                }

                p->qSpeedGround = qSpeedGround;
                m4aSongNumStart(109);
            }
        }
    }

    Player_80470AC(p);
    sa2__sub_8023128(p);
}
# 3420 "/home/awaszczak/git/sa2/sa1/../src/game/shared/stage/player.c"
void sa2__sub_80232D0(Player *p)
{
    Camera *cam = &gCamera;
    s32 qWorldX = p->qWorldX;
    s32 qWorldY = p->qWorldY;
    s32 unkX, unkY;


    if (p->playerID == 0) {
# 3462 "/home/awaszczak/git/sa2/sa1/../src/game/shared/stage/player.c"
        {
            unkX = sa2__gUnknown_080D650C[gCurrentLevel][0];
            if ((unkX >= 0) && (qWorldX >= ((s32)((unkX)*256))) && (cam->sa2__unk8 != 0) && !(cam->sa2__unk50 & 0x1)) {
                s32 ix = sa2__gUnknown_080D661C[gCurrentLevel][0];
                qWorldX += ((s32)((ix)*256));


                if (gNumSingleplayerCharacters == 2) {
                    gPartner.qWorldX += ((s32)((ix)*256));
                }

                cam->x += ix;
                cam->sa2__unk20 += ix;






            }

            unkY = sa2__gUnknown_080D650C[gCurrentLevel][1];
            if ((unkY >= 0) && (qWorldY >= ((s32)((unkY)*256))) && (cam->sa2__unkC != 0) && !(cam->sa2__unk50 & 0x2)) {
                s32 iy = sa2__gUnknown_080D661C[gCurrentLevel][1];
                s32 worldY = iy * 256;
                qWorldY += ((s32)((worldY)*256));


                if (gNumSingleplayerCharacters == 2) {
                    gPartner.qWorldY += ((s32)((worldY)*256));
                }




                cam->y += worldY;
                cam->sa2__unk24 += worldY;







            }
        }
    }

    if ((p->moveState & (0x80000000 | 0x00000080)) != 0x00000080) {



        s32 qNoclipWorldX, qNoclipWorldY;
        Camera *cam2 = &gCamera;
        s32 qPlayerY = p->qWorldY;

        if (!(p->moveState & 0x80000000)) {
            bool32 outOfBounds;



            if (!(gStageFlags & 0x0080)) {
                if (qPlayerY >= ((s32)((cam2->maxY)*256)) - 1) {
                    outOfBounds = 1;
                    goto lab;
                }
            } else if ((gStageFlags & 0x0080)) {
                if (qPlayerY <= ((s32)((cam2->minY)*256))) {
                    outOfBounds = 1;
                    goto lab;
                }
            }

            outOfBounds = 0;
        lab:
# 3568 "/home/awaszczak/git/sa2/sa1/../src/game/shared/stage/player.c"
            if (outOfBounds) {
                p->moveState |= 0x00000080;


                if (p->moveState & 0x00000040) {
                    p->qSpeedAirY = -((s32)(((2.625))*256));
                } else

                {
                    p->qSpeedAirY = -((s32)(((4.875))*256));
                }

                if (!(gStageFlags & 0x0080)) {
                    qWorldY = ((s32)((cam->maxY)*256)) - 1;
                } else {
                    qWorldY = ((s32)((cam->minY)*256));
                }







            }
        }
# 3605 "/home/awaszczak/git/sa2/sa1/../src/game/shared/stage/player.c"
        qNoclipWorldX = qWorldX;
        qNoclipWorldY = qWorldY;

        qWorldX = ({ s32 clamped; if ((qWorldX) < (((s32)((cam->minX)*256)))) { clamped = (((s32)((cam->minX)*256))); } else { clamped = (qWorldX) > (((s32)((cam->maxX)*256)) - 1) ? (((s32)((cam->maxX)*256)) - 1) : (qWorldX); } clamped; });

        qWorldY = ({ s32 clamped; if ((qWorldY) < (((s32)((cam->minY)*256)))) { clamped = (((s32)((cam->minY)*256))); } else { clamped = (qWorldY) > (((s32)((cam->maxY)*256)) - 1) ? (((s32)((cam->maxY)*256)) - 1) : (qWorldY); } clamped; });



        if (qWorldX != qNoclipWorldX) {
            p->qSpeedAirX = ((s32)((0)*256));
            p->qSpeedGround = ((s32)((0)*256));
        }

        if (qWorldY != qNoclipWorldY) {
            p->qSpeedAirY = ((s32)((0)*256));
            p->qSpeedGround = ((s32)((0)*256));
        }
# 3643 "/home/awaszczak/git/sa2/sa1/../src/game/shared/stage/player.c"
        p->qWorldX = qWorldX;
        p->qWorldY = qWorldY;
    }
}


bool32 Player_TrySpindash(Player *p)
{
    if (!(p->moveState & 0x00000400)) {
        if ((p->charState != 2) || !(p->frameInput & gPlayerControls.jump)) {
            return 0;
        }

        p->charState = 6;
        m4aSongNumStart(109);
        CreateSpindashDustEffect();

        p->moveState |= 0x00000400;

        {





            p->qSpindashAccel = ((s32)((0)*256));

        }

        { Player_HandleSpriteYOffsetChange(p, 9); { (p)->spriteOffsetX = 6; (p)->spriteOffsetY = 9; } };
    } else {
        if (!(p->heldInput & 0x0080)) {
            s32 qNewSpeed;

            p->moveState &= ~0x00000400;

            qNewSpeed = !(p->moveState & 0x00002000)
                ? gUnknown_084AE188[((int)((p->qSpindashAccel) >> 8))]
                : gUnknown_084AE19A[((int)((p->qSpindashAccel) >> 8))];

            if (p->playerID == 0) {
                gCamera.sa2__unk40 = 10;
            }

            if (p->moveState & 0x00000001) {
                qNewSpeed = -qNewSpeed;
            }

            p->qSpeedGround = qNewSpeed;
            p->moveState |= 0x00000004;

            m4aSongNumStart(110);
            p->charState = 5;
        } else {
            s16 qNewAccel = p->qSpindashAccel;

            s16 qNewAccel2 = qNewAccel;
            if (qNewAccel2 != ((s32)((0)*256))) {
                qNewAccel = qNewAccel2 - (((int)((qNewAccel << 3) >> 8)));

                if (qNewAccel <= ((s32)((0)*256))) {
                    qNewAccel = ((s32)((0)*256));
                }
            }

            if (p->charState != 7) {
                p->charState = 6;
            }

            if (p->frameInput & gPlayerControls.jump) {
                struct MP2KPlayerState *mPlayerInfo;
                m4aSongNumStart(109);

                mPlayerInfo = gMPlayTable[gSongTable[109].ms].info;
                m4aMPlayImmInit(mPlayerInfo);
                m4aMPlayPitchControl(mPlayerInfo, 0xFFFF, (qNewAccel & ~0x7F));

                if (gGameMode != 6) {
                    if ((p->character == CHARACTER_SONIC) || (p->character == CHARACTER_KNUCKLES)) {
                        p->charState = 7;
                    }
                }

                qNewAccel += ((s32)((2.0)*256));
                qNewAccel = (((qNewAccel) > (((s32)((8.0)*256)))) ? (qNewAccel) : (((s32)((8.0)*256))));
            }
            p->qSpindashAccel = qNewAccel;
        }

        Player_804726C(p);
        Player_8047280(p);
    }

    sa2__sub_80232D0(p);
    sa2__sub_8022D6C(p);

    return 1;
}

bool32 Player_TryJump(Player *p)
{
    u8 rot = p->rotation;
    s32 r5 = 0;
    s32 theta;

    if (!(p->frameInput & gPlayerControls.jump)) {
        return 0;
    }

    if ((gStageFlags & 0x0080)) {
        rot += ((s32)((0.25)*256));
        rot = -rot;
        rot -= ((s32)((0.25)*256));
    }

    if (sa2__sub_8022F58(rot + ((s32)((0.50)*256)), p) < 4) {
        return 0;
    }

    p->moveState |= 0x00000002;
    p->moveState &= ~(0x01000000 | 0x00000020);
    p->moveState |= 0x00000100;
    p->moveState &= ~(0x00000800);

    switch (p->character) {
        case CHARACTER_SONIC:
        case CHARACTER_TAILS:
        case CHARACTER_KNUCKLES: {
            p->charState = 5;
            if (p->moveState & 0x00000040) {
                r5 = 0x2A0;
            } else {
                r5 = 0x4E0;
            }
        } break;

        case CHARACTER_AMY: {
            if (!(p->heldInput & 0x0080)) {
                p->charState = 85;
                if (p->moveState & 0x00000040) {
                    r5 = 0x2A0;
                } else {
                    r5 = 0x4E0;
                }
            } else {
                s32 r2;
                p->charState = 91;
                p->moveState &= ~0x02000000;
                p->moveState |= 0x04000000;
                p->moveState &= ~0x00000100;
                p->w.af.flags = 2;
                if (p->moveState & 0x00000040) {
                    r2 = ((s32)((2.50)*256));
                    r5 = ((s32)((0.75)*256));
                } else {
                    r2 = ((s32)((4.00)*256));
                    r5 = ((s32)((1.25)*256));
                }
                if (p->moveState & 0x00000001) {
                    p->qSpeedAirX = (-(r2 * ((int)(((gSineTable[(p->rotation * 4) + 256])) >> 6))) >> 8);
                    p->qSpeedAirY = (-(r2 * ((int)(((gSineTable[(p->rotation * 4)])) >> 6))) >> 8);
                } else {
                    p->qSpeedAirX = +((r2 * ((int)(((gSineTable[(p->rotation * 4) + 256])) >> 6))) >> 8);
                    p->qSpeedAirY = +((r2 * ((int)(((gSineTable[(p->rotation * 4)])) >> 6))) >> 8);
                }
            }
        } break;
    }

    rot = p->rotation - ((s32)((0.25)*256));
    p->qSpeedAirX += ((r5 * ((int)(((gSineTable[(rot * 4) + 256])) >> 6))) >> 8);
    p->qSpeedAirY += ((r5 * ((int)(((gSineTable[(rot * 4)])) >> 6))) >> 8);

    m4aSongNumStart(116);

    if (p->character != CHARACTER_AMY) {
        if (!(p->moveState & 0x00000004)) {
            p->moveState |= 0x00000004;
            { Player_HandleSpriteYOffsetChange(p, 9); { (p)->spriteOffsetX = 6; (p)->spriteOffsetY = 9; } };
        } else {
            p->moveState |= 0x00000010;
        }
    }

    return 1;
}


bool32 sub_8044434(Player *p)
{
    u8 rot = p->rotation;
    s32 r2 = 0;

    if (!(p->frameInput & gPlayerControls.jump)) {
        return 0;
    }

    if ((gStageFlags & 0x0080)) {
        rot += ((s32)((0.25)*256));
        rot = -rot;
        rot -= ((s32)((0.25)*256));
    }

    p->layer ^= 1;

    if (sa2__sub_8022F58(rot + ((s32)((0.50)*256)), p) < 4) {
        p->layer ^= 1;
        return 0;
    }

    if (gPlayer.character == CHARACTER_AMY) {
        m4aSongNumStop(134);
    } else {
        m4aSongNumStop(114);
    }

    p->moveState |= 0x00000002;
    p->moveState &= ~(0x01000000 | 0x00000020);
    p->moveState |= 0x00000100;
    p->moveState &= ~(0x00000800);

    gPlayer.itemEffect &= ~0x80;

    switch (p->character) {
        case CHARACTER_SONIC:
        case CHARACTER_TAILS:
        case CHARACTER_KNUCKLES: {
            p->charState = 5;
        } break;

        case CHARACTER_AMY: {
            p->charState = 85;
        } break;
    }

    if (p->moveState & 0x00000040) {
        r2 = ((s32)((2.625)*256));
    } else {
        r2 = ((s32)((4.875)*256));
    }

    rot = p->rotation - ((s32)((0.25)*256));
    p->qSpeedAirY = ((r2 * ((int)(((gSineTable[(rot * 4)])) >> 6))) >> 8);
    m4aSongNumStart(116);

    (&p->spriteInfoBody->s)->frameFlags &= ~(((3) << (12)));
    (&p->spriteInfoBody->s)->frameFlags |= ((2) << (12));
    (&p->spriteInfoLimbs->s)->frameFlags &= ~(((3) << (12)));
    (&p->spriteInfoLimbs->s)->frameFlags |= ((2) << (12));

    if (p->character != CHARACTER_AMY) {
        if (!(p->moveState & 0x00000004)) {
            p->moveState |= 0x00000004;
            { Player_HandleSpriteYOffsetChange(p, 9); { (p)->spriteOffsetX = 6; (p)->spriteOffsetY = 9; } };
        } else {
            p->moveState |= 0x00000010;
        }
    }

    return 1;
}



void Player_AirInputControls(Player *p)
{
    s32 r5 = p->acceleration * 2;

    s32 r6 = p->maxSpeed;




    if ((p->charState != 15)) {
        if (!(p->moveState & 0x00000010)) {
            s16 qAirSpeedS;
            u16 qAirSpeedU = p->qSpeedAirX;

            if (p->heldInput & 0x0020) {



                if ((p->charState != 23)



                ) {
                    p->moveState |= 0x00000001;
                }

                qAirSpeedS = qAirSpeedU;
                qAirSpeedU = qAirSpeedS - r5;
                qAirSpeedS = qAirSpeedU;

                if (qAirSpeedS < -r6) {
                    qAirSpeedU = qAirSpeedS + r5;
                    qAirSpeedS = qAirSpeedU;

                    if (qAirSpeedS > -r6) {
                        qAirSpeedU = -r6;
                    }
                }
            } else if (p->heldInput & 0x0010) {
                if ((p->charState != 23)



                ) {
                    p->moveState &= ~0x00000001;
                }

                qAirSpeedS = qAirSpeedU;
                qAirSpeedU = qAirSpeedS + r5;
                qAirSpeedS = qAirSpeedU;

                if (qAirSpeedS > r6) {
                    qAirSpeedU = qAirSpeedS - r5;
                    qAirSpeedS = qAirSpeedU;

                    if (qAirSpeedS < r6) {
                        qAirSpeedU = r6;
                    }
                }
            }



            p->qSpeedAirX = qAirSpeedU;

        }


        if ((u16)p->qSpeedAirY > (u16)(-((s32)((67)*256)) - 1)) {
            s16 qSpeedAirX = p->qSpeedAirX;
            s16 qSpeedAirXFrac = p->qSpeedAirX >> 5;
            if (qSpeedAirXFrac < 0) {
                qSpeedAirX -= qSpeedAirXFrac;
                if (qSpeedAirX > 0) {
                    qSpeedAirX = 0;
                }

                p->qSpeedAirX = qSpeedAirX;
            } else if (qSpeedAirXFrac > 0) {
                qSpeedAirX -= qSpeedAirXFrac;

                if (qSpeedAirX < 0)
                    qSpeedAirX = 0;

                p->qSpeedAirX = qSpeedAirX;
            }
        }

    }
}


void Player_8044670(Player *p)
{
    s16 r4 = (!(p->moveState & 0x00000040)) ? -((s32)((3.0)*256)) : -((s32)((1.5)*256));

    if (p->moveState & 0x00000100) {
        if (p->qSpeedAirY < r4) {
            if (!(p->heldInput & gPlayerControls.jump)) {
                p->qSpeedAirY = r4;
            }
        } else {

            if ((gGameMode != 6) && (p->sa2__unk61 == 0) && (p->frameInput & gPlayerControls.jump)
                && (p->charState != 15)) {
                p->moveState &= ~0x00000010;
                p->sa2__unk61 = 1;

                switch (p->character) {
                    case CHARACTER_SONIC: {
                        Player_Sonic_InitInstaShield(p);
                    } break;

                    case CHARACTER_TAILS: {
                        Player_Tails_InitFlying(p);
                    } break;

                    case CHARACTER_KNUCKLES: {
                        Player_Knuckles_InitGlide(p);
                    } break;

                    case CHARACTER_AMY: {
                        ;
                    } break;
                }
            }
        }
    } else if (!(p->moveState & 0x00000200)) {
        if (p->qSpeedAirY < -((s32)((11.8125)*256))) {
            p->qSpeedAirY = -((s32)((11.8125)*256));
        }
    }
}

void Player_8044750(Player *p)
{
    Camera *cam = &gCamera;

    if ((p->sa2__unk25 == 0) || (--p->sa2__unk25 == 0)) {
        if (p->playerID == 0) {
            if (!(gStageFlags & 0x0080)) {
                if (cam->sa2__unk4C + cam->shiftY > -72) {
                    cam->sa2__unk4C -= 2;
                }
            } else {
                if (cam->sa2__unk4C + cam->shiftY < 72) {
                    cam->sa2__unk4C += 2;
                }
            }
        }
    } else if (p->playerID == 0) {
        if (cam->sa2__unk4C > 0) {
            cam->sa2__unk4C -= 2;
        } else if (cam->sa2__unk4C < 0) {
            cam->sa2__unk4C += 2;
        }
    }
}



void Player_80447D8(Player *p)
{
    Camera *cam = &gCamera;

    p->charState = 2;

    if (p->qSpeedGround == 0) {
        if ((p->sa2__unk25 == 0) || (--p->sa2__unk25 == 0)) {
            if (p->playerID == 0) {
                if (!(gStageFlags & 0x0080)) {
                    if (cam->sa2__unk4C + cam->shiftY < +60) {
                        cam->sa2__unk4C += 2;
                    }
                } else {
                    if (cam->sa2__unk4C + cam->shiftY > -60) {
                        cam->sa2__unk4C -= 2;
                    }
                }
            }
        } else if (p->playerID == 0) {
            if (cam->sa2__unk4C > 0) {
                cam->sa2__unk4C -= 2;
            } else if (cam->sa2__unk4C < 0) {
                cam->sa2__unk4C += 2;
            }
        }
    } else if (p->character != CHARACTER_AMY) {
        m4aSongNumStart(109);
        p->moveState |= 0x00000004;
        { Player_HandleSpriteYOffsetChange(p, 9); { (p)->spriteOffsetX = 6; (p)->spriteOffsetY = 9; } };
        p->charState = 5;

        if (p->playerID == 0) {


            p->sa2__unk25 = 120;

            if (p->playerID == 0) {
                if (cam->sa2__unk4C > 0) {
                    cam->sa2__unk4C -= 2;
                    asm("");
                } else if (cam->sa2__unk4C < 0) {
                    cam->sa2__unk4C += 2;
                }
            }
        }
    }
}


void sub_80448D0(Player *p)
{
    if (p->charState == 12 || p->charState == 13) {
        if (p->playerID == 0) {


            p->sa2__unk25 = 120;

            if (p->playerID == 0) {
                if (gCamera.sa2__unk4C > 0) {
                    gCamera.sa2__unk4C -= 2;
                } else if (gCamera.sa2__unk4C < 0) {
                    gCamera.sa2__unk4C += 2;
                }
            }
        }
    } else {
        switch (p->heldInput & (0x0080 | 0x0040)) {
            case 0: {
                if (p->playerID == 0) {
                    p->sa2__unk25 = 120;

                    if (p->playerID == 0) {
                        if (gCamera.sa2__unk4C > 0) {
                            gCamera.sa2__unk4C -= 2;
                        } else if (gCamera.sa2__unk4C < 0) {
                            gCamera.sa2__unk4C += 2;
                        }
                    }
                }

                if (p->charState == 2) {
                    p->charState = 3;
                } else if (p->charState == 10) {
                    p->charState = 11;
                }
            } break;

            case 0x0040: {

                if (p->qSpeedGround == 0) {
                    p->charState = 10;
                    Player_8044750(p);

                } else if (p->playerID == 0) {

                    p->sa2__unk25 = 120;

                    if (p->playerID == 0) {
                        if (gCamera.sa2__unk4C > 0) {
                            gCamera.sa2__unk4C -= 2;
                        } else if (gCamera.sa2__unk4C < 0) {
                            gCamera.sa2__unk4C += 2;
                        }
                    }
                }
            } break;

            case 0x0080: {
                Player_80447D8(p);
            } break;
        }
    }
}

void sub_80449D8(Player *p)
{
    s32 qSpeedGround;
    s32 rot;
    s32 qMin;


    if (p->heldInput & (0x0080 | 0x0010)) {
        if (((p->rotation + ((s32)((0.375)*256))) & 0xFF) < ((s32)((0.75)*256))) {
            p->qSpeedGround += (((int)(((gSineTable[(p->rotation * 4)])) >> 6)) * 5) >> 5;
        }
    }

    qSpeedGround = p->qSpeedGround;

    if (p->heldInput & 0x0020) {
        qSpeedGround -= ((s32)((8. / 256.)*256));

        qMin = ((s32)((0.75)*256));
        if (qSpeedGround < qMin) {
            qSpeedGround = qMin;
        }
    }

    qSpeedGround -= ((s32)((8. / 256.)*256));

    qMin = ((s32)((0.75)*256));
    if (qSpeedGround < qMin) {
        qSpeedGround = qMin;
    }

    p->qSpeedGround = qSpeedGround;

    p->charState = 16;

    qSpeedGround = p->qSpeedGround;
    rot = p->rotation;
    p->qSpeedAirX = ((p->qSpeedGround * ((int)(((gSineTable[(rot * 4) + 256])) >> 6))) >> 8);
    p->qSpeedAirY = ((p->qSpeedGround * ((int)(((gSineTable[(rot * 4)])) >> 6))) >> 8);
}
# 4327 "/home/awaszczak/git/sa2/sa1/../src/game/shared/stage/player.c"
void Player_HandleWater(Player *p)
{






    p->moveState &= ~0x00001000;
    if (gWater.isActive == 1 && gWater.currentWaterLevel >= 0 && (((int)((p->qWorldY) >> 8)) - 4) >= gWater.currentWaterLevel) {
        if (!(p->moveState & 0x00000040)) {
            p->moveState |= 0x00000040;
            p->moveState |= 0x00001000;

            p->qSpeedAirX = p->qSpeedAirX >> 1;
            p->qSpeedAirY = p->qSpeedAirY >> 2;
            if ((p->character != CHARACTER_KNUCKLES || p->sa2__unk61 != 9) && p->framesUntilWaterSurfaceEffect < 1) {
                p->framesUntilWaterSurfaceEffect = 10;
                CreateWaterfallSurfaceHitEffect(((int)((p->qWorldX) >> 8)), gWater.currentWaterLevel);
                m4aSongNumStart(190);
            }
        }


        if (!(p->moveState & 0x00002000)) {
            p->maxSpeed = ((s32)((2.25)*256));
            p->acceleration = ((s32)((4. / 256.)*256));
            p->deceleration = ((s32)((48. / 256.)*256));
        } else {
            p->maxSpeed = ((s32)((3.75)*256));
            p->acceleration = ((s32)((18. / 256.)*256));
            p->deceleration = ((s32)((96. / 256.)*256));
        }


        if (--p->framesUntilDrownCountDecrement < 1) {
            switch (p->secondsUntilDrown--) {
                case 11:
                    if (p->playerID == 0) {
                        gMusicManagerState.unk4 = 16;
                    }
                    break;
                case 12:
                    SpawnDrowningCountdownNum(p, 5);
                    break;
                case 10:
                    SpawnDrowningCountdownNum(p, 4);
                    break;
                case 8:
                    SpawnDrowningCountdownNum(p, 3);
                    break;
                case 6:
                    SpawnDrowningCountdownNum(p, 2);
                    break;
                case 4:
                    SpawnDrowningCountdownNum(p, 1);
                    break;
                case 2:
                    SpawnDrowningCountdownNum(p, 0);
                    break;
            }
            if (p->secondsUntilDrown < 0) {
                p->moveState |= 0x00000080;
                p->qSpeedAirY = 0;
                SpawnAirBubbles(p->qWorldX, p->qWorldY - ((s32)((12)*256)), 0, 1);
                SpawnBubblesAfterDrowning(p);
            }
            p->framesUntilDrownCountDecrement = 60;
        }
        if (!(gStageTime % 16u) && !(({ gPseudoRandom = (gPseudoRandom * 0x196225) + 0x3C6EF35F; gPseudoRandom; }) & 0x300)) {
            s32 qDX = ((p->moveState & 0x00000001) ? -((s32)((4)*256)) : +((s32)((4)*256)));
            SpawnAirBubbles(p->qWorldX + qDX, p->qWorldY - ((s32)((4)*256)), 0, 0);
        }
    } else {
        if (p->moveState & 0x00000040) {
            p->moveState &= ~0x00000040;
            p->moveState |= 0x00001000;
            p->qSpeedAirY = p->qSpeedAirY << 1;

            if ((p->character != CHARACTER_KNUCKLES || p->sa2__unk61 != 9) && p->framesUntilWaterSurfaceEffect < 1) {
                p->framesUntilWaterSurfaceEffect = 10;
                CreateWaterfallSurfaceHitEffect(((int)((p->qWorldX) >> 8)), gWater.currentWaterLevel);
                m4aSongNumStart(190);
            }
        }

        if (!(p->moveState & 0x00002000)) {
            p->maxSpeed = ((s32)((4.50)*256));
            p->acceleration = ((s32)((8. / 256.)*256));
            p->deceleration = ((s32)((96. / 256.)*256));
        } else {
            p->maxSpeed = ((s32)((7.50)*256));
            p->acceleration = ((s32)((36. / 256.)*256));
            p->deceleration = ((s32)((192. / 256.)*256));
        }

        p->framesUntilDrownCountDecrement = 60;
        p->secondsUntilDrown = 30;


        if (p->playerID == 0) {
            m4aSongNumStop(27);
        }





    }

    if (p->itemEffect & 0x04) {

        p->maxSpeed = p->maxSpeed * 2;
        p->acceleration = p->acceleration * 2;
        p->deceleration = p->deceleration * 2;




    } else if (p->itemEffect & 0x10) {
        p->maxSpeed = p->maxSpeed >> 2;
        p->acceleration = p->acceleration >> 2;
        p->deceleration = p->deceleration >> 2;
    }

    if (p->framesUntilWaterSurfaceEffect != 0) {
        p->framesUntilWaterSurfaceEffect--;
    }
}



void Player_8044D74(Player *p)
{
    Sprite *sprBelow = p->stoodObj;
    CamCoord sprWorldX = gCamera.x + sprBelow->x;

    s32 sprWorldSubOffsetLeft = ((s32)((sprWorldX + sprBelow->hitboxes[0].b.left - p->spriteOffsetX + 1)*256));
    s32 sprWorldSub2;

    if ((p->qWorldX < sprWorldSubOffsetLeft) && (sprBelow->hitboxes[0].b.left != 0)) {
        if ((p->moveState & 0x00000001)) {
            p->charState = 12;
        } else {
            p->charState = 13;
        }

        return;
    } else {
        s32 sprWorldSubOffsetRight = ((s32)((sprWorldX + sprBelow->hitboxes[0].b.right + p->spriteOffsetX - 2)*256));

        if ((p->qWorldX > sprWorldSubOffsetRight) && (sprBelow->hitboxes[0].b.right != 0)) {
            if ((p->moveState & 0x00000001)) {
                p->charState = 13;
            } else {
                p->charState = 12;
            }

            return;
        }
    }

    sprWorldSub2 = ((s32)((sprWorldX + sprBelow->hitboxes[0].b.left - p->spriteOffsetX + 2)*256));

    if ((p->qWorldX < sprWorldSub2) || (p->qWorldX > ((s32)((sprWorldX + sprBelow->hitboxes[0].b.right + p->spriteOffsetX - 3)*256)))) {
        if (p->prevCharState == 12 || p->prevCharState == 13) {

            p->charState = p->prevCharState;
        }
    }
}

void Player_8044E48(Player *p)
{
    s32 worldX = ((int)((p->qWorldX) >> 8));
    s32 worldY = ((int)((p->qWorldY) >> 8));
    s32 res;

    res = sa2__sub_801E4E4(worldY + p->spriteOffsetY, worldX, p->layer, +8, 0, sa2__sub_801EE64);

    if (res > 8) {
        s32 r6;
        if ((gStageFlags & 0x0080)) {
            s32 x, y;
            s32 x2, y2;
            y = p->spriteOffsetY;
            y = worldY - y;
            x = worldX - 2;
            r6 = sa2__sub_801E4E4(y, x - p->spriteOffsetX, p->layer, -8, 0, sa2__sub_801EE64);

            y2 = p->spriteOffsetY;
            y2 = worldY - y2;
            x2 = worldX + 2;
            res = sa2__sub_801E4E4(y2, x2 + p->spriteOffsetX, p->layer, -8, 0, sa2__sub_801EE64);
        } else {
            s32 x, y;
            s32 x2, y2;
            y = worldY + p->spriteOffsetY;
            x = worldX - 2;
            r6 = sa2__sub_801E4E4(y, x - p->spriteOffsetX, p->layer, +8, 0, sa2__sub_801EE64);

            y2 = worldY + p->spriteOffsetY;
            x2 = worldX + 2;
            res = sa2__sub_801E4E4(y2, x2 + p->spriteOffsetX, p->layer, +8, 0, sa2__sub_801EE64);
        }

        if ((r6 > 8) && (res == 0)) {
            if (!(p->moveState & 0x00000001)) {
                p->charState = 13;
            } else {
                p->charState = 12;
            }
        } else if ((r6 == 0) && (res > 8)) {
            if ((p->moveState & 0x00000001)) {
                p->charState = 13;
            } else {
                p->charState = 12;
            }
        }
    }
}

void Player_8044F7C(Player *p)
{
    s32 qSpeed;
    u8 rot;

    if ((p->sa2__unk2A == 0) && (p->charState != 64) && (p->charState != 27)) {
        switch (p->heldInput & (0x0020 | 0x0010)) {
            case 0: {
                if (p->qSpeedGround != ((s32)((0)*256))) {
                    if ((p->charState == 8) || (p->charState == 9) || (p->charState == 0)) {
                        p->charState = 4;

                        { Player_HandleSpriteYOffsetChange(p, 14); { (p)->spriteOffsetX = 6; (p)->spriteOffsetY = 14; } };
                    }
                } else if (!(p->moveState & 0x00800000)) {
                    if ((p->character != CHARACTER_AMY) || !(p->moveState & 0x00000200)) {

                        if (p->charState == 2) {
                            p->charState = 3;
                        } else if (p->charState == 10) {
                            p->charState = 11;
                        } else if ((p->charState != 3) && (p->charState != 11)) {
                            p->charState = 0;
                        }

                        { Player_HandleSpriteYOffsetChange(p, 14); { (p)->spriteOffsetX = 6; (p)->spriteOffsetY = 14; } };
                    }
                }

                if (p->character == CHARACTER_AMY) {
                    if (p->charState == 2) {
                        qSpeed = p->qSpeedGround;
                        if (qSpeed > 0) {
                            qSpeed -= p->deceleration;

                            if (qSpeed < 0) {
                                qSpeed = 0;
                            }
                        } else {
                            qSpeed += p->deceleration;

                            if ((qSpeed) > 0) {
                                qSpeed = 0;
                            }
                        }
                        p->qSpeedGround = qSpeed;
                    }
                }

            } break;

            case 0x0020: {
                Player_8043970(p);
            } break;

            case 0x0010: {
                Player_8043A2C(p);
            } break;
        }

        if ((p->character == CHARACTER_AMY) && (p->moveState & 0x00000200)) {
            qSpeed = p->qSpeedGround;
            if (qSpeed == ((s32)((0)*256))) {
                qSpeed = ((s32)((3)*256));
                if (p->moveState & 0x00000001) {
                    ({ s32 temp = qSpeed; qSpeed = -temp; });
                }
                p->qSpeedGround = qSpeed;
            }
        } else {
            if ((!((p->rotation + ((s32)((0.125)*256))) & 0xC0)) && (p->qSpeedGround == 0)) {
                p->moveState &= ~0x00000020;

                if (!(p->moveState & 0x00800000)) {
                    if ((p->charState != 3) && (p->charState != 11)) {
                        p->charState = 0;
                    }

                    if (p->moveState & 0x00000008) {
                        Player_8044D74(p);
                    } else {
                        Player_8044E48(p);
                    }
                }
            }
        }
    }

    sub_80448D0(p);

    if (!(p->heldInput & (0x0020 | 0x0010))) {
        qSpeed = p->qSpeedGround;
        if (qSpeed > 0) {
            qSpeed -= ((s32)((8. / 256.)*256));
            qSpeed = (((((s32)((0)*256))) > (qSpeed)) ? (((s32)((0)*256))) : (qSpeed));
            p->qSpeedGround = qSpeed;
        } else if (qSpeed < 0) {
            qSpeed += ((s32)((8. / 256.)*256));
            qSpeed = (((((s32)((0)*256))) < (qSpeed)) ? (((s32)((0)*256))) : (qSpeed));
            p->qSpeedGround = qSpeed;
        }
    }

    qSpeed = p->qSpeedGround;
    p->qSpeedAirX = ((qSpeed * ((int)(((gSineTable[((rot = p->rotation) * 4) + 256])) >> 6))) >> 8);
    p->qSpeedAirY = ((qSpeed * ((int)(((gSineTable[(rot * 4)])) >> 6))) >> 8);

    sa2__sub_8023128(p);
}


void Player_HandleSpriteYOffsetChange(Player *p, s32 spriteOffsetY)
{
    u8 rot;
    if (p->spriteOffsetY == spriteOffsetY) {
        return;
    }

    rot = p->rotation;

    if ((gStageFlags & 0x0080)) {
        rot += ((s32)((1. / 4.)*256));
        rot = -rot;
        rot -= ((s32)((1. / 4.)*256));
    }


    if ((s32)(rot + ((s32)((1. / 8.)*256))) > 0) {
        if (rot != 0) {
            rot = (rot + ((s32)((1. / 8.)*256))) - 1;
            ;
        } else {
            rot = ((s32)((1. / 8.)*256));
        }
    } else {
        if (rot != 0) {
            rot = (rot + ((s32)((1. / 8.)*256)));
        } else {
            rot = ((s32)((1. / 8.)*256)) - 1;
        }
    }

    switch ((rot >> 6)) {
        case 0: {
            p->qWorldY -= ((s32)((spriteOffsetY - p->spriteOffsetY)*256));
        } break;

        case 2: {
            p->qWorldY += ((s32)((spriteOffsetY - p->spriteOffsetY)*256));
        } break;

        case 1: {
            p->qWorldX += ((s32)((spriteOffsetY - p->spriteOffsetY)*256));
        } break;

        case 3: {
            p->qWorldX -= ((s32)((spriteOffsetY - p->spriteOffsetY)*256));
        } break;
    }
}


void Player_Debug_TestRingScatter(Player *p)
{
    if (p->moveState & 0x80000000) {
        s32 qSpeedGround = p->qSpeedGround;
        if (gInput & 0x00F0) {
            qSpeedGround += ((s32)((0.125)*256));
            qSpeedGround = qSpeedGround >= ((s32)((0)*256)) ? ({ s32 clamped; if ((qSpeedGround) < (((s32)((0)*256)))) { clamped = (((s32)((0)*256))); } else { clamped = (qSpeedGround) > (((s32)((16)*256))) ? (((s32)((16)*256))) : (qSpeedGround); } clamped; }) : ((s32)((0)*256));
        } else {
            qSpeedGround = 0;
        }
        p->qSpeedGround = qSpeedGround;

        switch (gInput & (0x0020 | 0x0010)) {
            case 0x0020:
                p->qSpeedAirX = -qSpeedGround;
                break;

            case 0x0010:
                p->qSpeedAirX = +qSpeedGround;
                break;

            default:
                p->qSpeedAirX = 0;
        }

        switch (gInput & (0x0080 | 0x0040)) {
            case 0x0040:
                p->qSpeedAirY = -qSpeedGround;
                break;

            case 0x0080:
                p->qSpeedAirY = +qSpeedGround;
                break;

            default:
                p->qSpeedAirY = 0;
        }

        { p->qWorldX += p->qSpeedAirX; if ((gStageFlags ^ gPrevStageFlags) & 0x0080) { p->qSpeedAirY = -p->qSpeedAirY; } ({});; p->qWorldY = (gStageFlags & 0x0080) ? p->qWorldY - p->qSpeedAirY : p->qWorldY + p->qSpeedAirY; };
        sa2__sub_80232D0(p);

        if (gPressedKeys & 0x0002) {
            InitScatteringRings(((int)((p->qWorldX) >> 8)), ((int)((p->qWorldY) >> 8)), 1);
        }
    }
}


void Task_PlayerHandleDeath(void)
{
    player_0_Task *gt = (void *)((gCurTask)->data);
    u32 val = gt->unk4;
    if (val == 0) {

        if (((gGameMode == 0) || (gGameMode == 1))) {
            TaskDestroy(gCurTask);

            if ((!(&gLoadedSaveGame)->timeLimitDisabled
                 && (gCourseTime > ((int)(((10 * 60.) + 0) * 60)) || (gStageFlags & 0x0004 && gCourseTime == 0)))



            ) {
                HandleDeath();
            } else {
                gRingCount = 0;



                HandleLifeLost();
            }
        } else

        {

            if (gGameMode != 4 && gGameMode != 5)

            {
                gRingCount = 0;
            }
# 4803 "/home/awaszczak/git/sa2/sa1/../src/game/shared/stage/player.c"
            InitializePlayer(&gPlayer);
            gCamera.x = ((int)((gPlayer.qWorldX) >> 8)) + gCamera.shiftX - (320 / 2);
            gCamera.y = ((int)((gPlayer.qWorldY) >> 8)) + gCamera.shiftY - (240 / 2);
            m4aMPlayTempoControl(&gMPlayInfo_BGM, 256);
            gPlayer.moveState = 0;
            gStageFlags &= ~0x0080;

            gPlayer.spriteInfoBody->s.frameFlags &= ~((3) << (12));
            gPlayer.spriteInfoBody->s.frameFlags |= ((2) << (12));
            gPlayer.spriteInfoLimbs->s.frameFlags &= ~((3) << (12));
            gPlayer.spriteInfoLimbs->s.frameFlags |= ((2) << (12));

            gCamera.sa2__unk50 &= ~0x3;
# 4826 "/home/awaszczak/git/sa2/sa1/../src/game/shared/stage/player.c"
            gCurTask->main = Task_PlayerMain;



        }
    } else {
        val--;
        gt->unk4 = val;
    }
}

static inline bool32 DeadPlayerLeftScreen(Player *p, struct Camera *cam, s32 playerY)
{
    if (p->moveState & 0x80000000) {
        return 0;
    }

    if (!(gStageFlags & 0x0080)) {
        if (playerY >= ((s32)((cam->y)*256)) + ((s32)((240 + 80)*256)) - 1) {
            return 1;
        }
    } else {
        if (playerY <= ((s32)((cam->y - 80)*256))) {
            return 1;
        }
    }
# 4866 "/home/awaszczak/git/sa2/sa1/../src/game/shared/stage/player.c"
    return 0;
}

void Task_PlayerDied(void)
{
    Player *p = &gPlayer;

    PlayerSpriteInfo *psi1 = gPlayer.spriteInfoBody;
    PlayerSpriteInfo *psi2 = gPlayer.spriteInfoLimbs;

    if (DeadPlayerLeftScreen(&gPlayer, &gCamera, gPlayer.qWorldY)) {
        player_0_Task *gt = (void *)((gCurTask)->data);
        gt->unk4 = (int)(((0 * 60.) + 1) * 60);






        gCurTask->main = Task_PlayerHandleDeath;
        return;
    }


    { p->qWorldX += p->qSpeedAirX; if ((gStageFlags ^ gPrevStageFlags) & 0x0080) { p->qSpeedAirY = -p->qSpeedAirY; } ({});; p->qWorldY = (gStageFlags & 0x0080) ? p->qWorldY - p->qSpeedAirY : p->qWorldY + p->qSpeedAirY; };
    if (!(p->moveState & 0x00000040)) { p->qSpeedAirY += ((s32)(((42.0 / 256.0))*256)); } else { p->qSpeedAirY += ((s32)(((12.0 / 256.0))*256)); };




    sa2__sub_802486C(p, psi1);
    sa2__sub_8024B10(p, psi1);

    sa2__sub_8024F74(p, psi2);

}

void Task_PlayerMain(void)
{
    Player *p = &gPlayer;
# 4958 "/home/awaszczak/git/sa2/sa1/../src/game/shared/stage/player.c"
    if (p->moveState & 0x00000080) {
        struct Camera *cam = &gCamera;
        gCurTask->main = Task_PlayerDied;
        p->charState = 1;
        p->qSpeedAirX = 0;
# 4972 "/home/awaszczak/git/sa2/sa1/../src/game/shared/stage/player.c"
        p->timerInvulnerability = 2;
        p->itemEffect = 0;
        p->moveState &= ~0x00000020;
        p->moveState &= ~0x00000008;
        p->stoodObj = ((void*)0);
        cam->sa2__unk50 |= 3;

        if (((gGameMode == 0) || (gGameMode == 1))) {
            gStageFlags |= 0x0001;
        }


        p->spriteInfoBody->s.frameFlags &= ~((3) << (12));
        p->spriteInfoBody->s.frameFlags |= ((1) << (12));
        p->sa2__unk80 = 0x100;
        p->sa2__unk82 = 0x100;


        m4aSongNumStop(28);
        m4aSongNumStop(27);
        m4aSongNumStop(120);
# 5013 "/home/awaszczak/git/sa2/sa1/../src/game/shared/stage/player.c"
        if (p->secondsUntilDrown < 0) {
            m4aSongNumStart(192);
        } else {
            m4aSongNumStart(119);
        }

    }

    else {
        Player_HandleInputs(p);
        Player_HandleWater(p);

        if (!(p->moveState & 0x400000)) {
            switch (p->character) {
                case CHARACTER_SONIC: {
                    Player_Sonic_80473AC(p);
                } break;

                case CHARACTER_TAILS: {
                    Player_Tails_8047BA0(p);
                } break;

                case CHARACTER_KNUCKLES: {
                    Player_Knuckles_8049000(p);
                } break;

                case CHARACTER_AMY: {
                    Player_Amy_80497AC(p);
                } break;
            }
        }
    }



    sa2__sub_802486C(p, p->spriteInfoBody);
    sa2__sub_8024B10(p, p->spriteInfoBody);
    sa2__sub_8024F74(p, p->spriteInfoLimbs);

    if ((p->charState != 15) && (p->timerInvulnerability > 0)) {
        p->timerInvulnerability--;
    }

    if (p->itemEffect != 0) {
        if ((p->itemEffect & 0x04) && (--p->timerSpeedup == 0)) {
            m4aMPlayTempoControl(&gMPlayInfo_BGM, ((s32)((1.0)*256)));
            p->itemEffect &= ~0x04;
        }

        if ((p->itemEffect & 0x10) && (--p->timerSpeedup == 0)) {
            m4aMPlayTempoControl(&gMPlayInfo_BGM, ((s32)((1.0)*256)));
            p->itemEffect &= ~0x10;
        }

        if ((p->itemEffect & 0x02) && (--p->timerInvincibility == 0)) {
            p->itemEffect &= ~0x02;
            m4aSongNumStop(28);
        }

        if ((p->itemEffect & 0x20) && (--p->itemEffect20Timer == 0)) {
            p->itemEffect &= ~0x20;

            gDispCnt &= ~0x8000;
            gWinRegs[5] = 0x3F;
        }
    }

}






void Player_Tails_804571C(Player *p)
{
    u16 gravityFlag = (gStageFlags & 0x0080);

    p->layer = gPlayer.layer;

    if (gPlayer.moveState & 0x01000000) {
        gPlayer.layer ^= 0x1;
    }

    if (p->moveState & 0x00000040) {
        p->charState = 57;
    } else {
        p->charState = 53;
    }

    if (((int)((p->qWorldX) >> 8)) < gCamera.x - 256) {
        p->qWorldX = ((s32)((gCamera.x - 256)*256));
    }

    if (((int)((p->qWorldX) >> 8)) > gCamera.x + 320 + 256) {
        p->qWorldX = ((s32)((gCamera.x + 320 + 256)*256));
    }

    if (((int)((p->qWorldY) >> 8)) < gCamera.y - 256) {
        p->qWorldY = ((s32)((gCamera.y - 256)*256));
    }

    if (((int)((p->qWorldY) >> 8)) > gCamera.y + 240 + 256) {
        p->qWorldY = ((s32)((gCamera.y + 240 + 256)*256));
    }


    if (((((int)((p->qWorldX) >> 8)) - 32) < ((int)((gPlayer.qWorldX) >> 8))) && ((((int)((p->qWorldX) >> 8)) + 32) > ((int)((gPlayer.qWorldX) >> 8)))
        && ((!gravityFlag && ((((int)((p->qWorldY) >> 8)) - 32) < ((int)((gPlayer.qWorldY) >> 8)) - 48) && ((((int)((p->qWorldY) >> 8)) + 32) > ((int)((gPlayer.qWorldY) >> 8)) - 48))
            || (gravityFlag && ((((int)((p->qWorldY) >> 8)) - 32) < ((int)((gPlayer.qWorldY) >> 8)) + 48) && ((((int)((p->qWorldY) >> 8)) + 32) > ((int)((gPlayer.qWorldY) >> 8)) + 48)))
        && (sa2__sub_8022F58(0, p) >= 0)) {

        p->moveState &= ~0x00000020;
        p->moveState &= ~0x00000100;
        p->moveState &= ~0x00000400;
        p->sa2__unk61 = 0;
        p->sa2__unk62 = 0;
        p->sa2__unk63 = 0;
        p->moveState &= ~0x00008000;

        if (p->character == CHARACTER_TAILS) {
            m4aSongNumStop(120);
        }

        if (p->character == CHARACTER_AMY) {
            p->moveState &= ~(0x02000000 | 0x04000000);
        }

        p->qSpeedGround = ((s32)((0)*256));
        p->qSpeedAirX = ((s32)((0)*256));
        p->qSpeedAirY = ((s32)((0)*256));

        p->charState = 56;
        p->moveState &= ~0x00000004;
        p->moveState &= ~0x00000010;
        p->moveState &= ~0x00000200;
        p->moveState &= ~0x00100000;
        p->moveState &= ~0x00800000;
        p->moveState &= ~0x00000080;
        p->moveState &= ~0x00200000;
        p->moveState &= ~0x00400000;
        p->moveState &= ~0x00000008;
        p->stoodObj = ((void*)0);

        gCurTask->main = Task_8045B38;
    } else {
        s32 r2;
        s32 qWorld;
        s32 qDelta;
        s32 world;

        if ((((int)((p->qWorldX) >> 8)) + 1) < ((int)((gPlayer.qWorldX) >> 8))) {
            p->qWorldX += ((s32)((2)*256));
            p->moveState &= ~0x00000001;
        } else if (((int)((gPlayer.qWorldX) >> 8)) < (((int)((p->qWorldX) >> 8)) - 1)) {
            p->qWorldX -= ((s32)((2)*256));
            p->moveState |= 0x00000001;
        }


        world = ((int)((p->qWorldY) >> 8));
        qDelta = p->qWorldY;

        if (!gravityFlag) {
            r2 = ((int)((gPlayer.qWorldY) >> 8)) - 48;
        } else {
            r2 = ((int)((gPlayer.qWorldY) >> 8)) + 48;
        }

        if (world < r2) {
            qDelta = +((s32)((1)*256));
        } else if (r2 < world) {
            qDelta = -((s32)((1)*256));
        } else {
            return;
        }

        p->qWorldY += qDelta;
    }
}



void Task_804597C(void)
{
    PlayerSpriteInfo *psiPartnerBody = gPartner.spriteInfoBody;
    PlayerSpriteInfo *psiPartnerLimbs = gPartner.spriteInfoLimbs;
    s32 qPartnerWorldY = gPartner.qWorldY;
    u32 qPartnerMovestate = gPartner.moveState;
    Camera *cam = &gCamera;
    s32 qWorld;

    if (!(qPartnerMovestate & 0x80000000)) {
        s32 r1;

        if (!(gStageFlags & 0x0080)) {
            if (qPartnerWorldY >= ((s32)((cam->y)*256)) + ((s32)((320)*256)) - 1) {
                r1 = 1;
            } else {
                r1 = 0;
            }
        } else {
            if (qPartnerWorldY > ((s32)((cam->y - (240 / 2))*256))) {
                r1 = 0;
            } else {
                r1 = 1;
            }
        }

        if (r1) {


            gPartner.qWorldX = ((s32)((cam->x - 256)*256));
            gPartner.qWorldY = ((s32)((cam->y - 256)*256));
            gPartner.spriteInfoBody->s.frameFlags &= ~((3) << (12));
            gPartner.spriteInfoBody->s.frameFlags |= ((2) << (12));
            gPartner.moveState &= ~0x00000020;
            gPartner.moveState &= ~0x00000080;

            if (gPartner.moveState & 0x00000040) {
                gPartner.charState = 57;
            } else {
                gPartner.charState = 53;
            }


            gPartner.framesUntilDrownCountDecrement = (int)(((0 * 60.) + 1) * 60);
            gPartner.secondsUntilDrown = 30;

            if (gPartner.playerID == 0) {
                m4aSongNumStop(27);
            }


            gCurTask->main = Task_8045AD8;
            return;
        }
    }


    gPartner.qWorldX += gPartner.qSpeedAirX;

    if ((gStageFlags ^ gPrevStageFlags) & 0x0080) {
        gPartner.qSpeedAirY = -gPartner.qSpeedAirY;
    }


    if (gStageFlags & 0x0080) {
        qWorld = gPartner.qWorldY - gPartner.qSpeedAirY;
    } else {
        qWorld = gPartner.qWorldY + gPartner.qSpeedAirY;
    }

    gPartner.qWorldY = qWorld;

    if (!(gPartner.moveState & 0x00000040)) {
        gPartner.qSpeedAirY += ((s32)((42. / 256.)*256));
    } else {
        gPartner.qSpeedAirY += ((s32)((12. / 256.)*256));
    }

    sa2__sub_802486C(&gPartner, psiPartnerBody);
    sa2__sub_8024B10(&gPartner, psiPartnerBody);
    sa2__sub_8024F74(&gPartner, psiPartnerLimbs);
}


void Task_8045AD8(void)
{
    Player *partner = &gPartner;

    Player_HandleWater(partner);

    if (gPartner.character == CHARACTER_TAILS) {
        Player_Tails_804571C(partner);
    }

    sa2__sub_802486C(partner, gPartner.spriteInfoBody);
    sa2__sub_8024B10(partner, gPartner.spriteInfoBody);
    sa2__sub_8024F74(partner, gPartner.spriteInfoLimbs);

    if (gPartner.charState != 15) {
        if (gPartner.timerInvulnerability > 0) {
            gPartner.timerInvulnerability--;
        }
    }

    partner->sa2__unk25 = 120;
}

void Task_8045B38(void)
{
    Player *partner = &gPartner;
    PlayerSpriteInfo *psiBody;

    if (!(!((partner)->moveState & 0x00000080))) {
        gCurTask->main = Task_804597C;

        partner->charState = 1;
        partner->qSpeedAirX = ((s32)((0)*256));
        partner->timerInvulnerability = 2;
        partner->itemEffect = 0;
        partner->moveState &= ~0x00000020;
        partner->moveState &= ~0x00000008;
        partner->stoodObj = ((void*)0);
        psiBody = partner->spriteInfoBody;
        psiBody->s.frameFlags &= ~((3) << (12));
        psiBody->s.frameFlags |= ((1) << (12));
        partner->sa2__unk80 = ((s32)((1.0)*256));
        partner->sa2__unk82 = ((s32)((1.0)*256));

        m4aSongNumStop(120);

        if (partner->secondsUntilDrown < 0) {
            m4aSongNumStart(192);
        } else {
            m4aSongNumStart(119);
        }
    } else {
        sub_8045DF0(partner);
        Player_HandleWater(partner);

        if ((((int)((partner->qWorldX) >> 8)) < gCamera.x - 256) || (((int)((partner->qWorldX) >> 8)) > gCamera.x + 320 + 256)
            || (((int)((partner->qWorldY) >> 8)) < gCamera.y - 256)
            || (((int)((partner->qWorldY) >> 8)) > gCamera.y + 240 + 256)) {
            if (partner->character == CHARACTER_TAILS) {
                if (partner->moveState & 0x00000040) {
                    partner->charState = 57;
                } else {
                    partner->charState = 53;
                }
            }

            partner->moveState |= 0x00000080;
            partner->moveState &= ~0x00000020;


            partner->framesUntilDrownCountDecrement = (int)(((0 * 60.) + 1) * 60);
            partner->secondsUntilDrown = 30;

            if (partner->playerID == 0) {
                m4aSongNumStop(27);
            }

            gCurTask->main = Task_8045AD8;
        } else if (!(partner->moveState & 0x00400000)) {




            switch (partner->character) {
                case CHARACTER_SONIC: {
                    Player_Sonic_80473AC(partner);
                } break;

                case CHARACTER_TAILS: {
                    Player_Tails_8047BA0(partner);
                } break;

                case CHARACTER_KNUCKLES: {
                    Player_Knuckles_8049000(partner);
                } break;

                case CHARACTER_AMY: {
                    Player_Amy_80497AC(partner);
                } break;
            }
        }
    }

    sa2__sub_802486C(partner, partner->spriteInfoBody);
    sa2__sub_8024B10(partner, partner->spriteInfoBody);
    sa2__sub_8024F74(partner, partner->spriteInfoLimbs);

    if (partner->charState != 15) {
        if (partner->timerInvulnerability > 0) {
            partner->timerInvulnerability--;
        }
    }

    partner->sa2__unk25 = 120;
}
# 5577 "/home/awaszczak/git/sa2/sa1/../src/game/shared/stage/player.c"
void Player_HandleInputs(Player *p)
{
    u8 r0, r1, r2;
    u16 input;

    if ((!(((gGameMode == 0) || (gGameMode == 1)))) && (((volatile struct SioMultiCnt *)(REG_BASE + 0x128))->id != gCamera.spectatorTarget)) {
        p->heldInput = 0;
        input = 0;

        sub_804D13C(0);

    } else {
        input = p->heldInput;

        if (!(p->moveState & 0x00200000)) {
            p->heldInput = gInput;

            if ((!(((gGameMode == 0) || (gGameMode == 1)))) && (p->itemEffect & 0x40)) {
                r2 = ((p->heldInput & 0x00F0) >> 4);
                r1 = ((gStageTime + p->timerConfusion) & 0x3);

                if (r1 == 0) {
                    r1 = 1;
                }

                r2 <<= r1;
                r0 = ((r2 >> 4) | r2);
                r2 = r0 << 4;

                p->heldInput = (p->heldInput & ~0x00F0) | r2;
                if (--p->timerConfusion == 0) {
                    p->itemEffect &= ~0x40;
                }
            }

            sub_804D13C(p->heldInput);

        }

        else {
            sub_804D13C(0);
        }

    }

    input ^= p->heldInput;
    input &= p->heldInput;
    p->frameInput = input;

    if (p->heldInput & (0x0020 | 0x0010)) {
        p->heldInput &= ~(0x0080 | 0x0040);
    }

    if (p->frameInput & (0x0020 | 0x0010)) {
        p->frameInput &= ~(0x0080 | 0x0040);
    }

}



void sub_8045DF0(Player *p)
{
    u16 r4 = p->heldInput;
    u16 r6 = r4;
    u32 r5;

    if (!(p->moveState & 0x00200000)) {
        r4 = gUnknown_030060F0[20];

        if (((p->rotation + ((s32)((0.125)*256))) & 0xC0) == 0) {
            if ((p->qWorldX + ((s32)((16)*256))) < gPlayer.qWorldX) {

                if (!(r4 & 0x0080)) {
                    r4 |= 0x0010;
                    r4 &= ~0x0020;
                }

            } else if ((p->qWorldX - ((s32)((16)*256))) > gPlayer.qWorldX) {

                if (!(r4 & 0x0080)) {
                    r4 |= 0x0020;
                    r4 &= ~0x0010;
                }
            } else {
                r4 &= ~(0x0020 | 0x0010);
            }


            if (!(r4 & (0x0020 | 0x0010)) && (p->qSpeedGround == ((s32)((0)*256))) && !(p->moveState & 0x00000002) && (p->sa2__unk62 == 0)
                && ((p->charState == 4) || (p->charState == 0))
                && !(p->moveState & (0x00800000 | 0x00008000 | 0x00000400 | 0x00000200 | 0x00000008))) {
                if (gPlayer.moveState & 0x00000001) {
                    if (!(p->moveState & 0x00000001)) {
                        p->moveState |= 0x00000001;
                        p->charState = 8;
                    }
                } else {
                    if (p->moveState & 0x00000001) {
                        p->moveState &= ~0x00000001;
                        p->charState = 8;
                    }
                }
            }
        }
    }

    r5 = r4;
    r5 &= ~r6;

    if (!(p->moveState & 0x00200000)) {
        switch (p->moveState & 0x00000002) {
            case 0: {
                if (!(gStageFlags & 0x0080)) {
                    if (p->qWorldY - ((s32)((80)*256)) > gPlayer.qWorldY) {
                        goto _08045FC6;
                    }
                } else {

                    if (p->qWorldY + ((s32)((80)*256)) < gPlayer.qWorldY) {
                        r5 |= gPlayerControls.jump;
                    }
                }
            } break;

            case 0x00000002: {
                if (!(gStageFlags & 0x0080)) {
                    if (p->qWorldY > gPlayer.qWorldY - ((s32)((16)*256))) {
                        goto _08045F90;
                    }
                } else {

                    if (p->qWorldY < gPlayer.qWorldY + ((s32)((16)*256))) {
                    _08045F90:
                        if ((p->sa2__unk61 != 0) || (p->qSpeedAirY > ((s32)((0)*256)))) {

                            if (!(gStageFlags & 0x0080)) {
                                if (p->qWorldY > gPlayer.qWorldY) {
                                    goto _08045FC6;
                                }
                            } else {

                                if (p->qWorldY < gPlayer.qWorldY) {
                                _08045FC6:
                                    r5 |= gPlayerControls.jump;
                                }
                            }
                        } else {
                            r4 |= gPlayerControls.jump;
                        }
                    }
                }
            } break;
        }
    }


    if (r4 & (0x0020 | 0x0010)) {
        r4 &= ~(0x0080 | 0x0040);
    }


    if (r5 & (0x0020 | 0x0010)) {
        u16 mask = ~(0x0080 | 0x0040);
        r5 &= mask;
    }


    p->heldInput = r4;
    p->frameInput = r5;
}
# 5853 "/home/awaszczak/git/sa2/sa1/../src/game/shared/stage/player.c"
void sa2__sub_802486C(Player *p, PlayerSpriteInfo *p2)
{
    s32 speed;
    Sprite *s = &p2->s;


    if (p->moveState & 0x00000020) {
        p->sa2__unk62 = 0;
        p->sa2__unk63 = 0;
        p->charState = 14;
    }




    {
        p->anim = sCharStateAnimInfo[p->charState][0];

        if (p->charState < 43) {

            p->anim += gPlayerCharacterIdleAnims[p->character];



        }
        p->variant = sCharStateAnimInfo[p->charState][1];
        p2->s.animSpeed = ((int)((float)(1.0)*0x10));
    }


    if ((p->qSpeedGround != ((s32)((0)*256))) || (p->heldInput & (0x00F0 | 0x0001 | 0x0002))) {
        p->sa2__unk72 = (int)(((0 * 60.) + 6) * 60);
    }

    switch (p->charState) {

        case 0: {
            if (p->sa2__unk72 != 0) {
                p->sa2__unk72--;
            } else {
                p->anim = gPlayerCharacterIdleAnims[p->character] + 1;
                p->variant = 0;
            }
        } break;

        case 4: {

            speed = p->qSpeedGround;
            if (((speed) >= 0 ? (speed) : -(speed)) >= ((s32)((4.5)*256))) {
                p->anim = gPlayerCharacterIdleAnims[p->character] + 5;
                p->variant = 0;
                s->animSpeed = ((int)((float)(1.0)*0x10));
                break;
            }
# 5915 "/home/awaszczak/git/sa2/sa1/../src/game/shared/stage/player.c"
        }

        case 24:
        case 25:
        case 26:

            speed = p->qSpeedGround;

            speed = ((speed) >= 0 ? (speed) : -(speed)) >> 4;




            s->animSpeed = ({ s32 clamped; if ((speed) >= (((int)((float)(0.5)*0x10)))) { clamped = (speed) > (((int)((float)(1.0)*0x10))) ? (((int)((float)(1.0)*0x10))) : (speed); } else { clamped = (((int)((float)(0.5)*0x10))); } clamped; });
            break;

        case 21:
        case 85: {
            if (p->qSpeedAirY >= -((s32)((1.5)*256))) {
                p->charState = 18;
            }
        } break;

        case 9: {
            if (((p->qSpeedGround) >= 0 ? (p->qSpeedGround) : -(p->qSpeedGround)) < ((s32)((1.5)*256))) {

                p->anim = gPlayerCharacterIdleAnims[p->character] + 7;
                p->variant = 0;
            }


            if ((gStageTime % 4u) == 0) {
                s32 offsetY = p->spriteOffsetY;

                if ((gStageFlags & 0x0080)) {
                    offsetY = -offsetY;
                }

                CreateBrakingDustEffect(((int)((p->qWorldX) >> 8)), ((int)((p->qWorldY) >> 8)) + offsetY);
            }
        } break;

        case 16: {
            if ((((p->rotation + ((s32)((0.125)*256))) & 0xC0) != 0)) {
                p->anim = gPlayerCharacterIdleAnims[p->character] + 44;
                p->variant = 1;
                p->moveState &= ~0x00000001;
            }
        } break;
# 5994 "/home/awaszczak/git/sa2/sa1/../src/game/shared/stage/player.c"
    }


    if (p->moveState & 0x00000040) {
        s->animSpeed -= (s->animSpeed >> 1);
    }

    if (!(p->moveState & 0x00000001)) {
        (s)->frameFlags |= (((1) << (10)));
    } else {
        (s)->frameFlags &= ~(((1) << (10)));
    }

    if ((gStageFlags & 0x0080)) {
        (s)->frameFlags |= (((1) << (11)));
    } else {
        (s)->frameFlags &= ~(((1) << (11)));
    }



    if ((!(((gGameMode == 0) || (gGameMode == 1)))))

    {

        p->sa2__unk98 = 0;
    }

    if (



        (s->graphics.anim != p->anim) || (s->variant != p->variant)) {



        s->graphics.anim = p->anim;
        s->variant = p->variant;
        s->prevVariant = -1;
        s->hitboxes[0].index = -1;
        s->hitboxes[1].index = -1;


        if ((!(((gGameMode == 0) || (gGameMode == 1)))))

        {
            p->sa2__unk98 = 1;
        }
    }

    p->prevCharState = p->charState;
}

void sa2__sub_8024B10(Player *p, PlayerSpriteInfo *inPsi)
{
    struct MultiSioData_0_4 *send;
    MultiplayerPlayer *mpp;
    AnimCmdResult acmdRes;

    Sprite *s = &inPsi->s;
    PlayerSpriteInfo *psi = inPsi;

    struct Camera *cam = &gCamera;
    s16 camX = cam->x;
    s16 camY = cam->y;


    bool32 cond = ({
        bool32 r2 = s->prevVariant == 0xFF ||




            s->prevAnim == 0xFFFF;

        r2;
    });

top:
    s->x = ((int)((p->qWorldX) >> 8)) - camX;
    s->y = ((int)((p->qWorldY) >> 8)) - camY;

    psi->transform.x = ((int)((p->qWorldX) >> 8)) - camX;
    psi->transform.y = ((int)((p->qWorldY) >> 8)) - camY;

    if (

        p->charState == 4 || p->charState == 23 || p->charState == 32 || p->charState == 40







    ) {

        if (p->charState != 32)

        {
            psi->transform.rotation = p->rotation << 2;
        }
        s->frameFlags &= ~(((1) << (10)) | ((1) << (11)));
        s->frameFlags &= ~((0x1F) << (0));
        s->frameFlags |= p->playerID | ((1) << (5));

        ({ s32 x, y; if (!(p->moveState & 0x00000001)) { psi->transform.qScaleX = -((s32)((1.0)*256)); } else { psi->transform.qScaleX = +((s32)((1.0)*256)); } if ((gStageFlags & 0x0080)) { psi->transform.qScaleX = -psi->transform.qScaleX; } if (psi->transform.qScaleX < 0) { psi->transform.x--; } if ((gStageFlags & 0x0080)) { psi->transform.qScaleY = ((s32)((1.0)*256)); psi->transform.rotation = ({ s16 clamped = (({ s16 clamped = (-((s32)((1.0)*256)) - (psi->transform.rotation + psi->transform.qScaleY)) & (1024 - 1); clamped; })) & (1024 - 1); clamped; }); } else { psi->transform.qScaleY = ((s32)((1.0)*256)); } x = ((int)((psi->transform.qScaleX * p->sa2__unk80) >> 8)); y = ((int)((psi->transform.qScaleY * p->sa2__unk82) >> 8)); psi->transform.qScaleX = x; psi->transform.qScaleY = y; UpdateSpriteAnimation(s); });

        if (((gGameMode == 0) || (gGameMode == 1))) {
            TransformSprite(s, &psi->transform);
        }

    } else {
        psi->transform.rotation = 0;
        s->frameFlags &= ~(((1) << (5)) | ((0x1F) << (0)));

        if (!(p->moveState & 0x00000001)) {
            s->frameFlags |= ((1) << (10));
        } else {
            s->frameFlags &= ~((1) << (10));
            s->frameFlags &= ~((0x1F) << (0));
            s->frameFlags &= ~((1) << (5));
            s->x++;
        }


        if ((gStageFlags & 0x0080)) {
            s->frameFlags |= ((1) << (11));
        } else

        {
            s->frameFlags &= ~((1) << (11));
        }
        acmdRes = UpdateSpriteAnimation(s);

        if (acmdRes == ACMD_RESULT__ENDED) {
            s8 oldCharState = p->charState;


            if (p->charState == 7) {
                p->charState = 6;
            } else if (p->charState == 3) {
                if (p->qSpeedGround != 0) {
                    p->charState = 4;
                } else {
                    p->charState = 0;
                }
            } else if (p->charState == 11) {
                p->charState = 0;
            } else if (p->charState == 22) {
                p->charState = 4;
            } else if (p->charState == 17) {
                p->charState = 19;
            } else if (p->charState == 18) {
                p->charState = 19;
            } else if (p->charState == 27) {
                p->charState = 4;
            } else if (p->charState == 74) {

                if (p->moveState & 0x00000001) {
                    p->qWorldX -= ((s32)((p->spriteOffsetX + 3)*256));
                } else {

                    p->qWorldX += ((s32)((p->spriteOffsetX + 3)*256));
                }
                { (p)->spriteOffsetX = 6; (p)->spriteOffsetY = 14; };


                if ((gStageFlags & 0x0080)) {
                    p->qWorldY += ((s32)((p->spriteOffsetY)*256));
                } else {
                    p->qWorldY -= ((s32)((14)*256));
                }


                p->charState = 75;

                p->sa2__unk62++;

            } else if (p->charState == 75) {

                p->rotation = 0;
                sa2__sub_8021BE0(p);
            } else if (p->charState == 45 || p->charState == 48) {

                p->moveState &= ~0x00000020;
                p->moveState &= ~0x00000100;
                p->moveState &= ~0x00000400;

                p->sa2__unk61 = 0;
                p->sa2__unk62 = 0;
                p->sa2__unk63 = 0;
                p->moveState &= ~0x00008000;

                if (p->character == CHARACTER_TAILS) {
                    m4aSongNumStop(120);
                }


                if (p->character == CHARACTER_AMY) {
                    p->moveState &= ~(0x02000000 | 0x04000000);
                }

                if (p->qSpeedGround != 0) {
                    p->charState = 4;
                } else {
                    p->charState = 0;
                }
            } else if (p->charState == 46) {

                if (p->sa2__unk63 == 1) {
                    if (p->moveState & 0x00000001) {
                        p->qSpeedGround = -((s32)((4)*256));
                    } else {
                        p->qSpeedGround = +((s32)((4)*256));
                    }


                    p->sa2__unk62++;
                    p->sa2__unk63 = 0;

                    p->charState = 47;

                    m4aSongNumStart(111);
                } else if (p->sa2__unk63 == 2) {

                    p->moveState &= ~0x00000020;
                    p->moveState &= ~0x00000100;
                    p->moveState &= ~0x00000400;

                    p->sa2__unk61 = 0;
                    p->sa2__unk62 = 0;
                    p->sa2__unk63 = 0;
                    p->moveState &= ~0x00008000;

                    if (p->character == CHARACTER_TAILS) {
                        m4aSongNumStop(120);
                    }


                    if (p->character == CHARACTER_AMY) {
                        p->moveState &= ~(0x02000000 | 0x04000000);
                    }


                    p->qSpeedAirX = -p->qSpeedAirX;
                    p->qSpeedAirY = -((s32)((4.875)*256));

                    if (p->moveState & 0x00000040) {
                        p->qSpeedAirY = -((s32)((2.625)*256));
                    }


                    p->moveState |= 0x00000002;
                    p->moveState |= 0x00000004;
                    { Player_HandleSpriteYOffsetChange(p, 9); { (p)->spriteOffsetX = 6; (p)->spriteOffsetY = 9; } };

                    p->charState = 49;

                    m4aSongNumStart(116);
                } else {

                    p->sa2__unk62 = 0;
                    p->sa2__unk63 = 0;
                    p->charState = 0;
                    p->defeatScoreIndex = 0;
                    p->qSpeedGround = 0;
                }

            } else if (p->charState == 54) {

                p->charState = 53;
            } else if (p->charState == 58) {
                p->charState = 57;
            } else if (p->charState == 60) {


                p->sa2__unk62 = 0;
                p->sa2__unk63 = 0;

                if (p->qSpeedGround == 0) {
                    p->charState = 0;
                } else {
                    p->charState = 4;
                }

                p->defeatScoreIndex = 0;
            } else if (p->charState == 64) {
                sa2__sub_8021BE0(p);
            } else if (p->charState == 70) {
                p->charState = 71;
            } else if (p->charState == 76 || p->charState == 77) {


                if (p->sa2__unk63 != 0) {
                    s32 qSpeed;

                    p->sa2__unk62++;
                    p->sa2__unk63 = 0;

                    if (p->charState == 77) {
                        m4aSongNumStart(127);
                    } else {
                        m4aSongNumStart(126);
                    }


                    p->charState++;

                    qSpeed = ((s32)((3)*256));
                    if (p->moveState & 0x00000001) {
                        qSpeed = -qSpeed;
                    }
                    p->qSpeedGround += qSpeed;
                } else {

                    p->sa2__unk62 = 0;
                    p->sa2__unk63 = 0;
                    p->charState = 0;
                    p->defeatScoreIndex = 0;
                    p->qSpeedGround = 0;
                }
            } else if (p->charState == 87) {
                s32 qSpeed;


                if (p->sa2__unk63 == 0) {
                    p->sa2__unk62 = 0;

                    if (p->qSpeedGround != 0) {
                        p->charState = 4;
                    } else {
                        p->charState = 0;
                    }
                } else {
                    p->sa2__unk63 = 0;
                    p->sa2__unk62++;
                    p->charState = 88;

                    qSpeed = ((s32)((3)*256));
                    if (p->moveState & 0x00000001) {
                        qSpeed = -qSpeed;
                    }
                    p->qSpeedGround += qSpeed;

                    CreateAmyAttackHeartEffect();
                }
            } else if (p->charState == 88) {
                p->sa2__unk62 = 0;

                if (p->qSpeedGround != 0) {
                    p->charState = 4;
                } else {
                    p->charState = 0;
                }
            } else if (p->charState == 93) {
                p->sa2__unk62 = 0;
                p->sa2__unk63 = 0;
                p->charState = 0;
                p->defeatScoreIndex = 0;
            }


            if (p->charState != oldCharState) {
                sa2__sub_802486C(p, inPsi);
                goto top;
            }
        }

    }


    if (((gGameMode == 0) || (gGameMode == 1)))

    {


        if (p->moveState & 0x00000080
            || (!(p->moveState & 0x00100000) && (p->timerInvulnerability == 0 || (gStageTime & 2) == 0))) {
            DisplaySprite(s);
        }


        if (((gGameMode == 0) || (gGameMode == 1))) {
            return;
        }
    }

    send = &gMultiSioSend.pat4;
    mpp = (void *)((gMultiplayerPlayerTasks[((volatile struct SioMultiCnt *)(REG_BASE + 0x128))->id])->data);

    send->unk0 = 0x1000;



    send->x = ((int)((p->qWorldX) >> 8)) + p->sa2__unk7C;
    send->y = ((int)((p->qWorldY) >> 8));
    send->unk6 = s->graphics.anim;
    send->unkA = p->itemEffect;
    if (gGameMode == 6) {





        send->unk6 |= gRingCount << 8;
    }

    else if (gGameMode == 4 || gGameMode == 5) {
        send->unk6 |= (mpp->unk5C & 0x70000) >> 4;
    }


    send->unkB = s->variant |

        (p->spriteOffsetY << 3);



    send->unkC = s->animSpeed;
    send->unkD = psi->transform.rotation >> 2;

    if (s->frameFlags & ((1) << (5))) {
        send->unk8 |= 1;
    } else {
        send->unk8 &= ~1;
    }

    if (!(p->moveState & 1)) {
        send->unk8 |= 2;
    } else {
        send->unk8 &= ~2;
    }


    if ((gStageFlags & 0x0080)) {
        send->unk8 |= 8;
    } else

    {
        send->unk8 &= ~8;
    }

    if (p->moveState & 0x00000080 || mpp->unk5C & 1



        || p->timerInvulnerability != 0) {
        send->unk8 |= 4;
    } else {
        send->unk8 &= ~4;
    }

    if (mpp->unk5C & 1) {
        send->unk8 |= 0x100;
    } else {
        send->unk8 &= ~0x100;
    }

    if (p->moveState & 0x00100000) {
        send->unk8 |= 0x40;
    } else {
        send->unk8 &= ~0x40;
    }

    send->unk8 &= ~0x30;
    send->unk8 |= ((gPlayer.spriteInfoBody->s.frameFlags & 0x3000) >> 8);
    if (p->layer != 0) {
        send->unk8 |= 0x80;
    } else {
        send->unk8 &= ~0x80;
    }

    if (cond) {
        send->unk8 |= 0x800;
    } else {
        send->unk8 &= ~0x800;
    }

    mpp->unk64 = ((volatile struct SioMultiCnt *)(REG_BASE + 0x128))->id;
    if (gPlayer.moveState & 0x00000008) {
        u8 i;
        for (i = 0; i < 4; i++) {
            s32 id = ((volatile struct SioMultiCnt *)(REG_BASE + 0x128))->id;
            if (id != i) {
                MultiplayerPlayer *mpp2;
                if (gMultiplayerPlayerTasks[i] == ((void*)0)) {
                    break;
                }

                mpp2 = (void *)((gMultiplayerPlayerTasks[i])->data);
                if (gPlayer.stoodObj == &mpp2->s) {
                    mpp->unk64 = i;
                }
            }
        }
    }

    send->unk8 &= ~0x600;
    send->unk8 |= (mpp->unk64 << 9);
}






void sa2__sub_8024F74(Player *p, PlayerSpriteInfo *inPsi)
{
    struct MultiSioData_0_4 *recv;

    Sprite *s = &inPsi->s;
    PlayerSpriteInfo *psi = inPsi;

    struct Camera *cam = &gCamera;
    s16 camX = cam->x;
    s16 camY = cam->y;

    if ((!(((gGameMode == 0) || (gGameMode == 1))))) {
        s32 id = ((volatile struct SioMultiCnt *)(REG_BASE + 0x128))->id;
        recv = &gMultiSioRecv[id].pat4;
        psi->transform.x = recv->x - camX;
        psi->transform.y = recv->y - camY;
    } else {
        psi->transform.x = ((int)((p->qWorldX) >> 8)) - camX;
        psi->transform.y = ((int)((p->qWorldY) >> 8)) - camY;
    }

    s->animSpeed = ((int)((float)(1.0)*0x10));
    if (p->moveState & 0x00000040) {
        s->animSpeed = ((int)((float)(0.5)*0x10));
    }

    switch (p->character) {
        case CHARACTER_AMY:
        case CHARACTER_KNUCKLES:
        case CHARACTER_SONIC:
            break;
# 6555 "/home/awaszczak/git/sa2/sa1/../src/game/shared/stage/player.c"
        case CHARACTER_TAILS: {
            s32 asx = p->qSpeedAirX;
            s32 asy = p->qSpeedAirY;

            u16 anim = p->anim;
            u16 variant = p->variant;
            anim = anim - gPlayerCharacterIdleAnims[p->character];



            {
                u8 shift;
                if (asx != 0 || asy != 0) {
                    shift = (((int)((ArcTan2(asx, asy)) >> 8)) + 0x40);
                } else {
                    shift = p->moveState & 0x00000001 ? 0xC0 : 0x40;
                }
                p->w.tf.shift = shift;


                if (p->charState == 5)

                {
                    psi->transform.rotation = shift << 2;
                    s->frameFlags &= ~((0x1F) << (0));
                    s->frameFlags |= gOamMatrixIndex++ | ((1) << (5));

                    ({ s32 x, y; if (!(p->moveState & 0x00000001)) { psi->transform.qScaleX = -((s32)((1.0)*256)); } else { psi->transform.qScaleX = +((s32)((1.0)*256)); } if ((gStageFlags & 0x0080)) { psi->transform.qScaleX = -psi->transform.qScaleX; } if (psi->transform.qScaleX < 0) { psi->transform.x--; } if ((gStageFlags & 0x0080)) { psi->transform.qScaleY = ((s32)((1.0)*256)); psi->transform.rotation = ({ s16 clamped = (({ s16 clamped = (-((s32)((1.0)*256)) - (psi->transform.rotation + psi->transform.qScaleY)) & (1024 - 1); clamped; })) & (1024 - 1); clamped; }); } else { psi->transform.qScaleY = ((s32)((1.0)*256)); } x = ((int)((psi->transform.qScaleX * p->sa2__unk80) >> 8)); y = ((int)((psi->transform.qScaleY * p->sa2__unk82) >> 8)); psi->transform.qScaleX = x; psi->transform.qScaleY = y; UpdateSpriteAnimation(s); });
                    TransformSprite(s, &psi->transform);

                    if (p->moveState & 0x00000080
                        || (!(p->moveState & 0x00100000) && (p->timerInvulnerability == 0 || (gStageTime & 2) == 0))) {
                        DisplaySprite(s);
                    }
                }
            }
            break;
        }
    }
}
# 9183 "/home/awaszczak/git/sa2/sa1/../src/game/shared/stage/player.c"
void CallSetStageSpawnPos(u32 character, u32 level, u32 playerID, Player *p) { SetStageSpawnPos(character, level, playerID, p); }
# 9214 "/home/awaszczak/git/sa2/sa1/../src/game/shared/stage/player.c"
void DestroyPlayerTasks(Player *p)
{
    TaskDestroy(p->spriteTask);
    p->spriteTask = ((void*)0);

    if (p->playerID == 0) {

        DestroyBrakingDustEffectRelatedTask();

        DestroyRingsScatterTask();
    }
}
# 9236 "/home/awaszczak/git/sa2/sa1/../src/game/shared/stage/player.c"
void Player_TransitionCancelFlyingAndBoost(Player *p)
{
    p->moveState &= ~0x00000020;
    p->moveState &= ~0x00000100;
    p->moveState &= ~0x00000400;

    p->sa2__unk61 = 0;
    p->sa2__unk62 = 0;
    p->sa2__unk63 = 0;

    p->moveState &= ~0x00008000;

    if (p->character == CHARACTER_TAILS) {
        m4aSongNumStop(120);
    }

    if (p->character == CHARACTER_AMY) {
        p->moveState &= ~(0x04000000 | 0x02000000);
    }
}


s32 sa2__sub_8029A28(Player *p, u8 *rot, s32 *out)
{
    s32 result;

    u8 dummy;


    s32 dummyInt;
    s32 rotValue;

    if (rot == ((void*)0))
        rot = &dummy;
    if (out == ((void*)0))
        out = &dummyInt;

    result = sa2__sub_802195C(p, rot, out);

    rotValue = *rot;

    if (rotValue & 0x1)
        *rot = 0;
    else {
        if ((gStageFlags & 0x0080)) {
            s32 val = -0x80;
            val -= rotValue;
            *rot = val;
        }
    }

    return result;
}

s32 sa2__sub_8029A74(Player *p, u8 *rot, s32 *out)
{
    s32 result;

    u8 dummy;

    s32 dummyInt;
    s32 rotValue;

    if (rot == ((void*)0))
        rot = &dummy;
    if (out == ((void*)0))
        out = &dummyInt;

    result = sa2__sub_8021A34(p, rot, out);

    rotValue = *rot;

    if (rotValue & 0x1)
        *rot = 0;
    else {
        if ((gStageFlags & 0x0080)) {
            s32 val = -0x80;
            val -= rotValue;
            *rot = val;
        }
    }

    return result;
}

s32 sa2__sub_8029AC0(Player *p, u8 *rot, s32 *out)
{
    s32 result;

    u8 dummy;


    s32 dummyInt;
    s32 rotValue;

    if (rot == ((void*)0))
        rot = &dummy;
    if (out == ((void*)0))
        out = &dummyInt;

    result = sa2__sub_8021B08(p, rot, out);

    rotValue = *rot;

    if (rotValue & 0x1)
        *rot = 0;
    else {
        if ((gStageFlags & 0x0080)) {
            s32 val = -0x80;
            val -= rotValue;
            *rot = val;
        }
    }

    return result;
}

s32 sa2__sub_8029B0C(Player *p, u8 *ret_rotation, s32 *out)
{
    s32 result;

    u8 dummy;


    s32 dummyInt;
    s32 rotValue;

    if (ret_rotation == ((void*)0))
        ret_rotation = &dummy;
    if (out == ((void*)0))
        out = &dummyInt;

    result = sa2__sub_8029BB8(p, ret_rotation, out);

    rotValue = *ret_rotation;

    if (rotValue & 0x1)
        *ret_rotation = 0;
    else {
        if ((gStageFlags & 0x0080)) {
            s32 val = -((((int)((((double)(180)) / 360.0) * 1024))) / 4);
            val -= rotValue;
            *ret_rotation = val;
        }
    }

    return result;
}

s32 sa2__sub_8029B58(Player *p, u8 *rot, s32 *out)
{
    s32 result;

    if ((gStageFlags & 0x0080)) {
        result = sa2__sub_8029B0C(p, rot, out);
    } else

    {
        result = sa2__sub_8029AC0(p, rot, out);
    }

    return result;
}

s32 sa2__sub_8029B88(Player *p, u8 *rot, s32 *out)
{
    s32 result;

    if ((gStageFlags & 0x0080)) {
        result = sa2__sub_8029AC0(p, rot, out);
    } else

    {
        result = sa2__sub_8029B0C(p, rot, out);
    }

    return result;
}


s32 sa2__sub_8029BB8(Player *p, u8 *rotation, s32 *out)
{
    u8 dummy;
    s32 dummyInt;
    s32 playerX, playerY;
    s32 playerX2, playerY2;
    u32 mask;
    u8 anotherByte, anotherByte2;
    s32 r5, r1;
    s32 result;

    if (rotation == ((void*)0))
        rotation = &dummy;
    if (out == ((void*)0))
        out = &dummyInt;

    playerY2 = ((int)((p->qWorldY) >> 8)) + p->spriteOffsetY;
    playerX2 = ((int)((p->qWorldX) >> 8)) - (2 + p->spriteOffsetX);

    mask = p->layer;
    if (p->qSpeedAirY < 0) {
        mask |= 0x80;
    }

    r5 = sa2__sub_801E4E4(playerY2, playerX2, mask, 8, &anotherByte, sa2__sub_801EE64);

    playerY = ((int)((p->qWorldY) >> 8)) + p->spriteOffsetY;
    playerX = ((int)((p->qWorldX) >> 8)) + (2 + p->spriteOffsetX);

    mask = p->layer;
    if (p->qSpeedAirY < 0) {
        mask |= 0x80;
    }

    r1 = sa2__sub_801E4E4(playerY, playerX, mask, 8, &anotherByte2, sa2__sub_801EE64);

    if (r5 < r1) {
        result = r5;
        *rotation = anotherByte;
        *out = r1;
    } else {
        result = r1;
        *rotation = anotherByte2;
        *out = r5;
    }

    return result;
}
# 9477 "/home/awaszczak/git/sa2/sa1/../src/game/shared/stage/player.c"
void sa2__sub_8029CA0(Player *p)
{

    s32 rot;
    if (((p->rotation + ((s32)((0.375)*256))) & 0xFF) < ((s32)((0.75)*256)))




    {

        rot = ((((int)(((gSineTable[((p->rotation)*4)])) >> 6)) * 3) >> 5);




        if (p->qSpeedGround != 0) {
            p->qSpeedGround += rot;
        }
    }
}

void sa2__sub_8029CE0(Player *p)
{
    if (((p->rotation + ((((int)((((double)(135)) / 360.0) * 1024))) / 4)) & (((((int)((((double)(360)) / 360.0) * 1024))) / 4) - 1)) < ((((int)((((double)(270)) / 360.0) * 1024))) / 4)) {

        s8 rot;



        rot = ((((int)(((gSineTable[((p->rotation)*4)])) >> 6)) * 5) >> 5);

        p->qSpeedGround += rot;
    }
}

void sa2__sub_8029D14(Player *p)
{



    s32 grndSpeed = p->qSpeedGround;


    if (((p->rotation + ((((int)((((double)(135)) / 360.0) * 1024))) / 4)) & (((((int)((((double)(360)) / 360.0) * 1024))) / 4) - 1)) < ((((int)((((double)(270)) / 360.0) * 1024))) / 4) && grndSpeed != 0) {
        s32 accelInt = ((int)((((((int)(((gSineTable[((p->rotation)*4)])) >> 6)) * 60))) >> 8));

        if (grndSpeed > 0) {
            if (accelInt <= 0) {
                accelInt = (accelInt >> 2);
            }
        } else {
            if (accelInt >= 0) {
                accelInt = (accelInt >> 2);
            }
        }

        p->qSpeedGround = grndSpeed + accelInt;
    }
}




void Player_8047064(Player *p)
{
    s32 qSpeed = p->qSpeedGround;
    if (qSpeed <= ((s32)((0)*256))) {
        p->moveState |= 0x00000001;
    } else if (qSpeed - ((s32)((24. / 256.)*256)) < ((s32)((0)*256))) {
        qSpeed = ((s32)((96. / 256.)*256));
        p->qSpeedGround = -qSpeed;
    } else {
        p->qSpeedGround = qSpeed - ((s32)((24. / 256.)*256));
    }
}



void Player_8047088(Player *p)
{
    s32 qSpeed = p->qSpeedGround;
    if (qSpeed >= ((s32)((0)*256))) {
        p->moveState &= ~0x00000001;
    } else if (qSpeed + ((s32)((24. / 256.)*256)) > ((s32)((0)*256))) {
        qSpeed = ((s32)((96. / 256.)*256));
        p->qSpeedGround = +qSpeed;
    } else {
        p->qSpeedGround = qSpeed + ((s32)((24. / 256.)*256));
    }
}

void Player_80470AC(Player *p)
{
    s32 qSpeed = p->qSpeedGround;
    u32 rot;




    rot = p->rotation;

    p->qSpeedAirX = ((qSpeed * ((int)(((gSineTable[(rot * 4) + 256])) >> 6))) >> 8);
    p->qSpeedAirY = ((qSpeed * ((int)(((gSineTable[(rot * 4)])) >> 6))) >> 8);
}


void Player_UpdatePosition(Player *p) { { p->qWorldX += p->qSpeedAirX; if ((gStageFlags ^ gPrevStageFlags) & 0x0080) { p->qSpeedAirY = -p->qSpeedAirY; } ({});; p->qWorldY = (gStageFlags & 0x0080) ? p->qWorldY - p->qSpeedAirY : p->qWorldY + p->qSpeedAirY; }; }

void PlayerFn_Cmd_UpdateAirFallSpeed(Player *p) { if (!(p->moveState & 0x00000040)) { p->qSpeedAirY += ((s32)(((42.0 / 256.0))*256)); } else { p->qSpeedAirY += ((s32)(((12.0 / 256.0))*256)); }; }

bool32 sa2__sub_8029DE8(Player *p)
{
    struct Camera *cam = &gCamera;
    s32 playerY = p->qWorldY;


    if (!(p->moveState & 0x80000000)) {

        if (!(gStageFlags & 0x0080)) {
            if (playerY >= ((s32)((cam->maxY)*256)) - 1)
                return 1;
        } else {
            if (playerY <= ((s32)((cam->minY)*256)))
                return 1;
        }
# 9612 "/home/awaszczak/git/sa2/sa1/../src/game/shared/stage/player.c"
    }
    return 0;







}


__attribute__((unused)) bool32 DeadPlayerLeftScreen_UnusedCopy(Player *p)
{
    struct Camera *cam = &gCamera;
    s32 playerY = p->qWorldY;


    if (!(p->moveState & 0x80000000)) {

        if (!(gStageFlags & 0x0080)) {
            if (playerY >= ((s32)((cam->y)*256)) + ((s32)((240 + 80)*256)) - 1)
                return 1;
        } else {
            if (playerY <= ((s32)((cam->y - 80)*256)))
                return 1;
        }
# 9648 "/home/awaszczak/git/sa2/sa1/../src/game/shared/stage/player.c"
    }

    return 0;







}
# 9684 "/home/awaszczak/git/sa2/sa1/../src/game/shared/stage/player.c"
void sa2__sub_8029ED8(Player *p)
{


    if (!(p->moveState & 0x00000800))

    {
        { if (p->sa2__unk2A != 0) { p->sa2__unk2A -= 1; } else if ((p->rotation + ((s32)((0.125)*256))) & 0xC0) { if (((p->qSpeedGround) >= 0 ? (p->qSpeedGround) : -(p->qSpeedGround)) < ((s32)((1.875)*256))) { p->qSpeedGround = 0; p->moveState |= 0x00000002; p->sa2__unk2A = 60 / 2; } } };
    }
}
# 9754 "/home/awaszczak/git/sa2/sa1/../src/game/shared/stage/player.c"
void Player_8047224(Player *p)
{
    s32 rot = (s8)p->rotation;

    if (p->charState == 23) {
        if (p->moveState & 0x00000001) {
            p->rotation -= ((s32)((4. / 256.)*256));
        } else {
            p->rotation += ((s32)((4. / 256.)*256));
        }
    } else {
        if (rot < 0) {
            if (rot + 2 > 0) {
                rot = 0;
            } else {
                rot += 2;
            }
        } else if (rot > 0) {
            if (rot - 2 < 0) {
                rot = 0;
            } else {
                rot -= 2;
            }
        }

        p->rotation = rot;
    }
}

void Player_804726C(Player *p)
{
    if (p->playerID == 0) {
        p->sa2__unk25 = 120;
    }
}

void Player_8047280(Player *p)
{
    if (p->playerID == 0) {
        if (gCamera.sa2__unk4C > 0) {
            gCamera.sa2__unk4C -= 2;
        } else if (gCamera.sa2__unk4C < 0) {
            gCamera.sa2__unk4C += 2;
        }
    }
}

void sub_80472AC(Player *p) { p->sa2__unk72 = (int)(((0 * 60.) + 6) * 60); }

void sub_80472B8(Player *p)
{
    if (!sub_8044434(p)) {
        sub_80449D8(p);
        sa2__sub_80232D0(p);

        { p->qWorldX += p->qSpeedAirX; if ((gStageFlags ^ gPrevStageFlags) & 0x0080) { p->qSpeedAirY = -p->qSpeedAirY; } ({});; p->qWorldY = (gStageFlags & 0x0080) ? p->qWorldY - p->qSpeedAirY : p->qWorldY + p->qSpeedAirY; };

        sa2__sub_8022D6C(p);
    }
}

void Player_InitializeDrowning(Player *p)
{
    p->framesUntilDrownCountDecrement = 60;
    p->secondsUntilDrown = 30;


    if (p->playerID == 0) {
        m4aSongNumStop(27);
    }

}


void TaskDestructor_Player(struct Task *t)
{
    player_0_Task *gt = (void *)((t)->data);
    Player *p;

    if (gt->pid != 0) {
        p = &gPartner;
    } else

    {
        p = &gPlayer;
    }

    p->spriteTask = ((void*)0);

    if (p->playerID != 0) {
        VramFree(p->spriteInfoBody->s.graphics.dest);
    }


    if (



        p->character == CHARACTER_TAILS) {
        VramFree(p->spriteInfoLimbs->s.graphics.dest);
    }

}
