# 1 "/home/awaszczak/git/sa2/sa1/../src/game/sa1/stage/player_super_sonic.c"
# 1 "<built-in>" 1
# 1 "<built-in>" 3
# 384 "<built-in>" 3
# 1 "<command line>" 1
# 1 "<built-in>" 2
# 1 "/home/awaszczak/git/sa2/sa1/../src/game/sa1/stage/player_super_sonic.c" 2
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
# 2 "/home/awaszczak/git/sa2/sa1/../src/game/sa1/stage/player_super_sonic.c" 2
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
# 3 "/home/awaszczak/git/sa2/sa1/../src/game/sa1/stage/player_super_sonic.c" 2
# 1 "/home/awaszczak/git/sa2/sa1/../include/trig.h" 1





extern const s16 gSineTable[1280];
# 4 "/home/awaszczak/git/sa2/sa1/../src/game/sa1/stage/player_super_sonic.c" 2

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
# 6 "/home/awaszczak/git/sa2/sa1/../src/game/sa1/stage/player_super_sonic.c" 2
# 1 "/home/awaszczak/git/sa2/sa1/../include/game/shared/stage/amy_attack_heart_effect.h" 1
# 12 "/home/awaszczak/git/sa2/sa1/../include/game/shared/stage/amy_attack_heart_effect.h"
extern void CreateAmyAttackHeartEffect(void);
# 7 "/home/awaszczak/git/sa2/sa1/../src/game/sa1/stage/player_super_sonic.c" 2
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
# 8 "/home/awaszczak/git/sa2/sa1/../src/game/sa1/stage/player_super_sonic.c" 2
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
# 9 "/home/awaszczak/git/sa2/sa1/../src/game/sa1/stage/player_super_sonic.c" 2

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
# 11 "/home/awaszczak/git/sa2/sa1/../src/game/sa1/stage/player_super_sonic.c" 2

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
# 13 "/home/awaszczak/git/sa2/sa1/../src/game/sa1/stage/player_super_sonic.c" 2
# 1 "/home/awaszczak/git/sa2/sa1/../include/game/sa1/stage/player_super_sonic.h" 1



# 1 "/home/awaszczak/git/sa2/sa1/../include/game/sa1/stage/enemies/boss_xtra_super_egg_robo.h" 1




# 1 "/home/awaszczak/git/sa2/sa1/../include/game/shared/stage/entity.h" 1
# 11 "/home/awaszczak/git/sa2/sa1/../include/game/shared/stage/entity.h"
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
# 6 "/home/awaszczak/git/sa2/sa1/../include/game/sa1/stage/enemies/boss_xtra_super_egg_robo.h" 2
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
# 5 "/home/awaszczak/git/sa2/sa1/../include/game/sa1/stage/player_super_sonic.h" 2

void Task_8049898(void);
void sub_804A1B8(Player *p);
# 14 "/home/awaszczak/git/sa2/sa1/../src/game/sa1/stage/player_super_sonic.c" 2

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
# 16 "/home/awaszczak/git/sa2/sa1/../src/game/sa1/stage/player_super_sonic.c" 2

# 1 "/home/awaszczak/git/sa2/sa1/../include/game/shared/stage/underwater_effects.h" 1






extern void InitWaterPalettes(void);

struct Task *SpawnDrowningCountdownNum(Player *p, s32 countdown);
struct Task *SpawnAirBubbles(s32 p0, s32 p1, s32 p2, s32 p3);
struct Task *SpawnBubblesAfterDrowning(Player *p);
bool32 RandomlySpawnAirBubbles(Player *p);

extern u8 gSmallAirBubbleCount;
# 18 "/home/awaszczak/git/sa2/sa1/../src/game/sa1/stage/player_super_sonic.c" 2

# 1 "/home/awaszczak/git/sa2/sa1/../include/constants/sa1/animations.h" 1






# 1 "/home/awaszczak/git/sa2/sa1/../include/constants/sa1/anim_sizes.h" 1
# 8 "/home/awaszczak/git/sa2/sa1/../include/constants/sa1/animations.h" 2
# 20 "/home/awaszczak/git/sa2/sa1/../src/game/sa1/stage/player_super_sonic.c" 2
# 1 "/home/awaszczak/git/sa2/sa1/../include/constants/sa1/char_states.h" 1
# 21 "/home/awaszczak/git/sa2/sa1/../src/game/sa1/stage/player_super_sonic.c" 2
# 1 "/home/awaszczak/git/sa2/sa1/../include/constants/sa1/songs.h" 1
# 22 "/home/awaszczak/git/sa2/sa1/../src/game/sa1/stage/player_super_sonic.c" 2
# 1 "/home/awaszczak/git/sa2/sa1/../include/constants/sa1/vram_hardcoded.h" 1
# 23 "/home/awaszczak/git/sa2/sa1/../src/game/sa1/stage/player_super_sonic.c" 2




void Player_SuperSonic_80499CC(Player *p);
void sub_8049D7C(Player *p);
void Player_8049E3C(Player *p);
bool32 sub_8049BAC(Player *p);
void sub_8049FD0(Player *p);
void Player_804A0B8(Player *p);
void sub_804A1B8(Player *p);
void InitSparkleCount(void);
void Player_804A20C(Player *p);
void Player_804A254(Player *p);
void sub_804A2FC(Player *p);
void sub_804A498(s32 qWorldX, s32 qWorldY, bool32 param2);
void Task_804A54C(void);
void Task_804A71C(void);
void TaskDestructor_804A830(struct Task *);
void sub_804A854(Player *p);
void Task_804AAC4(void);
void Task_804AD0C(void);
void Task_804B370(void);
void ExtraBossCapsule_UpdateSprite(Sprite *s, s32 screenX, s32 screenY);


static s32 sSparkleCount = 0;

extern TileInfoFirework gUnknown_084AE1B0[5];

extern void Task_PlayerDied();

void Task_8049898(void)
{
    Player *p = &gPlayer;
    Camera *cam = &gCamera;
    const Collision *coll = gRefCollision;
    MaybeSuperSonic *super;
    Sprite *s;
    s32 r3;

    cam->minY = coll->pxHeight - 200;
    cam->maxX = 480;
    cam->shiftX = 64;
    cam->shiftY = 0;

    Player_804A254(p);

    if (!(!((p)->moveState & 0x00000080))) {


        gCurTask->main = Task_PlayerDied;
        p->charState = 1;
        p->qSpeedAirX = ((s32)((0)*256));
        p->timerInvulnerability = 2;
        p->itemEffect = 0;
        cam->sa2__unk50 |= 3;

        if (((gGameMode == 0) || (gGameMode == 1))) {
            gStageFlags |= 0x0001;
        }

        p->spriteInfoBody->s.frameFlags &= ~((3) << (12));
        p->spriteInfoBody->s.frameFlags |= ((1) << (12));

        p->sa2__unk80 = ((s32)((1.0)*256));
        p->sa2__unk82 = ((s32)((1.0)*256));
        m4aSongNumStop(0x1C);
        m4aSongNumStop(0x1B);
        m4aSongNumStop(0x78);
    } else if (!(p->moveState & 0x00400000)) {
        sub_8049D7C(p);
    }

    Player_804A20C(p);

    super = (void *)((p->spriteTask)->data);
    r3 = (super->unk8 + 1) & 0xF;

    super->qXs[r3] = p->qWorldX;
    super->qYs[r3] = p->qWorldY;

    super->unk8 = r3;

    Player_8049E3C(p);

    if (p->sa2__unk2A != 0) {
        p->sa2__unk2A--;
    } else if (p->timerInvulnerability > 0) {
        p->timerInvulnerability--;
    }

    Player_SuperSonic_80499CC(p);
}

void Player_SuperSonic_80499CC(Player *p)
{
    if (!(gStageFlags & 0x0001)) {

        if (gExtraBossTaskData.boss)

        {
            if (!(gExtraBossTaskData.boss->flags58 & 0x80)) {
                if (++p->timerSpeedup >= 60) {
                    p->timerSpeedup -= 60;

                    if (--gRingCount <= 10) {
                        m4aSongNumStart(139);
                    }

                    if (gRingCount == 0) {

                        gRingCount = 0;
                        p->moveState |= 0x00000080;
                    }
                }
            }
        }
    }
}

void Player_SuperSonic_8049A34(Player *p)
{
    switch (p->heldInput & (0x0020 | 0x0010)) {
        case 0: {
            if (p->qSpeedGround != 0) {
                if (p->qSpeedGround > ((s32)((0)*256))) {
                    p->qSpeedGround -= ((s32)((96. / 256.)*256));

                    if (p->qSpeedGround < ((s32)((0)*256))) {
                        p->qSpeedGround = ((s32)((0)*256));
                    }
                } else if (p->qSpeedGround < ((s32)((0)*256))) {
                    p->qSpeedGround += ((s32)((96. / 256.)*256));
                    if (p->qSpeedGround > ((s32)((0)*256))) {
                        p->qSpeedGround = ((s32)((0)*256));
                    }
                }
            }
        } break;

        case 0x0020: {
            p->qSpeedGround -= ((s32)((36. / 256.)*256));

            if (p->qSpeedGround < -((s32)((2)*256))) {
                p->qSpeedGround = -((s32)((2)*256));
            }
        } break;

        case 0x0010: {
            p->qSpeedGround += ((s32)((36. / 256.)*256));

            if (p->qSpeedGround > +((s32)((2)*256))) {
                p->qSpeedGround = +((s32)((2)*256));
            }
        } break;
    }

    p->qSpeedAirX = p->qSpeedGround;
}

void Player_SuperSonic_8049AB8(Player *p)
{
    s32 r0, r3;
    s32 qWorldX;

    if (p->sa2__unk62 == 0) {
        if (!sub_8049BAC(p)) {
            if (p->frameInput & gPlayerControls.jump) {
                p->moveState |= 0x00000002;
                p->moveState |= 0x00000100;

                p->qSpeedAirY -= ((s32)((4.25)*256));
                m4aSongNumStart(116);
            } else {

                Player_SuperSonic_8049A34(p);

                qWorldX = p->qWorldX;
                r3 = qWorldX;
                if (p->qWorldX >= 0) {
                    r0 = qWorldX;
                    if (r0 > ((s32)((480)*256))) {
                        r0 = ((s32)((480)*256));
                    }
                } else {
                    r0 = 0;
                }
                qWorldX = r0;

                if (qWorldX != r3) {
                    if (!(p->moveState & 0x00000002)) {
                        p->qSpeedGround = ((s32)((0)*256));
                    }

                    p->qSpeedAirX = 0;
                }

                p->qWorldX = qWorldX;

                Player_UpdatePosition(p);
                Player_UpdatePosition(p);
                Player_804A0B8(p);


                p->charState = 2;
                return;
            }
        }
    } else {
        sub_804A2FC(p);

        qWorldX = p->qWorldX;
        r3 = qWorldX;
        if (p->qWorldX >= 0) {
            r0 = qWorldX;
            if (r0 > ((s32)((480)*256))) {
                r0 = ((s32)((480)*256));
            }
        } else {
            r0 = 0;
        }
        qWorldX = r0;

        if (qWorldX != r3) {
            if (!(p->moveState & 0x00000002)) {
                p->qSpeedGround = ((s32)((0)*256));
            }

            p->qSpeedAirX = 0;
        }

        p->qWorldX = qWorldX;

        Player_UpdatePosition(p);
        Player_UpdatePosition(p);
        Player_804A0B8(p);


        p->charState = 3;
        return;
    }
}


bool32 sub_8049BAC(Player *p)
{
    if ((p->sa2__unk61 == 0) || (--p->sa2__unk61 == 0)) {
        if (p->frameInput & gPlayerControls.attack) {
            p->sa2__unk61 = 8;
            p->sa2__unk62 = 1;
            p->qSpeedGround = ((s32)((4)*256));
            p->qSpeedAirX = ((s32)((0)*256));
            p->qSpeedAirY = ((s32)((0)*256));

            sub_804A854(p);
            m4aSongNumStart(112);
            return 1;
        }
    }

    return 0;
}



void Player_SuperSonic_8049C0C(Player *p)
{
    s32 r0;
    s32 r3;
    s32 qWorldX;
    s32 rot;

    if (p->sa2__unk62 == 0) {
        if (!sub_8049BAC(p)) {
            if (!(p->heldInput & gPlayerControls.jump) && (p->moveState & 0x00000100)) {
                s32 qSpeed;
                r0 = p->qSpeedAirY;



                qSpeed = r0;


                if (p->qSpeedAirY < -((s32)((1.5)*256))) {
                    qSpeed = -((s32)((1.5)*256));
                }

                p->qSpeedAirY = qSpeed;
            }

            switch (p->heldInput & (0x0020 | 0x0010)) {
                case 0x0020: {
                    p->qSpeedAirX -= ((s32)((72. / 256.)*256));

                    if (p->qSpeedAirX < -((s32)((2)*256))) {
                        p->qSpeedAirX = -((s32)((2)*256));
                    }
                } break;

                case 0x0010: {
                    p->qSpeedAirX += ((s32)((72. / 256.)*256));

                    if (p->qSpeedAirX > +((s32)((2)*256))) {
                        p->qSpeedAirX = +((s32)((2)*256));
                    }
                } break;
            }

            qWorldX = p->qWorldX;
            r3 = qWorldX;
            if (p->qWorldX >= 0) {
                r0 = qWorldX;
                if (r0 > ((s32)((480)*256))) {
                    r0 = ((s32)((480)*256));
                }
            } else {
                r0 = 0;
            }
            qWorldX = r0;

            if (qWorldX != r3) {
                if (!(p->moveState & 0x00000002)) {
                    p->qSpeedGround = ((s32)((0)*256));
                }

                p->qSpeedAirX = 0;
            }
            p->qWorldX = qWorldX;


            Player_UpdatePosition(p);
            Player_UpdatePosition(p);

            p->qSpeedAirY += ((s32)((32. / 256.)*256));

            rot = (s8)p->rotation;
            if (rot < 0) {
                rot += 2;

                if (rot > 0) {
                    rot = 0;
                }
            } else if (rot > 0) {
                rot -= 2;

                if (rot < 0) {
                    rot = 0;
                }
            }

            p->rotation = rot;

            if (p->qSpeedAirY >= 0) {
                sub_8049FD0(p);
            }

            p->charState = 2;
        }
    } else {
        p->qSpeedGround -= ((s32)((0.25)*256));

        if (p->qSpeedGround <= ((s32)((0)*256))) {
            p->sa2__unk62 = ((s32)((0)*256));
            p->qSpeedAirX = ((s32)((0)*256));
            p->qSpeedAirY = ((s32)((0)*256));
        } else {
            p->qSpeedAirX = p->qSpeedGround;
        }

        qWorldX = p->qWorldX;
        r3 = qWorldX;
        if (p->qWorldX >= 0) {
            r0 = qWorldX;
            if (r0 > ((s32)((480)*256))) {
                r0 = ((s32)((480)*256));
            }
        } else {
            r0 = 0;
        }
        qWorldX = r0;

        if (qWorldX != r3) {
            if (!(p->moveState & 0x00000002)) {
                p->qSpeedGround = ((s32)((0)*256));
            }

            p->qSpeedAirX = 0;
        }
        p->qWorldX = qWorldX;


        Player_UpdatePosition(p);
        Player_UpdatePosition(p);
        Player_804A0B8(p);
        p->charState = 3;
    }
}

void sub_8049D7C(Player *p)
{
    if (p->sa2__unk2A != 0) {
        p->rotation -= ((s32)((12. / 256.)*256));
        Player_UpdatePosition(p);
        Player_UpdatePosition(p);
        Player_804A0B8(p);
    } else {
        if (p->moveState & 0x00000002) {
            Player_SuperSonic_8049C0C(p);
        } else {
            Player_SuperSonic_8049AB8(p);
        }

        if ((gStageTime % 4u) == 0) {
            if (({ gPseudoRandom = (gPseudoRandom * 0x196225) + 0x3C6EF35F; gPseudoRandom; }) & 0x10000) {
                s32 qWorldX, qWorldY;
                s32 qRand;
                qWorldX = p->qWorldX + (((u32)({ gPseudoRandom = (gPseudoRandom * 0x196225) + 0x3C6EF35F; gPseudoRandom; }) & 0xF0000) >> 8);
                qWorldY = p->qWorldY + (((u32)({ gPseudoRandom = (gPseudoRandom * 0x196225) + 0x3C6EF35F; gPseudoRandom; }) & 0xF0000) >> 8) - ((s32)((8)*256));
                qRand = (((u32)({ gPseudoRandom = (gPseudoRandom * 0x196225) + 0x3C6EF35F; gPseudoRandom; }) & 0x10000) >> 16);

                sub_804A498(qWorldX, qWorldY, qRand);
            }
        }
    }
}


void Player_8049E3C(Player *p)
{
    Sprite *s = &p->spriteInfoBody->s;
    PlayerSpriteInfo *psiBody = p->spriteInfoBody;
    MaybeSuperSonic *superSonic;
    s32 sp00;

    (s)->frameFlags &= ~(((1) << (5)));
    (s)->frameFlags &= ~(((0x1F) << (0)));
    (s)->frameFlags |= (((1) << (10)));
    UpdateSpriteAnimation(s);

    if ((!((p)->moveState & 0x00000080))) {
        if (p->moveState & 0x00100000) {
            return;
        }

        if ((p->sa2__unk2A == 0) && (p->timerInvulnerability != 0) && (gStageTime & 0x2)) {
            return;
        }
    }

    superSonic = (void *)((p->spriteTask)->data);
    sp00 = superSonic->unk8;

    {
        psiBody->transform.x = s->x = ((int)((p->qWorldX) >> 8)) - gCamera.x;
        psiBody->transform.y = s->y = ((int)((p->qWorldY) >> 8)) - gCamera.y;

        if (p->charState == 4) {
            (s)->frameFlags &= ~(((1) << (10)));
            (s)->frameFlags &= ~(((0x1F) << (0)));
            (s)->frameFlags |= (((1) << (5)));

            psiBody->transform.rotation = p->rotation * 4;
            psiBody->transform.qScaleX = -((s32)((1)*256));

            TransformSprite(s, &psiBody->transform);
        }

        DisplaySprite(s);
    }

    s->frameFlags |= (((1) << (18)) | ((1) << (19)));

    if ((gStageTime & 0x2) == 0) {
        s32 r6 = 1;




        s32 *qXs = &superSonic->qXs[0];
        s32 *qYs = &superSonic->qYs[0];

        s32 r7 = sp00 - 2;

        for (; r6 < 4; r7 -= 2, r6++) {
            s32 index = r7 % (sizeof(superSonic->qXs) / sizeof((superSonic->qXs)[0]));
# 518 "/home/awaszczak/git/sa2/sa1/../src/game/sa1/stage/player_super_sonic.c"
            s32 x = qXs[index];

            psiBody->transform.x = s->x = ((int)((x) >> 8)) - r6 * 8 - gCamera.x;
            psiBody->transform.y = s->y = ((int)((qYs[index]) >> 8)) - gCamera.y;

            if (p->charState == 4) {
                (s)->frameFlags &= ~(((1) << (10)));
                (s)->frameFlags &= ~(((0x1F) << (0)));
                (s)->frameFlags |= (((1) << (5)));
                (s)->frameFlags |= ((r6) << (0));

                psiBody->transform.rotation = p->rotation * 4;
                psiBody->transform.qScaleX = -((s32)((1)*256));

                TransformSprite(s, &psiBody->transform);
            }

            DisplaySprite(s);
        }
    }

    s->frameFlags &= ~(((1) << (18)) | ((1) << (19)));
}

void sub_8049FD0(Player *p)
{



    s32 x = gCamera.x;

    s32 scrollX = (x + gStageTime * 8);
    s32 y;
    s32 sp08;
    s32 px, py;
    s32 res0;
    s32 res1;
    u8 layer;



    const s32 scrollMaxX = (28 * 96);

    if (scrollX - 72 >= scrollMaxX) {
        scrollX -= 72;
        scrollX = ({((scrollMaxX) != 0) ? ((s32)(scrollX) % (s32)(scrollMaxX)) : 0;}) + 72;
    }

    px = ((s32)((x - scrollX)*256));
    x = p->qWorldX;
    x -= px;

    y = p->qWorldY;

    sp08 = p->sa2__unk61;
    layer = p->layer;
    y = ((int)((y) >> 8));
    py = y + p->spriteOffsetY;
    x = ((int)((x) >> 8));
    px = x - 2;
    px -= p->spriteOffsetX;
    res0 = sa2__sub_801E4E4(py, px, layer, +8, 0, sa2__sub_801EE64);

    y += p->spriteOffsetY;
    x += 2;
    x += p->spriteOffsetX;
    res1 = sa2__sub_801E4E4(y, x, layer, +8, 0, sa2__sub_801EE64);

    if (res1 > res0) {
        res1 = res0;
    }

    if (res1 < 0) {
        p->qWorldY += ((s32)((res1)*256));
        p->qSpeedGround = p->qSpeedAirX;
        p->qSpeedAirY = 0;

        sa2__sub_8021BE0(p);

        p->sa2__unk61 = sp08;
    }
}

void Player_804A0B8(Player *p)
{



    s32 x = gCamera.x;

    s32 y;
    s32 anotherY;
    s32 scrollX = (x + gStageTime * 8);
    s32 sp08;
    s32 px, py;
    s32 res0;
    s32 res1;
    u8 layer;



    const s32 scrollMaxX = (28 * 96);

    if (scrollX - 72 >= scrollMaxX) {
        scrollX -= 72;
        scrollX = ({((scrollMaxX) != 0) ? ((s32)(scrollX) % (s32)(scrollMaxX)) : 0;}) + 72;
    }

    px = ((s32)((x - scrollX)*256));
    x = p->qWorldX;
    x -= px;

    y = p->qWorldY;

    layer = p->layer;
    anotherY = ((int)((y) >> 8));
    py = anotherY + p->spriteOffsetY;
    x = ((int)((x) >> 8));
    px = x - 2;
    px -= p->spriteOffsetX;
    res0 = sa2__sub_801E4E4(py, px, layer, +8, 0, sa2__sub_801EE64);

    anotherY += p->spriteOffsetY;
    x += 2;
    x += p->spriteOffsetX;
    res1 = sa2__sub_801E4E4(anotherY, x, layer, +8, 0, sa2__sub_801EE64);

    if (res1 > res0) {
        res1 = res0;
    }

    if (res1 != 0) {
        if (res1 < 0) {
            if (res1 < -11) {
                return;
            }

            y += ((s32)((res1)*256));
        } else {

            s32 airX = ((int)((((p->qSpeedAirX) >= 0 ? (p->qSpeedAirX) : -(p->qSpeedAirX))) >> 8));

            if ((airX += 11) > 11) {
                airX = 11;
            }

            if (res1 > airX) {
                if (!(p->moveState & 0x08000000)) {
                    p->moveState |= 0x00000002;
                } else {
                    p->qWorldY = y;
                }

                return;
            }

            y += ((s32)((res1)*256));
        }
    }

    p->qWorldY = y;
}


void sub_804A1B8(Player *p)
{
    MaybeSuperSonic *superSonic = (void *)((p->spriteTask)->data);
    s32 ringCount;
    s32 i;

    superSonic->unk8 = 0;
    ringCount = gRingCount;

    for (i = 0; i < (s32)(sizeof(superSonic->qXs) / sizeof((superSonic->qXs)[0])); i++) {
        superSonic->qXs[i] = p->qWorldX;
        superSonic->qYs[i] = p->qWorldY;
    }

    gRingCount = 50;

    p->spriteInfoBody->s.frameFlags &= ~((3) << (12));
    p->spriteInfoBody->s.frameFlags |= ((1) << (12));

    InitSparkleCount();
}

void Player_804A20C(Player *p)
{
    Sprite *s = &p->spriteInfoBody->s;
    TileInfoFirework *tileInfo = &gUnknown_084AE1B0[p->charState];

    if ((s->graphics.anim != tileInfo->anim) || (s->variant != tileInfo->variant)) {
        s->graphics.anim = tileInfo->anim;
        s->variant = tileInfo->variant;
        s->prevVariant = -1;
    }
}

void Player_804A254(Player *p)
{
    u16 input = p->heldInput;

    if (!(p->moveState & 0x00200000)) {
        p->heldInput = gInput;
    }

    input ^= p->heldInput;
    input &= p->heldInput;

    p->frameInput = input;
}

bool32 Player_SuperSonic_UnusedJump(Player *p)
{
    bool32 result;

    if (p->frameInput & gPlayerControls.jump) {
        p->moveState |= 0x00000002;
        p->moveState |= 0x00000100;

        p->qSpeedAirY -= ((s32)((4.25)*256));

        m4aSongNumStart(116);
        result = 1;
    } else {
        result = 0;
    }

    return result;
}

void sub_804A2B8(Player *p)
{
    switch (p->heldInput & (0x0020 | 0x0010)) {
        case 0x0020: {
            p->qSpeedAirX -= ((s32)((72. / 256.)*256));

            if (p->qSpeedAirX < -((s32)((2)*256))) {
                p->qSpeedAirX = -((s32)((2)*256));
            }
        } break;

        case 0x0010: {
            p->qSpeedAirX += ((s32)((72. / 256.)*256));

            if (p->qSpeedAirX > +((s32)((2)*256))) {
                p->qSpeedAirX = +((s32)((2)*256));
            }
        } break;
    }
}

void sub_804A2FC(Player *p)
{
    p->qSpeedGround = (p->qSpeedGround - ((s32)((0.25)*256)));

    if (p->qSpeedGround <= ((s32)((0)*256))) {
        p->sa2__unk62 = 0;
        p->qSpeedAirX = ((s32)((0)*256));
        p->qSpeedAirY = ((s32)((0)*256));
    } else {
        p->qSpeedAirX = p->qSpeedGround;
    }
}

void sub_804A320(Player *p)
{
    bool32 result;

    if (!(p->heldInput & gPlayerControls.jump) && (p->moveState & 0x00000100)) {



        s32 r3;

        s32 qSpeed = p->qSpeedAirY;
        r3 = qSpeed;
        if (qSpeed < -((s32)((1.5)*256))) {
            r3 = -((s32)((1.5)*256));
        }

        p->qSpeedAirY = r3;
    }
}

void sub_804A354(Player *p) { p->qSpeedAirX = p->qSpeedGround; }

void sub_804A35C(Player *p)
{
    s32 rot = (s8)p->rotation;

    if (rot < 0) {
        rot += 2;

        if (rot > 0) {
            rot = 0;
        }
    } else if (rot > 0) {
        rot -= 2;

        if (rot < 0) {
            rot = 0;
        }
    }

    p->rotation = rot;
}

void sub_804A37C(Player *p)
{
    s32 r2 = p->qWorldX;
    s32 r4 = r2;
    s32 r0;

    if (p->qWorldX >= ((s32)((0)*256))) {
        r0 = p->qWorldX;

        if (r0 > ((s32)((480)*256))) {
            r0 = ((s32)((480)*256));
        }
    } else {
        r0 = 0;
    }

    r2 = r0;

    if (r2 != r4) {
        if (!(p->moveState & 0x00000002)) {
            p->qSpeedGround = 0;
        }

        p->qSpeedAirX = 0;
    }

    p->qWorldX = r2;
}

void sub_804A3B8(Player *p) { p->qSpeedAirY += ((s32)((32. / 256.)*256)); }

void Task_804A3C0(void)
{



    struct Task *t = gCurTask;

    SomeTaskManager_60 *mgr = (void *)((t)->data);
    Sprite *s = &mgr->s;
    Player *p = &gPlayer;
    Camera *cam = &gCamera;
    s32 x, y;

    mgr->qUnk50 = p->qWorldX;
    mgr->qUnk54 = p->qWorldY;

    if (!(!((p)->moveState & 0x00000080)) || ((mgr->unk2) && (s->frameFlags & 0x4000))) {
        TaskDestroy(t);
        return;
    }

    if ((p->sa2__unk62 == 0) || (p->moveState & 0x08000000)) {
        mgr->unk2 = 1;

        s->graphics.anim = 400;
        s->variant = 1;
    }

    x = ((int)((mgr->qUnk50) >> 8)) - cam->x;
    y = ((int)((mgr->qUnk54) >> 8)) - cam->y;

    s->x = x;
    s->y = y;

    if (gStageTime & 0x2) {
        (s)->frameFlags &= ~(((3) << (12)));
        (s)->frameFlags |= ((2) << (12));
    } else {
        (s)->frameFlags &= ~(((3) << (12)));
        (s)->frameFlags |= ((1) << (12));
    }

    UpdateSpriteAnimation(s);
    DisplaySprite(s);
}

void sub_804A498(s32 qWorldX, s32 qWorldY, bool32 param2)
{
    struct Task *t;
    GfxInfo gfx;
    SomeTaskManager_60 *mgr;

    if (sSparkleCount > 0) {
        sSparkleCount--;

        if (param2) {
            gfx.tileInfo.anim = 775;
            gfx.tileInfo.variant = 1;

        } else {
            gfx.tileInfo.anim = 775;
            gfx.tileInfo.variant = 0;
        }

        gfx.vram = VramMalloc(((16 / 8) * (16 / 8)));

        t = CreateSomeTaskManager_60_Task(&gfx, Task_804A54C, TaskDestructor_804A830);
        mgr = (void *)((t)->data);
        mgr->qUnk50 = qWorldX;
        mgr->qUnk54 = qWorldY;
        mgr->qUnk58 = 0;
        mgr->qUnk5C = -((s32)((0.25)*256));
        mgr->s.oamFlags = ((8) << 6);
        mgr->s.frameFlags = ((1) << (10)) | ((1) << (12));
    }
}

void Task_804A54C(void)
{
    SomeTaskManager_60 *mgr = (void *)((gCurTask)->data);
    Sprite *s = &mgr->s;
    Camera *cam = &gCamera;
    s32 screenX, screenY;

    screenX = ((int)((mgr->qUnk50) >> 8)) - cam->x;
    screenY = ((int)((mgr->qUnk54) >> 8)) - cam->y;

    if ((s->frameFlags & 0x4000) || ((screenX < -16) || screenX >= 320 + 16)) {
        TaskDestroy(gCurTask);
        return;
    }

    s->x = screenX;
    s->y = screenY;
    UpdateSpriteAnimation(s);
    DisplaySprite(s);

    mgr->qUnk50 += mgr->qUnk58;
    mgr->qUnk58 += mgr->qUnk5C;
}

void sub_804A5D8(s32 screenX, s32 screenY)
{
    struct Task *t;
    SomeTaskManager_60 *mgr;
    GfxInfo gfx, sp08, sp0C, sp10;

    gfx.tileInfo.anim = 719;
    gfx.tileInfo.variant = 0;
    gfx.vram = VramMalloc(((32 / 8) * (32 / 8)));
    t = CreateSomeTaskManager_60_Task(&gfx, Task_804A71C, TaskDestructor_SomeTaskManager_60_Common);
    mgr = (void *)((t)->data);
    mgr->unk0 = 0;
    mgr->qUnk50 = screenX;
    mgr->qUnk54 = screenY;
    mgr->s.oamFlags = 0;
    mgr->s.frameFlags = 0;
    mgr->transform.qScaleX = ((s32)((1)*256));
    mgr->transform.qScaleY = ((s32)((1)*256));

    sp08.tileInfo.anim = 719;
    sp08.tileInfo.variant = 1;
    sp08.vram = VramMalloc(((32 / 8) * (32 / 8)));
    t = CreateSomeTaskManager_60_Task(&sp08, Task_804A71C, TaskDestructor_SomeTaskManager_60_Common);
    mgr = (void *)((t)->data);
    mgr->unk0 = 1;
    mgr->qUnk50 = screenX;
    mgr->qUnk54 = screenY;
    mgr->s.oamFlags = 0;
    mgr->transform.qScaleX = ((s32)((1)*256));
    mgr->transform.qScaleY = ((s32)((1)*256));
    mgr->s.frameFlags = ((1) << (18));

    sp0C.tileInfo.anim = 719;
    sp0C.tileInfo.variant = 2;
    sp0C.vram = VramMalloc(((32 / 8) * (32 / 8)));
    t = CreateSomeTaskManager_60_Task(&sp0C, Task_804A71C, TaskDestructor_SomeTaskManager_60_Common);
    mgr = (void *)((t)->data);
    mgr->unk0 = 2;
    mgr->qUnk50 = screenX;
    mgr->qUnk54 = screenY;
    mgr->s.oamFlags = 0;
    mgr->transform.qScaleX = ((s32)((1)*256));
    mgr->transform.qScaleY = ((s32)((1)*256));






    mgr->s.frameFlags = ((1) << (18));


    sp10.tileInfo.anim = 719;
    sp10.tileInfo.variant = 3;
    sp10.vram = VramMalloc(((32 / 8) * (32 / 8)));
    t = CreateSomeTaskManager_60_Task(&sp10, Task_804A71C, TaskDestructor_SomeTaskManager_60_Common);
    mgr = (void *)((t)->data);
    mgr->unk0 = 3;
    mgr->qUnk50 = screenX;
    mgr->qUnk54 = screenY;
    mgr->s.oamFlags = 0;
    mgr->s.frameFlags = 0;
    mgr->transform.qScaleX = ((s32)((1)*256));
    mgr->transform.qScaleY = ((s32)((1)*256));
    mgr->s.frameFlags = ((1) << (18));
}

void Task_804A71C(void)
{
    SomeTaskManager_60 *mgr = (void *)((gCurTask)->data);
    Sprite *s = &mgr->s;
    SpriteTransform *tf;
    s32 x, y;
    s32 v;



    s32 r0;

    s32 r2;

    if (mgr->unk4 >= 0xC0) {
        TaskDestroy(gCurTask);
        return;
    }

    if ((mgr->unk4 == 0x80) && (mgr->unk0 == 0)) {

        if (gExtraBossTaskData.boss)

        {
            gExtraBossTaskData.boss->flags58 &= ~0x400000;
        }
    }

    x = ((int)((mgr->qUnk50) >> 8));
    y = ((int)((mgr->qUnk54) >> 8));

    v = ((mgr->unk4 & 0x1F) << 11);
    if (v != 0) {
        if (v < 0x4000) {
            r2 = ((s32)((1)*256));

            r0 = ((int)(((gSineTable[(v >> 6)])) >> 6));

        } else if (v >= 0xE000) {

            s32 theta = (v - 0xE000) << 1;
            r0 = ((int)(((gSineTable[((theta >> 6) & (1024 - 1))])) >> 6));
            r2 = r0 + ((s32)((1)*256));
            r0 = ((s32)((1)*256)) - r0;
        } else {
            r0 = ((s32)((1)*256));
            r2 = r0;
        }
    } else {
        r0 = ((s32)((1)*256));
        r2 = r0;
    }

    if (r2 == 0) {
        r2 = 2;
    }

    if (r0 == 0) {
        r0 = 2;
    }

    tf = &mgr->transform;
    tf->x = x;
    tf->y = y;
    tf->qScaleX = r2;
    tf->qScaleY = r0;

    (s)->frameFlags &= ~(((0x1F) << (0)));
    s->frameFlags |= ((1) << (6)) | ((1) << (5)) | gOamMatrixIndex++;

    UpdateSpriteAnimation(s);
    TransformSprite(s, tf);
    DisplaySprite(s);

    mgr->unk4++;
}

void TaskDestructor_804A830(struct Task *t)
{
    SomeTaskManager_60 *mgr = (void *)((t)->data);
    sSparkleCount++;
    TaskDestructor_SomeTaskManager_60_Common(t);
}

void InitSparkleCount() { sSparkleCount = 4; }

void sub_804A854(Player *p)
{
    GfxInfo gfx;
    SomeTaskManager_60 *mgr;
    struct Task *t;

    gfx.tileInfo.anim = 400;
    gfx.tileInfo.variant = 0;
    gfx.vram = VramMalloc(((64 / 8) * (40 / 8)));
    t = CreateSomeTaskManager_60_Task(&gfx, Task_804A3C0, TaskDestructor_SomeTaskManager_60_Common);
    mgr = (void *)((t)->data);
    mgr->s.oamFlags = ((8) << 6);
    mgr->s.frameFlags = ((1) << (10)) | ((1) << (12));
}

void sub_804A8A8(s32 qX, s32 qY, s32 param2)
{
    GfxInfo gfx;
    struct Task *t;
    SomeTaskManager_7C *mgr;

    switch (param2) {
        case 0: {
            gfx.tileInfo.anim = 676;
            gfx.tileInfo.variant = 0;
            gfx.vram = (void *)(&VRAM[0x10000] + 0x2E80);
        } break;

        case 1: {
            gfx.tileInfo.anim = 677;
            gfx.tileInfo.variant = 0;
            gfx.vram = (void *)(&VRAM[0x10000] + 0x3080);
        } break;

        case 2: {
            gfx.tileInfo.anim = 678;
            gfx.tileInfo.variant = 0;
            gfx.vram = (void *)(&VRAM[0x10000] + 0x3100);
        } break;
    }

    t = CreateSomeTaskManager_7C_Task(&gfx, Task_804AAC4, ((void*)0));
    mgr = (void *)((t)->data);
    mgr->unk0.unk0 = param2;
    mgr->unk0.qUnk50 = qX;
    mgr->unk0.qUnk54 = qY;

    if (qX == ((s32)((512)*256))) {
        mgr->unk0.qUnk58 = -(((u32)({ gPseudoRandom = (gPseudoRandom * 0x196225) + 0x3C6EF35F; gPseudoRandom; }) << 14) >> 22);
        mgr->unk0.qUnk5A = ((u32)({ gPseudoRandom = (gPseudoRandom * 0x196225) + 0x3C6EF35F; gPseudoRandom; }) & 0xFF00) >> 8;
    } else {
        mgr->unk0.qUnk58 = (((u32)({ gPseudoRandom = (gPseudoRandom * 0x196225) + 0x3C6EF35F; gPseudoRandom; }) & 0x3FF00) >> 8) - 0x300;
        mgr->unk0.qUnk5A = -(((u32)({ gPseudoRandom = (gPseudoRandom * 0x196225) + 0x3C6EF35F; gPseudoRandom; }) & 0x3FF00) >> 8) - 0x80;
    }

    if (param2 == 2) {
        mgr->unk0.qUnk58 >>= 2;
        mgr->unk0.qUnk5A >>= 2;
    }

    mgr->unk0.qUnk5E = ((s32)((7. / 256.)*256));
    mgr->unk70 = (u32)({ gPseudoRandom = (gPseudoRandom * 0x196225) + 0x3C6EF35F; gPseudoRandom; }) >> 8;
    mgr->unk72 = (((u32)({ gPseudoRandom = (gPseudoRandom * 0x196225) + 0x3C6EF35F; gPseudoRandom; }) << 11) >> 19) - 0x1000;

    mgr->unk0.s.oamFlags = ((12) << 6);
    mgr->unk0.s.frameFlags = ((1) << (12));

    if (param2 == 0) {
        s32 a, b;
        u32 v;
        mgr->unk72 >>= 1;

        v = (u32)({ gPseudoRandom = (gPseudoRandom * 0x196225) + 0x3C6EF35F; gPseudoRandom; });
        a = mgr->unk0.transform.qScaleX;
        mgr->unk0.transform.qScaleX = a - ((v & 0x4000) >> 8);
        v = (u32)({ gPseudoRandom = (gPseudoRandom * 0x196225) + 0x3C6EF35F; gPseudoRandom; });
        b = mgr->unk0.transform.qScaleY;
        mgr->unk0.transform.qScaleY = b - ((v & 0x4000) >> 8);
    }

    if ((u32)({ gPseudoRandom = (gPseudoRandom * 0x196225) + 0x3C6EF35F; gPseudoRandom; }) & 0x10000) {
        mgr->unk0.transform.qScaleY = -mgr->unk0.transform.qScaleY;
    }
}

void Task_804AAC4(void)
{
    SomeTaskManager_7C *mgr = (void *)((gCurTask)->data);
    Sprite *s = &mgr->unk0.s;
    SpriteTransform *transform = &mgr->unk0.transform;
    SuperEggRobo *extraBoss = gExtraBossTaskData.boss;
    Player *p = &gPlayer;
    Camera *cam = &gCamera;
    s32 screenX, screenY;


    if (((mgr->unk0.qUnk50 < -((s32)((32)*256))) || (mgr->unk0.qUnk50 > +((s32)((320 + 240 + 32)*256))))
        || ((mgr->unk0.qUnk54 < -((s32)((32)*256))) || (mgr->unk0.qUnk54 > +((s32)(((240 + 128) + 32)*256))))) {
        TaskDestroy(gCurTask);
        return;
    }

    screenX = ((int)((mgr->unk0.qUnk50) >> 8)) - cam->x;
    screenY = ((int)((mgr->unk0.qUnk54) >> 8)) - cam->y;

    if (p->sa2__unk62 != 0) {
        if (sub_800C0E0(s, ((int)((mgr->unk0.qUnk50) >> 8)), ((int)((mgr->unk0.qUnk54) >> 8)), p) != 0) {
            s32 i = 3 - mgr->unk0.unk0;

            do {
                sub_804A8A8(mgr->unk0.qUnk50, mgr->unk0.qUnk54, 2);
            } while (--i != 0);

            m4aSongNumStart(126);

            TaskDestroy(gCurTask);
            return;
        }
    } else if ((p->timerInvulnerability == 0) && !(extraBoss->flags58 & 0x80)) {
        sub_800BFEC(s, ((int)((mgr->unk0.qUnk50) >> 8)), ((int)((mgr->unk0.qUnk54) >> 8)), p);
    }

    transform->x = screenX;
    transform->y = screenY;

    transform->rotation = mgr->unk70 >> 6;
    (s)->frameFlags &= ~(((0x1F) << (0)));
    s->frameFlags |= gOamMatrixIndex++ | ((1) << (5));

    UpdateSpriteAnimation(s);
    TransformSprite(s, transform);
    DisplaySprite(s);

    mgr->unk0.qUnk50 += mgr->unk0.qUnk58;
    mgr->unk0.qUnk54 += mgr->unk0.qUnk5A;
    mgr->unk0.qUnk58 += mgr->unk0.qUnk5C;
    mgr->unk0.qUnk5A += mgr->unk0.qUnk5E;
    mgr->unk70 += mgr->unk72;
}

void Task_804AC4C(void)
{
    SomeTaskManager_7C *mgr = (void *)((gCurTask)->data);
    Sprite *s = &mgr->unk0.s;
    Camera *cam = &gCamera;
    s32 screenX, screenY;

    screenX = ((int)((mgr->unk0.qUnk50) >> 8)) - cam->x;
    screenY = ((int)((mgr->unk0.qUnk54) >> 8)) - cam->y;


    if ((mgr->unk0.qUnk50 < -((s32)((32)*256))) || (mgr->unk0.qUnk50 > +((s32)((320 + 240)*256)))) {
        TaskDestroy(gCurTask);
        return;
    }

    ExtraBossCapsule_UpdateSprite(s, screenX, screenY);
    sub_804CFA0(&mgr->unk0);

    if (--mgr->unk0.unk4 <= 0) {
        s->graphics.anim = 670;
        s->variant = 2;
        s->prevVariant = -1;

        mgr->unk0.qUnk58 = 0;
        mgr->unk0.qUnk5A = 0;

        gCurTask->main = Task_804AD0C;
    }
}

void Task_804AD0C(void)
{
    SomeTaskManager_7C *mgr = (void *)((gCurTask)->data);
    Sprite *s = &mgr->unk0.s;
    SuperEggRobo *extraBoss = gExtraBossTaskData.boss;
    Player *p = &gPlayer;
    Camera *cam = &gCamera;
    s32 screenX, screenY;

    screenX = ((int)((mgr->unk0.qUnk50) >> 8)) - cam->x;
    screenY = ((int)((mgr->unk0.qUnk54) >> 8)) - cam->y;


    if ((mgr->unk0.qUnk50 < -((s32)((32)*256))) || (mgr->unk0.qUnk50 > +((s32)((320 + 240)*256)))) {
        TaskDestroy(gCurTask);
        return;
    }

    switch (ExtraBoss__CapsuleGetCaptureState(mgr, s, extraBoss, p)) {
        case -1: {
            return;
        } break;

        case 0: {
            ExtraBossCapsule_UpdateSprite(s, screenX, screenY);
        } break;

        case +1: {
            ExtraBossCapsule_UpdateSprite(s, screenX, screenY);
            return;
        } break;
    }

    sub_804CFA0(&mgr->unk0);

    if (p->qWorldY - mgr->unk0.qUnk54 < -((s32)((8)*256))) {
        mgr->unk0.qUnk5A = -((s32)((1)*256));
        return;
    } else if (p->qWorldY - mgr->unk0.qUnk54 > +((s32)((8)*256))) {
        mgr->unk0.qUnk5A = +((s32)((1)*256));
        return;
    }

    mgr->unk0.qUnk58 = -((s32)((3)*256));
    mgr->unk0.qUnk5A = +((s32)((0)*256));

    gCurTask->main = Task_804B370;
}

void sub_804AFCC(s32 qX, s32 qY);
void Task_804AF00(void);
void Task_804B0D8(void);

void Task_804AE14(void)
{
    SomeTaskManager_7C *mgr = (void *)((gCurTask)->data);
    Sprite *s = &mgr->unk0.s;
    Player *p = &gPlayer;
    Camera *cam = &gCamera;
    s32 screenX, screenY;

    if (p->timerInvulnerability != 0) {
        p->moveState &= ~0x08000000;

        sub_804AFCC(mgr->unk0.qUnk50, mgr->unk0.qUnk54);
        TaskDestroy(gCurTask);
        return;
    }


    mgr->unk0.qUnk50 = p->qWorldX;
    mgr->unk0.qUnk54 = p->qWorldY;

    screenX = ((int)((mgr->unk0.qUnk50) >> 8)) - cam->x;
    screenY = ((int)((mgr->unk0.qUnk54) >> 8)) - cam->y;
    ExtraBossCapsule_UpdateSprite(s, screenX, screenY);

    if (s->frameFlags & ((1) << (14))) {
        mgr->unk0.unk4 = 240;

        p->qSpeedGround = 0;
        p->qSpeedAirX = 0;
        p->qSpeedAirY = 0;
        p->sa2__unk62 = 0;
        p->moveState |= 0x00400000;
        p->moveState |= 0x00100000;

        s->graphics.anim = 670;
        s->variant = 1;
        s->prevVariant = -1;

        gCurTask->main = Task_804AF00;
    }
}

void Task_804AF00(void)
{
    SomeTaskManager_7C *mgr = (void *)((gCurTask)->data);
    Sprite *s = &mgr->unk0.s;
    Player *p = &gPlayer;
    Camera *cam = &gCamera;
    s32 screenX, screenY;

    if ((p->timerInvulnerability != 0) || (--mgr->unk0.unk4 < 0)) {
        p->moveState &= ~0x08000000;
        p->moveState &= ~0x00400000;
        p->moveState &= ~0x00100000;

        sub_804AFCC(mgr->unk0.qUnk50, mgr->unk0.qUnk54);

        TaskDestroy(gCurTask);
        return;
    } else {
        u32 input;

        if (p->frameInput & (0x0020 | 0x0010)) {
            mgr->unk0.unk4 -= 20;
        }

        Player_804A0B8(p);

        mgr->unk0.qUnk50 = p->qWorldX + mgr->unk68;
        mgr->unk0.qUnk54 = p->qWorldY;
        mgr->unk68 -= mgr->unk68 >> 2;

        input = (p->frameInput & 0x0010) << 1;
        input -= (p->frameInput & 0x0020);
        mgr->unk68 = (input << 5);

        ExtraBossCapsule_UpdateSprite(s, ((int)((mgr->unk0.qUnk50) >> 8)) - cam->x, ((int)((mgr->unk0.qUnk54) >> 8)) - cam->y);
    }
}

void sub_804AFCC(s32 qX, s32 qY)
{
    GfxInfo gfx;
    SomeTaskManager_7C *mgr;
    struct Task *t;
    s32 i;

    gfx.tileInfo.anim = 671;
    gfx.tileInfo.variant = 0;
    gfx.vram = (void *)(&VRAM[0x10000] + 0x2580);

    for (i = 0; i < 2; i++) {
        t = CreateSomeTaskManager_7C_Task(&gfx, Task_804B0D8, ((void*)0));
        mgr = (void *)((t)->data);

        mgr->unk0.qUnk50 = qX;
        mgr->unk0.qUnk54 = qY;

        mgr->unk0.qUnk58 = -((((u32)({ gPseudoRandom = (gPseudoRandom * 0x196225) + 0x3C6EF35F; gPseudoRandom; }) & 0x7F00) >> 8) + 0x80);
        mgr->unk0.qUnk5A = +((((u32)({ gPseudoRandom = (gPseudoRandom * 0x196225) + 0x3C6EF35F; gPseudoRandom; }) & 0x7F00) >> 8) + 0x40);
        mgr->unk0.qUnk5E = ((s32)((7. / 256.)*256));

        mgr->unk72 = (((u32)({ gPseudoRandom = (gPseudoRandom * 0x196225) + 0x3C6EF35F; gPseudoRandom; }) << 13) >> 21) - ((s32)((4)*256));

        if (i & 1) {
            mgr->unk0.transform.qScaleX = -((s32)((1)*256));
            mgr->unk0.qUnk58 = -mgr->unk0.qUnk58;
        }

        mgr->unk0.s.oamFlags = ((12) << 6);
        mgr->unk0.s.frameFlags = ((1) << (12));
    }
}


void Task_804B0D8(void)
{
    SomeTaskManager_7C *mgr = (void *)((gCurTask)->data);
    Sprite *s = &mgr->unk0.s;
    SpriteTransform *transform = &mgr->unk0.transform;
    Camera *cam = &gCamera;
    s32 screenX, screenY;

    screenX = ((int)((mgr->unk0.qUnk50) >> 8)) - cam->x;
    screenY = ((int)((mgr->unk0.qUnk54) >> 8)) - cam->y;


    if (((mgr->unk0.qUnk50 < -((s32)((32)*256))) || (mgr->unk0.qUnk50 > +((s32)((320 + 240 + 32)*256))))
        || ((mgr->unk0.qUnk54 < -((s32)((32)*256))) || (mgr->unk0.qUnk54 > +((s32)(((240 + 128) + 32)*256))))) {
        TaskDestroy(gCurTask);
        return;
    }

    transform->x = screenX;
    transform->y = screenY;
    transform->rotation = mgr->unk70 >> 6;

    (s)->frameFlags &= ~(((0x1F) << (0)));
    s->frameFlags |= gOamMatrixIndex++ | ((1) << (5));

    UpdateSpriteAnimation(s);
    TransformSprite(s, transform);
    DisplaySprite(s);

    mgr->unk0.qUnk50 += mgr->unk0.qUnk58;
    mgr->unk0.qUnk54 += mgr->unk0.qUnk5A;
    mgr->unk0.qUnk58 += mgr->unk0.qUnk5C;
    mgr->unk0.qUnk5A += mgr->unk0.qUnk5E;
    mgr->unk70 += mgr->unk72;
}





s32 ExtraBoss__CapsuleGetCaptureState(SomeTaskManager_7C *mgr, Sprite *s, SuperEggRobo *extraBoss, Player *p)
{
    u32 res;
    typedef u32 (*FakematchFuncCast)(Sprite *, CamCoord, CamCoord);
    if (p->moveState & 0x08000000) {
        return 0;
    }






    res = sub_800C0E0(s, ((int)((mgr->unk0.qUnk50) >> 8)), ((int)((mgr->unk0.qUnk54) >> 8)), p);

    if (res != 0) {
        if (p->sa2__unk62 != 0) {
            m4aSongNumStart(138);
            InitScatteringRings_ExtraBossCapsule(((int)((mgr->unk0.qUnk50) >> 8)), ((int)((mgr->unk0.qUnk54) >> 8)), 8);
            sub_804AFCC(mgr->unk0.qUnk50, mgr->unk0.qUnk54);

            TaskDestroy(gCurTask);
            return -1;
        } else if ((p->timerInvulnerability == 0) && !(extraBoss->flags58 & 0x80)) {
            s->graphics.anim = 670;
            s->variant = 3;
            s->prevVariant = -1;
            p->moveState |= 0x08000000;

            gCurTask->main = Task_804AE14;

            return +1;
        }
    }

    return 0;
}

void sub_804B2BC(s32 qWorldX, s32 qWorldY)
{
    GfxInfo gfx;
    struct Task *t;
    SomeTaskManager_7C *mgr;

    gfx.tileInfo.anim = 670;
    gfx.tileInfo.variant = 0;
    gfx.vram = VramMalloc(((32 / 8) * (16 / 8)));

    t = CreateSomeTaskManager_7C_Task(&gfx, Task_804AC4C, TaskDestructor_SomeTaskManager_60_Common);
    mgr = (void *)((t)->data);

    mgr->unk0.qUnk50 = qWorldX;
    mgr->unk0.qUnk54 = qWorldY;
    mgr->unk0.qUnk58 = -((s32)((1)*256));
    mgr->unk0.unk4 = 48;
    mgr->unk0.s.oamFlags = ((12) << 6);
    mgr->unk0.s.frameFlags = ((1) << (12));
}


void ExtraBossCapsule_UpdateSprite(Sprite *s, s32 screenX, s32 screenY)
{
    s->x = screenX;
    s->y = screenY;
    UpdateSpriteAnimation(s);

    s->frameFlags |= ((1) << (18)) | ((1) << (19));
    s->frameFlags |= ((1) << (11));
    DisplaySprite(s);

    s->frameFlags &= ~(((1) << (18)) | ((1) << (19)));
    s->frameFlags &= ~(((1) << (11)));
    DisplaySprite(s);
}



void Task_804B370(void)
{
    SomeTaskManager_7C *mgr = (void *)((gCurTask)->data);
    Sprite *s = &mgr->unk0.s;
    SuperEggRobo *extraBoss = gExtraBossTaskData.boss;
    Player *p = &gPlayer;
    Camera *cam = &gCamera;
    s32 screenX, screenY;

    screenX = ((int)((mgr->unk0.qUnk50) >> 8)) - cam->x;
    screenY = ((int)((mgr->unk0.qUnk54) >> 8)) - cam->y;


    if ((mgr->unk0.qUnk50 < -((s32)((32)*256))) || (mgr->unk0.qUnk50 > +((s32)((320 + 240)*256)))) {
        TaskDestroy(gCurTask);
        return;
    }

    switch (ExtraBoss__CapsuleGetCaptureState(mgr, s, extraBoss, p)) {
        case -1: {
            return;
        } break;

        case 0: {
            ExtraBossCapsule_UpdateSprite(s, screenX, screenY);
        } break;

        case +1: {
            ExtraBossCapsule_UpdateSprite(s, screenX, screenY);
            return;
        } break;
    }

    sub_804CFA0(&mgr->unk0);
}



void Task_804B420(void)
{
    SomeTaskManager_7C *mgr = (void *)((gCurTask)->data);
    Sprite *s = &mgr->unk0.s;
    SuperEggRobo *extraBoss = gExtraBossTaskData.boss;
    Player *p = &gPlayer;
    Camera *cam = &gCamera;
    s32 scrollX;


    if ((s->frameFlags & ((1) << (14))) || ((mgr->unk0.qUnk50 < -((s32)((32)*256))) || (mgr->unk0.qUnk50 > +((s32)((320 + 240 + 32)*256))))) {
        TaskDestroy(gCurTask);
        return;
    }

    {
        s32 screenX, screenY;
        s32 res;
        s32 x;
        s32 scrollX = cam->x;
        const s32 scrollMaxX = (28 * 96);

        scrollX = (scrollX + gStageTime * 8);





        if (scrollX - 72 >= scrollMaxX) {
            scrollX -= 72;
            scrollX = ({((scrollMaxX) != 0) ? ((s32)(scrollX) % (s32)(scrollMaxX)) : 0;}) + 72;
        }


        x = scrollX - cam->x;

        res = sa2__sub_801F100(((int)((mgr->unk0.qUnk54) >> 8)), ((int)((mgr->unk0.qUnk50) >> 8)) + x, 1, +8, sa2__sub_801EC3C);

        mgr->unk0.qUnk54 += ((s32)((res)*256));

        screenX = ((int)((mgr->unk0.qUnk50) >> 8)) - cam->x;
        screenY = ((int)((mgr->unk0.qUnk54) >> 8)) - cam->y;

        if ((p->sa2__unk62 == 0) && (p->timerInvulnerability == 0) && !(extraBoss->flags58 & 0x80)) {
            sub_800BFEC(s, ((int)((mgr->unk0.qUnk50) >> 8)), ((int)((mgr->unk0.qUnk54) >> 8)), p);
        }

        s->x = screenX;
        s->y = screenY;
        UpdateSpriteAnimation(s);
        DisplaySprite(s);

        mgr->unk0.qUnk50 += mgr->unk0.qUnk58;
        mgr->unk0.qUnk54 += mgr->unk0.qUnk5A;
        mgr->unk0.qUnk58 += mgr->unk0.qUnk5C;
        mgr->unk0.qUnk5A += mgr->unk0.qUnk5E;
    }
}


void sub_804B570(s32 qWorldX, s32 qWorldY)
{
    GfxInfo gfx;
    struct Task *t;
    SomeTaskManager_7C *mgr;

    gfx.tileInfo.anim = 672;
    gfx.tileInfo.variant = 0;
    gfx.vram = VramMalloc(((16 / 8) * (96 / 8)));

    t = CreateSomeTaskManager_7C_Task(&gfx, Task_804B420, TaskDestructor_SomeTaskManager_60_Common);
    mgr = (void *)((t)->data);

    mgr->unk0.qUnk50 = qWorldX;
    mgr->unk0.qUnk54 = qWorldY;

    mgr->unk0.s.oamFlags = ((12) << 6);
    mgr->unk0.s.frameFlags = ((1) << (12));
}
