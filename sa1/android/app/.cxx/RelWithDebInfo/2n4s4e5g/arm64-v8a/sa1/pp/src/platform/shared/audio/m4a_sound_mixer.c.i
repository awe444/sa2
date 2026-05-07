# 1 "/home/awaszczak/git/sa2/sa1/src/platform/shared/audio/m4a_sound_mixer.c"
# 1 "<built-in>" 1
# 1 "<built-in>" 3
# 384 "<built-in>" 3
# 1 "<command line>" 1
# 1 "<built-in>" 2
# 1 "/home/awaszczak/git/sa2/sa1/src/platform/shared/audio/m4a_sound_mixer.c" 2
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
# 2 "/home/awaszczak/git/sa2/sa1/src/platform/shared/audio/m4a_sound_mixer.c" 2

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
# 4 "/home/awaszczak/git/sa2/sa1/src/platform/shared/audio/m4a_sound_mixer.c" 2

# 1 "/home/awaszczak/git/sa2/sa1/include/platform/platform.h" 1





extern void Platform_QueueAudio(const s16 *data, u32 numBytes);
extern void Platform_ClearQueuedAudio(void);
extern void Platform_ProcessBackgroundsCopyQueue(void);
# 6 "/home/awaszczak/git/sa2/sa1/src/platform/shared/audio/m4a_sound_mixer.c" 2
# 1 "/home/awaszczak/git/sa2/sa1/include/platform/shared/audio/cgb_audio.h" 1





struct AudioCGB {
    u16 ch1Freq;
    u8 ch1SweepCounter;
    u8 ch1SweepCounterI;
    bool8 ch1SweepDir;
    u8 ch1SweepShift;
    u8 Vol[4];
    u8 VolI[4];
    u8 Len[4];
    u8 LenI[4];
    bool8 LenOn[4];
    u8 EnvCounter[4];
    u8 EnvCounterI[4];
    bool8 EnvDir[4];
    bool8 DAC[4];
    fixed8_24 WAVRAM[32];
    u16 ch4LFSR[2];
    fixed8_24 outBuffer[4907 * 2];
};

void cgb_audio_init(u32 rate);
void cgb_set_sweep(u8 sweep);
void cgb_set_wavram();
void cgb_toggle_length(u8 channel, bool8 state);
void cgb_set_length(u8 channel, u8 length);
void cgb_set_envelope(u8 channel, u8 envelope);
void cgb_trigger_note(u8 channel);
void cgb_audio_generate(u16 samplesPerFrame);
fixed8_24 *cgb_get_buffer();
# 7 "/home/awaszczak/git/sa2/sa1/src/platform/shared/audio/m4a_sound_mixer.c" 2

static inline void GenerateAudio(struct SoundMixerState *mixer, struct MixerSource *chan, struct WaveData *wav, fixed8_24 *pcmBuffer,
                                 u16 samplesPerFrame, float sampleRateReciprocal);
static void SampleMixer(struct SoundMixerState *mixer, u32 scanlineLimit, u16 samplesPerFrame, fixed8_24 *pcmBuffer, u8 dmaCounter,
                        u16 maxBufSize);
static inline bool32 TickEnvelope(struct MixerSource *chan, struct WaveData *wav);
static void ChnVolSetAsm(struct MixerSource *chan, struct MP2KTrack *track);
# 28 "/home/awaszczak/git/sa2/sa1/src/platform/shared/audio/m4a_sound_mixer.c"
static s16 audioBuffer[4907];
static struct SoundMixerState sSoundInfo = { 0 };
struct SoundMixerState *SOUND_INFO_PTR = &sSoundInfo;

void SoundMain(void)
{



    struct SoundMixerState *mixer = SOUND_INFO_PTR;

    if (mixer->lockStatus != 0x68736D53) {
        return;
    }
    mixer->lockStatus++;

    u32 maxScanlines = mixer->maxScanlines;
    if (mixer->maxScanlines != 0) {
        u32 vcount = (*(reg_u16 *)(REG_BASE + 0x6));
        maxScanlines += vcount;
        if (vcount < 160) {
            maxScanlines += 228;
        }
    }

    if (mixer->MPlayMainHead != ((void*)0)) {
        mixer->MPlayMainHead(mixer->musicPlayerHead);
    }

    mixer->CgbSound();

    s32 samplesPerFrame = mixer->samplesPerFrame;
    fixed8_24 *pcmBuffer = mixer->pcmBuffer;
    s32 dmaCounter = mixer->dmaCounter;

    if (dmaCounter > 1) {
        pcmBuffer += samplesPerFrame * (mixer->framesPerDmaCycle - (dmaCounter - 1)) * 2;
    }

    SampleMixer(mixer, maxScanlines, samplesPerFrame, pcmBuffer, dmaCounter, 4907);
    cgb_audio_generate(samplesPerFrame);
}

static void SampleMixer(struct SoundMixerState *mixer, u32 scanlineLimit, u16 samplesPerFrame, fixed8_24 *pcmBuffer, u8 dmaCounter,
                        u16 maxBufSize)
{
    u32 reverb = mixer->reverb;
    if (reverb) {



        fixed8_24 *tmp1 = pcmBuffer;
        fixed8_24 *tmp2;
        if (dmaCounter == 2) {
            tmp2 = mixer->pcmBuffer;
        } else {
            tmp2 = pcmBuffer + samplesPerFrame * 2;
        }
        u16 i = 0;
        do {
            fixed8_24 s = tmp1[0] + tmp1[1] + tmp2[0] + tmp2[1];




            s = (s32)(((s64)s * reverb) >> 9);




            if (s < 0) s++;
            tmp1[0] = tmp1[1] = s;
            tmp1 += 2;
            tmp2 += 2;
        } while (++i < samplesPerFrame);
    } else {


        for (int i = 0; i < samplesPerFrame; i++) {
            fixed8_24 *dst = &pcmBuffer[i * 2];
            dst[1] = dst[0] = 0;
        }
    }

    float sampleRateReciprocal = mixer->sampleRateReciprocal;
    s8 numChans = mixer->numChans;
    struct MixerSource *chan = mixer->chans;

    for (int i = 0; i < numChans; i++, chan++) {
        struct WaveData *wav = chan->wav;

        if (scanlineLimit != 0) {
            u16 vcount = (*(reg_u16 *)(REG_BASE + 0x6));
            if (vcount < 160) {
                vcount += 228;
            }
            if (vcount >= scanlineLimit) {
                goto returnEarly;
            }
        }

        if (TickEnvelope(chan, wav)) {
            GenerateAudio(mixer, chan, wav, pcmBuffer, samplesPerFrame, sampleRateReciprocal);
        }
    }
returnEarly:
    mixer->lockStatus = 0x68736D53;
}



static inline bool32 TickEnvelope(struct MixerSource *chan, struct WaveData *wav)
{
# 152 "/home/awaszczak/git/sa2/sa1/src/platform/shared/audio/m4a_sound_mixer.c"
    u8 status = chan->status;
    if ((status & 0xC7) == 0) {
        return 0;
    }

    u8 env = 0;
    if ((status & 0x80) == 0) {
        env = chan->data.sound.envelopeVol;

        if (status & 4) {

            --chan->data.sound.echoVol;
            if (chan->data.sound.echoVol <= 0) {
                chan->status = 0;
                return 0;
            } else {
                return 1;
            }
        } else if (status & 0x40) {

            chan->data.sound.envelopeVol = env * chan->data.sound.release / 256U;
            u8 echoVol = chan->data.sound.echoVol;
            if (chan->data.sound.envelopeVol > echoVol) {
                return 1;
            } else if (echoVol == 0) {
                chan->status = 0;
                return 0;
            } else {
                chan->status |= 4;
                return 1;
            }
        }

        switch (status & 3) {
            u16 newEnv;
            case 2:

                chan->data.sound.envelopeVol = env * chan->data.sound.decay / 256U;

                u8 sustain = chan->data.sound.sustain;
                if (chan->data.sound.envelopeVol <= sustain && sustain == 0) {

                    if (chan->data.sound.echoVol == 0) {
                        chan->status = 0;
                        return 0;
                    } else {
                        chan->status |= 4;
                        return 1;
                    }
                } else if (chan->data.sound.envelopeVol <= sustain) {
                    chan->data.sound.envelopeVol = sustain;
                    --chan->status;
                }
                break;
            case 3:
            attack:
                newEnv = env + chan->data.sound.attack;
                if (newEnv > 0xFF) {
                    chan->data.sound.envelopeVol = 0xFF;
                    --chan->status;
                } else {
                    chan->data.sound.envelopeVol = newEnv;
                }
                break;
            case 1:
            default:
                break;
        }

        return 1;
    } else if (status & 0x40) {

        chan->status = 0;
        return 0;
    } else {

        chan->status = 3;
        chan->current = wav->data;
        chan->data.sound.ct = wav->size;
        chan->data.sound.fw = 0;
        chan->data.sound.envelopeVol = 0;
        if ((wav->status >> 8) & 0xC0) {
            chan->status |= 0x10;
        }
        goto attack;
    }
}

static inline void GenerateAudio(struct SoundMixerState *mixer, struct MixerSource *chan, struct WaveData *wav, fixed8_24 *pcmBuffer,
                                 u16 samplesPerFrame, float sampleRateReciprocal)
{
    u8 v = chan->data.sound.envelopeVol * (mixer->masterVol + 1) / 16U;
    chan->data.sound.envelopeVolR = chan->rightVol * v / 256U;
    chan->data.sound.envelopeVolL = chan->leftVol * v / 256U;

    s32 loopLen = 0;
    s8 *loopStart;
    if (chan->status & 0x10) {
        loopStart = wav->data + wav->loopStart;
        loopLen = wav->size - wav->loopStart;
    }
    s32 samplesLeftInWav = chan->data.sound.ct;
    s8 *current = chan->current;

    fixed8_24 envR = chan->data.sound.envelopeVolR << 9;
    fixed8_24 envL = chan->data.sound.envelopeVolL << 9;

    if (chan->type & 0x07) {
        for (u16 i = 0; i < samplesPerFrame; i++, pcmBuffer += 2) {
            s8 c = *(current++);




            pcmBuffer[1] += (c * envR);
            pcmBuffer[0] += (c * envL);
            if (--samplesLeftInWav == 0) {
                samplesLeftInWav = loopLen;
                if (loopLen != 0) {
                    current = loopStart;
                } else {
                    chan->status = 0;
                    return;
                }
            }
        }

        chan->data.sound.ct = samplesLeftInWav;
        chan->current = current;
    } else {
        fixed8_24 finePos = chan->data.sound.fw;
        fixed8_24 romSamplesPerOutputSample = (fixed8_24)((chan->data.sound.freq * sampleRateReciprocal)*16777216.0f);

        s16 b = current[0];
        s16 m = current[1] - b;
        current += 1;

        for (u16 i = 0; i < samplesPerFrame; i++, pcmBuffer += 2) {


            s32 sample = (((s64)finePos * m) >> 24) + b;

            pcmBuffer[1] += (sample * envR);
            pcmBuffer[0] += (sample * envL);

            finePos += romSamplesPerOutputSample;
            u32 newCoarsePos = ((finePos) >> 24);
            if (newCoarsePos != 0) {
                finePos = ((finePos)&0xFFFFFF);
                samplesLeftInWav -= newCoarsePos;
                if (samplesLeftInWav <= 0) {
                    if (loopLen != 0) {
                        current = loopStart;
                        newCoarsePos = -samplesLeftInWav;
                        samplesLeftInWav += loopLen;
                        while (samplesLeftInWav <= 0) {
                            newCoarsePos -= loopLen;
                            samplesLeftInWav += loopLen;
                        }
                        b = current[newCoarsePos];
                        m = current[newCoarsePos + 1] - b;
                        current += newCoarsePos + 1;
                    } else {
                        chan->status = 0;
                        return;
                    }
                } else {
                    b = current[newCoarsePos - 1];
                    m = current[newCoarsePos] - b;
                    current += newCoarsePos;
                }
            }
        }

        chan->data.sound.fw = finePos;
        chan->data.sound.ct = samplesLeftInWav;
        chan->current = current - 1;
    }
}

u32 umul3232H32(u32 a, u32 b)
{
    u64 result = a;
    result *= b;
    return result >> 32;
}

void SoundMainBTM(void *ptr) { { vu32 tmp = (vu32)(0); CpuSet((void *)&tmp, ptr, 0x04000000 | 0x01000000 | ((__builtin_offsetof(struct MP2KTrack, cmdPtr))/(32/8) & 0x1FFFFF)); }; }



void MP2KClearChain(struct MixerSource *chan)
{
    struct MP2KTrack *track = chan->track;
    if (chan->track == ((void*)0)) {
        return;
    }
    struct MixerSource *next = chan->next;
    struct MixerSource *prev = chan->prev;

    if (prev != ((void*)0)) {
        prev->next = next;
    } else {
        track->chan = next;
    }

    if (next != ((void*)0)) {
        next->prev = prev;
    }

    chan->track = ((void*)0);
}

static u8 ConsumeTrackByte(struct MP2KTrack *track) { return *track->cmdPtr++; }

void MPlayJumpTableCopy(void **mplayJumpTable)
{
    for (u8 i = 0; i < 36; i++) {
        mplayJumpTable[i] = gMPlayJumpTableTemplate[i];
    }
}


void MP2K_event_fine(struct MP2KPlayerState *unused, struct MP2KTrack *track)
{
    struct MP2KTrack *r5 = track;
    for (struct MixerSource *chan = track->chan; chan != ((void*)0); chan = chan->next) {
        if (chan->status & 0xC7) {
            chan->status |= 0x40;
        }
        ClearChain(chan);
    }
    track->status = 0;
}


void MP2K_event_goto(struct MP2KPlayerState *unused, struct MP2KTrack *track)
{
    u8 *cmdPtr = track->cmdPtr;
    uintptr_t addr = 0;
    for (size_t i = sizeof(uintptr_t) - 1; i > 0; i--) {
        addr |= cmdPtr[i];
        addr <<= 8;
    }
    addr |= *cmdPtr;
    track->cmdPtr = (u8 *)addr;
}


void MP2K_event_patt(struct MP2KPlayerState *unused, struct MP2KTrack *track)
{
    u8 level = track->patternLevel;
    if (level < 3) {
        track->patternStack[level] = track->cmdPtr + sizeof(u8 *);
        track->patternLevel++;
        MP2K_event_goto(unused, track);
    } else {


        MP2K_event_fine(unused, track);
    }
}



void MP2K_event_pend(struct MP2KPlayerState *unused, struct MP2KTrack *track)
{
    if (track->patternLevel != 0) {
        u8 index = --track->patternLevel;
        track->cmdPtr = track->patternStack[index];
    }
}


void MP2K_event_rept(struct MP2KPlayerState *unused, struct MP2KTrack *track)
{
    if (*track->cmdPtr == 0) {

        track->cmdPtr++;
        MP2K_event_goto(unused, track);
    } else {
        u8 repeatCount = ++track->repeatCount;
        if (repeatCount < ConsumeTrackByte(track)) {
            MP2K_event_goto(unused, track);
        } else {
            track->repeatCount = 0;
            track->cmdPtr += sizeof(u8) + sizeof(u8 *);
        }
    }
}


void MP2K_event_prio(struct MP2KPlayerState *unused, struct MP2KTrack *track) { track->priority = ConsumeTrackByte(track); }



void MP2K_event_tempo(struct MP2KPlayerState *player, struct MP2KTrack *track)
{
    u16 bpm = ConsumeTrackByte(track);
    bpm *= 2;
    player->tempoRawBPM = bpm;
    player->tempoInterval = (bpm * player->tempoScale) / 256;
}

void MP2K_event_keysh(struct MP2KPlayerState *unused, struct MP2KTrack *track)
{
    track->keyShift = ConsumeTrackByte(track);
    track->status |= 0xC;
}

void MP2K_event_voice(struct MP2KPlayerState *player, struct MP2KTrack *track)
{
    u8 voice = *(track->cmdPtr++);
    struct MP2KVoiceGroup *voicegroup = &player->voicegroup[voice];
    track->voicegroup = *voicegroup;
}

void MP2K_event_vol(struct MP2KPlayerState *unused, struct MP2KTrack *track)
{
    track->vol = ConsumeTrackByte(track);
    track->status |= 0x3;
}

void MP2K_event_pan(struct MP2KPlayerState *unused, struct MP2KTrack *track)
{
    track->pan = ConsumeTrackByte(track) - 0x40;
    track->status |= 0x3;
}

void MP2K_event_bend(struct MP2KPlayerState *unused, struct MP2KTrack *track)
{
    track->bend = ConsumeTrackByte(track) - 0x40;
    track->status |= 0xC;
}

void MP2K_event_bendr(struct MP2KPlayerState *unused, struct MP2KTrack *track)
{
    track->bendRange = ConsumeTrackByte(track);
    track->status |= 0xC;
}

void MP2K_event_lfodl(struct MP2KPlayerState *unused, struct MP2KTrack *track) { track->lfoDelay = ConsumeTrackByte(track); }

void MP2K_event_modt(struct MP2KPlayerState *unused, struct MP2KTrack *track)
{
    u8 type = ConsumeTrackByte(track);
    if (type != track->modType) {
        track->modType = type;
        track->status |= 0xF;
    }
}

void MP2K_event_tune(struct MP2KPlayerState *unused, struct MP2KTrack *track)
{
    track->tune = ConsumeTrackByte(track) - 0x40;
    track->status |= 0xC;
}

void MP2K_event_port(struct MP2KPlayerState *unused, struct MP2KTrack *track)
{

    vu8 *offset = (vu8 *)((REG_BASE + ((((0x40 + sizeof(winreg_t) * 6) + 4) + 2) + 2) + 2 + 10 + 0x0) + *(track->cmdPtr++));
    *offset = ConsumeTrackByte(track);
}

void MP2KPlayerMain(struct MP2KPlayerState *player)
{
    struct SoundMixerState *mixer = SOUND_INFO_PTR;

    if (player->lockStatus != 0x68736D53) {
        return;
    }
    player->lockStatus++;

    if (player->nextPlayerFunc != ((void*)0)) {
        player->nextPlayerFunc(player->nextPlayer);
    }

    if (player->status & 0x80000000) {
        goto returnEarly;
    }
    FadeOutBody(player);
    if (player->status & 0x80000000) {
        goto returnEarly;
    }

    player->tempoCounter += player->tempoInterval;
    while (player->tempoCounter >= 150) {
        u16 trackBits = 0;

        for (u32 i = 0; i < player->trackCount; i++) {
            struct MP2KTrack *currentTrack = player->tracks + i;
            struct MixerSource *chan;
            if ((currentTrack->status & 0x80) == 0) {
                continue;
            }
            trackBits |= (1 << i);

            chan = currentTrack->chan;
            while (chan != ((void*)0)) {
                if ((chan->status & (0x80 | 0x40 | 0x04 | 0x03)) == 0) {
                    ClearChain(chan);
                } else if (chan->data.sound.gateTime != 0 && --chan->data.sound.gateTime == 0) {
                    chan->status |= 0x40;
                }
                chan = chan->next;
            }

            if (currentTrack->status & 0x40) {
                { vu32 tmp = (vu32)(0); CpuSet((void *)&tmp, currentTrack, 0x04000000 | 0x01000000 | ((__builtin_offsetof(struct MP2KTrack, cmdPtr))/(32/8) & 0x1FFFFF)); };
                currentTrack->status = 0x80;
                currentTrack->bendRange = 2;
                currentTrack->volPublic = 64;
                currentTrack->lfoSpeed = 22;
                currentTrack->voicegroup.type = 1;
            }

            while (currentTrack->wait == 0) {
                u8 event = *currentTrack->cmdPtr;
                if (event < 0x80) {
                    event = currentTrack->runningStatus;
                } else {
                    currentTrack->cmdPtr++;
                    if (event >= 0xBD) {
                        currentTrack->runningStatus = event;
                    }
                }

                if (event >= 0xCF) {
                    mixer->plynote(event - 0xCF, player, currentTrack);
                } else if (event >= 0xB1) {
                    player->cmd = event - 0xB1;
                    MP2KEventFunc eventFunc = mixer->MPlayJumpTable[player->cmd];
                    eventFunc(player, currentTrack);

                    if (currentTrack->status == 0) {
                        goto nextTrack;
                    }
                } else {
                    currentTrack->wait = gClockTable[event - 0x80];
                }
            }

            currentTrack->wait--;

            if (currentTrack->lfoSpeed != 0 && currentTrack->modDepth != 0) {
                if (currentTrack->lfoDelayCounter != 0U) {
                    currentTrack->lfoDelayCounter--;
                    goto nextTrack;
                }

                currentTrack->lfoSpeedCounter += currentTrack->lfoSpeed;

                s8 r;
                if (currentTrack->lfoSpeedCounter >= 0x40U && currentTrack->lfoSpeedCounter < 0xC0U) {
                    r = 128 - currentTrack->lfoSpeedCounter;
                } else if (currentTrack->lfoSpeedCounter >= 0xC0U) {


                    r = currentTrack->lfoSpeedCounter - 256;
                } else {
                    r = currentTrack->lfoSpeedCounter;
                }
                r = ((currentTrack->modDepth * r) >> __builtin_ctz(64));

                if (r != currentTrack->modCalculated) {
                    currentTrack->modCalculated = r;
                    if (currentTrack->modType == 0) {
                        currentTrack->status |= 0x0C;
                    } else {
                        currentTrack->status |= 0x03;
                    }
                }
            }

        nextTrack:;
        }

        player->clock++;
        if (trackBits == 0) {
            player->status = 0x80000000;
            goto returnEarly;
        }
        player->status = trackBits;
        player->tempoCounter -= 150;
    }

    u32 i = 0;

    do {
        struct MP2KTrack *track = player->tracks + i;

        if ((track->status & 0x80) == 0 || (track->status & 0xF) == 0) {
            continue;
        }
        TrkVolPitSet(player, track);
        for (struct MixerSource *chan = track->chan; chan != ((void*)0); chan = chan->next) {
            if ((chan->status & 0xC7) == 0) {
                ClearChain(chan);
                continue;
            }
            u8 cgbType = chan->type & 0x07;
            if (track->status & 0x03) {
                ChnVolSetAsm(chan, track);
                if (cgbType != 0) {
                    chan->data.cgb.cgbStatus |= 1;
                }
            }
            if (track->status & 0x0C) {
                s32 key = chan->data.sound.key + track->keyShiftCalculated;
                if (key < 0) {
                    key = 0;
                }
                if (cgbType != 0) {
                    chan->data.cgb.freq = mixer->MidiKeyToCgbFreq(cgbType, key, track->pitchCalculated);
                    chan->data.cgb.cgbStatus |= 0x2;
                } else {
                    chan->data.sound.freq = MidiKeyToFreq(chan->wav, key, track->pitchCalculated);
                }
            }
        }
        track->status &= ~0xF;
    } while (++i < player->trackCount);
returnEarly:;
    player->lockStatus = 0x68736D53;
}

void TrackStop(struct MP2KPlayerState *player, struct MP2KTrack *track)
{
    if (track->status & 0x80) {
        for (struct MixerSource *chan = track->chan; chan != ((void*)0); chan = chan->next) {
            if (chan->status != 0) {
                u8 cgbType = chan->type & 0x07;
                if (cgbType != 0) {
                    struct SoundMixerState *mixer = SOUND_INFO_PTR;
                    mixer->CgbOscOff(cgbType);
                }
                chan->status = 0;
            }
            chan->track = ((void*)0);
        }
        track->chan = ((void*)0);
    }
}

static void ChnVolSetAsm(struct MixerSource *chan, struct MP2KTrack *track)
{
    s8 forcedPan = chan->data.sound.rhythmPan;
    u32 rightVolume = (u8)(forcedPan + 128) * chan->data.sound.velocity * track->volRightCalculated / 128 / 128;
    if (rightVolume > 0xFF) {
        rightVolume = 0xFF;
    }
    chan->rightVol = rightVolume;

    u32 leftVolume = (u8)(127 - forcedPan) * chan->data.sound.velocity * track->volLeftCalculated / 128 / 128;
    if (leftVolume > 0xFF) {
        leftVolume = 0xFF;
    }
    chan->leftVol = leftVolume;
}

void MP2K_event_nxx(u8 clock, struct MP2KPlayerState *player, struct MP2KTrack *track)
{
    struct SoundMixerState *mixer = SOUND_INFO_PTR;


    track->gateTime = gClockTable[clock];
    if (*track->cmdPtr < 0x80) {

        track->key = *(track->cmdPtr++);
        if (*track->cmdPtr < 0x80) {

            track->velocity = *(track->cmdPtr++);
            if (*track->cmdPtr < 0x80) {

                track->gateTime += *(track->cmdPtr++);
            }
        }
    }


    s8 forcedPan = 0;

    struct MP2KVoiceGroup *voicegroup = &track->voicegroup;

    u8 key = track->key;
    u8 type = voicegroup->type;

    if (type & (0x80 | 0x40)) {
        u8 voicegroupIndex;
        if (voicegroup->type & 0x40) {
            voicegroupIndex = voicegroup->data.keySplit.keySplitTable[track->key];
        } else {
            voicegroupIndex = track->key;
        }

        voicegroup = voicegroup->data.keySplit.group + voicegroupIndex;
        if (voicegroup->type & (0x80 | 0x40)) {
            return;
        }
        if (type & 0x80) {
            if (voicegroup->pan_sweep & 0x80) {
                forcedPan = ((s8)(voicegroup->pan_sweep & 0x7F) - 0x40) * 2;
            }
            key = voicegroup->drumKey;
        }
    }


    u16 priority = player->priority + track->priority;
    if (priority > 0xFF) {
        priority = 0xFF;
    }

    u8 cgbType = voicegroup->type & 0x07;
    struct MixerSource *chan;

    if (cgbType != 0) {
        if (mixer->cgbChans == ((void*)0)) {
            return;
        }

        chan = mixer->cgbChans + cgbType - 1;


        if ((chan->status & (0x80 | 0x40 | 0x04 | 0x03)) && (chan->status & 0x40) == 0) {

            if (chan->data.sound.priority > priority || (chan->data.sound.priority == priority && chan->track < track)) {
                return;
            }
        }
    } else {
        u16 p = priority;
        struct MP2KTrack *t = track;
        bool32 foundStoppingChannel = 0;
        chan = ((void*)0);
        u8 numChans = mixer->numChans;
        struct MixerSource *currChan = mixer->chans;

        for (u8 i = 0; i < numChans; i++, currChan++) {
            if ((currChan->status & (0x80 | 0x40 | 0x04 | 0x03)) == 0) {

                chan = currChan;
                break;
            }

            if (currChan->status & 0x40 && !foundStoppingChannel) {


                foundStoppingChannel = 1;
                p = currChan->data.sound.priority;
                t = currChan->track;
                chan = currChan;
            } else if ((currChan->status & 0x40 && foundStoppingChannel)
                       || ((currChan->status & 0x40) == 0 && !foundStoppingChannel)) {

                if (currChan->data.sound.priority < p) {
                    p = currChan->data.sound.priority;
                    t = currChan->track;
                    chan = currChan;
                } else if (currChan->data.sound.priority == p && currChan->track > t) {
                    t = currChan->track;
                    chan = currChan;
                } else if (currChan->data.sound.priority == p && currChan->track == t) {
                    chan = currChan;
                }
            }
        }
    }

    if (chan == ((void*)0)) {
        return;
    }

    ClearChain(chan);

    chan->prev = ((void*)0);
    chan->next = track->chan;
    if (track->chan != ((void*)0)) {
        track->chan->prev = chan;
    }
    track->chan = chan;
    chan->track = track;

    track->lfoDelayCounter = track->lfoDelay;
    if (track->lfoDelay != 0) {
        ClearModM(track);
    }
    TrkVolPitSet(player, track);

    chan->data.sound.gateTime = track->gateTime;
    chan->data.sound.untransposedKey = track->key;
    chan->data.sound.velocity = track->velocity;
    chan->data.sound.priority = priority;
    chan->data.sound.key = key;
    chan->data.sound.rhythmPan = forcedPan;
    chan->type = voicegroup->type;
    chan->wav = voicegroup->data.sound.wav;
    chan->data.sound.attack = voicegroup->data.sound.attack;
    chan->data.sound.decay = voicegroup->data.sound.decay;
    chan->data.sound.sustain = voicegroup->data.sound.sustain;
    chan->data.sound.release = voicegroup->data.sound.release;
    chan->data.sound.echoVol = track->echoVolume;
    chan->data.sound.echoLen = track->echoLength;
    ChnVolSetAsm(chan, track);


    s16 transposedKey = chan->data.sound.key;
    transposedKey += track->keyShiftCalculated;
    if (transposedKey < 0) {
        transposedKey = 0;
    }

    if (cgbType != 0) {

        chan->data.cgb.length = voicegroup->cgbLength;
        if (voicegroup->pan_sweep & 0x80 || (voicegroup->pan_sweep & 0x70) == 0) {
            chan->data.cgb.sweep = 8;
        } else {
            chan->data.cgb.sweep = voicegroup->pan_sweep;
        }

        chan->data.cgb.freq = mixer->MidiKeyToCgbFreq(cgbType, transposedKey, track->pitchCalculated);
    } else {
        chan->data.sound.freq = MidiKeyToFreq(chan->wav, transposedKey, track->pitchCalculated);
    }

    chan->status = 0x80;
    track->status &= ~0xF;
}

void MP2K_event_endtie(struct MP2KPlayerState *unused, struct MP2KTrack *track)
{
    u8 key = *track->cmdPtr;
    if (key < 0x80) {
        track->key = key;
        track->cmdPtr++;
    } else {
        key = track->key;
    }

    struct MixerSource *chan = track->chan;
    while (chan != ((void*)0)) {
        if (chan->status & 0x83 && (chan->status & 0x40) == 0 && chan->data.sound.untransposedKey == key) {
            chan->status |= 0x40;
            return;
        }
        chan = chan->next;
    }
}

void MP2K_event_lfos(struct MP2KPlayerState *unused, struct MP2KTrack *track)
{
    track->lfoSpeed = *(track->cmdPtr++);
    if (track->lfoSpeed == 0) {
        ClearModM(track);
    }
}

void MP2K_event_mod(struct MP2KPlayerState *unused, struct MP2KTrack *track)
{
    track->modDepth = *(track->cmdPtr++);
    if (track->modDepth == 0) {
        ClearModM(track);
    }
}

void m4aSoundVSync(void)
{
    struct SoundMixerState *mixer = SOUND_INFO_PTR;
    if (mixer->lockStatus - 0x68736D53 <= 1) {
        s32 samplesPerFrame = mixer->samplesPerFrame * 2;
        fixed8_24 *m4aBuffer = mixer->pcmBuffer;
        fixed8_24 *cgbBuffer = cgb_get_buffer();
        s32 dmaCounter = mixer->dmaCounter;

        if (dmaCounter > 1) {
            m4aBuffer += samplesPerFrame * (mixer->framesPerDmaCycle - (dmaCounter - 1));
        }

        for (u32 i = 0; i < samplesPerFrame; i++) {



            fixed8_24 sample = (m4aBuffer[i] + cgbBuffer[i]) >> 3;





            s32 out = sample >> 9;



            if (out > 32767) out = 32767;
            else if (out < -32768) out = -32768;
            audioBuffer[i] = (s16)out;
        }

        Platform_QueueAudio(audioBuffer, samplesPerFrame * sizeof(s16));
        if ((s8)(--mixer->dmaCounter) <= 0)
            mixer->dmaCounter = mixer->framesPerDmaCycle;
    }
}
