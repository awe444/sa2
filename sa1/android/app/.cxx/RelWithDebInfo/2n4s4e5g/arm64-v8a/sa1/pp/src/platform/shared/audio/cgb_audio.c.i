# 1 "/home/awaszczak/git/sa2/sa1/src/platform/shared/audio/cgb_audio.c"
# 1 "<built-in>" 1
# 1 "<built-in>" 3
# 384 "<built-in>" 3
# 1 "<command line>" 1
# 1 "<built-in>" 2
# 1 "/home/awaszczak/git/sa2/sa1/src/platform/shared/audio/cgb_audio.c" 2
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
# 2 "/home/awaszczak/git/sa2/sa1/src/platform/shared/audio/cgb_audio.c" 2
# 1 "/home/awaszczak/git/sa2/sa1/include/platform/shared/audio/cgb_audio.h" 1



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
# 5 "/home/awaszczak/git/sa2/sa1/include/platform/shared/audio/cgb_audio.h" 2

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
# 3 "/home/awaszczak/git/sa2/sa1/src/platform/shared/audio/cgb_audio.c" 2
# 1 "/home/awaszczak/git/sa2/sa1/include/platform/shared/audio/cgb_tables.h" 1








const fixed8_24 PU0[32]
    = { (fixed8_24)((1.0 / 15)*16777216.0f), (fixed8_24)((1.0 / 15)*16777216.0f), (fixed8_24)((-1.0 / 15)*16777216.0f), (fixed8_24)((-1.0 / 15)*16777216.0f),
        (fixed8_24)((-1.0 / 15)*16777216.0f), (fixed8_24)((-1.0 / 15)*16777216.0f), (fixed8_24)((-1.0 / 15)*16777216.0f), (fixed8_24)((-1.0 / 15)*16777216.0f),
        (fixed8_24)((-1.0 / 15)*16777216.0f), (fixed8_24)((-1.0 / 15)*16777216.0f), (fixed8_24)((-1.0 / 15)*16777216.0f), (fixed8_24)((-1.0 / 15)*16777216.0f),
        (fixed8_24)((-1.0 / 15)*16777216.0f), (fixed8_24)((-1.0 / 15)*16777216.0f), (fixed8_24)((-1.0 / 15)*16777216.0f), (fixed8_24)((-1.0 / 15)*16777216.0f),
        (fixed8_24)((1.0 / 15)*16777216.0f), (fixed8_24)((1.0 / 15)*16777216.0f), (fixed8_24)((-1.0 / 15)*16777216.0f), (fixed8_24)((-1.0 / 15)*16777216.0f),
        (fixed8_24)((-1.0 / 15)*16777216.0f), (fixed8_24)((-1.0 / 15)*16777216.0f), (fixed8_24)((-1.0 / 15)*16777216.0f), (fixed8_24)((-1.0 / 15)*16777216.0f),
        (fixed8_24)((-1.0 / 15)*16777216.0f), (fixed8_24)((-1.0 / 15)*16777216.0f), (fixed8_24)((-1.0 / 15)*16777216.0f), (fixed8_24)((-1.0 / 15)*16777216.0f),
        (fixed8_24)((-1.0 / 15)*16777216.0f), (fixed8_24)((-1.0 / 15)*16777216.0f), (fixed8_24)((-1.0 / 15)*16777216.0f), (fixed8_24)((-1.0 / 15)*16777216.0f) };

const fixed8_24 PU1[32]
    = { (fixed8_24)((1.0 / 15)*16777216.0f), (fixed8_24)((1.0 / 15)*16777216.0f), (fixed8_24)((1.0 / 15)*16777216.0f), (fixed8_24)((1.0 / 15)*16777216.0f),
        (fixed8_24)((-1.0 / 15)*16777216.0f), (fixed8_24)((-1.0 / 15)*16777216.0f), (fixed8_24)((-1.0 / 15)*16777216.0f), (fixed8_24)((-1.0 / 15)*16777216.0f),
        (fixed8_24)((-1.0 / 15)*16777216.0f), (fixed8_24)((-1.0 / 15)*16777216.0f), (fixed8_24)((-1.0 / 15)*16777216.0f), (fixed8_24)((-1.0 / 15)*16777216.0f),
        (fixed8_24)((-1.0 / 15)*16777216.0f), (fixed8_24)((-1.0 / 15)*16777216.0f), (fixed8_24)((-1.0 / 15)*16777216.0f), (fixed8_24)((-1.0 / 15)*16777216.0f),
        (fixed8_24)((1.0 / 15)*16777216.0f), (fixed8_24)((1.0 / 15)*16777216.0f), (fixed8_24)((1.0 / 15)*16777216.0f), (fixed8_24)((1.0 / 15)*16777216.0f),
        (fixed8_24)((-1.0 / 15)*16777216.0f), (fixed8_24)((-1.0 / 15)*16777216.0f), (fixed8_24)((-1.0 / 15)*16777216.0f), (fixed8_24)((-1.0 / 15)*16777216.0f),
        (fixed8_24)((-1.0 / 15)*16777216.0f), (fixed8_24)((-1.0 / 15)*16777216.0f), (fixed8_24)((-1.0 / 15)*16777216.0f), (fixed8_24)((-1.0 / 15)*16777216.0f),
        (fixed8_24)((-1.0 / 15)*16777216.0f), (fixed8_24)((-1.0 / 15)*16777216.0f), (fixed8_24)((-1.0 / 15)*16777216.0f), (fixed8_24)((-1.0 / 15)*16777216.0f) };

const fixed8_24 PU2[32]
    = { (fixed8_24)((1.0 / 15)*16777216.0f), (fixed8_24)((1.0 / 15)*16777216.0f), (fixed8_24)((1.0 / 15)*16777216.0f), (fixed8_24)((1.0 / 15)*16777216.0f),
        (fixed8_24)((1.0 / 15)*16777216.0f), (fixed8_24)((1.0 / 15)*16777216.0f), (fixed8_24)((1.0 / 15)*16777216.0f), (fixed8_24)((1.0 / 15)*16777216.0f),
        (fixed8_24)((-1.0 / 15)*16777216.0f), (fixed8_24)((-1.0 / 15)*16777216.0f), (fixed8_24)((-1.0 / 15)*16777216.0f), (fixed8_24)((-1.0 / 15)*16777216.0f),
        (fixed8_24)((-1.0 / 15)*16777216.0f), (fixed8_24)((-1.0 / 15)*16777216.0f), (fixed8_24)((-1.0 / 15)*16777216.0f), (fixed8_24)((-1.0 / 15)*16777216.0f),
        (fixed8_24)((1.0 / 15)*16777216.0f), (fixed8_24)((1.0 / 15)*16777216.0f), (fixed8_24)((1.0 / 15)*16777216.0f), (fixed8_24)((1.0 / 15)*16777216.0f),
        (fixed8_24)((1.0 / 15)*16777216.0f), (fixed8_24)((1.0 / 15)*16777216.0f), (fixed8_24)((1.0 / 15)*16777216.0f), (fixed8_24)((1.0 / 15)*16777216.0f),
        (fixed8_24)((-1.0 / 15)*16777216.0f), (fixed8_24)((-1.0 / 15)*16777216.0f), (fixed8_24)((-1.0 / 15)*16777216.0f), (fixed8_24)((-1.0 / 15)*16777216.0f),
        (fixed8_24)((-1.0 / 15)*16777216.0f), (fixed8_24)((-1.0 / 15)*16777216.0f), (fixed8_24)((-1.0 / 15)*16777216.0f), (fixed8_24)((-1.0 / 15)*16777216.0f) };

const fixed8_24 PU3[32]
    = { (fixed8_24)((1.0 / 15)*16777216.0f), (fixed8_24)((1.0 / 15)*16777216.0f), (fixed8_24)((1.0 / 15)*16777216.0f), (fixed8_24)((1.0 / 15)*16777216.0f),
        (fixed8_24)((1.0 / 15)*16777216.0f), (fixed8_24)((1.0 / 15)*16777216.0f), (fixed8_24)((1.0 / 15)*16777216.0f), (fixed8_24)((1.0 / 15)*16777216.0f),
        (fixed8_24)((1.0 / 15)*16777216.0f), (fixed8_24)((1.0 / 15)*16777216.0f), (fixed8_24)((1.0 / 15)*16777216.0f), (fixed8_24)((1.0 / 15)*16777216.0f),
        (fixed8_24)((-1.0 / 15)*16777216.0f), (fixed8_24)((-1.0 / 15)*16777216.0f), (fixed8_24)((-1.0 / 15)*16777216.0f), (fixed8_24)((-1.0 / 15)*16777216.0f),
        (fixed8_24)((1.0 / 15)*16777216.0f), (fixed8_24)((1.0 / 15)*16777216.0f), (fixed8_24)((1.0 / 15)*16777216.0f), (fixed8_24)((1.0 / 15)*16777216.0f),
        (fixed8_24)((1.0 / 15)*16777216.0f), (fixed8_24)((1.0 / 15)*16777216.0f), (fixed8_24)((1.0 / 15)*16777216.0f), (fixed8_24)((1.0 / 15)*16777216.0f),
        (fixed8_24)((1.0 / 15)*16777216.0f), (fixed8_24)((1.0 / 15)*16777216.0f), (fixed8_24)((1.0 / 15)*16777216.0f), (fixed8_24)((1.0 / 15)*16777216.0f),
        (fixed8_24)((-1.0 / 15)*16777216.0f), (fixed8_24)((-1.0 / 15)*16777216.0f), (fixed8_24)((-1.0 / 15)*16777216.0f), (fixed8_24)((-1.0 / 15)*16777216.0f) };

int16_t WAV[32] = { 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, -1, -1, -1, -1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, -1, -1, -1, -1 };

const fixed8_24 freqTable[2048] = {
    (fixed8_24)((32 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((32.0156326331216 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((32.0312805474096 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((32.0469437652812 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((32.0626223091976 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((32.0783162016642 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((32.0940254652302 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((32.109750122489 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((32.1254901960784 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((32.1412457086807 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((32.1570166830226 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((32.1728031418753 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((32.188605108055 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((32.2044226044226 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((32.220255653884 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((32.2361042793901 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((32.251968503937 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((32.2678483505662 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((32.2837438423645 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((32.2996550024643 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((32.3155818540434 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((32.3315244203256 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((32.3474827245805 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((32.3634567901235 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((32.3794466403162 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((32.3954522985665 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((32.4114737883284 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((32.4275111331024 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((32.4435643564356 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((32.4596334819217 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((32.4757185332012 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((32.4918195339613 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((32.5079365079365 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((32.5240694789082 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((32.5402184707051 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((32.5563835072032 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((32.572564612326 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((32.5887618100448 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((32.6049751243781 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((32.6212045793927 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((32.6374501992032 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((32.6537120079721 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((32.6699900299103 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((32.6862842892768 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((32.7025948103792 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((32.7189216175736 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((32.7352647352647 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((32.751624187906 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((32.768 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((32.784392196098 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((32.8008008008008 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((32.8172258387581 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((32.8336673346693 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((32.8501253132832 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((32.8665997993982 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((32.8830908178625 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((32.8995983935743 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((32.9161225514817 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((32.9326633165829 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((32.9492207139266 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((32.9657947686117 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((32.9823855057876 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((32.9989929506546 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((33.0156171284635 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((33.0322580645161 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((33.0489157841654 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((33.0655903128153 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((33.0822816759213 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((33.0989898989899 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((33.1157150075796 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((33.1324570273003 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((33.1492159838139 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((33.165991902834 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((33.1827848101266 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((33.1995947315096 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((33.2164216928535 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((33.2332657200811 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((33.2501268391679 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((33.2670050761421 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((33.2839004570848 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((33.3008130081301 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((33.3177427554652 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((33.3346897253306 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((33.3516539440204 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((33.3686354378819 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((33.3856342333164 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((33.4026503567788 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((33.4196838347782 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((33.4367346938776 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((33.4538029606942 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((33.4708886618999 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((33.4879918242207 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((33.5051124744376 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((33.5222506393862 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((33.539406345957 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((33.5565796210957 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((33.5737704918033 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((33.5909789851358 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((33.6082051282051 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((33.6254489481786 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((33.6427104722793 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((33.6599897277863 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((33.6772867420349 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((33.6946015424164 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((33.7119341563786 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((33.7292846114256 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((33.7466529351184 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((33.7640391550747 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((33.7814432989691 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((33.7988653945333 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((33.8163054695562 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((33.8337635518844 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((33.8512396694215 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((33.8687338501292 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((33.8862461220269 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((33.9037765131919 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((33.9213250517598 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((33.9388917659244 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((33.9564766839378 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((33.9740798341109 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((33.9917012448133 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((34.0093409444733 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((34.0269989615784 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((34.0446753246753 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((34.0623700623701 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((34.0800832033281 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((34.0978147762747 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((34.1155648099948 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((34.1333333333333 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((34.1511203751954 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((34.1689259645464 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((34.1867501304121 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((34.2045929018789 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((34.222454308094 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((34.2403343782654 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((34.2582331416623 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((34.2761506276151 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((34.2940868655154 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((34.3120418848168 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((34.330015715034 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((34.3480083857442 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((34.3660199265863 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((34.3840503672613 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((34.4020997375328 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((34.4201680672269 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((34.4382553862323 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((34.4563617245005 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((34.4744871120463 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((34.4926315789474 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((34.5107951553449 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((34.5289778714436 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((34.5471797575119 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((34.5654008438819 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((34.5836411609499 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((34.6019007391763 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((34.6201796090861 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((34.6384778012685 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((34.6567953463776 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((34.6751322751323 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((34.6934886183166 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((34.7118644067797 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((34.7302596714361 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((34.7486744432662 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((34.7671087533156 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((34.7855626326964 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((34.8040361125863 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((34.8225292242295 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((34.8410419989367 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((34.8595744680851 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((34.8781266631187 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((34.8966986155485 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((34.9152903569526 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((34.9339019189765 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((34.9525333333333 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((34.9711846318036 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((34.989855846236 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((35.008547008547 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((35.0272581507215 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((35.0459893048128 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((35.0647405029427 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((35.0835117773019 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((35.10230316015 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((35.1211146838156 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((35.1399463806971 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((35.1587982832618 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((35.1776704240472 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((35.1965628356606 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((35.2154755507792 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((35.2344086021505 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((35.2533620225928 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((35.2723358449946 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((35.2913301023156 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((35.3103448275862 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((35.3293800539084 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((35.3484358144552 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((35.3675121424717 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((35.3866090712743 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((35.4057266342518 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((35.4248648648649 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((35.4440237966468 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((35.4632034632035 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((35.4824038982133 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((35.501625135428 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((35.5208672086721 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((35.5401301518438 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((35.5594139989148 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((35.5787187839305 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((35.5980445410103 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((35.6173913043478 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((35.636759108211 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((35.6561479869423 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((35.6755579749592 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((35.6949891067538 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((35.7144414168937 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((35.7339149400218 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((35.7534097108565 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((35.7729257641921 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((35.792463134899 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((35.8120218579235 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((35.8316019682887 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((35.8512035010941 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((35.8708264915161 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((35.8904709748083 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((35.9101369863014 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((35.9298245614035 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((35.9495337356007 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((35.9692645444566 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((35.9890170236134 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((36.0087912087912 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((36.0285871357889 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((36.048404840484 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((36.0682443588332 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((36.0881057268722 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((36.1079889807162 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((36.1278941565601 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((36.1478212906784 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((36.167770419426 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((36.187741579238 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((36.2077348066298 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((36.2277501381979 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((36.2477876106195 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((36.267847260653 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((36.2879291251384 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((36.3080332409972 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((36.3281596452328 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((36.3483083749307 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((36.3684794672586 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((36.388672959467 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((36.4088888888889 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((36.4291272929405 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((36.4493882091212 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((36.4696716750139 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((36.4899777282851 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((36.5103064066852 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((36.5306577480491 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((36.5510317902956 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((36.5714285714286 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((36.5918481295366 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((36.6122905027933 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((36.6327557294578 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((36.6532438478747 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((36.6737548964745 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((36.6942889137738 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((36.7148459383753 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((36.7354260089686 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((36.7560291643298 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((36.7766554433221 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((36.7973048848961 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((36.8179775280899 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((36.8386734120292 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((36.859392575928 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((36.8801350590884 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((36.9009009009009 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((36.9216901408451 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((36.9425028184893 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((36.9633389734913 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((36.9841986455982 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((37.0050818746471 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((37.025988700565 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((37.0469191633691 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((37.0678733031674 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((37.0888511601585 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((37.1098527746319 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((37.1308781869688 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((37.1519274376417 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((37.173000567215 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((37.1940976163451 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((37.2152186257808 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((37.2363636363636 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((37.2575326890279 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((37.2787258248009 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((37.2999430848036 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((37.3211845102506 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((37.3424501424501 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((37.363740022805 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((37.3850541928123 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((37.4063926940639 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((37.4277555682467 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((37.4491428571429 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((37.4705546026301 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((37.4919908466819 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((37.5134516313681 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((37.5349369988545 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((37.556446991404 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((37.5779816513761 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((37.5995410212278 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((37.6211251435132 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((37.6427340608845 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((37.664367816092 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((37.6860264519839 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((37.7077100115075 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((37.7294185377087 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((37.7511520737327 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((37.7729106628242 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((37.7946943483276 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((37.8165031736872 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((37.838337182448 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((37.8601964182553 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((37.8820809248555 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((37.903990746096 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((37.9259259259259 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((37.9478865083961 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((37.9698725376593 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((37.991884057971 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((38.0139211136891 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((38.0359837492745 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((38.0580720092915 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((38.0801859384079 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((38.1023255813953 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((38.1244909831297 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((38.1466821885914 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((38.1688992428655 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((38.1911421911422 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((38.2134110787172 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((38.2357059509918 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((38.2580268534734 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((38.2803738317757 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((38.3027469316189 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((38.3251461988304 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((38.3475716793446 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((38.3700234192037 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((38.3925014645577 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((38.4150058616647 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((38.4375366568915 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((38.4600938967136 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((38.4826776277158 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((38.5052878965922 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((38.527924750147 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((38.5505882352941 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((38.5732783990583 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((38.5959952885748 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((38.6187389510902 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((38.6415094339623 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((38.6643067846608 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((38.6871310507674 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((38.7099822799764 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((38.7328605200946 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((38.755765819042 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((38.7786982248521 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((38.801657785672 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((38.824644549763 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((38.8476585655009 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((38.870699881376 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((38.8937685459941 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((38.916864608076 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((38.9399881164587 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((38.9631391200951 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((38.9863176680547 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((39.0095238095238 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((39.0327575938058 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((39.0560190703218 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((39.0793082886106 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((39.1026252983294 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((39.1259701492537 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((39.1493428912784 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((39.1727435744172 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((39.1961722488038 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((39.2196289646918 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((39.2431137724551 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((39.2666267225884 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((39.2901678657074 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((39.3137372525495 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((39.3373349339736 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((39.360960960961 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((39.3846153846154 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((39.4082982561636 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((39.4320096269555 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((39.4557495484648 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((39.4795180722892 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((39.5033152501507 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((39.5271411338963 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((39.5509957754979 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((39.5748792270531 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((39.5987915407855 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((39.6227327690447 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((39.6467029643073 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((39.6707021791768 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((39.694730466384 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((39.7187878787879 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((39.7428744693754 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((39.7669902912621 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((39.7911353976928 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((39.8153098420413 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((39.8395136778115 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((39.8637469586375 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((39.8880097382836 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((39.9123020706455 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((39.9366240097502 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((39.9609756097561 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((39.9853569249542 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((40.009768009768 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((40.0342089187538 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((40.0586797066015 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((40.0831804281346 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((40.1077111383109 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((40.1322718922229 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((40.156862745098 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((40.1814837522992 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((40.2061349693252 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((40.2308164518109 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((40.2555282555283 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((40.280270436386 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((40.3050430504305 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((40.3298461538462 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((40.3546798029557 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((40.3795440542206 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((40.4044389642417 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((40.4293645897594 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((40.4543209876543 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((40.4793082149475 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((40.504326328801 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((40.5293753865182 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((40.5544554455446 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((40.5795665634675 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((40.6047087980174 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((40.6298822070676 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((40.6550868486352 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((40.6803227808814 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((40.7055900621118 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((40.7308887507769 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((40.7562189054726 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((40.7815805849409 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((40.8069738480697 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((40.8323987538941 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((40.857855361596 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((40.8833437305053 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((40.9088639200999 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((40.9344159900062 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((40.96 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((40.9856160100063 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((41.0112640801001 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((41.0369442705072 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((41.062656641604 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((41.0884012539185 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((41.1141781681305 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((41.1399874450722 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((41.1658291457287 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((41.1917033312382 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((41.2176100628931 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((41.2435494021397 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((41.2695214105793 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((41.2955261499685 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((41.3215636822194 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((41.3476340694006 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((41.3737373737374 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((41.3998736576121 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((41.4260429835651 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((41.4522454142948 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((41.4784810126582 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((41.504749841672 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((41.531051964512 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((41.5573874445149 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((41.5837563451777 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((41.6101587301587 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((41.6365946632783 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((41.6630642085188 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((41.6895674300254 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((41.7161043921069 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((41.7426751592357 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((41.7692797960484 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((41.7959183673469 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((41.8225909380983 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((41.8492975734355 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((41.8760383386582 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((41.9028132992327 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((41.9296225207934 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((41.9564660691421 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((41.9833440102498 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((42.0102564102564 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((42.0372033354715 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((42.0641848523748 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((42.0912010276172 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((42.1182519280206 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((42.1453376205788 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((42.1724581724582 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((42.1996136509981 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((42.2268041237113 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((42.254029658285 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((42.2812903225807 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((42.3085861846352 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((42.3359173126615 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((42.3632837750485 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((42.3906856403622 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((42.4181229773463 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((42.4455958549223 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((42.4731043421905 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((42.5006485084306 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((42.5282284231019 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((42.5558441558442 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((42.5834957764782 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((42.6111833550065 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((42.6389069616135 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((42.6666666666667 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((42.6944625407166 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((42.722294654498 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((42.7501630789302 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((42.7780678851175 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((42.8060091443501 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((42.8339869281046 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((42.8620013080445 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((42.890052356021 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((42.9181401440733 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((42.9462647444299 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((42.9744262295082 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((43.002624671916 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((43.0308601444517 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((43.0591327201051 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((43.0874424720579 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((43.1157894736842 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((43.1441737985517 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((43.1725955204216 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((43.2010547132498 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((43.2295514511873 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((43.2580858085809 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((43.2866578599736 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((43.3152676801057 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((43.3439153439153 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((43.3726009265387 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((43.4013245033113 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((43.4300861497681 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((43.4588859416446 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((43.4877239548772 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((43.5166002656043 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((43.5455149501661 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((43.5744680851064 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((43.6034597471723 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((43.6324900133156 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((43.6615589606929 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((43.6906666666667 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((43.7198132088059 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((43.7489986648865 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((43.7782231128925 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((43.807486631016 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((43.8367892976589 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((43.8661311914324 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((43.8955123911587 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((43.9249329758713 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((43.9543930248156 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((43.9838926174497 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((44.0134318334453 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((44.0430107526882 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((44.0726294552791 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((44.1022880215343 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((44.1319865319865 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((44.1617250673855 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((44.1915037086986 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((44.221322537112 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((44.2511816340311 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((44.2810810810811 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((44.3110209601082 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((44.34100135318 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((44.3710223425863 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((44.4010840108401 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((44.431186440678 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((44.4613297150611 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((44.4915139171758 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((44.5217391304348 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((44.5520054384772 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((44.5823129251701 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((44.6126616746086 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((44.6430517711172 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((44.6734832992502 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((44.7039563437926 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((44.7344709897611 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((44.7650273224044 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((44.7956254272044 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((44.8262653898769 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((44.8569472963724 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((44.8876712328767 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((44.9184372858122 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((44.9492455418381 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((44.9800960878518 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((45.010989010989 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((45.0419243986254 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((45.0729023383769 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((45.1039229181005 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((45.1349862258953 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((45.1660923501034 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((45.1972413793103 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((45.2284334023465 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((45.2596685082873 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((45.2909467864547 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((45.3222683264177 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((45.3536332179931 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((45.3850415512465 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((45.4164934164934 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((45.4479889042996 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((45.4795281054823 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((45.5111111111111 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((45.5427380125087 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((45.5744089012517 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((45.6061238691719 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((45.6378830083566 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((45.6696864111498 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((45.7015341701534 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((45.7334263782275 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((45.7653631284916 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((45.7973445143256 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((45.8293706293706 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((45.8614415675297 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((45.8935574229692 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((45.9257182901191 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((45.9579242636746 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((45.9901754385965 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((46.0224719101124 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((46.0548137737175 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((46.0872011251758 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((46.1196340605208 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((46.1521126760563 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((46.184637068358 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((46.2172073342736 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((46.2498235709245 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((46.2824858757062 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((46.3151943462898 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((46.3479490806223 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((46.3807501769285 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((46.4135977337111 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((46.446491849752 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((46.4794326241135 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((46.5124201561391 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((46.5454545454545 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((46.5785358919687 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((46.6116642958748 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((46.6448398576513 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((46.6780626780627 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((46.7113328581611 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((46.7446504992867 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((46.7780157030692 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((46.8114285714286 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((46.8448892065761 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((46.8783977110157 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((46.9119541875447 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((46.945558739255 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((46.9792114695341 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((47.012912482066 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((47.0466618808327 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((47.0804597701149 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((47.1143062544932 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((47.1482014388489 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((47.1821454283657 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((47.2161383285303 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((47.2501802451334 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((47.2842712842713 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((47.3184115523466 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((47.3526011560694 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((47.3868402024584 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((47.4211287988423 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((47.4554670528602 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((47.4898550724638 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((47.5242929659173 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((47.5587808417997 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((47.5933188090051 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((47.6279069767442 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((47.6625454545455 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((47.6972343522562 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((47.7319737800437 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((47.7667638483965 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((47.8016046681255 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((47.836496350365 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((47.8714390065741 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((47.906432748538 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((47.9414776883687 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((47.9765739385066 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((48.0117216117216 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((48.0469208211144 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((48.0821716801174 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((48.1174743024963 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((48.1528288023512 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((48.1882352941176 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((48.2236938925681 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((48.259204712813 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((48.2947678703021 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((48.330383480826 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((48.3660516605166 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((48.4017725258493 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((48.4375461936438 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((48.4733727810651 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((48.5092524056255 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((48.5451851851852 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((48.581171237954 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((48.6172106824926 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((48.6533036377134 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((48.6894502228826 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((48.7256505576208 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((48.7619047619048 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((48.7982129560685 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((48.8345752608048 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((48.8709917971663 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((48.9074626865672 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((48.9439880507842 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((48.9805680119582 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((49.0172026925954 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((49.0538922155689 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((49.0906367041199 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((49.1274362818591 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((49.1642910727682 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((49.2012012012012 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((49.2381667918858 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((49.2751879699248 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((49.3122648607976 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((49.3493975903615 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((49.3865862848531 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((49.4238310708899 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((49.4611320754717 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((49.4984894259819 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((49.535903250189 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((49.5733736762481 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((49.6109008327025 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((49.6484848484849 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((49.6861258529189 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((49.7238239757208 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((49.7615793470008 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((49.7993920972644 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((49.8372623574145 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((49.8751902587519 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((49.9131759329779 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((49.9512195121951 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((49.9893211289092 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((50.0274809160305 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((50.0656990068755 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((50.1039755351682 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((50.1423106350421 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((50.1807044410413 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((50.2191570881226 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((50.2576687116564 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((50.296239447429 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((50.3348694316436 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((50.3735588009224 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((50.4123076923077 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((50.451116243264 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((50.4899845916795 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((50.5289128758674 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((50.5679012345679 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((50.6069498069498 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((50.6460587326121 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((50.6852281515855 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((50.7244582043344 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((50.7637490317583 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((50.8031007751938 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((50.8425135764158 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((50.8819875776397 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((50.9215229215229 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((50.9611197511664 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((51.0007782101167 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((51.0404984423676 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((51.0802805923617 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((51.1201248049922 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((51.160031225605 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((51.2 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((51.2400312744331 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((51.2801251956182 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((51.3202819107283 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((51.3605015673981 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((51.4007843137255 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((51.4411302982732 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((51.4815396700707 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((51.5220125786164 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((51.5625491738788 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((51.6031496062992 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((51.6438140267928 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((51.6845425867508 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((51.7253354380426 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((51.7661927330174 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((51.8071146245059 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((51.8481012658228 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((51.889152810768 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((51.9302694136292 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((51.9714512291832 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((52.0126984126984 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((52.0540111199365 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((52.0953895071542 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((52.1368337311058 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((52.1783439490446 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((52.2199203187251 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((52.2615629984051 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((52.3032721468476 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((52.3450479233227 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((52.3868904876099 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((52.4288 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((52.470776621297 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((52.5128205128205 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((52.5549318364074 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((52.5971107544141 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((52.6393574297189 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((52.6816720257235 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((52.7240547063556 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((52.7665056360709 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((52.809024979855 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((52.8516129032258 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((52.8942695722357 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((52.9369951534734 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((52.9797898140663 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((53.0226537216829 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((53.0655870445344 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((53.1085899513776 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((53.1516626115166 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((53.1948051948052 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((53.2380178716491 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((53.2813008130081 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((53.3246541903987 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((53.3680781758958 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((53.4115729421353 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((53.4551386623165 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((53.4987755102041 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((53.5424836601307 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((53.5862632869992 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((53.6301145662848 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((53.6740376740377 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((53.7180327868852 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((53.7621000820345 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((53.8062397372742 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((53.8504519309778 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((53.8947368421053 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((53.9390946502058 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((53.9835255354201 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((54.0280296784831 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((54.0726072607261 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((54.1172584640793 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((54.1619834710744 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((54.206782464847 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((54.2516556291391 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((54.2966031483016 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((54.3416252072969 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((54.3867219917012 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((54.4318936877076 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((54.477140482128 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((54.522462562396 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((54.5678601165695 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((54.6133333333333 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((54.6588824020017 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((54.7045075125209 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((54.750208855472 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((54.7959866220736 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((54.8418410041841 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((54.8877721943049 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((54.9337803855826 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((54.9798657718121 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((55.0260285474391 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((55.072268907563 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((55.1185870479394 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((55.1649831649832 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((55.2114574557709 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((55.2580101180438 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((55.304641350211 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((55.3513513513514 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((55.3981403212172 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((55.4450084602369 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((55.4919559695174 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((55.5389830508475 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((55.5860899067006 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((55.6332767402377 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((55.6805437553101 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((55.7278911564626 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((55.7753191489362 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((55.8228279386712 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((55.8704177323103 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((55.9180887372014 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((55.9658411614005 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((56.0136752136752 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((56.0615911035073 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((56.1095890410959 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((56.1576692373608 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((56.2058319039451 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((56.2540772532189 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((56.3024054982818 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((56.3508168529665 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((56.3993115318417 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((56.4478897502153 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((56.4965517241379 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((56.5452976704055 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((56.594127806563 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((56.6430423509075 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((56.6920415224914 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((56.7411255411255 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((56.790294627383 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((56.8395490026019 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((56.8888888888889 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((56.9383145091225 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((56.9878260869565 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((57.0374238468233 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((57.0871080139373 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((57.1368788142982 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((57.1867364746946 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((57.2366812227074 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((57.2867132867133 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((57.336832895888 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((57.3870402802102 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((57.4373356704645 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((57.4877192982456 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((57.5381913959614 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((57.5887521968366 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((57.6394019349165 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((57.6901408450704 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((57.7409691629956 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((57.7918871252205 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((57.8428949691086 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((57.8939929328622 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((57.9451812555261 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((57.9964601769912 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((58.0478299379982 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((58.0992907801418 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((58.150842945874 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((58.202486678508 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((58.2542222222222 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((58.3060498220641 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((58.3579697239537 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((58.4099821746881 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((58.4620874219447 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((58.5142857142857 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((58.5665773011618 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((58.6189624329159 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((58.6714413607878 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((58.7240143369176 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((58.7766816143498 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((58.8294434470377 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((58.8823000898473 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((58.9352517985612 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((58.988298829883 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((59.0414414414414 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((59.0946798917944 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((59.1480144404332 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((59.2014453477868 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((59.254972875226 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((59.3085972850679 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((59.3623188405797 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((59.4161378059837 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((59.470054446461 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((59.5240690281562 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((59.5781818181818 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((59.6323930846224 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((59.6867030965392 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((59.7411121239745 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((59.7956204379562 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((59.8502283105023 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((59.9049360146252 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((59.9597438243367 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((60.014652014652 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((60.0696608615949 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((60.1247706422018 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((60.1799816345271 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((60.2352941176471 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((60.2907083716651 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((60.3462246777164 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((60.4018433179724 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((60.4575645756458 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((60.5133887349954 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((60.5693160813309 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((60.6253469010176 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((60.6814814814815 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((60.7377201112141 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((60.7940630797774 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((60.8505106778087 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((60.907063197026 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((60.9637209302326 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((61.0204841713222 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((61.0773532152843 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((61.134328358209 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((61.1914098972923 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((61.2485981308411 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((61.3058933582788 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((61.3632958801498 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((61.4208059981256 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((61.4784240150094 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((61.5361502347418 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((61.593984962406 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((61.6519285042333 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((61.7099811676083 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((61.7681432610745 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((61.8264150943396 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((61.8847969782814 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((61.9432892249527 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((62.0018921475875 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((62.0606060606061 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((62.1194312796209 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((62.1783681214421 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((62.2374169040836 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((62.2965779467681 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((62.3558515699334 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((62.4152380952381 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((62.4747378455672 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((62.5343511450382 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((62.5940783190067 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((62.6539196940727 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((62.7138755980861 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((62.7739463601533 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((62.8341323106424 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((62.89443378119 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((62.954851104707 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((63.0153846153846 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((63.0760346487007 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((63.1368015414258 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((63.1976856316297 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((63.2586872586873 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((63.319806763285 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((63.3810444874275 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((63.4424007744434 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((63.5038759689923 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((63.5654704170708 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((63.6271844660194 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((63.6890184645287 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((63.7509727626459 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((63.8130477117819 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((63.8752436647174 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((63.9375609756098 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((64 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((64.0625610948192 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((64.1252446183953 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((64.1880509304603 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((64.2509803921569 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((64.3140333660451 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((64.37721021611 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((64.440511307768 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((64.503937007874 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((64.5674876847291 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((64.6311637080868 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((64.6949654491609 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((64.7588932806324 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((64.8229475766568 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((64.8871287128713 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((64.9514370664024 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((65.015873015873 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((65.0804369414101 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((65.1451292246521 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((65.2099502487562 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((65.2749003984064 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((65.3399800598205 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((65.4051896207585 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((65.4705294705295 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((65.536 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((65.6016016016016 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((65.6673346693387 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((65.7331995987964 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((65.7991967871486 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((65.8653266331658 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((65.9315895372234 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((65.9979859013092 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((66.0645161290323 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((66.1311806256307 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((66.1979797979798 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((66.2649140546006 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((66.331983805668 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((66.3991894630193 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((66.4665314401623 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((66.5340101522843 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((66.6016260162602 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((66.6693794506612 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((66.7372708757637 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((66.8053007135576 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((66.8734693877551 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((66.9417773237998 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((67.0102249488753 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((67.078812691914 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((67.1475409836066 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((67.2164102564103 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((67.2854209445585 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((67.3545734840699 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((67.4238683127572 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((67.4933058702369 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((67.5628865979382 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((67.6326109391125 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((67.702479338843 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((67.7724922440538 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((67.8426501035197 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((67.9129533678757 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((67.9834024896266 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((68.0539979231568 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((68.1247401247401 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((68.1956295525494 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((68.2666666666667 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((68.3378519290928 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((68.4091858037578 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((68.4806687565308 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((68.5523012552301 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((68.6240837696335 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((68.6960167714885 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((68.7681007345226 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((68.8403361344538 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((68.9127234490011 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((68.9852631578947 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((69.0579557428872 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((69.1308016877637 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((69.2038014783527 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((69.276955602537 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((69.3502645502646 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((69.4237288135593 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((69.4973488865324 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((69.5711252653928 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((69.6450584484591 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((69.7191489361702 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((69.7933972310969 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((69.8678038379531 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((69.9423692636073 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((70.017094017094 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((70.0919786096257 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((70.1670235546039 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((70.2422293676313 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((70.3175965665236 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((70.3931256713212 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((70.4688172043011 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((70.5446716899892 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((70.6206896551724 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((70.6968716289105 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((70.7732181425486 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((70.8497297297297 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((70.9264069264069 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((71.0032502708559 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((71.0802603036876 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((71.157437567861 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((71.2347826086957 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((71.3122959738847 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((71.3899782135076 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((71.4678298800436 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((71.5458515283843 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((71.624043715847 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((71.7024070021882 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((71.7809419496166 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((71.859649122807 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((71.9385290889133 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((72.0175824175824 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((72.0968096809681 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((72.1762114537445 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((72.2557883131202 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((72.3355408388521 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((72.4154696132597 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((72.4955752212389 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((72.5758582502769 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((72.6563192904656 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((72.7369589345172 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((72.8177777777778 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((72.8987764182425 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((72.9799554565702 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((73.0613154960981 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((73.1428571428571 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((73.2245810055866 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((73.3064876957494 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((73.3885778275476 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((73.4708520179372 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((73.5533108866442 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((73.6359550561798 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((73.718785151856 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((73.8018018018018 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((73.8850056369786 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((73.9683972911964 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((74.0519774011299 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((74.1357466063348 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((74.2197055492639 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((74.3038548752835 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((74.3881952326901 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((74.4727272727273 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((74.5574516496018 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((74.6423690205011 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((74.72748004561 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((74.8127853881279 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((74.8982857142857 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((74.9839816933639 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((75.0698739977091 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((75.1559633027523 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((75.2422502870264 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((75.3287356321839 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((75.415420023015 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((75.5023041474654 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((75.5893886966551 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((75.6766743648961 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((75.764161849711 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((75.8518518518518 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((75.9397450753187 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((76.0278422273782 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((76.116144018583 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((76.2046511627907 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((76.2933643771828 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((76.3822843822844 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((76.4714119019837 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((76.5607476635514 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((76.6502923976608 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((76.7400468384075 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((76.8300117233294 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((76.9201877934272 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((77.0105757931845 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((77.1011764705882 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((77.1919905771496 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((77.2830188679245 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((77.3742621015348 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((77.4657210401891 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((77.5573964497041 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((77.6492890995261 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((77.7413997627521 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((77.833729216152 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((77.9262782401902 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((78.0190476190476 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((78.1120381406436 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((78.2052505966587 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((78.2986857825568 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((78.3923444976077 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((78.4862275449102 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((78.5803357314149 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((78.6746698679472 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((78.7692307692308 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((78.864019253911 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((78.9590361445783 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((79.0542822677925 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((79.1497584541063 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((79.2454655380895 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((79.3414043583535 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((79.4375757575758 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((79.5339805825243 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((79.6306196840826 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((79.7274939172749 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((79.8246041412911 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((79.9219512195122 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((80.019536019536 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((80.1173594132029 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((80.2154222766218 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((80.3137254901961 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((80.4122699386503 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((80.5110565110565 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((80.610086100861 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((80.7093596059113 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((80.8088779284834 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((80.9086419753086 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((81.008652657602 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((81.1089108910891 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((81.2094175960347 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((81.3101736972705 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((81.4111801242236 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((81.5124378109453 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((81.6139476961395 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((81.715710723192 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((81.8177278401998 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((81.92 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((82.0225281602002 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((82.125313283208 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((82.228356336261 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((82.3316582914573 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((82.4352201257862 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((82.5390428211587 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((82.6431273644388 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((82.7474747474748 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((82.8520859671302 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((82.9569620253165 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((83.0621039290241 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((83.1675126903553 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((83.2731893265565 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((83.3791348600509 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((83.4853503184713 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((83.5918367346939 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((83.698595146871 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((83.8056265984655 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((83.9129321382842 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((84.0205128205128 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((84.1283697047497 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((84.2365038560411 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((84.3449163449163 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((84.4536082474227 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((84.5625806451613 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((84.671834625323 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((84.7813712807245 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((84.8911917098446 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((85.0012970168612 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((85.1116883116883 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((85.222366710013 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((85.3333333333333 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((85.4445893089961 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((85.556135770235 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((85.6679738562091 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((85.7801047120419 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((85.8925294888598 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((86.005249343832 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((86.1182654402102 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((86.2315789473684 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((86.3451910408432 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((86.4591029023747 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((86.5733157199472 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((86.6878306878307 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((86.8026490066225 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((86.9177718832891 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((87.0332005312085 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((87.1489361702128 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((87.2649800266312 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((87.3813333333333 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((87.497997329773 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((87.6149732620321 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((87.7322623828648 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((87.8498659517426 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((87.9677852348993 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((88.0860215053763 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((88.2045760430686 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((88.3234501347709 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((88.442645074224 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((88.5621621621622 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((88.68200270636 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((88.8021680216802 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((88.9226594301221 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((89.0434782608696 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((89.1646258503401 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((89.2861035422343 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((89.4079126875853 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((89.5300546448087 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((89.6525307797538 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((89.7753424657534 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((89.8984910836763 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((90.021978021978 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((90.1458046767538 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((90.2699724517906 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((90.3944827586207 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((90.5193370165746 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((90.6445366528354 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((90.7700831024931 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((90.8959778085992 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((91.0222222222222 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((91.1488178025035 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((91.2757660167131 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((91.4030683403068 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((91.5307262569833 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((91.6587412587413 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((91.7871148459384 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((91.9158485273492 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((92.0449438202247 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((92.1744022503516 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((92.3042253521127 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((92.4344146685472 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((92.5649717514124 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((92.6958981612447 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((92.8271954674221 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((92.958865248227 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((93.0909090909091 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((93.2233285917497 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((93.3561253561254 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((93.4893009985735 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((93.6228571428572 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((93.7567954220315 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((93.89111747851 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((94.025824964132 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((94.1609195402299 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((94.2964028776978 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((94.4322766570605 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((94.5685425685426 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((94.7052023121387 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((94.8422575976845 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((94.9797101449275 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((95.1175616835994 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((95.2558139534884 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((95.3944687045124 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((95.533527696793 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((95.6729927007299 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((95.812865497076 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((95.9531478770132 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((96.0938416422287 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((96.2349486049927 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((96.3764705882353 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((96.5184094256259 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((96.6607669616519 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((96.8035450516987 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((96.9467455621302 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((97.0903703703704 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((97.2344213649852 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((97.3789004457652 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((97.5238095238095 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((97.6691505216095 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((97.8149253731343 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((97.9611360239163 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((98.1077844311377 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((98.2548725637181 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((98.4024024024024 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((98.5503759398496 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((98.6987951807229 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((98.8476621417798 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((98.9969788519637 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((99.1467473524962 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((99.2969696969697 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((99.4476479514416 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((99.5987841945289 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((99.7503805175038 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((99.9024390243902 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((100.054961832061 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((100.207951070336 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((100.361408882083 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((100.515337423313 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((100.669738863287 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((100.824615384615 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((100.979969183359 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((101.135802469136 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((101.292117465224 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((101.448916408669 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((101.606201550388 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((101.76397515528 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((101.922239502333 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((102.080996884735 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((102.240249609984 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((102.4 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((102.560250391236 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((102.721003134796 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((102.882260596546 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((103.044025157233 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((103.206299212598 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((103.369085173502 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((103.532385466035 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((103.696202531646 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((103.860538827258 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((104.025396825397 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((104.190779014308 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((104.356687898089 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((104.52312599681 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((104.690095846645 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((104.8576 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((105.025641025641 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((105.194221508828 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((105.363344051447 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((105.533011272142 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((105.703225806452 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((105.873990306947 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((106.045307443366 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((106.217179902755 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((106.38961038961 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((106.562601626016 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((106.736156351792 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((106.910277324633 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((107.084967320261 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((107.26022913257 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((107.436065573771 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((107.612479474548 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((107.789473684211 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((107.96705107084 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((108.145214521452 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((108.323966942149 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((108.503311258278 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((108.683250414594 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((108.863787375415 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((109.044925124792 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((109.226666666667 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((109.409015025042 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((109.591973244147 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((109.77554438861 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((109.959731543624 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((110.144537815126 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((110.329966329966 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((110.516020236088 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((110.702702702703 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((110.890016920474 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((111.077966101695 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((111.266553480475 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((111.455782312925 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((111.645655877342 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((111.836177474403 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((112.02735042735 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((112.219178082192 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((112.41166380789 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((112.604810996564 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((112.798623063683 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((112.993103448276 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((113.188255613126 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((113.384083044983 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((113.580589254766 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((113.777777777778 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((113.975652173913 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((114.174216027875 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((114.373472949389 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((114.573426573427 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((114.77408056042 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((114.975438596491 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((115.177504393673 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((115.380281690141 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((115.583774250441 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((115.787985865724 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((115.992920353982 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((116.198581560284 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((116.404973357016 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((116.612099644128 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((116.819964349376 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((117.028571428571 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((117.237924865832 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((117.448028673835 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((117.658886894075 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((117.870503597122 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((118.082882882883 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((118.296028880866 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((118.509945750452 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((118.724637681159 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((118.940108892922 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((119.156363636364 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((119.373406193078 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((119.591240875912 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((119.80987202925 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((120.029304029304 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((120.249541284404 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((120.470588235294 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((120.692449355433 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((120.915129151292 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((121.138632162662 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((121.362962962963 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((121.588126159555 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((121.814126394052 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((122.040968342644 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((122.268656716418 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((122.497196261682 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((122.7265917603 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((122.956848030019 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((123.187969924812 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((123.419962335217 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((123.652830188679 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((123.886578449906 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((124.121212121212 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((124.356736242884 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((124.593155893536 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((124.830476190476 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((125.068702290076 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((125.307839388145 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((125.547892720307 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((125.78886756238 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((126.030769230769 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((126.273603082852 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((126.517374517375 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((126.762088974855 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((127.007751937985 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((127.254368932039 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((127.501945525292 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((127.750487329435 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((128 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((128.250489236791 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((128.501960784314 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((128.75442043222 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((129.007874015748 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((129.262327416174 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((129.517786561265 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((129.774257425743 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((130.031746031746 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((130.290258449304 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((130.549800796813 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((130.810379241517 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((131.072 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((131.334669338677 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((131.598393574297 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((131.863179074447 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((132.129032258065 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((132.39595959596 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((132.663967611336 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((132.933062880325 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((133.20325203252 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((133.474541751527 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((133.74693877551 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((134.020449897751 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((134.295081967213 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((134.570841889117 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((134.847736625514 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((135.125773195876 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((135.404958677686 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((135.685300207039 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((135.966804979253 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((136.24948024948 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((136.533333333333 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((136.818371607516 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((137.10460251046 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((137.392033542977 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((137.680672268908 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((137.970526315789 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((138.261603375527 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((138.553911205074 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((138.847457627119 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((139.142250530786 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((139.43829787234 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((139.735607675906 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((140.034188034188 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((140.334047109208 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((140.635193133047 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((140.937634408602 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((141.241379310345 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((141.546436285097 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((141.852813852814 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((142.160520607375 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((142.469565217391 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((142.779956427015 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((143.091703056769 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((143.404814004376 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((143.719298245614 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((144.035164835165 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((144.352422907489 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((144.671081677704 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((144.991150442478 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((145.312638580931 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((145.635555555556 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((145.95991091314 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((146.285714285714 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((146.612975391499 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((146.941704035874 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((147.27191011236 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((147.603603603604 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((147.936794582393 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((148.27149321267 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((148.607709750567 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((148.945454545455 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((149.284738041002 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((149.625570776256 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((149.967963386728 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((150.311926605505 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((150.657471264368 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((151.004608294931 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((151.353348729792 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((151.703703703704 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((152.055684454756 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((152.409302325581 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((152.764568764569 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((153.121495327103 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((153.480093676815 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((153.840375586854 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((154.202352941176 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((154.566037735849 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((154.931442080378 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((155.298578199052 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((155.667458432304 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((156.038095238095 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((156.410501193317 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((156.784688995215 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((157.16067146283 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((157.538461538462 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((157.918072289157 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((158.299516908213 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((158.682808716707 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((159.067961165049 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((159.45498783455 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((159.843902439024 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((160.234718826406 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((160.627450980392 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((161.022113022113 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((161.418719211823 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((161.817283950617 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((162.217821782178 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((162.620347394541 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((163.024875621891 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((163.431421446384 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((163.84 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((164.250626566416 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((164.663316582915 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((165.078085642317 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((165.49494949495 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((165.913924050633 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((166.335025380711 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((166.758269720102 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((167.183673469388 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((167.611253196931 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((168.041025641026 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((168.473007712082 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((168.907216494845 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((169.343669250646 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((169.782383419689 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((170.223376623377 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((170.666666666667 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((171.11227154047 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((171.560209424084 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((172.010498687664 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((172.463157894737 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((172.918205804749 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((173.375661375661 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((173.835543766578 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((174.297872340426 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((174.762666666667 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((175.229946524064 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((175.699731903485 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((176.172043010753 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((176.646900269542 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((177.124324324324 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((177.60433604336 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((178.086956521739 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((178.572207084469 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((179.060109289618 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((179.550684931507 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((180.043956043956 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((180.539944903581 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((181.038674033149 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((181.540166204986 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((182.044444444444 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((182.551532033426 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((183.061452513966 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((183.574229691877 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((184.089887640449 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((184.608450704225 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((185.129943502825 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((185.654390934844 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((186.181818181818 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((186.712250712251 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((187.245714285714 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((187.78223495702 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((188.32183908046 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((188.864553314121 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((189.410404624277 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((189.959420289855 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((190.511627906977 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((191.067055393586 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((191.625730994152 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((192.187683284457 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((192.752941176471 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((193.321533923304 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((193.89349112426 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((194.46884272997 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((195.047619047619 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((195.629850746269 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((196.215568862275 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((196.804804804805 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((197.397590361446 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((197.993957703928 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((198.593939393939 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((199.197568389058 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((199.804878048781 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((200.415902140673 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((201.030674846626 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((201.649230769231 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((202.271604938272 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((202.897832817337 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((203.527950310559 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((204.16199376947 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((204.8 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((205.442006269592 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((206.088050314465 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((206.738170347003 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((207.392405063291 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((208.050793650794 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((208.713375796178 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((209.380191693291 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((210.051282051282 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((210.726688102894 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((211.406451612903 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((212.090614886731 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((212.779220779221 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((213.472312703583 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((214.169934640523 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((214.872131147541 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((215.578947368421 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((216.290429042904 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((217.006622516556 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((217.727574750831 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((218.453333333333 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((219.183946488294 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((219.919463087248 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((220.659932659933 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((221.405405405405 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((222.15593220339 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((222.91156462585 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((223.672354948805 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((224.438356164384 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((225.209621993127 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((225.986206896552 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((226.768166089965 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((227.555555555556 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((228.348432055749 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((229.146853146853 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((229.950877192982 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((230.760563380282 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((231.575971731449 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((232.397163120567 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((233.224199288256 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((234.057142857143 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((234.89605734767 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((235.741007194245 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((236.592057761733 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((237.449275362319 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((238.312727272727 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((239.182481751825 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((240.058608058608 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((240.941176470588 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((241.830258302583 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((242.725925925926 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((243.628252788104 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((244.537313432836 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((245.453183520599 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((246.375939849624 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((247.305660377358 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((248.242424242424 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((249.186311787072 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((250.137404580153 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((251.095785440613 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((252.061538461538 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((253.034749034749 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((254.015503875969 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((255.003891050584 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((256 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((257.003921568627 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((258.015748031496 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((259.03557312253 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((260.063492063492 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((261.099601593625 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((262.144 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((263.196787148594 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((264.258064516129 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((265.327935222672 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((266.406504065041 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((267.49387755102 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((268.590163934426 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((269.695473251029 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((270.809917355372 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((271.933609958506 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((273.066666666667 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((274.20920502092 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((275.361344537815 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((276.523206751055 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((277.694915254237 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((278.876595744681 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((280.068376068376 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((281.270386266094 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((282.48275862069 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((283.705627705628 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((284.939130434783 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((286.183406113537 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((287.438596491228 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((288.704845814978 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((289.982300884956 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((291.271111111111 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((292.571428571429 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((293.883408071749 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((295.207207207207 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((296.542986425339 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((297.890909090909 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((299.251141552511 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((300.623853211009 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((302.009216589862 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((303.407407407407 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((304.818604651163 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((306.242990654206 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((307.680751173709 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((309.132075471698 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((310.597156398104 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((312.07619047619 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((313.569377990431 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((315.076923076923 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((316.599033816425 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((318.135922330097 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((319.687804878049 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((321.254901960784 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((322.837438423645 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((324.435643564356 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((326.049751243781 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((327.68 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((329.326633165829 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((330.989898989899 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((332.670050761421 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((334.367346938775 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((336.082051282051 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((337.814432989691 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((339.564766839378 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((341.333333333333 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((343.120418848168 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((344.926315789474 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((346.751322751323 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((348.595744680851 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((350.459893048128 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((352.344086021505 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((354.248648648649 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((356.173913043478 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((358.120218579235 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((360.087912087912 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((362.077348066298 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((364.088888888889 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((366.122905027933 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((368.179775280899 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((370.25988700565 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((372.363636363636 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((374.491428571429 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((376.64367816092 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((378.820809248555 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((381.023255813953 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((383.251461988304 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((385.505882352941 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((387.786982248521 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((390.095238095238 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((392.431137724551 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((394.795180722892 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((397.187878787879 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((399.609756097561 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((402.061349693252 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((404.543209876543 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((407.055900621118 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((409.6 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((412.176100628931 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((414.784810126582 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((417.426751592357 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((420.102564102564 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((422.812903225807 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((425.558441558442 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((428.339869281046 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((431.157894736842 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((434.013245033113 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((436.906666666667 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((439.838926174497 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((442.810810810811 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((445.823129251701 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((448.876712328767 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((451.972413793103 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((455.111111111111 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((458.293706293706 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((461.521126760563 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((464.794326241135 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((468.114285714286 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((471.482014388489 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((474.898550724638 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((478.36496350365 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((481.882352941176 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((485.451851851852 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((489.074626865672 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((492.751879699248 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((496.484848484849 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((500.274809160305 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((504.123076923077 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((508.031007751938 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((512 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((516.031496062992 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((520.126984126984 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((524.288 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((528.516129032258 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((532.813008130081 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((537.180327868852 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((541.619834710744 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((546.133333333333 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((550.72268907563 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((555.389830508475 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((560.136752136752 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((564.965517241379 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((569.878260869565 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((574.877192982456 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((579.964601769912 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((585.142857142857 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((590.414414414414 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((595.781818181818 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((601.247706422018 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((606.814814814815 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((612.485981308411 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((618.264150943396 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((624.152380952381 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((630.153846153846 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((636.271844660194 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((642.509803921569 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((648.871287128713 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((655.36 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((661.979797979798 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((668.734693877551 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((675.628865979381 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((682.666666666667 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((689.852631578947 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((697.191489361702 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((704.688172043011 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((712.347826086956 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((720.175824175824 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((728.177777777778 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((736.359550561798 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((744.727272727273 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((753.287356321839 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((762.046511627907 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((771.011764705882 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((780.190476190476 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((789.590361445783 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((799.219512195122 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((809.086419753086 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((819.2 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((829.569620253165 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((840.205128205128 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((851.116883116883 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((862.315789473684 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((873.813333333333 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((885.621621621622 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((897.753424657534 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((910.222222222222 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((923.042253521127 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((936.228571428571 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((949.797101449275 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((963.764705882353 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((978.149253731343 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((992.969696969697 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((1008.24615384615 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((1024 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((1040.25396825397 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((1057.03225806452 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((1074.36065573771 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((1092.26666666667 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((1110.77966101695 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((1129.93103448276 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((1149.75438596491 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((1170.28571428571 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((1191.56363636364 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((1213.62962962963 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((1236.52830188679 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((1260.30769230769 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((1285.01960784314 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((1310.72 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((1337.4693877551 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((1365.33333333333 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((1394.3829787234 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((1424.69565217391 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((1456.35555555556 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((1489.45454545455 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((1524.09302325581 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((1560.38095238095 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((1598.43902439024 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((1638.4 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((1680.41025641026 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((1724.63157894737 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((1771.24324324324 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((1820.44444444444 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((1872.45714285714 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((1927.52941176471 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((1985.93939393939 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((2048 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((2114.06451612903 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((2184.53333333333 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((2259.86206896552 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((2340.57142857143 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((2427.25925925926 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((2520.61538461538 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((2621.44 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((2730.66666666667 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((2849.39130434783 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((2978.90909090909 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((3120.7619047619 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((3276.8 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((3449.26315789474 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((3640.88888888889 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((3855.05882352941 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((4096 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((4369.06666666667 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((4681.14285714286 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((5041.23076923077 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((5461.33333333333 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((5957.81818181818 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((6553.6 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((7281.77777777778 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((8192 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((9362.28571428571 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((10922.6666666667 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((13107.2 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((16384 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((21845.3333333333 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((32768 / (48000.0 / 32.0))*16777216.0f),
    (fixed8_24)((65536 / (48000.0 / 32.0))*16777216.0f),
};

const fixed8_24 freqTableNSE[256] = {
    (fixed8_24)((524288 / 48000.0)*16777216.0f),
    (fixed8_24)((262144 / 48000.0)*16777216.0f),
    (fixed8_24)((131072 / 48000.0)*16777216.0f),
    (fixed8_24)((87381.3333333333 / 48000.0)*16777216.0f),
    (fixed8_24)((65536 / 48000.0)*16777216.0f),
    (fixed8_24)((52428.8 / 48000.0)*16777216.0f),
    (fixed8_24)((43690.6666666667 / 48000.0)*16777216.0f),
    (fixed8_24)((37449.1428571429 / 48000.0)*16777216.0f),
    (fixed8_24)((524288 / 48000.0)*16777216.0f),
    (fixed8_24)((262144 / 48000.0)*16777216.0f),
    (fixed8_24)((131072 / 48000.0)*16777216.0f),
    (fixed8_24)((87381.3333333333 / 48000.0)*16777216.0f),
    (fixed8_24)((65536 / 48000.0)*16777216.0f),
    (fixed8_24)((52428.8 / 48000.0)*16777216.0f),
    (fixed8_24)((43690.6666666667 / 48000.0)*16777216.0f),
    (fixed8_24)((37449.1428571429 / 48000.0)*16777216.0f),
    (fixed8_24)((262144 / 48000.0)*16777216.0f),
    (fixed8_24)((131072 / 48000.0)*16777216.0f),
    (fixed8_24)((65536 / 48000.0)*16777216.0f),
    (fixed8_24)((43690.6666666667 / 48000.0)*16777216.0f),
    (fixed8_24)((32768 / 48000.0)*16777216.0f),
    (fixed8_24)((26214.4 / 48000.0)*16777216.0f),
    (fixed8_24)((21845.3333333333 / 48000.0)*16777216.0f),
    (fixed8_24)((18724.5714285714 / 48000.0)*16777216.0f),
    (fixed8_24)((262144 / 48000.0)*16777216.0f),
    (fixed8_24)((131072 / 48000.0)*16777216.0f),
    (fixed8_24)((65536 / 48000.0)*16777216.0f),
    (fixed8_24)((43690.6666666667 / 48000.0)*16777216.0f),
    (fixed8_24)((32768 / 48000.0)*16777216.0f),
    (fixed8_24)((26214.4 / 48000.0)*16777216.0f),
    (fixed8_24)((21845.3333333333 / 48000.0)*16777216.0f),
    (fixed8_24)((18724.5714285714 / 48000.0)*16777216.0f),
    (fixed8_24)((131072 / 48000.0)*16777216.0f),
    (fixed8_24)((65536 / 48000.0)*16777216.0f),
    (fixed8_24)((32768 / 48000.0)*16777216.0f),
    (fixed8_24)((21845.3333333333 / 48000.0)*16777216.0f),
    (fixed8_24)((16384 / 48000.0)*16777216.0f),
    (fixed8_24)((13107.2 / 48000.0)*16777216.0f),
    (fixed8_24)((10922.6666666667 / 48000.0)*16777216.0f),
    (fixed8_24)((9362.28571428571 / 48000.0)*16777216.0f),
    (fixed8_24)((131072 / 48000.0)*16777216.0f),
    (fixed8_24)((65536 / 48000.0)*16777216.0f),
    (fixed8_24)((32768 / 48000.0)*16777216.0f),
    (fixed8_24)((21845.3333333333 / 48000.0)*16777216.0f),
    (fixed8_24)((16384 / 48000.0)*16777216.0f),
    (fixed8_24)((13107.2 / 48000.0)*16777216.0f),
    (fixed8_24)((10922.6666666667 / 48000.0)*16777216.0f),
    (fixed8_24)((9362.28571428571 / 48000.0)*16777216.0f),
    (fixed8_24)((65536 / 48000.0)*16777216.0f),
    (fixed8_24)((32768 / 48000.0)*16777216.0f),
    (fixed8_24)((16384 / 48000.0)*16777216.0f),
    (fixed8_24)((10922.6666666667 / 48000.0)*16777216.0f),
    (fixed8_24)((8192 / 48000.0)*16777216.0f),
    (fixed8_24)((6553.6 / 48000.0)*16777216.0f),
    (fixed8_24)((5461.33333333333 / 48000.0)*16777216.0f),
    (fixed8_24)((4681.14285714286 / 48000.0)*16777216.0f),
    (fixed8_24)((65536 / 48000.0)*16777216.0f),
    (fixed8_24)((32768 / 48000.0)*16777216.0f),
    (fixed8_24)((16384 / 48000.0)*16777216.0f),
    (fixed8_24)((10922.6666666667 / 48000.0)*16777216.0f),
    (fixed8_24)((8192 / 48000.0)*16777216.0f),
    (fixed8_24)((6553.6 / 48000.0)*16777216.0f),
    (fixed8_24)((5461.33333333333 / 48000.0)*16777216.0f),
    (fixed8_24)((4681.14285714286 / 48000.0)*16777216.0f),
    (fixed8_24)((32768 / 48000.0)*16777216.0f),
    (fixed8_24)((16384 / 48000.0)*16777216.0f),
    (fixed8_24)((8192 / 48000.0)*16777216.0f),
    (fixed8_24)((5461.33333333333 / 48000.0)*16777216.0f),
    (fixed8_24)((4096 / 48000.0)*16777216.0f),
    (fixed8_24)((3276.8 / 48000.0)*16777216.0f),
    (fixed8_24)((2730.66666666667 / 48000.0)*16777216.0f),
    (fixed8_24)((2340.57142857143 / 48000.0)*16777216.0f),
    (fixed8_24)((32768 / 48000.0)*16777216.0f),
    (fixed8_24)((16384 / 48000.0)*16777216.0f),
    (fixed8_24)((8192 / 48000.0)*16777216.0f),
    (fixed8_24)((5461.33333333333 / 48000.0)*16777216.0f),
    (fixed8_24)((4096 / 48000.0)*16777216.0f),
    (fixed8_24)((3276.8 / 48000.0)*16777216.0f),
    (fixed8_24)((2730.66666666667 / 48000.0)*16777216.0f),
    (fixed8_24)((2340.57142857143 / 48000.0)*16777216.0f),
    (fixed8_24)((16384 / 48000.0)*16777216.0f),
    (fixed8_24)((8192 / 48000.0)*16777216.0f),
    (fixed8_24)((4096 / 48000.0)*16777216.0f),
    (fixed8_24)((2730.66666666667 / 48000.0)*16777216.0f),
    (fixed8_24)((2048 / 48000.0)*16777216.0f),
    (fixed8_24)((1638.4 / 48000.0)*16777216.0f),
    (fixed8_24)((1365.33333333333 / 48000.0)*16777216.0f),
    (fixed8_24)((1170.28571428571 / 48000.0)*16777216.0f),
    (fixed8_24)((16384 / 48000.0)*16777216.0f),
    (fixed8_24)((8192 / 48000.0)*16777216.0f),
    (fixed8_24)((4096 / 48000.0)*16777216.0f),
    (fixed8_24)((2730.66666666667 / 48000.0)*16777216.0f),
    (fixed8_24)((2048 / 48000.0)*16777216.0f),
    (fixed8_24)((1638.4 / 48000.0)*16777216.0f),
    (fixed8_24)((1365.33333333333 / 48000.0)*16777216.0f),
    (fixed8_24)((1170.28571428571 / 48000.0)*16777216.0f),
    (fixed8_24)((8192 / 48000.0)*16777216.0f),
    (fixed8_24)((4096 / 48000.0)*16777216.0f),
    (fixed8_24)((2048 / 48000.0)*16777216.0f),
    (fixed8_24)((1365.33333333333 / 48000.0)*16777216.0f),
    (fixed8_24)((1024 / 48000.0)*16777216.0f),
    (fixed8_24)((819.2 / 48000.0)*16777216.0f),
    (fixed8_24)((682.666666666667 / 48000.0)*16777216.0f),
    (fixed8_24)((585.142857142857 / 48000.0)*16777216.0f),
    (fixed8_24)((8192 / 48000.0)*16777216.0f),
    (fixed8_24)((4096 / 48000.0)*16777216.0f),
    (fixed8_24)((2048 / 48000.0)*16777216.0f),
    (fixed8_24)((1365.33333333333 / 48000.0)*16777216.0f),
    (fixed8_24)((1024 / 48000.0)*16777216.0f),
    (fixed8_24)((819.2 / 48000.0)*16777216.0f),
    (fixed8_24)((682.666666666667 / 48000.0)*16777216.0f),
    (fixed8_24)((585.142857142857 / 48000.0)*16777216.0f),
    (fixed8_24)((4096 / 48000.0)*16777216.0f),
    (fixed8_24)((2048 / 48000.0)*16777216.0f),
    (fixed8_24)((1024 / 48000.0)*16777216.0f),
    (fixed8_24)((682.666666666667 / 48000.0)*16777216.0f),
    (fixed8_24)((512 / 48000.0)*16777216.0f),
    (fixed8_24)((409.6 / 48000.0)*16777216.0f),
    (fixed8_24)((341.333333333333 / 48000.0)*16777216.0f),
    (fixed8_24)((292.571428571429 / 48000.0)*16777216.0f),
    (fixed8_24)((4096 / 48000.0)*16777216.0f),
    (fixed8_24)((2048 / 48000.0)*16777216.0f),
    (fixed8_24)((1024 / 48000.0)*16777216.0f),
    (fixed8_24)((682.666666666667 / 48000.0)*16777216.0f),
    (fixed8_24)((512 / 48000.0)*16777216.0f),
    (fixed8_24)((409.6 / 48000.0)*16777216.0f),
    (fixed8_24)((341.333333333333 / 48000.0)*16777216.0f),
    (fixed8_24)((292.571428571429 / 48000.0)*16777216.0f),
    (fixed8_24)((2048 / 48000.0)*16777216.0f),
    (fixed8_24)((1024 / 48000.0)*16777216.0f),
    (fixed8_24)((512 / 48000.0)*16777216.0f),
    (fixed8_24)((341.333333333333 / 48000.0)*16777216.0f),
    (fixed8_24)((256 / 48000.0)*16777216.0f),
    (fixed8_24)((204.8 / 48000.0)*16777216.0f),
    (fixed8_24)((170.666666666667 / 48000.0)*16777216.0f),
    (fixed8_24)((146.285714285714 / 48000.0)*16777216.0f),
    (fixed8_24)((2048 / 48000.0)*16777216.0f),
    (fixed8_24)((1024 / 48000.0)*16777216.0f),
    (fixed8_24)((512 / 48000.0)*16777216.0f),
    (fixed8_24)((341.333333333333 / 48000.0)*16777216.0f),
    (fixed8_24)((256 / 48000.0)*16777216.0f),
    (fixed8_24)((204.8 / 48000.0)*16777216.0f),
    (fixed8_24)((170.666666666667 / 48000.0)*16777216.0f),
    (fixed8_24)((146.285714285714 / 48000.0)*16777216.0f),
    (fixed8_24)((1024 / 48000.0)*16777216.0f),
    (fixed8_24)((512 / 48000.0)*16777216.0f),
    (fixed8_24)((256 / 48000.0)*16777216.0f),
    (fixed8_24)((170.666666666667 / 48000.0)*16777216.0f),
    (fixed8_24)((128 / 48000.0)*16777216.0f),
    (fixed8_24)((102.4 / 48000.0)*16777216.0f),
    (fixed8_24)((85.3333333333333 / 48000.0)*16777216.0f),
    (fixed8_24)((73.1428571428571 / 48000.0)*16777216.0f),
    (fixed8_24)((1024 / 48000.0)*16777216.0f),
    (fixed8_24)((512 / 48000.0)*16777216.0f),
    (fixed8_24)((256 / 48000.0)*16777216.0f),
    (fixed8_24)((170.666666666667 / 48000.0)*16777216.0f),
    (fixed8_24)((128 / 48000.0)*16777216.0f),
    (fixed8_24)((102.4 / 48000.0)*16777216.0f),
    (fixed8_24)((85.3333333333333 / 48000.0)*16777216.0f),
    (fixed8_24)((73.1428571428571 / 48000.0)*16777216.0f),
    (fixed8_24)((512 / 48000.0)*16777216.0f),
    (fixed8_24)((256 / 48000.0)*16777216.0f),
    (fixed8_24)((128 / 48000.0)*16777216.0f),
    (fixed8_24)((85.3333333333333 / 48000.0)*16777216.0f),
    (fixed8_24)((64 / 48000.0)*16777216.0f),
    (fixed8_24)((51.2 / 48000.0)*16777216.0f),
    (fixed8_24)((42.6666666666667 / 48000.0)*16777216.0f),
    (fixed8_24)((36.5714285714286 / 48000.0)*16777216.0f),
    (fixed8_24)((512 / 48000.0)*16777216.0f),
    (fixed8_24)((256 / 48000.0)*16777216.0f),
    (fixed8_24)((128 / 48000.0)*16777216.0f),
    (fixed8_24)((85.3333333333333 / 48000.0)*16777216.0f),
    (fixed8_24)((64 / 48000.0)*16777216.0f),
    (fixed8_24)((51.2 / 48000.0)*16777216.0f),
    (fixed8_24)((42.6666666666667 / 48000.0)*16777216.0f),
    (fixed8_24)((36.5714285714286 / 48000.0)*16777216.0f),
    (fixed8_24)((256 / 48000.0)*16777216.0f),
    (fixed8_24)((128 / 48000.0)*16777216.0f),
    (fixed8_24)((64 / 48000.0)*16777216.0f),
    (fixed8_24)((42.6666666666667 / 48000.0)*16777216.0f),
    (fixed8_24)((32 / 48000.0)*16777216.0f),
    (fixed8_24)((25.6 / 48000.0)*16777216.0f),
    (fixed8_24)((21.3333333333333 / 48000.0)*16777216.0f),
    (fixed8_24)((18.2857142857143 / 48000.0)*16777216.0f),
    (fixed8_24)((256 / 48000.0)*16777216.0f),
    (fixed8_24)((128 / 48000.0)*16777216.0f),
    (fixed8_24)((64 / 48000.0)*16777216.0f),
    (fixed8_24)((42.6666666666667 / 48000.0)*16777216.0f),
    (fixed8_24)((32 / 48000.0)*16777216.0f),
    (fixed8_24)((25.6 / 48000.0)*16777216.0f),
    (fixed8_24)((21.3333333333333 / 48000.0)*16777216.0f),
    (fixed8_24)((18.2857142857143 / 48000.0)*16777216.0f),
    (fixed8_24)((128 / 48000.0)*16777216.0f),
    (fixed8_24)((64 / 48000.0)*16777216.0f),
    (fixed8_24)((32 / 48000.0)*16777216.0f),
    (fixed8_24)((21.3333333333333 / 48000.0)*16777216.0f),
    (fixed8_24)((16 / 48000.0)*16777216.0f),
    (fixed8_24)((12.8 / 48000.0)*16777216.0f),
    (fixed8_24)((10.6666666666667 / 48000.0)*16777216.0f),
    (fixed8_24)((9.14285714285714 / 48000.0)*16777216.0f),
    (fixed8_24)((128 / 48000.0)*16777216.0f),
    (fixed8_24)((64 / 48000.0)*16777216.0f),
    (fixed8_24)((32 / 48000.0)*16777216.0f),
    (fixed8_24)((21.3333333333333 / 48000.0)*16777216.0f),
    (fixed8_24)((16 / 48000.0)*16777216.0f),
    (fixed8_24)((12.8 / 48000.0)*16777216.0f),
    (fixed8_24)((10.6666666666667 / 48000.0)*16777216.0f),
    (fixed8_24)((9.14285714285714 / 48000.0)*16777216.0f),
    (fixed8_24)((64 / 48000.0)*16777216.0f),
    (fixed8_24)((32 / 48000.0)*16777216.0f),
    (fixed8_24)((16 / 48000.0)*16777216.0f),
    (fixed8_24)((10.6666666666667 / 48000.0)*16777216.0f),
    (fixed8_24)((8 / 48000.0)*16777216.0f),
    (fixed8_24)((6.4 / 48000.0)*16777216.0f),
    (fixed8_24)((5.33333333333333 / 48000.0)*16777216.0f),
    (fixed8_24)((4.57142857142857 / 48000.0)*16777216.0f),
    (fixed8_24)((64 / 48000.0)*16777216.0f),
    (fixed8_24)((32 / 48000.0)*16777216.0f),
    (fixed8_24)((16 / 48000.0)*16777216.0f),
    (fixed8_24)((10.6666666666667 / 48000.0)*16777216.0f),
    (fixed8_24)((8 / 48000.0)*16777216.0f),
    (fixed8_24)((6.4 / 48000.0)*16777216.0f),
    (fixed8_24)((5.33333333333333 / 48000.0)*16777216.0f),
    (fixed8_24)((4.57142857142857 / 48000.0)*16777216.0f),
    (fixed8_24)((32 / 48000.0)*16777216.0f),
    (fixed8_24)((16 / 48000.0)*16777216.0f),
    (fixed8_24)((8 / 48000.0)*16777216.0f),
    (fixed8_24)((5.33333333333333 / 48000.0)*16777216.0f),
    (fixed8_24)((4 / 48000.0)*16777216.0f),
    (fixed8_24)((3.2 / 48000.0)*16777216.0f),
    (fixed8_24)((2.66666666666667 / 48000.0)*16777216.0f),
    (fixed8_24)((2.28571428571429 / 48000.0)*16777216.0f),
    (fixed8_24)((32 / 48000.0)*16777216.0f),
    (fixed8_24)((16 / 48000.0)*16777216.0f),
    (fixed8_24)((8 / 48000.0)*16777216.0f),
    (fixed8_24)((5.33333333333333 / 48000.0)*16777216.0f),
    (fixed8_24)((4 / 48000.0)*16777216.0f),
    (fixed8_24)((3.2 / 48000.0)*16777216.0f),
    (fixed8_24)((2.66666666666667 / 48000.0)*16777216.0f),
    (fixed8_24)((2.28571428571429 / 48000.0)*16777216.0f),
    (fixed8_24)((16 / 48000.0)*16777216.0f),
    (fixed8_24)((8 / 48000.0)*16777216.0f),
    (fixed8_24)((4 / 48000.0)*16777216.0f),
    (fixed8_24)((2.66666666666667 / 48000.0)*16777216.0f),
    (fixed8_24)((2 / 48000.0)*16777216.0f),
    (fixed8_24)((1.6 / 48000.0)*16777216.0f),
    (fixed8_24)((1.33333333333333 / 48000.0)*16777216.0f),
    (fixed8_24)((1.14285714285714 / 48000.0)*16777216.0f),
    (fixed8_24)((16 / 48000.0)*16777216.0f),
    (fixed8_24)((8 / 48000.0)*16777216.0f),
    (fixed8_24)((4 / 48000.0)*16777216.0f),
    (fixed8_24)((2.66666666666667 / 48000.0)*16777216.0f),
    (fixed8_24)((2 / 48000.0)*16777216.0f),
    (fixed8_24)((1.6 / 48000.0)*16777216.0f),
    (fixed8_24)((1.33333333333333 / 48000.0)*16777216.0f),
    (fixed8_24)((1.14285714285714 / 48000.0)*16777216.0f),
};
# 4 "/home/awaszczak/git/sa2/sa1/src/platform/shared/audio/cgb_audio.c" 2

static struct AudioCGB gb;
static fixed8_24 soundChannelPos[4];
static const fixed8_24 *PU1Table;
static const fixed8_24 *PU2Table;
static u32 apuFrame;
static u8 apuCycle;
static u32 sampleRate;
static u16 lfsrMax[2];
fixed8_24 ch4Samples;
fixed8_24 volScale[16];
fixed8_24 ch4StepsScale[12];

void cgb_audio_init(u32 rate)
{
    gb.ch1Freq = 0;
    gb.ch1SweepCounter = 0;
    gb.ch1SweepCounterI = 0;
    gb.ch1SweepDir = 0;
    gb.ch1SweepShift = 0;
    for (u8 ch = 0; ch < 4; ch++) {
        gb.Vol[ch] = 0;
        gb.VolI[ch] = 0;
        gb.Len[ch] = 0;
        gb.LenI[ch] = 0;
        gb.LenOn[ch] = 0;
        gb.EnvCounter[ch] = 0;
        gb.EnvCounterI[ch] = 0;
        gb.EnvDir[ch] = 0;
        gb.DAC[ch] = 0;
        soundChannelPos[ch] = 0;
    }
    soundChannelPos[1] = ((1) << 24);
    PU1Table = PU0;
    PU2Table = PU0;
    sampleRate = rate;
    gb.ch4LFSR[0] = 0x8000;
    gb.ch4LFSR[1] = 0x80;
    lfsrMax[0] = 0x8000;
    lfsrMax[1] = 0x80;
    ch4Samples = 0;
    for (int i = 0; i < 16; i++)
        volScale[i] = ((i) << 24) / 15;

    for (int i = 0; i < 12; i++)
        ch4StepsScale[i] = ((1) << 24) / (i + 1);
}

void cgb_set_sweep(u8 sweep)
{
    gb.ch1SweepDir = (sweep & 0x08) >> 3;
    gb.ch1SweepCounter = gb.ch1SweepCounterI = (sweep & 0x70) >> 4;
    gb.ch1SweepShift = (sweep & 0x07);
}

void cgb_set_wavram()
{
    for (u8 wavi = 0; wavi < 0x10; wavi++) {
        gb.WAVRAM[(wavi << 1)] = (((((*((REG_BASE + ((((0x40 + sizeof(winreg_t) * 6) + 4) + 2) + 2) + 2 + 10 + 0x30) + wavi)) & 0xF0) >> 4) << 24) * 2) / 15 - ((1) << 24);
        gb.WAVRAM[(wavi << 1) + 1] = (((((*((REG_BASE + ((((0x40 + sizeof(winreg_t) * 6) + 4) + 2) + 2) + 2 + 10 + 0x30) + wavi)) & 0x0F)) << 24) * 2) / 15 - ((1) << 24);
    }
}

void cgb_toggle_length(u8 channel, bool8 state) { gb.LenOn[channel] = state; }

void cgb_set_length(u8 channel, u8 length) { gb.Len[channel] = gb.LenI[channel] = length; }

void cgb_set_envelope(u8 channel, u8 envelope)
{
    if (channel == 2) {
        switch ((envelope & 0xE0)) {
            case 0x00:
                gb.Vol[2] = gb.VolI[2] = 0;
                break;
            case 0x20:
                gb.Vol[2] = gb.VolI[2] = 4;
                break;
            case 0x40:
                gb.Vol[2] = gb.VolI[2] = 2;
                break;
            case 0x60:
                gb.Vol[2] = gb.VolI[2] = 1;
                break;
            case 0x80:
                gb.Vol[2] = gb.VolI[2] = 3;
                break;
        }
    } else {
        gb.DAC[channel] = (envelope & 0xF8) > 0;
        gb.Vol[channel] = gb.VolI[channel] = (envelope & 0xF0) >> 4;
        gb.EnvDir[channel] = (envelope & 0x08) >> 3;
        gb.EnvCounter[channel] = gb.EnvCounterI[channel] = (envelope & 0x07);
    }
}

void cgb_trigger_note(u8 channel)
{
    gb.Vol[channel] = gb.VolI[channel];
    gb.Len[channel] = gb.LenI[channel];
    if (channel != 2)
        gb.EnvCounter[channel] = gb.EnvCounterI[channel];
    if (channel == 3) {
        gb.ch4LFSR[0] = 0x8000;
        gb.ch4LFSR[1] = 0x80;
    }
}

void cgb_audio_generate(u16 samplesPerFrame)
{
    fixed8_24 *outBuffer = gb.outBuffer;
    switch ((*(reg_u8 *)(REG_BASE + ((((0x40 + sizeof(winreg_t) * 6) + 4) + 2) + 2) + 2 + 10 + 0x2)) & 0xC0) {
        case 0x00:
            PU1Table = PU0;
            break;
        case 0x40:
            PU1Table = PU1;
            break;
        case 0x80:
            PU1Table = PU2;
            break;
        case 0xC0:
            PU1Table = PU3;
            break;
    }

    switch ((*(reg_u8 *)(REG_BASE + ((((0x40 + sizeof(winreg_t) * 6) + 4) + 2) + 2) + 2 + 10 + 0x8)) & 0xC0) {
        case 0x00:
            PU2Table = PU0;
            break;
        case 0x40:
            PU2Table = PU1;
            break;
        case 0x80:
            PU2Table = PU2;
            break;
        case 0xC0:
            PU2Table = PU3;
            break;
    }

    for (u16 i = 0; i < samplesPerFrame; i++, outBuffer += 2) {
        apuFrame += 512;
        if (apuFrame >= sampleRate) {
            apuFrame -= sampleRate;
            apuCycle++;

            if ((apuCycle & 1) == 0) {
                for (u8 ch = 0; ch < 4; ch++) {
                    if (gb.Len[ch]) {
                        if (--gb.Len[ch] == 0 && gb.LenOn[ch]) {
                            (*(reg_u8 *)(REG_BASE + ((((0x40 + sizeof(winreg_t) * 6) + 4) + 2) + 2) + 2 + 10 + 0x24)) &= (0xFF ^ (1 << ch));
                        }
                    }
                }
            }

            if ((apuCycle & 7) == 7) {
                for (u8 ch = 0; ch < 4; ch++) {
                    if (ch == 2)
                        continue;
                    if (gb.EnvCounter[ch]) {
                        if (--gb.EnvCounter[ch] == 0) {
                            if (gb.Vol[ch] && !gb.EnvDir[ch]) {
                                gb.Vol[ch]--;
                                gb.EnvCounter[ch] = gb.EnvCounterI[ch];
                            } else if (gb.Vol[ch] < 0x0F && gb.EnvDir[ch]) {
                                gb.Vol[ch]++;
                                gb.EnvCounter[ch] = gb.EnvCounterI[ch];
                            }
                        }
                    }
                }
            }

            if ((apuCycle & 3) == 2) {
                if (gb.ch1SweepCounterI && gb.ch1SweepShift) {
                    if (--gb.ch1SweepCounter == 0) {
                        gb.ch1Freq = (*(reg_u16 *)(REG_BASE + ((((0x40 + sizeof(winreg_t) * 6) + 4) + 2) + 2) + 2 + 10 + 0x4)) & 0x7FF;
                        if (gb.ch1SweepDir) {
                            gb.ch1Freq -= gb.ch1Freq >> gb.ch1SweepShift;
                            if (gb.ch1Freq & 0xF800)
                                gb.ch1Freq = 0;
                        } else {
                            gb.ch1Freq += gb.ch1Freq >> gb.ch1SweepShift;
                            if (gb.ch1Freq & 0xF800) {
                                gb.ch1Freq = 0;
                                gb.EnvCounter[0] = 0;
                                gb.Vol[0] = 0;
                            }
                        }
                        (*(reg_u8 *)(REG_BASE + ((((0x40 + sizeof(winreg_t) * 6) + 4) + 2) + 2) + 2 + 10 + 0x4)) = gb.ch1Freq & 0xFF;
                        (*(reg_u8 *)(REG_BASE + ((((0x40 + sizeof(winreg_t) * 6) + 4) + 2) + 2) + 2 + 10 + 0x5)) &= 0xF8;
                        (*(reg_u8 *)(REG_BASE + ((((0x40 + sizeof(winreg_t) * 6) + 4) + 2) + 2) + 2 + 10 + 0x5)) += (gb.ch1Freq >> 8) & 0x07;
                        gb.ch1SweepCounter = gb.ch1SweepCounterI;
                    }
                }
            }
        }

        soundChannelPos[0] += freqTable[(*(reg_u16 *)(REG_BASE + ((((0x40 + sizeof(winreg_t) * 6) + 4) + 2) + 2) + 2 + 10 + 0x4)) & ((sizeof(freqTable) / sizeof((freqTable)[0])) - 1)];
        soundChannelPos[1] += freqTable[(*(reg_u16 *)(REG_BASE + ((((0x40 + sizeof(winreg_t) * 6) + 4) + 2) + 2) + 2 + 10 + 0xC)) & ((sizeof(freqTable) / sizeof((freqTable)[0])) - 1)];
        soundChannelPos[2] += freqTable[(*(reg_u16 *)(REG_BASE + ((((0x40 + sizeof(winreg_t) * 6) + 4) + 2) + 2) + 2 + 10 + 0x14)) & ((sizeof(freqTable) / sizeof((freqTable)[0])) - 1)];

        soundChannelPos[0] &= (((32) << 24)) - 1;
        soundChannelPos[1] &= (((32) << 24)) - 1;
        soundChannelPos[2] &= (((32) << 24)) - 1;

        fixed8_24 outputL = 0;
        fixed8_24 outputR = 0;
        if ((*(reg_u8 *)(REG_BASE + ((((0x40 + sizeof(winreg_t) * 6) + 4) + 2) + 2) + 2 + 10 + 0x24)) & 0x80) {
            if ((gb.DAC[0]) && ((*(reg_u8 *)(REG_BASE + ((((0x40 + sizeof(winreg_t) * 6) + 4) + 2) + 2) + 2 + 10 + 0x24)) & 0x01)) {
                if ((*(reg_u8 *)(REG_BASE + ((((0x40 + sizeof(winreg_t) * 6) + 4) + 2) + 2) + 2 + 10 + 0x21)) & 0x10)
                    outputL += (gb.Vol[0] * PU1Table[((soundChannelPos[0]) >> 24)]);
                if ((*(reg_u8 *)(REG_BASE + ((((0x40 + sizeof(winreg_t) * 6) + 4) + 2) + 2) + 2 + 10 + 0x21)) & 0x01)
                    outputR += (gb.Vol[0] * PU1Table[((soundChannelPos[0]) >> 24)]);
            }
            if ((gb.DAC[1]) && ((*(reg_u8 *)(REG_BASE + ((((0x40 + sizeof(winreg_t) * 6) + 4) + 2) + 2) + 2 + 10 + 0x24)) & 0x02)) {
                if ((*(reg_u8 *)(REG_BASE + ((((0x40 + sizeof(winreg_t) * 6) + 4) + 2) + 2) + 2 + 10 + 0x21)) & 0x20)
                    outputL += (gb.Vol[1] * PU2Table[((soundChannelPos[1]) >> 24)]);
                if ((*(reg_u8 *)(REG_BASE + ((((0x40 + sizeof(winreg_t) * 6) + 4) + 2) + 2) + 2 + 10 + 0x21)) & 0x02)
                    outputR += (gb.Vol[1] * PU2Table[((soundChannelPos[1]) >> 24)]);
            }
            if (((*(reg_u8 *)(REG_BASE + ((((0x40 + sizeof(winreg_t) * 6) + 4) + 2) + 2) + 2 + 10 + 0x10)) & 0x80) && ((*(reg_u8 *)(REG_BASE + ((((0x40 + sizeof(winreg_t) * 6) + 4) + 2) + 2) + 2 + 10 + 0x24)) & 0x04)) {
                if ((*(reg_u8 *)(REG_BASE + ((((0x40 + sizeof(winreg_t) * 6) + 4) + 2) + 2) + 2 + 10 + 0x21)) & 0x40)
                    outputL += gb.Vol[2] * (gb.WAVRAM[((soundChannelPos[2]) >> 24)] >> 2);
                if ((*(reg_u8 *)(REG_BASE + ((((0x40 + sizeof(winreg_t) * 6) + 4) + 2) + 2) + 2 + 10 + 0x21)) & 0x04)
                    outputR += gb.Vol[2] * (gb.WAVRAM[((soundChannelPos[2]) >> 24)] >> 2);
            }
            if ((gb.DAC[3]) && ((*(reg_u8 *)(REG_BASE + ((((0x40 + sizeof(winreg_t) * 6) + 4) + 2) + 2) + 2 + 10 + 0x24)) & 0x08)) {
                bool32 lfsrMode = (((*(reg_u8 *)(REG_BASE + ((((0x40 + sizeof(winreg_t) * 6) + 4) + 2) + 2) + 2 + 10 + 0x1c)) & 0x08) == 8);
                ch4Samples += freqTableNSE[(*(reg_u16 *)(REG_BASE + ((((0x40 + sizeof(winreg_t) * 6) + 4) + 2) + 2) + 2 + 10 + 0x1c)) & ((sizeof(freqTableNSE) / sizeof((freqTableNSE)[0])) - 1)];
                s8 ch4Out = 0;
                if (gb.ch4LFSR[lfsrMode] & 1) {
                    ch4Out++;
                } else {
                    ch4Out--;
                }
                u8 steps = ((ch4Samples) >> 24);
                ch4Samples = ((ch4Samples)&0xFFFFFF);

                u16 lfsr = gb.ch4LFSR[lfsrMode];
                u16 lfsrMask = lfsrMax[lfsrMode];

                for (u8 i = 0; i < steps; i++) {




                    u16 lfsrCarry = (lfsr >> 1) & 1;
                    lfsr >>= 1;

                    lfsrCarry ^= (lfsr >> 1) & 1;

                    lfsr |= -lfsrCarry & lfsrMask;

                    ch4Out += (lfsr & 1) ? 1 : -1;
                }
                gb.ch4LFSR[lfsrMode] = lfsr;



                fixed8_24 sample = ch4Out * ch4StepsScale[steps];


                if ((*(reg_u8 *)(REG_BASE + ((((0x40 + sizeof(winreg_t) * 6) + 4) + 2) + 2) + 2 + 10 + 0x21)) & 0x80)
                    outputL += ((s64)sample * volScale[gb.Vol[3]]) >> 24;
                if ((*(reg_u8 *)(REG_BASE + ((((0x40 + sizeof(winreg_t) * 6) + 4) + 2) + 2) + 2 + 10 + 0x21)) & 0x08)
                    outputR += ((s64)sample * volScale[gb.Vol[3]]) >> 24;
            }
        }
        outBuffer[0] = (outputL >> 2);
        outBuffer[1] = (outputR >> 2);
    }
}

fixed8_24 *cgb_get_buffer() { return gb.outBuffer; }
