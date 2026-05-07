# 1 "/home/awaszczak/git/sa2/sa1/../src/game/sa1/ui/extra_stage_results.c"
# 1 "<built-in>" 1
# 1 "<built-in>" 3
# 384 "<built-in>" 3
# 1 "<command line>" 1
# 1 "<built-in>" 2
# 1 "/home/awaszczak/git/sa2/sa1/../src/game/sa1/ui/extra_stage_results.c" 2
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
# 2 "/home/awaszczak/git/sa2/sa1/../src/game/sa1/ui/extra_stage_results.c" 2
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
# 3 "/home/awaszczak/git/sa2/sa1/../src/game/sa1/ui/extra_stage_results.c" 2

# 1 "/home/awaszczak/git/sa2/sa1/../include/trig.h" 1





extern const s16 gSineTable[1280];
# 5 "/home/awaszczak/git/sa2/sa1/../src/game/sa1/ui/extra_stage_results.c" 2
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
# 6 "/home/awaszczak/git/sa2/sa1/../src/game/sa1/ui/extra_stage_results.c" 2
# 1 "/home/awaszczak/git/sa2/sa1/../include/data/sa1/credits.h" 1



typedef struct CreditsString {
    unsigned char length;
    unsigned char unk1;
    signed char unk2;
    char name[25 + 1];
    char padding[3];
} CreditsString;


extern void CreateStaffCredits();
extern void CreateCongratulationsAnimation();


extern const CreditsString sCreditsEntries[334];
# 7 "/home/awaszczak/git/sa2/sa1/../src/game/sa1/ui/extra_stage_results.c" 2
# 1 "/home/awaszczak/git/sa2/sa1/../include/game/sa1/stage/ui_rendering.h" 1




# 1 "/home/awaszczak/git/sa2/sa1/../include/game/sa1/ui/game_over.h" 1





enum ELostLifeCause {
    OVER_CAUSE_ZERO_LIVES = 0x1,
    OVER_CAUSE_TIME_UP = 0x2,
};




typedef enum ELostLifeCause LostLifeCause;


typedef struct {
               Sprite s;
               u8 filler30[0xC];
               Sprite s2;
               u8 filler6C[0xC];
               u32 frames;
               u32 lostLifeCause;
               u8 unk80;
} GameOverScreen;


typedef struct GameOverB {
               u8 unk0;
               u8 unk1;
               u8 unk2;
               u8 unk3;
               u8 unk4;
               u8 unk5;
               u8 unk6;
               u8 unk7;
               u16 unk8;
               s16 qUnkA;
               s16 unkC;
               s16 unkE;
               u16 unk10;
               u16 unk12;
               u16 unk14;
               u8 unk16;
               u8 unk17;
} GameOverB;


typedef struct {
               GameOverB unk0;
               u32 unk18;
               void *vram1C;
} GameOverB0;

typedef struct {
               s16 unk0;
               s16 unk2;
               s16 unk4;
               s16 unk6;
               s16 unk8;
               u8 unkA;
               u8 unkB;
} StrcUi_805423C;

typedef struct GameOverC {
               StrcUi_805423C unk0;
               void *unkC;
               void *unk10;
               void *unk14;
               u32 unk18;
} GameOverC;

typedef struct GameOverD {
               u8 filler0[0x18];
               GameOverScreen *unk18;
               GameOverB0 *unk1C;
               GameOverC *unk20;
               u32 unk24;
               u16 unk28;
               u8 filler2A[0x2];
               void *vram2C;
               void *vram30;
} GameOverD;

void CreateGameOverScreen(LostLifeCause lostLifeCause);
# 6 "/home/awaszczak/git/sa2/sa1/../include/game/sa1/stage/ui_rendering.h" 2




typedef struct Strc0 {
                s32 unk0;
                s32 unk4;
                u8 unk8;
                u8 unk9;
                u8 unkA;
                u8 unkB;
} Strc0;

typedef struct Strc_80528AC {
               struct Strc0 unk0;
               u8 *vramC;
               const u8 *layout;
               const u8 *tiles;
               s32 tilesSize;
               s32 layoutSize;
               const u16 *palette;
               u32 paletteSize;
               u8 unk28;
               u8 unk29;
               u8 unk2A;
               u8 unk2B;
               u8 uiGfxID;
} Strc_80528AC;

typedef struct Strc_8055C50 {
               void *vram0;
               void *vram4;
               void *vram8;
} Strc_8055C50;

typedef struct Strc_8052C84 {
               u16 unk0;
               u16 unk2;
               s16 unk4;
               u16 unk6;
               u16 unk8;
               u16 unkA;
               u16 unkC;
               s16 byteCount;
               u16 unk10;
               u16 unk12;
               u8 filler14[2];
               u8 unk16;
} Strc_8052C84;

extern struct Task *gTask_03006240;

struct GfxSubstruct {
    struct GfxSubstruct *next;

    GraphicsData graphics;



};

struct Strc_30063F0 {
    struct Strc_30063F0 *next;
    u8 unk4[10];
    s32 unk10;
    s32 unk14;
    u32 unk18;
    u32 unk1C;
    u8 unk20;
};

typedef struct {
                struct Strc0 unk0[10];
                u8 filler78[0xF0];
                struct GfxSubstruct *first;
                struct GfxSubstruct gfxList[16];
                u8 filler26C[0xE0];
} Task_3006240;

struct Strc_3006250 {
    struct Strc_3006250 *next;
    u8 unk4[0x20];
};

void sub_80535C8(struct Strc0 *inTask, u8 param1);

void sub_80535FC(void);
IwramData UiGfxStackInit(void);
GraphicsData *UiGfxStackPop(void);
void sub_80528AC(Strc_80528AC *strc);

void sub_8052C84(const char *param0, Strc_8052C84 *param1);
void sub_8052F78(const char *param0, struct GameOverB *strc);
void sub_80530CC(const char *param0, struct GameOverB *param1);
void sub_8055C50(Strc_8055C50 *param0);
# 8 "/home/awaszczak/git/sa2/sa1/../src/game/sa1/ui/extra_stage_results.c" 2

# 1 "/home/awaszczak/git/sa2/sa1/../include/game/sa1/save.h" 1




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
# 6 "/home/awaszczak/git/sa2/sa1/../include/game/sa1/save.h" 2

# 1 "/home/awaszczak/git/sa2/sa1/../include/constants/sa1/zones.h" 1
# 8 "/home/awaszczak/git/sa2/sa1/../include/game/sa1/save.h" 2
# 1 "/home/awaszczak/git/sa2/sa1/../include/constants/sa1/characters.h" 1




typedef enum {
    CHARACTER_SONIC,



    CHARACTER_TAILS,
    CHARACTER_KNUCKLES,
    CHARACTER_AMY,

    NUM_CHARACTERS
} ECharacters;
# 9 "/home/awaszczak/git/sa2/sa1/../include/game/sa1/save.h" 2








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
# 10 "/home/awaszczak/git/sa2/sa1/../src/game/sa1/ui/extra_stage_results.c" 2
# 1 "/home/awaszczak/git/sa2/sa1/../include/game/sa1/ui/stage_results.h" 1






u32 CreateStageResults(u32, u32);
void StageResults_AnimateSeparator(void);
void StageResults_AnimateTitle(void);

extern const u16 gAnimsGotThroughZoneAndActNames[][3];
extern const u16 gStageResultsHeadlineTexts[][3];
extern const u16 gAnimsGotThroughCharacterNames[][3];
# 11 "/home/awaszczak/git/sa2/sa1/../src/game/sa1/ui/extra_stage_results.c" 2
# 1 "/home/awaszczak/git/sa2/sa1/../include/game/sa1/stage/stage_ui.h" 1
# 14 "/home/awaszczak/git/sa2/sa1/../include/game/sa1/stage/stage_ui.h"
bool8 sub_805423C(StrcUi_805423C *param0);
void sub_80543A4(StrcUi_805423C *param0);






typedef struct {
    u8 unk0[3];
    u8 unk3;
    u8 filler4[5];
    u8 unk9;
    u8 unkA;
    u8 unkB;
} StageUI_10;

typedef struct {
    u8 unk0;
    u8 unk1;
    u8 unk2;
    u8 unk3;
    u8 unk4;
    u8 unk5;
    u8 unk6;
    u8 unk7;
} StageUI_20;

typedef struct {
               u8 digitsRings[3];
               u8 filler3[0x5];
               s16 unk8;
               s16 unkA;
               s16 unkC;
               s16 unkE;
               StageUI_10 unk10;
               u8 filler1C[0x4];
               StageUI_20 unk20;
               u8 filler28[0x8];
               u8 digitLives;
               u8 filler31[0xF];
               u16 unk40;
               u8 filler42[0x2];
               u16 ringCount;
               u8 filler46[0x2];
               u16 unk48;
               u8 filler4A[0x2];
               s16 unk4C;
               u8 filler4E[0x2];
} StageUI;

typedef struct {

    GameOverB unk0;

    s16 unk18;
    u16 unk1A;
    void *unk1C;
    bool8 unk20;
    u8 unk21;
} Strc_Ui_24;

typedef struct {
               StrcUi_805423C unk0;
               struct Task *taskC;
               struct Task *task10;
               struct Task *task14;
               struct Task *task18;
               struct Task *task1C;
               struct Task *task20;
               s16 unk24;
               bool8 unk26;
               u8 unk27;
} Strc_Ui_28;

typedef struct {
    void *vram0;
    void *vram4;
    void *vram8;
    void *vramC;
    void *vram10;
    struct Task *task14;
    struct Task *task18;
    struct Task *task1C;
    struct Task *task20;
    struct Task *task24;
} StrcStack;

void LoadStageIntroGraphics(StrcStack *param0);
void sub_804A5D8(s32 x, s32 y);

void CreateStageUI(void);
void CreateSpecialStageUI(void);


void sub_8052E40(u8 *param0, Strc_8052C84 *param1);
void sub_80538BC(void);
bool32 sub_80549FC(void);
# 12 "/home/awaszczak/git/sa2/sa1/../src/game/sa1/ui/extra_stage_results.c" 2
# 1 "/home/awaszczak/git/sa2/sa1/../include/data/sa1/ui_graphics.h" 1




# 1 "/home/awaszczak/git/sa2/sa1/../include/constants/sa1/ui_graphics.h" 1
# 6 "/home/awaszczak/git/sa2/sa1/../include/data/sa1/ui_graphics.h" 2






typedef struct UiGraphics {
    const u8 *tiles;
    const u16 *palette;
    s32 unk8;
    s32 unkC;
    s32 unk10;
    s32 unk14;
    s32 unk18;
} UiGraphics;

extern const UiGraphics gUiGraphics[];

extern const u8 gUiGraphicsAsciiChars[];
extern const u16 gUiPaletteAsciiChars[];

extern const u8 gUiGraphics1UpIconSonic[];
extern const u16 gUiPalette1UpIconSonic[];

extern const u8 gUiGraphics1UpIconTails[];
extern const u16 gUiPalette1UpIconTails[];

extern const u8 gUiGraphics1UpIconKnuckles[];
extern const u16 gUiPalette1UpIconKnuckles[];

extern const u8 gUiGraphics1UpIconAmy[];
extern const u16 gUiPalette1UpIconAmy[];

extern const u8 gUiGraphicsHudRing[];
extern const u16 gUiPaletteHudRing[];

extern const u8 gUiGraphicsStageIntroSonic[];
extern const u16 gUiPaletteStageIntroSonic[];

extern const u8 gUiGraphicsStageIntroTails[];
extern const u16 gUiPaletteStageIntroTails[];

extern const u8 gUiGraphicsStageIntroKnuckles[];
extern const u16 gUiPaletteStageIntroKnuckles[];

extern const u8 gUiGraphicsStageIntroAmy[];
extern const u16 gUiPaletteStageIntroAmy[];

extern const u8 gUiGraphicsStageIntrochar_names[];
extern const u16 gUiPaletteStageIntrochar_names[];

extern const u8 gUiGraphicsStageResultSonic[];
extern const u16 gUiPaletteStageResultSonic[];

extern const u8 gUiGraphicsStageResultTails[];
extern const u16 gUiPaletteStageResultTails[];

extern const u8 gUiGraphicsStageResultKnuckles[];
extern const u16 gUiPaletteStageResultKnuckles[];

extern const u8 gUiGraphicsStageResultAmy[];
extern const u16 gUiPaletteStageResultAmy[];

extern const u8 gUiGraphicsStageResultAct12[];
extern const u16 gUiPaletteStageResultAct12[];

extern const u8 gUiGraphicsStageResultHeadlineBack[];
extern const u16 gUiPaletteStageResultHeadlineBack[];

extern const u8 gUiGraphicsStageNamesJapanese0[];
extern const u16 gUiPaletteStageNamesJapanese0[];

extern const u8 gUiGraphicsStageNamesJapanese1[];
extern const u16 gUiPaletteStageNamesJapanese1[];

extern const u8 gUiGraphicsStageNameNeoGreenHillZone[];
extern const u16 gUiPaletteStageNameNeoGreenHillZone[];

extern const u8 gUiGraphicsStageNameSecretBaseZone[];
extern const u16 gUiPaletteStageNameSecretBaseZone[];

extern const u8 gUiGraphicsStageNameCasinoParadiseZone[];
extern const u16 gUiPaletteStageNameCasinoParadiseZone[];

extern const u8 gUiGraphicsStageNameIceMountainZone[];
extern const u16 gUiPaletteStageNameIceMountainZone[];

extern const u8 gUiGraphicsStageNameAngelIslandZone[];
extern const u16 gUiPaletteStageNameAngelIslandZone[];

extern const u8 gUiGraphicsStageNameEggRocketZone[];
extern const u16 gUiPaletteStageNameEggRocketZone[];

extern const u8 gUiGraphicsStageNameCosmicAngelZone[];
extern const u16 gUiPaletteStageNameCosmicAngelZone[];

extern const u8 gUiGraphicsStageNameXZone[];
extern const u16 gUiPaletteStageNameXZone[];

extern const u8 gUiGraphicsStageNameTheMoonZone[];
extern const u16 gUiPaletteStageNameTheMoonZone[];

extern const u8 gUiGraphicsStageNameForestChaoGarden[];
extern const u16 gUiPaletteStageNameForestChaoGarden[];

extern const u8 gUiGraphicsStageNameFactoryChaoGarden[];
extern const u16 gUiPaletteStageNameFactoryChaoGarden[];

extern const u8 gUiGraphicsStageNamePinballChaoGarden[];
extern const u16 gUiPaletteStageNamePinballChaoGarden[];

extern const u8 gUiGraphicsStageNameSpaceChaoGarden[];
extern const u16 gUiPaletteStageNameSpaceChaoGarden[];

extern const u8 gUiGraphicsTimerDigits[];
extern const u16 gUiPaletteTimerDigits[];

extern const u8 gUiGraphicsOK[];
extern const u16 gUiPaletteOK[];

extern const u8 gUiGraphicsGotThroughTexts[];
extern const u16 gUiPaletteGotThroughTexts[];

extern const u8 gUiGraphicsOverlayEnterName[];
extern const u16 gUiPaletteOverlayEnterName[];

extern const u8 gUiGraphicsOverlayCharacters[];
extern const u16 gUiPaletteOverlayCharacters[];

extern const u8 gUiGraphicsOverlayRedCorner[];
extern const u16 gUiPaletteOverlayRedCorner[];

extern const u8 gUiGraphicsOverlayCursors[];
extern const u16 gUiPaletteOverlayCursors[];

extern const u8 gUiGraphicsCharSelectZigZag[];
extern const u16 gUiPaletteCharSelectZigZag[];

extern const u8 gUiGraphicsCharSelectArrow[];
extern const u16 gUiPaletteCharSelectArrow[];

extern const u8 gUiGraphicsCharSelectNames[];
extern const u16 gUiPaletteCharSelectNames[];

extern const u8 gUiGraphicsCharSelectSelectACharacter[];
extern const u16 gUiPaletteCharSelectSelectACharacter[];

extern const u8 gUiGraphicsCharSelectBlackBox[];
extern const u16 gUiPaletteCharSelectBlackBox[];

extern const u8 gUiGraphicsCharSelectOK[];
extern const u16 gUiPaletteCharSelectOK[];

extern const u8 gUiGraphicsCharSelectBlackBox2[];
extern const u16 gUiPaletteCharSelectBlackBox2[];

extern const u8 gUiGraphicsSpecialStage46[];
extern const u16 gUiPaletteSpecialStage46[];

extern const u8 gUiGraphicsSpecialStageTextGotRings0[];
extern const u16 gUiPaletteSpecialStageTextGotRings0[];

extern const u8 gUiGraphicsSpecialStageTextGotRings1[];
extern const u16 gUiPaletteSpecialStageTextGotRings1[];

extern const u8 gUiGraphicsSpecialStageTextGotRings2[];
extern const u16 gUiPaletteSpecialStageTextGotRings2[];

extern const u8 gUiGraphicsSpecialStageTextStart[];
extern const u16 gUiPaletteSpecialStageTextStart[];

extern const u8 gUiGraphicsSpecialStageTextGotAChaosEmerald[];
extern const u16 gUiPaletteSpecialStageTextGotAChaosEmerald[];

extern const u8 gUiGraphicsSpecialStageTextSpecialStage[];
extern const u16 gUiPaletteSpecialStageTextSpecialStage[];

extern const u8 gUiGraphicsSpecialStage53[];
extern const u16 gUiPaletteSpecialStage53[];

extern const u8 gUiGraphicsSpecialStageChaosEmerald[];
extern const u16 gUiPaletteSpecialStageChaosEmerald[];

extern const u8 gUiGraphicsTransparent0[];
extern const u16 gUiPaletteTransparent0[];

extern const u8 gUiGraphicsTransparent1[];
extern const u16 gUiPaletteTransparent1[];

extern const u8 gUiGraphicsTransparent2[];
extern const u16 gUiPaletteTransparent2[];

extern const u8 gUiGraphicsTransparent3[];
extern const u16 gUiPaletteTransparent3[];

extern const u8 gUiGraphicsTransparent4[];
extern const u16 gUiPaletteTransparent4[];

extern const u8 gUiGraphicsTransparent5[];
extern const u16 gUiPaletteTransparent5[];

extern const u8 gUiGraphicsSoundTestBackground[];
extern const u16 gUiPaletteSoundTestBackground[];

extern const u8 gUiGraphicsSoundTestBox2[];
extern const u16 gUiPaletteSoundTestBox2[];

extern const u8 gUiGraphicsSoundTestBox3[];
extern const u16 gUiPaletteSoundTestBox3[];

extern const u8 gUiGraphicsSoundTestBox4[];
extern const u16 gUiPaletteSoundTestBox4[];
# 13 "/home/awaszczak/git/sa2/sa1/../src/game/sa1/ui/extra_stage_results.c" 2

# 1 "/home/awaszczak/git/sa2/sa1/../include/constants/sa1/animations.h" 1






# 1 "/home/awaszczak/git/sa2/sa1/../include/constants/sa1/anim_sizes.h" 1
# 8 "/home/awaszczak/git/sa2/sa1/../include/constants/sa1/animations.h" 2
# 15 "/home/awaszczak/git/sa2/sa1/../src/game/sa1/ui/extra_stage_results.c" 2
# 1 "/home/awaszczak/git/sa2/sa1/../include/constants/sa1/songs.h" 1
# 16 "/home/awaszczak/git/sa2/sa1/../src/game/sa1/ui/extra_stage_results.c" 2
# 1 "/home/awaszczak/git/sa2/sa1/../include/constants/sa1/text.h" 1
# 17 "/home/awaszczak/git/sa2/sa1/../src/game/sa1/ui/extra_stage_results.c" 2

typedef struct CongratulationsAnim_48 {
    StrcUi_805423C strc0;
    struct Task *taskC;
    struct Task *task10;
    struct Task *task14;
    struct Task *task18;
    struct Task *task1C;
    struct Task *task20;
    struct Task *task24;
    struct Task *task28;
    struct Task *task2C;
    struct Task *tasks30[4];
    s16 unk40;
    s8 unk42;
    s16 unk44;
    s16 unk46;
} CongratulationsAnim_48;

typedef struct ExtraStageResults_64 {
    Sprite s;
    SpriteTransform transform;
    u32 unk3C;
    s32 unk40;

    s32 qUnk44[4];
    s32 qUnk54[4];
} ExtraStageResults_64;



typedef struct ExtraStageResults_64_2 {
    Sprite s;
    SpriteTransform transform;
    u16 unk3C;
    s32 qUnk40;

    s32 qUnk44[4];
    s32 qUnk54[4];
} ExtraStageResults_64_2;

typedef struct ExtraStageResults_164 {
    Sprite s;
    SpriteTransform transform;
    u16 unk3C;
    s32 unk40;
    s32 unk44;
    s32 unk48;
    s32 unk4C;
    s16 unk50[64];
    u8 fillerD0[0x6];
    s16 unkD6[15];
    u8 fillerF4[0x54];
    u16 unk148;
    u8 filler14A[0x12];
    s8 unk15C;
    u8 filler15E[0x7];
} ExtraStageResults_164;

typedef struct ExtraStageResultsState {
    StrcUi_805423C strc0;
    struct Task *taskC;
    struct Task *task10;
    struct Task *task14;
    struct Task *task18;
    struct Task *task1C;
    struct Task *tasks20[3];
    struct Task *tasks2C[3];
    s32 unk38;
    s32 unk3C;
    u8 unk40;
    s32 unk44;
    s32 unk48;
    u8 filler4C[8];
} ExtraStageResultsState;

void Task_8065F5C_48(void);
void Task_8066E5C(void);
void Task_nullsub_8066DC8_164(void);
void Task_nullsub_8067050(void);
void Task_80661A8_48(void);
void Task_806636C_48(void);
void sub_80683D8(void);
void Task_80663EC_48(void);
void Task_8066478(void);
void Task_8066520(void);
void Task_8066628(void);
void Task_80666E0(void);
void Task_8066768(void);
void Task_80669A0(void);
void Task_8066A5C_164(void);
void Task_8066ACC(void);
void Task_8066BA4(void);
void Task_8066C78_164(void);
void Task_8066D64(void);
void Task_8066DD0_164(void);
void Task_8066E58_164(void);
void Task_8066F14_164(void);
void Task_8066F30(void);
void Task_8066FDC(void);
void Task_8067020_164(void);
void Task_8067054(void);
void Task_8067084(void);
void sub_80677C4(s32 i);
void Task_8067824(void);
void sub_8067928(void);
void Task_80679E4(void);
void Task_8067B9C(void);
void Task_8067C24(void);
void Task_8067E68(void);
void Task_8067F38(void);
void Task_8067F9C(void);
void Task_8068004(void);
void Task_806806C(void);
void Task_8068148(void);
void Task_8068214(void);
void Task_8068360(void);
void Task_nullsub_8068448(void);
void Task_80684B4(void);
void Task_806853C(void);
void Task_8068570(void);
void Task_80685C8(void);
void Task_8067B14(void);
void sub_806844C(void);
void Task_806856C(void);
void Task_8068620(void);
void Task_8068624(void);
void Task_8068628(void);
void Task_806862C(void);

void Task_8066EBC(void);
void Task_8066F90(void);
void Task_8066DF4(void);
void Task_80662D0_48(void);

extern const u16 gUnknown_0868B3D8[NUM_CHARACTERS][2];
extern const u16 gUnknown_0868B3E8[NUM_CHARACTERS][2];
extern const u16 gUnknown_0868B3F8[NUM_CHARACTERS][2];
extern const u16 gUnknown_0868B408[NUM_CHARACTERS][2];
extern u16 gUnknown_0868B418[NUM_CHARACTERS][2];
extern u16 gUnknown_0868B428[NUM_CHARACTERS][2];
extern u16 gUnknown_0868B438[NUM_CHARACTERS][2];
extern u16 gUnknown_0868B448[NUM_CHARACTERS][2];
extern const u16 gUnknown_0868B458[NUM_CHARACTERS][2];
extern const u16 gUnknown_0868B468[NUM_CHARACTERS][2];
extern const u16 gUnknown_0868B478[NUM_CHARACTERS][2];
extern const s8 gUnknown_0868B488[2][NUM_CHARACTERS][2];
extern const s8 gUnknown_0868B498[8][2];
extern const u16 gUnknown_0868B4A8[NUM_CHARACTERS][2];
extern const s16 gUnknown_0868B4B8[2];
extern const s16 gUnknown_0868B4BE[2];

extern const u16 gUnknown_086BBC34[256];
extern const u8 gUnknown_086BBE34[0x2980];
extern const u8 gUnknown_086BE7B4[0x1000];

extern const u16 gUnknown_086C5B74[256];
extern const u8 gUnknown_086C5D74[0x1EC0];
extern const u8 gUnknown_086C7C34[0xA00];

extern const u16 gUnknown_086BF7B4[256];
extern const u8 gUnknown_086BF9B4[0x57C0];
extern const u8 gUnknown_086C5174[0xA00];

extern const u16 gUnknown_086C8634[256];
extern const u8 gUnknown_086C8834[0x3540];
extern const u8 gUnknown_086CBD74[0xA00];

static inline void sub_80684F4__inline(s32 comp)
{
    ExtraStageResultsState *state = (void *)((gCurTask)->data);

    if (comp == 25) {
        UiGfxStackInit();
        sub_80538BC();
    } else if (comp == 30) {
        state->unk3C = CreateStageResults((u32)gRingCount, gCourseTime);
        return;
    }
}

void CreateCongratulationsAnimation(void)
{
    struct Task *tasks[3];
    Strc_80528AC gfx;
    ExtraStageResults_164 *strc164;
    CongratulationsAnim_48 *state;
    struct Task *sp40;
    struct Task *sp44;
    struct Task *sp48;
    struct Task *sp4C;
    struct Task *sp50;
    struct Task *temp_r0;
    Sprite *s;
    u8 i;

    TasksDestroyInPriorityRange(0, 0xFFFF);
    gBackgroundsCopyQueueCursor = gBackgroundsCopyQueueIndex;;
    gBgSpritesCount = 0;
    gVramGraphicsCopyCursor = gVramGraphicsCopyQueueIndex;;

    {
        u16 prevIME, prevIE, prevDispstat;

        m4aMPlayAllStop();
        m4aSoundVSyncOff();

        gFlags |= 0x8000;

        prevIE = (*(reg_u16 *)(REG_BASE + 0x200));
        prevIME = (*(reg_u16 *)(REG_BASE + 0x208));
        prevDispstat = (*(reg_u16 *)(REG_BASE + 0x4));

        (*(reg_u16 *)(REG_BASE + 0x200)) = 0;
        (*(reg_u16 *)(REG_BASE + 0x200));
        (*(reg_u16 *)(REG_BASE + 0x208)) = 0;
        (*(reg_u16 *)(REG_BASE + 0x208));
        (*(reg_u16 *)(REG_BASE + 0x4)) = 0;
        (*(reg_u16 *)(REG_BASE + 0x4));

        gFlags &= ~0x4;

        SlowDmaStop(0);
        SlowDmaStop(1);
        SlowDmaStop(2);
        SlowDmaStop(3);

        WriteSaveGame();

        (*(reg_u16 *)(REG_BASE + 0x200)) = prevIE;
        (*(reg_u16 *)(REG_BASE + 0x200));
        (*(reg_u16 *)(REG_BASE + 0x208)) = prevIME;
        (*(reg_u16 *)(REG_BASE + 0x208));
        (*(reg_u16 *)(REG_BASE + 0x4)) = prevDispstat;
        (*(reg_u16 *)(REG_BASE + 0x4));

        m4aSoundVSyncOn();

        gFlags &= ~0x8000;
    }

    sub_80535FC();
    UiGfxStackInit();
    gDispCnt = 0x1140;
    gBgCntRegs[0] = 0x9D86;
    gBgCntRegs[1] = 0x1B8B;
    gBgCntRegs[2] = 0x9880;
    gBgScrollRegs[0][0] = 0;
    gBgScrollRegs[0][1] = 0;
    gBgScrollRegs[1][0] = 0;
    gBgScrollRegs[1][1] = 0;
    gBgScrollRegs[2][0] = 0;
    gBgScrollRegs[2][1] = 0;

    sp44 = TaskCreate(Task_8066DD0_164, sizeof(ExtraStageResults_164), 0x2120U, 0U, ((void*)0));
    strc164 = (void *)((sp44)->data);
    s = &strc164->s;
    s->graphics.dest = (void *)&VRAM[0x10000] + 0x20;
    s->graphics.anim = gUnknown_0868B3D8[gSelectedCharacter][0];
    s->variant = gUnknown_0868B3D8[gSelectedCharacter][1];
    s->x = (320 / 2);
    s->y = (240 / 2);
    s->oamFlags = 0x180;
    s->graphics.size = 0;
    s->animCursor = 0;
    s->qAnimDelay = 0;
    s->prevVariant = -1;
    s->animSpeed = 0x10;
    s->palId = 0;
    s->hitboxes[0].index = -1;
    s->frameFlags = 0x1000;
    UpdateSpriteAnimation(s);
    strc164->unk3C = 0;
    strc164->unk44 = 0x780;
    strc164->unk40 = ((s32)(((320 / 2))*256));
    strc164->unk4C = 0;
    strc164->unk48 = ((s32)(((240 / 2))*256));

    sp4C = TaskCreate(Task_8066E58_164, sizeof(ExtraStageResults_164), 0x2120U, 0U, ((void*)0));
    strc164 = (void *)((sp4C)->data);
    s = &strc164->s;
    s->graphics.dest = (void *)&VRAM[0x10000] + 0x7D00;
    s->graphics.anim = gUnknown_0868B3F8[gSelectedCharacter][0];
    s->variant = gUnknown_0868B3F8[gSelectedCharacter][1];
    s->x = 0x12C;
    s->y = 0x6C;
    s->oamFlags = 0x240;
    s->graphics.size = 0;
    s->animCursor = 0;
    s->qAnimDelay = 0;
    s->prevVariant = -1;
    s->animSpeed = 0x10;
    s->palId = 0;
    s->hitboxes[0].index = -1;
    s->frameFlags = 0x1000;
    UpdateSpriteAnimation(s);
    strc164->unk3C = 0;
    strc164->unk44 = 0x780;
    strc164->unk40 = ((s32)((0x12C)*256));
    strc164->unk4C = 0;
    strc164->unk48 = ((s32)((0x6C)*256));

    sp48 = TaskCreate(Task_8066F14_164, sizeof(ExtraStageResults_164), 0x2120U, 0U, ((void*)0));
    strc164 = (void *)((sp48)->data);
    s = &strc164->s;
    s->graphics.dest = (void *)&VRAM[0x10000] + 0xBA0;
    s->graphics.anim = 0x2E0;
    s->variant = 0;
    s->x = 0x12C;
    s->y = 0x6C;
    s->oamFlags = 0x300;
    s->graphics.size = 0;
    s->animCursor = 0;
    s->qAnimDelay = 0;
    s->prevVariant = -1;
    s->animSpeed = 0x10;
    s->palId = 0;
    s->hitboxes[0].index = -1;
    s->frameFlags = 0x1000;
    UpdateSpriteAnimation(s);
    strc164->unk3C = 0;
    strc164->unk44 = 0x780;
    strc164->unk40 = ((s32)((0x12C)*256));
    strc164->unk4C = 0;
    strc164->unk48 = ((s32)((0x6C)*256));

    sp40 = TaskCreate(Task_8066A5C_164, sizeof(ExtraStageResults_164), 0x2120U, 0U, ((void*)0));
    strc164 = (void *)((sp40)->data);
    s = &strc164->s;
    s->graphics.dest = (void *)&VRAM[0x10000] + 0x0940;
    s->graphics.anim = 0x314;
    s->variant = 0;
    s->x = 0xF8;
    s->y = 0x50;
    s->oamFlags = 0x3C0;
    s->graphics.size = 0;
    s->animCursor = 0;
    s->qAnimDelay = 0;
    s->prevVariant = -1;
    s->animSpeed = 0x10;
    s->palId = 0;
    s->hitboxes[0].index = -1;
    s->frameFlags = 0x1000;
    UpdateSpriteAnimation(s);
    strc164->unk3C = 0;
    strc164->unk44 = 0x100;
    strc164->unk40 = ((s32)((0xF8)*256));
    strc164->unk4C = 0;
    strc164->unk48 = ((s32)((0x50)*256));
    strc164->unk15C = 0;

    sp50 = TaskCreate(Task_8067020_164, sizeof(ExtraStageResults_164), 0x2120U, 0U, ((void*)0));
    strc164 = (void *)((sp50)->data);
    s = &strc164->s;
    strc164->unk3C = 0;
    strc164->unk4C = 0;
    strc164->unk48 = 0;
    strc164->unk44 = 0;
    strc164->unk40 = 0;
    s->graphics.dest = (void *)&VRAM[0x10000] + 0x4020;
    s->graphics.anim = gUnknown_0868B3E8[gSelectedCharacter][0];
    s->variant = gUnknown_0868B3E8[gSelectedCharacter][1];
    s->x = 0x78;
    s->y = 0x50;
    s->oamFlags = 0xC0;
    s->graphics.size = 0;
    s->animCursor = 0;
    s->qAnimDelay = 0;
    s->prevVariant = -1;
    s->animSpeed = 0x10;
    s->palId = 0;
    s->hitboxes[0].index = -1;
    s->frameFlags = 0x1000;
    UpdateSpriteAnimation(s);

    temp_r0 = TaskCreate(Task_8066C78_164, sizeof(ExtraStageResults_164), 0x2120U, 0U, ((void*)0));
    strc164 = (void *)((temp_r0)->data);
    s = &strc164->s;
    strc164->unk3C = 0;
    strc164->unk4C = 0xF;
    strc164->unk48 = 0;
    strc164->unk44 = 0;
    strc164->unk40 = 0;
    s->graphics.dest = (void *)&VRAM[0x10000] + 0x09C0;
    s->graphics.anim = 0x308;
    s->variant = 0;
    s->x = (320 / 2);
    s->y = (240 / 2);
    s->oamFlags = ((0) << 6);
    s->graphics.size = 0;
    s->animCursor = 0;
    s->qAnimDelay = 0;
    s->prevVariant = -1;
    s->animSpeed = ((int)((float)(1.0)*0x10));
    s->palId = 0;
    s->hitboxes[0].index = -1;
    s->frameFlags = 0x1000;
    UpdateSpriteAnimation(s);

    for (i = 0; i < 3; i++) {
        tasks[i] = TaskCreate(Task_nullsub_8066DC8_164, sizeof(ExtraStageResults_164), 0x2120U, 0U, ((void*)0));
        strc164 = (void *)((tasks[i])->data);
        s = &strc164->s;
        strc164->unk3C = 0;
        strc164->unk4C = 0xF;
        strc164->unk48 = 0;
        strc164->unk44 = i;
        strc164->unk40 = 0;

        if (i == 0) {
            s->graphics.dest = &VRAM[0x10000] + 0x1AA0;
            s->graphics.anim = 0x311;
            s->variant = 0;
        } else if (i == 1) {
            s->graphics.dest = &VRAM[0x10000] + 0x2340;
            s->graphics.anim = 0x311;
            s->variant = 1;
        } else {
            s->graphics.dest = &VRAM[0x10000] + 0x2820;
            s->graphics.anim = 0x311;
            s->variant = 2;
        }

        s->x = 0xB4;
        s->y = 80;
        s->oamFlags = ((0) << 6);
        s->graphics.size = 0;
        s->animCursor = 0;
        s->qAnimDelay = 0;
        s->prevVariant = -1;
        s->animSpeed = ((int)((float)(1.0)*0x10));
        s->palId = 0;
        s->hitboxes[0].index = -1;
        s->frameFlags = 0x1000;
    }

    state = (void *)((TaskCreate(Task_8065F5C_48, sizeof(CongratulationsAnim_48), 0x2100U, 0U, ((void*)0)))->data);
    state->unk40 = 0;
    state->unk42 = 1;
    state->taskC = sp50;
    state->task24 = tasks[0];
    state->task28 = tasks[1];
    state->task2C = tasks[2];
    state->task18 = sp44;
    state->task10 = temp_r0;
    state->task14 = sp40;
    state->task1C = sp48;
    state->task20 = sp4C;
    state->unk44 = 0;
    state->unk46 = 0;
    state->strc0.unk0 = 0;
    state->strc0.unk2 = 1;
    state->strc0.unk4 = 8;
    state->strc0.unk6 = 0;
    state->strc0.unk8 = 0x80;
    state->strc0.unkA = 1;
    sub_80543A4(&state->strc0);

    gfx.uiGfxID = 128;
    gfx.unk2B = 0;
    gfx.tiles = &gUnknown_086BBE34[0];
    gfx.tilesSize = sizeof(gUnknown_086BBE34);
    gfx.palette = &gUnknown_086BBC34[0];
    gfx.paletteSize = sizeof(gUnknown_086BBC34);
    gfx.layout = &gUnknown_086BE7B4[0];
    gfx.layoutSize = sizeof(gUnknown_086BE7B4);
    gfx.unk28 = 0;
    gfx.unk29 = 0;
    gfx.unk2A = 0x15;
    sub_80528AC(&gfx);
    m4aSongNumStart(38);
}

void Task_8065F5C_48(void)
{
    struct Task *tasks[4];
    ExtraStageResults_64_2 *sp14;
    ExtraStageResults_64_2 *sp18;
    ExtraStageResults_64_2 *sp1C;
    ExtraStageResults_64_2 *temp_sl;
    s16 var_r0;
    s8 *temp_r3_2;
    struct Task *t;
    u16 temp_r3;
    u32 var_r7;
    u8 var_r6;
    CongratulationsAnim_48 *state = (void *)((gCurTask)->data);

    sp14 = (void *)((state->taskC)->data);
    sp18 = (void *)((state->task18)->data);
    sp1C = (void *)((state->task1C)->data);
    temp_sl = (void *)((state->task20)->data);
    var_r7 = state->unk40 + 1;
    sub_805423C(&state->strc0);
    if (var_r7 == 0xB4) {
        for (var_r6 = 0; var_r6 < 4; var_r6++) {
            ExtraStageResults_64_2 *strc64;
            Sprite *s;
            tasks[var_r6] = TaskCreate(sub_806844C, sizeof(ExtraStageResults_64_2), 0x2120U, 0U, ((void*)0));
            strc64 = (void *)((tasks[var_r6])->data);
            s = &strc64->s;

            *((u32 *)&strc64->unk3C) = 0;
            if (var_r6 == 0) {
                strc64->qUnk54[0] = 0xC800;
                strc64->qUnk44[0] = 0x3C00;
                strc64->qUnk44[1] = 0x80;
                strc64->qUnk54[1] = 0xFFFFFC40;
                s->graphics.dest = &VRAM[0x10000] + 0x2E80;
                s->graphics.anim = 0x316;
                s->variant = 0;
                s->oamFlags = 0x4C0;
            } else if (var_r6 == 1) {
                strc64->qUnk54[0] = 0xC800;
                strc64->qUnk44[0] = 0;
                strc64->qUnk44[1] = 0x40;
                strc64->qUnk54[1] = 0xFFFFFC00;
                s->graphics.dest = &VRAM[0x10000] + 0x2FC0;
                s->graphics.anim = 0x317;
                s->variant = 0;
                s->oamFlags = 0x480;
            } else if (var_r6 == 2) {
                strc64->qUnk54[0] = 0xC800;
                strc64->qUnk44[0] = 0x7800;
                strc64->qUnk44[1] = 0x100;
                strc64->qUnk54[1] = 0xFFFFFC80;
                s->graphics.dest = &VRAM[0x10000] + 0x3260;
                s->graphics.anim = 0x318;
                s->variant = 0;
                s->oamFlags = 0x440;
            } else {
                strc64->qUnk54[0] = 0xC800;
                strc64->qUnk44[0] = 0xB400;
                strc64->qUnk44[1] = 0xC0;
                strc64->qUnk54[1] = 0xFFFFFB80;
                s->graphics.dest = &VRAM[0x10000] + 0x3620;
                s->graphics.anim = 0x319;
                s->variant = 0;
                s->oamFlags = 0x400;
            }
            s->x = 0xB4;
            s->y = 0x50;
            s->graphics.size = 0;
            s->animCursor = 0;
            s->qAnimDelay = 0;
            s->prevVariant = -1;
            s->animSpeed = ((int)((float)(1.0)*0x10));
            s->palId = 0;
            s->hitboxes[0].index = -1;
            s->frameFlags = 0x1000;
            state->tasks30[var_r6] = tasks[var_r6];
        }
    }
    if (var_r7 == 0x168) {
        state->tasks30[0]->main = Task_80684B4;
        state->tasks30[1]->main = Task_80684B4;
        state->tasks30[2]->main = Task_80684B4;
        state->tasks30[3]->main = Task_80684B4;
    }
    if (var_r7 > 0x190U) {
        var_r7 = 0;
        TaskDestroy(state->task10);
        state->task20->main = Task_8066E5C;
        state->task1C->main = Task_8066F30;
        state->task18->main = Task_8066628;
        state->taskC->main = Task_nullsub_8067050;
        gCurTask->main = Task_80661A8_48;
    }
    state->unk40 = var_r7;
    sp14->unk3C = var_r7;
    sp18->unk3C = var_r7;
    sp1C->unk3C = var_r7;
    temp_sl->unk3C = var_r7;
}

void Task_80661A8_48()
{
    ExtraStageResults_164 *sp0;
    ExtraStageResults_164 *sp4;
    ExtraStageResults_164 *sp8;
    s16 *temp_r3;
    u32 var_r5;
    void *temp_r1;
    void *temp_r3_2;
    void *temp_r4;
    void *strc64_2;
    void *strc64_3;
    void *strc64_4;
    struct Task *task14;
    struct Task *task18;
    struct Task *task1C;
    struct Task *task20;
    ExtraStageResults_164 *strc164_t14;
    ExtraStageResults_164 *strc164_t18;
    ExtraStageResults_164 *strc164_t1C;
    ExtraStageResults_164 *strc164_t20;
    ExtraStageResults_164 *strc164_t34;



    ExtraStageResults_64_2 *strc64;

    CongratulationsAnim_48 *state = (void *)((gCurTask)->data);

    sp0 = (void *)((state->task18)->data);
    sp4 = (void *)((state->task1C)->data);
    sp8 = (void *)((state->task20)->data);
    var_r5 = state->unk40 + 1;
    if (var_r5 == 0xD0) {

        strc64 = (void *)((state->tasks30[0])->data);
        strc64->qUnk44[0] = -((s32)((30)*256));
        strc64->qUnk54[0] = -((s32)((120)*256));
        strc64->qUnk44[1] = ((s32)((0.5)*256));
        strc64->qUnk54[1] = 0;

        strc64 = (void *)((state->tasks30[1])->data);
        strc64->qUnk44[0] = -((s32)((60)*256));
        strc64->qUnk54[0] = -((s32)((90)*256));
        strc64->qUnk44[1] = ((s32)((1.25)*256));
        strc64->qUnk54[1] = 0;

        strc64 = (void *)((state->tasks30[2])->data);
        strc64->qUnk44[0] = -((s32)((90)*256));
        strc64->qUnk54[0] = -((s32)((60)*256));
        strc64->qUnk44[1] = ((s32)((1.00)*256));
        strc64->qUnk54[1] = 0;

        strc64 = (void *)((state->tasks30[3])->data);
        strc64->qUnk44[0] = -((s32)((120)*256));
        strc64->qUnk54[0] = -((s32)((30)*256));
        strc64->qUnk44[1] = ((s32)((0.75)*256));
        strc64->qUnk54[1] = 0;

        state->tasks30[0]->main = sub_80683D8;
        state->tasks30[1]->main = sub_80683D8;
        state->tasks30[2]->main = sub_80683D8;
        state->tasks30[3]->main = sub_80683D8;
    }
    if (var_r5 > 0x118U) {
        var_r5 = 0;
        state->task20->main = Task_8066EBC;
        state->task1C->main = Task_8066F90;
        state->task18->main = Task_8066DF4;
        gCurTask->main = Task_80662D0_48;
    }
    state->unk40 = (s16)var_r5;
    sp0->unk3C = (s16)var_r5;
    sp4->unk3C = (s16)var_r5;
    sp8->unk3C = (s16)var_r5;
}

void Task_80662D0_48(void)
{
    s16 *temp_r2;
    struct Task *task14;
    struct Task *task18;
    struct Task *task1C;
    struct Task *task20;
    ExtraStageResults_164 *strc164_t18;
    ExtraStageResults_164 *strc164_t1C;
    ExtraStageResults_164 *strc164_t20;
    u32 unk3C;

    CongratulationsAnim_48 *state = (void *)((gCurTask)->data);

    task18 = state->task18;
    strc164_t18 = (void *)((task18)->data);
    task1C = state->task1C;
    strc164_t1C = (void *)((task1C)->data);
    task20 = state->task20;
    strc164_t20 = (void *)((task20)->data);
    unk3C = state->unk40 + 1;
    if (unk3C > 16) {
        unk3C = 0;
        state->tasks30[0]->main = Task_8068360;
        state->tasks30[1]->main = Task_8068360;
        state->tasks30[2]->main = Task_8068360;
        state->tasks30[3]->main = Task_8068360;
        task20->main = Task_80669A0;
        task1C->main = Task_8066FDC;
        task18->main = Task_80666E0;
        gCurTask->main = Task_806636C_48;
    }

    state->unk40 = unk3C;
    strc164_t18->unk3C = unk3C;
    strc164_t1C->unk3C = unk3C;
    strc164_t20->unk3C = unk3C;
}

void Task_806636C_48(void)
{
    s16 *temp_r2;
    struct Task *task14;
    struct Task *task18;
    struct Task *task1C;
    struct Task *task20;
    ExtraStageResults_164 *strc164_t14;
    ExtraStageResults_164 *strc164_t18;
    ExtraStageResults_164 *strc164_t1C;
    ExtraStageResults_164 *strc164_t20;
    u32 unk3C;

    CongratulationsAnim_48 *state = (void *)((gCurTask)->data);

    task18 = state->task18;
    strc164_t18 = (void *)((task18)->data);
    task1C = state->task1C;
    strc164_t1C = (void *)((task1C)->data);
    task20 = state->task20;
    strc164_t20 = (void *)((task20)->data);
    unk3C = state->unk40 + 1;
    if (unk3C > 400) {
        unk3C = 0;
        state->task14->main = Task_8066ACC;
        gCurTask->main = Task_80663EC_48;
    }
    if (unk3C == 0x12C) {
        strc164_t20->unk50[0] = 1;
    }
    state->unk40 = unk3C;
    strc164_t18->unk3C = unk3C;
    strc164_t1C->unk3C = unk3C;
    strc164_t20->unk3C = unk3C;
}

void Task_80663EC_48(void)
{
    s16 *temp_r2;
    struct Task *task14;
    struct Task *task18;
    struct Task *task1C;
    struct Task *task20;
    ExtraStageResults_164 *strc164_t14;
    ExtraStageResults_164 *strc164_t18;
    ExtraStageResults_164 *strc164_t1C;
    ExtraStageResults_164 *strc164_t20;
    u32 unk3C;

    CongratulationsAnim_48 *state = (void *)((gCurTask)->data);

    task18 = state->task18;
    strc164_t18 = (void *)((task18)->data);
    task14 = state->task14;
    strc164_t14 = (void *)((task14)->data);
    task1C = state->task1C;
    strc164_t1C = (void *)((task1C)->data);
    task20 = state->task20;
    strc164_t20 = (void *)((task20)->data);
    unk3C = state->unk40 + 1;
    if (unk3C == 0x3C) {
        task14->main = Task_8066BA4;
    }
    if (unk3C > 200) {
        unk3C = 0;
        state->taskC->main = Task_8067054;
        gCurTask->main = Task_8066478;
    }
    state->unk40 = unk3C;
    strc164_t18->unk3C = (unk3C + 0x3FF);
    strc164_t14->unk3C = unk3C;
    strc164_t1C->unk3C = unk3C;
    strc164_t20->unk3C = unk3C;
}

void Task_8066478(void)
{
    s16 *temp_r2;
    struct Task *temp_r6;
    struct Task *task14;
    struct Task *task18;
    struct Task *task1C;
    ExtraStageResults_164 *strc164;
    ExtraStageResults_164 *strc164_2;
    ExtraStageResults_164 *strc164_3;
    ExtraStageResults_164 *strc164_4;
    ExtraStageResults_164 *strc164_5;
    u32 var_r3;

    CongratulationsAnim_48 *state = (void *)((gCurTask)->data);

    task18 = state->task18;
    strc164_5 = (void *)((task18)->data);
    task14 = state->task14;
    strc164_2 = (void *)((state->task14)->data);
    task1C = state->task1C;
    strc164_3 = (void *)((task1C)->data);
    strc164 = (void *)((state->task20)->data);
    var_r3 = state->unk40 + 1;
    if (var_r3 > 0xF0U) {
        var_r3 = 0;
        state->task24->main = Task_8066D64;
        state->task28->main = Task_8066D64;
        state->task2C->main = Task_8066D64;
        task18->main = Task_8066768;
        state->taskC->main = Task_8067084;
        gCurTask->main = Task_8066520;
    }
    if (var_r3 == 1) {
        strc164->unk50[0] = var_r3;
    }
    state->unk40 = var_r3;
    strc164_5->unk3C = var_r3;
    strc164_2->unk3C = var_r3;
    strc164_3->unk3C = var_r3;
    strc164->unk3C = var_r3;
}


void Task_8066520(void)
{
    ExtraStageResults_164 *sp0;
    ExtraStageResults_164 *sp4;
    ExtraStageResults_164 *sp8;
    u32 temp_r5;
    ExtraStageResults_164 *temp_r6;
    ExtraStageResults_164 *temp_r7;
    ExtraStageResults_164 *temp_r8;
    ExtraStageResults_164 *temp_sl;
    ExtraStageResults_164 *temp_sb;
    CongratulationsAnim_48 *state = (void *)((gCurTask)->data);
    StrcUi_805423C *strc0;
    strc0 = &state->strc0;

    temp_sl = (void *)((state->taskC)->data);
    sp0 = (void *)((state->task24)->data);
    sp4 = (void *)((state->task28)->data);
    sp8 = (void *)((state->task2C)->data);
    temp_sb = (void *)((state->task18)->data);
    temp_r8 = (void *)((state->task14)->data);
    temp_r7 = (void *)((state->task1C)->data);
    temp_r6 = (void *)((state->task20)->data);

    temp_r5 = state->unk40 + 1;
    if (temp_r5 > 0x2BCU) {
        TasksDestroyInPriorityRange(0, 0xFFFF);
        gBackgroundsCopyQueueCursor = gBackgroundsCopyQueueIndex;;
        gBgSpritesCount = 0;
        gVramGraphicsCopyCursor = gVramGraphicsCopyQueueIndex;;
        CreateStaffCredits();
        return;
    } else {
        if (temp_r5 >= 0x29E) {
            if (temp_r5 == 0x29E) {
                strc0->unk0 = 0;
                strc0->unk2 = 1;
                strc0->unk4 = 1;
                strc0->unk6 = 0;
                strc0->unk8 = 0xC0;
                strc0->unkA = 1;
            }
            sub_805423C(strc0);
        }

        state->unk40 = temp_r5;
        temp_sl->unk3C = temp_r5;
        sp0->unk3C = temp_r5;
        sp4->unk3C = temp_r5;
        sp8->unk3C = temp_r5;
        temp_sb->unk3C = temp_r5;
        temp_r8->unk3C = temp_r5;
        temp_r7->unk3C = temp_r5;
        temp_r6->unk3C = temp_r5;
    }
}


void Task_8066628()
{
    s32 temp_r0;
    s32 temp_r0_2;
    u16 unk3C;

    ExtraStageResults_164 *strc164 = (void *)((gCurTask)->data);
    Sprite *s = &strc164->s;

    unk3C = strc164->unk3C;
    if (unk3C == 15) {
        s->graphics.anim = gUnknown_0868B418[gSelectedCharacter][0];
        s->variant = gUnknown_0868B418[gSelectedCharacter][1];
        s->prevVariant = -1;
    } else if (unk3C == 20) {
        s->graphics.anim = gUnknown_0868B428[gSelectedCharacter][0];
        s->variant = gUnknown_0868B428[gSelectedCharacter][1];
        s->prevVariant = -1;
    } else if (unk3C == 30) {
        s->graphics.anim = gUnknown_0868B438[gSelectedCharacter][0];
        s->variant = gUnknown_0868B438[gSelectedCharacter][1];
        s->prevVariant = -1;
    }

    if (unk3C > 20) {
        strc164->unk48 -= ((s32)((8)*256));
        if (strc164->unk48 < -((s32)((64)*256))) {
            strc164->unk48 = -((s32)((64)*256));
        }
        s->y = ((int)((strc164->unk48) >> 8));

        strc164->unk40 -= strc164->unk44;
        if (strc164->unk40 < 0) {
            strc164->unk40 = 0;
        }
        s->x = ((int)((strc164->unk40) >> 8));
    }

    UpdateSpriteAnimation(s);
    DisplaySprite(s);
}

void Task_80666E0()
{
    s32 temp_r0;
    u32 temp_r4;

    ExtraStageResults_164 *strc164 = (void *)((gCurTask)->data);
    Sprite *s = &strc164->s;

    temp_r4 = strc164->unk3C;
    if (temp_r4 == 0x12C) {
        s->graphics.anim = gUnknown_0868B448[gSelectedCharacter][0];
        s->variant = gUnknown_0868B448[gSelectedCharacter][1];
        s->prevVariant = 0xFF;
    }

    strc164->unk48 = strc164->unk48 + ((gSineTable[((temp_r4 % 256u) * 4)]) >> 8);
    s->y = ((int)((strc164->unk48) >> 8));
    UpdateSpriteAnimation(s);
    DisplaySprite(s);
}

void Task_8066768()
{
    SpriteTransform *tf;
    s32 temp_r0;
    s16 temp_r0_2;
    s16 temp_r0_3;
    s32 var_r1;
    u16 unk3C;
    u16 var_r0;
    void *temp_r2;

    ExtraStageResults_164 *strc164 = (void *)((gCurTask)->data);
    Sprite *s = &strc164->s;

    tf = &strc164->transform;
    unk3C = strc164->unk3C;
    if (unk3C == 1) {
        s->graphics.anim = gUnknown_0868B458[gSelectedCharacter][0];
        s->variant = gUnknown_0868B458[gSelectedCharacter][1];
        s->prevVariant = -1;
    } else if (unk3C == 0xF0) {
        s->graphics.anim = gUnknown_0868B468[gSelectedCharacter][0];
        s->variant = gUnknown_0868B468[gSelectedCharacter][1];
        s->prevVariant = -1;
        strc164->unk4C = -0x400;
    }
    if (unk3C >= 0x12C) {
        if (unk3C == 0x12C) {
            s->graphics.anim = gUnknown_0868B478[gSelectedCharacter][0];
            s->variant = gUnknown_0868B478[gSelectedCharacter][1];
            s->prevVariant = -1;
            tf->rotation = 0;
            temp_r0 = ({((10) != 0) ? ((s32)(((s32)((7)*256))) / (s32)(10)) : 0;});
            tf->qScaleX = temp_r0;
            tf->qScaleY = temp_r0;
            tf->x = (s16)(u16)s->x;
            tf->y = (s16)(u16)s->y;
        }
        strc164->unk4C += 0x1E;
        strc164->unk48 += strc164->unk4C;
    } else {
        strc164->unk48 += (((int)(((gSineTable[(((unk3C % 256u) * 4))])) >> 6)) >> 0x2);
    }

    s->y = ((int)((strc164->unk48) >> 8));

    if (unk3C >= 300) {
        if (unk3C == 300) {
            tf->x = tf->x - gUnknown_0868B488[0][gSelectedCharacter][0];
            tf->y = s->y - gUnknown_0868B488[0][gSelectedCharacter][0];
        } else if (unk3C == 301) {
            tf->x = gUnknown_0868B488[1][gSelectedCharacter][0] + (((int)(((gSineTable[(44)])) >> 6)) >> 6) + tf->x;
            tf->y = gUnknown_0868B488[1][gSelectedCharacter][0] + s->y;
        } else {
            tf->x = ((gSineTable[(((unk3C - 300) * 12) + 0x20)]) >> 12) + (u16)tf->x;
            tf->y = (u16)s->y;
        }

        tf->qScaleX += ((s32)((4. / 256.)*256));
        if (tf->qScaleX > ((s32)((1.5)*256))) {
            tf->qScaleX = ((s32)((1.5)*256));
        }

        tf->qScaleY += ((s32)((4. / 256.)*256));
        if (tf->qScaleY > ((s32)((1.5)*256))) {
            tf->qScaleY = ((s32)((1.5)*256));
        }
        s->frameFlags = 0x1061;
        TransformSprite(s, tf);
    } else {
        s->frameFlags = 0x1000;
    }
    UpdateSpriteAnimation(s);
    if (unk3C <= 360) {
        DisplaySprite(s);
    }
}

void Task_80669A0()
{
    u8 *var_r1;
    s32 temp_r0;
    u16 unk3C;

    ExtraStageResults_164 *strc164 = (void *)((gCurTask)->data);
    Sprite *s = &strc164->s;

    unk3C = strc164->unk3C;
    if (unk3C == 0x12C) {
        if (strc164->unk50[0] != 0) {
            s->graphics.anim = gUnknown_0868B408[gSelectedCharacter][0];
            s->variant = gUnknown_0868B408[gSelectedCharacter][1];
            s->prevVariant = -1;
            strc164->unk50[0] = 0;
        }
    } else if (unk3C == 1) {
        if (strc164->unk50[0] != 0) {
            s->graphics.anim = gUnknown_0868B3F8[gSelectedCharacter][0];
            s->variant = gUnknown_0868B3F8[gSelectedCharacter][1];
            s->prevVariant = -1;
            strc164->unk50[0] = 0;
        }
    }

    strc164->unk48 += ((int)(((gSineTable[((unk3C % 256u) * 4)])) >> 8));
    s->y = ((int)((strc164->unk48) >> 8));
    UpdateSpriteAnimation(s);
    DisplaySprite(s);
}

void Task_8066A5C_164()
{
    s32 modRes;

    ExtraStageResults_164 *strc164 = (void *)((gCurTask)->data);
    Sprite *s = &strc164->s;

    u16 unk3C = strc164->unk3C;

    if (++strc164->unk15C > 63) {
        strc164->unk15C = 0;
    }

    modRes = ({((64) != 0) ? ((s32)(unk3C) % (s32)(64)) : 0;});
    strc164->unk50[strc164->unk15C] = (gSineTable[(modRes * 8)]) >> 10;
    strc164->unkD6[strc164->unk15C] = (gSineTable[(modRes * 8)]) >> 10;
}

void Task_8066ACC(void)
{
    s16 *temp_r4;
    s32 temp_r1;
    s32 temp_r2;
    u8 *temp_r5;
    u8 i;
    s32 modRes;

    ExtraStageResults_164 *strc164 = (void *)((gCurTask)->data);
    Sprite *s = &strc164->s;

    u16 unk3C = strc164->unk3C;

    if (++strc164->unk15C > 63) {
        strc164->unk15C = 0;
    }

    modRes = ({((64) != 0) ? ((s32)(unk3C) % (s32)(64)) : 0;});
    strc164->unk50[strc164->unk15C] = (gSineTable[(modRes * 8)]) >> 10;
    strc164->unkD6[strc164->unk15C] = (gSineTable[(modRes * 8)]) >> 10;
    UpdateSpriteAnimation(s);

    for (i = 0; i < (sizeof(gUnknown_0868B498) / sizeof((gUnknown_0868B498)[0])); i++) {
        s32 index;
        s32 v = gUnknown_0868B498[i][0] + 0xF8;
        s->x = v - unk3C;
        index = ((u8)strc164->unk15C + i * 8) & 0x3F;
        s->y = gUnknown_0868B498[i][1] + (240 / 2) + strc164->unkD6[index];
        DisplaySprite(s);
    }
}

void Task_8066BA4(void)
{
    s16 *temp_r4;
    s32 temp_r1;
    s32 temp_r2;
    u8 *temp_r5;
    u8 i;
    s32 modRes;

    ExtraStageResults_164 *strc164 = (void *)((gCurTask)->data);
    Sprite *s = &strc164->s;

    u16 unk3C = strc164->unk3C;

    if (++strc164->unk15C > 63) {
        strc164->unk15C = 0;
    }

    modRes = ({((64) != 0) ? ((s32)(unk3C) % (s32)(64)) : 0;});
    strc164->unk50[strc164->unk15C] = (gSineTable[(modRes * 8)]) >> 10;
    strc164->unkD6[strc164->unk15C] = (gSineTable[(modRes * 8)]) >> 10;
    UpdateSpriteAnimation(s);

    for (i = 0; i < 8; i++) {
        s32 index;
        s32 v;
        s->x = gUnknown_0868B498[i][0] + 0xBC;
        index = ((u8)strc164->unk15C + i * 8) & 0x3F;
        s->y = gUnknown_0868B498[i][1] + (240 / 2) + strc164->unkD6[index];
        DisplaySprite(s);
    }
}

void Task_8066C78_164()
{
    u32 unk3C;
    s32 sp0;
    s32 temp_r0_3;
    s32 temp_r0_4;
    s32 temp_r2;
    s32 var_r4;
    u16 *temp_r1;
    u16 temp_r0;
    u8 *temp_r5;
    u8 *var_r2;
    u8 *var_r3;
    u8 temp_r0_2;
    u8 var_r8;

    ExtraStageResults_164 *strc164 = (void *)((gCurTask)->data);
    Sprite *s = &strc164->s;

    unk3C = ++strc164->unk3C;
    s->prevVariant = -1;
    UpdateSpriteAnimation(s);
    for (var_r8 = 0; var_r8 < 15; var_r8++) {
        if ((unk3C + var_r8) & 0xF) {
            temp_r2 = var_r8 * 2;
            strc164->unkD6[var_r8] -= 0x10;
        } else {
            s32 rnd2;
            temp_r0_3 = ({ gPseudoRandom = (gPseudoRandom * 0x196225) + 0x3C6EF35F; gPseudoRandom; });
            strc164->unkD6[var_r8] = ({((40) != 0) ? ((s32)(temp_r0_3) % (s32)(40)) : 0;}) + 0x8C;
            rnd2 = ({ gPseudoRandom = (gPseudoRandom * 0x196225) + 0x3C6EF35F; gPseudoRandom; });
            strc164->unk50[var_r8] = ({((0xDC) != 0) ? ((s32)(rnd2) % (s32)(0xDC)) : 0;}) + 0x14;
            var_r3 = temp_r5;
        }
        s->x = strc164->unk50[var_r8];
        s->y = strc164->unkD6[var_r8];
        DisplaySprite(s);
    }
}

void Task_8066D64()
{
    u32 unk3C;

    ExtraStageResults_64_2 *strc64 = (void *)((gCurTask)->data);
    Sprite *s = &strc64->s;

    unk3C = strc64->unk3C;

    if (unk3C > gUnknown_0868B4BE[strc64->qUnk44[0]]) {
        unk3C -= gUnknown_0868B4BE[strc64->qUnk44[0]];
        unk3C *= 3;
        s->x = (320 / 2);
        s->y = 180 - unk3C;
        if (s->y < gUnknown_0868B4B8[strc64->qUnk44[0]]) {
            s->y = gUnknown_0868B4B8[strc64->qUnk44[0]];
        }
        UpdateSpriteAnimation(s);
        DisplaySprite(s);
    }
}

void Task_nullsub_8066DC8_164(void) { ExtraStageResults_164 *strc164; }

void Task_nullsub_8066DCC(void) { }

void Task_8066DD0_164()
{
    ExtraStageResults_64_2 *strc64 = (void *)((gCurTask)->data);
    Sprite *s = &strc64->s;

    UpdateSpriteAnimation(s);
    DisplaySprite(s);
}

void Task_8066DF4()
{
    s32 temp_r0;
    s32 temp_r0_2;

    ExtraStageResults_64_2 *strc64 = (void *)((gCurTask)->data);
    Sprite *s = &strc64->s;
    u16 unk3C = strc64->unk3C;

    strc64->qUnk40 += strc64->qUnk44[0];

    s->x = ((int)((strc64->qUnk40) >> 8)) - 20;

    strc64->qUnk44[1] += ((s32)((8)*256));
    s->y = (s16)((s32)strc64->qUnk44[1] >> 8);

    UpdateSpriteAnimation(s);
    DisplaySprite(s);
}


void sub_8066E34(void)
{
    ExtraStageResults_64_2 *strc64 = (void *)((gCurTask)->data);
    Sprite *s = &strc64->s;

    UpdateSpriteAnimation(s);
    DisplaySprite(s);
}

void Task_8066E58_164(void) { }


void Task_8066E5C()
{
    s32 temp_r0;
    s32 temp_r0_2;

    ExtraStageResults_64_2 *strc64 = (void *)((gCurTask)->data);
    Sprite *s = &strc64->s;
    u16 unk3C = strc64->unk3C;

    strc64->qUnk40 -= strc64->qUnk44[0];
    if (strc64->qUnk40 < 0) {
        strc64->qUnk40 = 0;
    }

    s->x = ((int)((strc64->qUnk40) >> 8));

    if (unk3C > 20) {
        strc64->qUnk44[1] -= ((s32)((8)*256));
        if (strc64->qUnk44[1] < -((s32)((30)*256))) {
            strc64->qUnk44[1] = -((s32)((30)*256));
        }
        s->y = (s16)((s32)strc64->qUnk44[1] >> 8);
    }
    UpdateSpriteAnimation(s);
    DisplaySprite(s);
}

void Task_8066EBC()
{
    s32 temp_r0;
    s32 temp_r0_2;

    ExtraStageResults_64_2 *strc64 = (void *)((gCurTask)->data);
    Sprite *s = &strc64->s;
    u16 unk3C = strc64->unk3C;

    strc64->qUnk40 += strc64->qUnk44[0];
    if (strc64->qUnk40 < 0) {
        strc64->qUnk40 = 0;
    }

    s->x = ((int)((strc64->qUnk40) >> 8));

    strc64->qUnk44[1] += ((s32)((8)*256));

    if (strc64->qUnk44[1] < -((s32)((30)*256))) {
        strc64->qUnk44[1] = -((s32)((30)*256));
    }
    s->y = (s16)((s32)strc64->qUnk44[1] >> 8);

    UpdateSpriteAnimation(s);
    DisplaySprite(s);
}

void Task_8066F14_164(void)
{
    ExtraStageResults_164 *strc164 = (void *)((gCurTask)->data);
    Sprite *s = &strc164->s;

    UpdateSpriteAnimation(s);
}

void Task_8066F30()
{
    s32 temp_r0;
    s32 temp_r0_2;

    ExtraStageResults_64_2 *strc64 = (void *)((gCurTask)->data);
    Sprite *s = &strc64->s;
    u16 unk3C = strc64->unk3C;

    strc64->qUnk40 -= strc64->qUnk44[0];
    if (strc64->qUnk40 < 0) {
        strc64->qUnk40 = 0;
    }

    s->x = ((int)((strc64->qUnk40) >> 8));

    if (unk3C > 20) {
        strc64->qUnk44[1] -= ((s32)((8)*256));
        if (strc64->qUnk44[1] < -((s32)((30)*256))) {
            strc64->qUnk44[1] = -((s32)((30)*256));
        }
        s->y = (s16)((s32)strc64->qUnk44[1] >> 8);
    }
    UpdateSpriteAnimation(s);
    DisplaySprite(s);
}

void Task_8066F90()
{
    s32 temp_r0;
    s32 temp_r0_2;

    ExtraStageResults_64_2 *strc64 = (void *)((gCurTask)->data);
    Sprite *s = &strc64->s;

    strc64->qUnk40 += strc64->qUnk44[0];
    if (strc64->qUnk40 < 0) {
        strc64->qUnk40 = 0;
    }
    s->x = ((int)((strc64->qUnk40) >> 8));
    strc64->qUnk44[1] += ((s32)((8)*256));
    s->y = ((int)((strc64->qUnk44[1]) >> 8));
    UpdateSpriteAnimation(s);
    DisplaySprite(s);
}

void Task_8066FDC(void)
{
    ExtraStageResults_64_2 *strc64 = (void *)((gCurTask)->data);
    Sprite *s = &strc64->s;
    u16 unk3C = strc64->unk3C;

    strc64->qUnk44[1] += ((gSineTable[((unk3C & 0xFF) * 4)]) >> 8);
    s->y = ((int)((strc64->qUnk44[1]) >> 8));

    UpdateSpriteAnimation(s);
    DisplaySprite(s);
}

void Task_8067020_164(void)
{
    ExtraStageResults_164 *strc164 = (void *)((gCurTask)->data);
    Sprite *s = &strc164->s;

    if (({((2) != 0) ? ((s32)(strc164->unk3C) % (s32)(2)) : 0;}) == 0) {
        gBgScrollRegs[0][1]++;
    }
}

void Task_nullsub_8067050(void) { }

void Task_8067054(void)
{
    ExtraStageResults_64_2 *strc64 = (void *)((gCurTask)->data);
    Sprite *s = &strc64->s;

    s->prevVariant = -1;
    UpdateSpriteAnimation(s);
    DisplaySprite(s);
}

void Task_8067084()
{
    ExtraStageResults_64_2 *strc64 = (void *)((gCurTask)->data);
    Sprite *s = &strc64->s;

    if (strc64->unk3C >= 360) {
        if (strc64->unk3C == 360) {
            s->graphics.anim = gUnknown_0868B4A8[gSelectedCharacter][0];
            s->variant = gUnknown_0868B4A8[gSelectedCharacter][1];
            s->prevVariant = -1;
        }
        UpdateSpriteAnimation(s);
        DisplaySprite(s);
    }
}

void CreateExtraStageResults(void)
{
    struct Task *tasks[4];
    Strc_80528AC gfx;
    struct Task *task64_0;
    struct Task *task64_2;
    struct Task *task64_1;
    StrcUi_805423C *temp_r0_11;
    s16 var_r0;
    s16 var_r1;
    s8 *temp_r1_5;
    s8 *temp_r1_6;
    struct Task *task64_3;
    struct Task *task64_4;
    struct Task *temp_r2_6;
    ExtraStageResultsState *state;
    ExtraStageResults_64 *strc64;
    Sprite *s;
    u8 i, i2;

    i = 0;
    (&gLoadedSaveGame)->unlockedLevels[0] = 0xF;
    (&gLoadedSaveGame)->unk424 = 1;
    {
        u16 prevIME, prevIE, prevDispstat;

        m4aMPlayAllStop();
        m4aSoundVSyncOff();

        gFlags |= 0x8000;

        prevIE = (*(reg_u16 *)(REG_BASE + 0x200));
        prevIME = (*(reg_u16 *)(REG_BASE + 0x208));
        prevDispstat = (*(reg_u16 *)(REG_BASE + 0x4));

        (*(reg_u16 *)(REG_BASE + 0x200)) = 0;
        (*(reg_u16 *)(REG_BASE + 0x200));
        (*(reg_u16 *)(REG_BASE + 0x208)) = 0;
        (*(reg_u16 *)(REG_BASE + 0x208));
        (*(reg_u16 *)(REG_BASE + 0x4)) = 0;
        (*(reg_u16 *)(REG_BASE + 0x4));

        gFlags &= ~0x4;

        SlowDmaStop(0);
        SlowDmaStop(1);
        SlowDmaStop(2);
        SlowDmaStop(3);

        WriteSaveGame();

        (*(reg_u16 *)(REG_BASE + 0x200)) = prevIE;
        (*(reg_u16 *)(REG_BASE + 0x200));
        (*(reg_u16 *)(REG_BASE + 0x208)) = prevIME;
        (*(reg_u16 *)(REG_BASE + 0x208));
        (*(reg_u16 *)(REG_BASE + 0x4)) = prevDispstat;
        (*(reg_u16 *)(REG_BASE + 0x4));

        m4aSoundVSyncOn();

        gFlags &= ~0x8000;
    }

    TasksDestroyInPriorityRange(0, 0xFFFF);
    gBackgroundsCopyQueueCursor = gBackgroundsCopyQueueIndex;;
    gBgSpritesCount = 0;
    gVramGraphicsCopyCursor = gVramGraphicsCopyQueueIndex;;

    sub_80535FC();
    UiGfxStackInit();
    gDispCnt = 0x1740;
    gBgCntRegs[0] = 0x8583;
    gBgCntRegs[1] = 0x9E86;
    gBgCntRegs[2] = 0x9B89;
    gBgScrollRegs[0][0] = 0;
    gBgScrollRegs[0][1] = 0;
    gBgScrollRegs[1][0] = 0;
    gBgScrollRegs[1][1] = 0;
    gBgScrollRegs[2][0] = 0;
    gBgScrollRegs[2][1] = 0;
    task64_0 = TaskCreate(Task_8068628, sizeof(ExtraStageResults_64), 0x2120U, 0U, ((void*)0));
    strc64 = (void *)((task64_0)->data);
    s = &strc64->s;
    strc64->unk3C = 0;
    strc64->qUnk44[0] = ((s32)((160)*256));
    strc64->qUnk54[0] = -((s32)((32)*256));
    s->graphics.dest = &VRAM[0x10000] + 0x2560;
    s->graphics.anim = 732;
    s->variant = 0;

    s->x = 160;
    s->y = -32;




    s->oamFlags = ((3) << 6);
    s->graphics.size = 0;
    s->animCursor = 0;
    s->qAnimDelay = 0;
    s->prevVariant = -1;
    s->animSpeed = 0x10;
    s->palId = 0;
    s->hitboxes[0].index = -1;
    s->frameFlags = 0x1000;

    task64_1 = TaskCreate(Task_8068620, sizeof(ExtraStageResults_64), 0x2120U, 0U, ((void*)0));
    strc64 = (void *)((task64_1)->data);
    s = &strc64->s;
    strc64->unk3C = 0;
    strc64->qUnk44[0] = ((s32)(((320 / 2))*256));
    strc64->qUnk54[0] = ((s32)(((240 / 2) + 10)*256));
    s->graphics.dest = &VRAM[0x10000] + 0x440;
    s->graphics.anim = 805;
    s->variant = 1;
    s->x = (320 / 2);
    s->y = (240 / 2);
    s->oamFlags = ((3) << 6);
    s->graphics.size = 0;
    s->animCursor = 0;
    s->qAnimDelay = 0;
    s->prevVariant = -1;
    s->animSpeed = 0x10;
    s->palId = 0;
    s->hitboxes[0].index = -1;
    s->frameFlags = 0;

    task64_2 = TaskCreate(Task_8068624, sizeof(ExtraStageResults_64), 0x2120U, 0U, ((void*)0));
    strc64 = (void *)((task64_2)->data);
    s = &strc64->s;
    strc64->unk3C = 0;
    strc64->qUnk44[0] = ((s32)(((320 / 2))*256));
    strc64->qUnk54[0] = ((s32)(((240 / 2) + 10)*256));
    s->graphics.dest = &VRAM[0x10000] + 0x560;
    s->graphics.anim = 736;
    s->variant = 0;
    s->x = (320 / 2);
    s->y = (240 / 2);
    s->oamFlags = ((6) << 6);
    s->graphics.size = 0;
    s->animCursor = 0;
    s->qAnimDelay = 0;
    s->prevVariant = -1;
    s->animSpeed = 0x10;
    s->palId = 0;
    s->hitboxes[0].index = -1;
    s->frameFlags = 0x1000;

    task64_3 = TaskCreate(Task_806806C, sizeof(ExtraStageResults_64), 0x2120U, 0U, ((void*)0));
    strc64 = (void *)((task64_3)->data);
    s = &strc64->s;
    strc64->unk3C = 0;
    strc64->qUnk44[0] = 105;
    strc64->qUnk54[0] = 17;
    strc64->qUnk44[1] = 47;
    strc64->qUnk54[1] = 95;
    strc64->qUnk44[2] = 213;
    strc64->qUnk54[2] = 69;
    strc64->qUnk44[3] = 168;
    strc64->qUnk54[3] = 95;
    s->graphics.dest = &VRAM[0x10000] + 0x20;
    s->graphics.anim = 731;
    s->variant = 0;
    s->x = (320 / 2);
    s->y = (240 / 2);
    s->oamFlags = ((15) << 6);
    s->graphics.size = 0;
    s->animCursor = 0;
    s->qAnimDelay = 0;
    s->prevVariant = -1;
    s->animSpeed = 0x10;
    s->palId = 0;
    s->hitboxes[0].index = -1;
    s->frameFlags = 0x2000;

    for (i2 = 0; i2 < (sizeof(tasks) / sizeof((tasks)[0])); i2++) {
        struct Task *t = TaskCreate(Task_nullsub_8068448, sizeof(ExtraStageResults_64_2), 0x2120U, 0U, ((void*)0));
        tasks[i2] = t;
        strc64 = (void *)((t)->data);
        s = &strc64->s;
        strc64->unk3C = 0;
        if (i2 == 0) {
            strc64->qUnk54[0] = ((s32)((50)*256));
            strc64->qUnk44[0] = ((s32)((80)*256));
            strc64->qUnk44[1] = 0x80;
            strc64->qUnk54[1] = 0;
            s->graphics.dest = &VRAM[0x10000] + 0x6060;
            s->graphics.anim = 790;
            s->variant = 0;
        } else if (i2 == 1) {
            strc64->qUnk54[0] = ((s32)((100)*256));
            strc64->qUnk44[0] = ((s32)((40)*256));
            strc64->qUnk44[1] = 0x40;
            strc64->qUnk54[1] = 0U;
            s->graphics.dest = &VRAM[0x10000] + 0x61A0;
            s->graphics.anim = 791;
            s->variant = 0;
        } else if (i2 == 2) {
            strc64->qUnk54[0] = ((s32)((120)*256));
            strc64->qUnk44[0] = ((s32)((120)*256));
            strc64->qUnk44[1] = 0x100;
            strc64->qUnk54[1] = 0U;
            s->graphics.dest = &VRAM[0x10000] + 0x6440;
            s->graphics.anim = 792;
            s->variant = 0;
        } else {
            strc64->qUnk54[0] = ((s32)((20)*256));
            strc64->qUnk44[0] = ((s32)((160)*256));
            strc64->qUnk44[1] = 0xC0;
            strc64->qUnk54[1] = 0U;
            s->graphics.dest = &VRAM[0x10000] + 0x70A0;
            s->graphics.anim = 793;
            s->variant = 0;
        }

        s->x = 180;
        s->y = 80;
        s->oamFlags = ((12) << 6);
        s->graphics.size = 0;
        s->animCursor = 0;
        s->qAnimDelay = 0;
        s->prevVariant = -1;
        s->animSpeed = 0x10;
        s->palId = 0;
        s->hitboxes[0].index = -1;
        s->frameFlags = 0x1000;
    }

    task64_4 = TaskCreate(Task_8067F38, sizeof(ExtraStageResults_64), 0x2120U, 0U, ((void*)0));
    strc64 = (void *)((task64_4)->data);
    s = &strc64->s;
    strc64->unk3C = 0;
    strc64->qUnk54[0] = 0;
    strc64->qUnk44[0] = 0;
    strc64->qUnk54[1] = 0;
    strc64->qUnk44[1] = 0;
    strc64->qUnk54[2] = 0;
    strc64->qUnk44[2] = 0;
    s->graphics.dest = &VRAM[0x10000] + 0xA0;
    if ((&gLoadedSaveGame)->uiLanguage != 0) {
        s->graphics.anim = 783;
        s->variant = 0;
    } else {
        s->graphics.anim = 786;
        s->variant = 0;
    }
    s->x = 120;
    s->y = 80;
    s->oamFlags = ((0) << 6);
    s->graphics.size = 0;
    s->animCursor = 0;
    s->qAnimDelay = 0;
    s->prevVariant = -1;
    s->animSpeed = 0x10;
    s->palId = 0;
    s->hitboxes[0].index = -1;
    s->frameFlags = 0x80;
    temp_r2_6 = TaskCreate(Task_8067824, sizeof(ExtraStageResultsState), 0x2100U, 0U, ((void*)0));
    state = (void *)((temp_r2_6)->data);
    state->unk38 = 0;
    state->unk3C = 0x3C;
    state->unk40 = 1;
    state->taskC = task64_4;
    state->task14 = task64_0;
    state->task10 = task64_3;
    state->task18 = task64_2;
    state->task1C = task64_1;
    state->tasks20[0] = tasks[0];
    state->tasks20[1] = tasks[1];
    state->tasks20[2] = tasks[2];
    state->tasks2C[0] = tasks[3];
    state->unk44 = 0;
    state->unk48 = 0;
    state->strc0.unk0 = 0;
    state->strc0.unk2 = 1;
    state->strc0.unk4 = 8;
    state->strc0.unk6 = 0;
    state->strc0.unk8 = 0x80;
    state->strc0.unkA = 1;
    sub_80543A4(&state->strc0);

    gfx.uiGfxID = 128;
    gfx.unk2B = 2;
    gfx.tiles = &gUnknown_086C5D74[0];
    gfx.tilesSize = sizeof(gUnknown_086C5D74);
    gfx.palette = &gUnknown_086C5B74[0];
    gfx.paletteSize = sizeof(gUnknown_086C5B74);
    gfx.layout = &gUnknown_086C7C34[0];
    gfx.layoutSize = sizeof(gUnknown_086C7C34);
    gfx.unk28 = 0;
    gfx.unk29 = 0;
    gfx.unk2A = 0x15;
    sub_80528AC(&gfx);

    gfx.uiGfxID = 128;
    gfx.unk2B = 0;
    gfx.tiles = &gUnknown_086BF9B4[0];
    gfx.tilesSize = sizeof(gUnknown_086BF9B4);
    gfx.palette = &gUnknown_086BF7B4[0];
    gfx.paletteSize = sizeof(gUnknown_086BF7B4);
    gfx.layout = &gUnknown_086C5174[0];
    gfx.layoutSize = sizeof(gUnknown_086C5174);
    gfx.unk28 = 0;
    gfx.unk29 = 2;
    gfx.unk2A = 0x15;
    sub_80528AC(&gfx);

    gfx.uiGfxID = 128;
    gfx.unk2B = 1;
    gfx.tiles = &gUnknown_086C8834[0];
    gfx.tilesSize = sizeof(gUnknown_086C8834);
    gfx.palette = &gUnknown_086C8634[0];
    gfx.paletteSize = sizeof(gUnknown_086C8634);
    gfx.layout = &gUnknown_086CBD74[0];
    gfx.layoutSize = sizeof(gUnknown_086CBD74);
    gfx.unk28 = 0;
    gfx.unk29 = 1;
    gfx.unk2A = 0x15;
    sub_80528AC(&gfx);
}

void sub_80677C4(s32 i)
{
    Strc_80528AC gfx;

    if (i == 1) {
        UiGfxStackInit();
        gfx.uiGfxID = 128;
        gfx.unk2B = 0;
        gfx.tiles = &gUnknown_086BBE34[0];
        gfx.tilesSize = sizeof(gUnknown_086BBE34);
        gfx.palette = &gUnknown_086BBC34[0];
        gfx.paletteSize = sizeof(gUnknown_086BBC34);
        gfx.layout = &gUnknown_086BE7B4[0];
        gfx.layoutSize = sizeof(gUnknown_086BE7B4);
        gfx.unk28 = 0;
        gfx.unk29 = 0;
        gfx.unk2A = 0x15;
        sub_80528AC(&gfx);
    }
}

void Task_8067824(void)
{
    ExtraStageResultsState *state = (void *)((gCurTask)->data);
    ExtraStageResults_64 *strc64_0 = (void *)((state->taskC)->data);
    ExtraStageResults_64 *strc64_1 = (void *)((state->task10)->data);
    s32 v0;
    s32 v1;

    u32 temp_r6 = (state->unk38 + 1);
    sub_80684F4__inline(temp_r6);

    if (temp_r6 == state->unk3C) {
        m4aSongNumStart(39);
    }

    v0 = ({((0x80) != 0) ? ((s32)(0x2000) / (s32)(0x80)) : 0;});
    v1 = state->unk3C;
    v1 += 0x21C;
    if ((v0 + v1) < temp_r6) {
        temp_r6 = 0;
        state->unk38 = temp_r6;
        strc64_0->unk3C = temp_r6;
        TaskDestroy(state->task10);
        state->taskC->main = Task_806853C;
        gCurTask->main = sub_8067928;
    } else {
        s32 divRes2 = ({((0x80) != 0) ? ((s32)(0x2000) / (s32)(0x80)) : 0;});
        s32 v0 = ({((0x80) != 0) ? ((s32)(0x2000) / (s32)(0x80)) : 0;});
        s32 v1 = state->unk3C;
        v1 += 0x21C;
        if ((divRes2 + v1 - v0) == temp_r6) {
            state->strc0.unk0 = 0;
            state->strc0.unk2 = 1;
            state->strc0.unk4 = 1;
            state->strc0.unk6 = 0;
            state->strc0.unk8 = 0x80;
            state->strc0.unkA = 1;
        }

        sub_805423C(&state->strc0);
        state->unk38 = temp_r6;
        strc64_0->unk3C = temp_r6;
        strc64_1->unk3C = temp_r6;
        strc64_0->unk40 = state->unk3C;
        strc64_1->unk40 = state->unk3C;
    }
}

void sub_8067928()
{
    ExtraStageResults_64 *task;
    u32 var_r5;

    ExtraStageResultsState *state = (void *)((gCurTask)->data);

    task = (void *)((state->taskC)->data);
    var_r5 = state->unk38 + 1;
    if ((u32)(({((0x80) != 0) ? ((s32)(0x2000) / (s32)(0x80)) : 0;}) + 600) < var_r5) {
        gDispCnt = 0x1140;
        gBgCntRegs[0] = 0x9B83;
        state->strc0.unk0 = 0;
        state->strc0.unk2 = 1;
        state->strc0.unk4 = 2;
        state->strc0.unk6 = 0;
        state->strc0.unk8 = 0x80;
        state->strc0.unkA = 1;
        sub_805423C(&state->strc0);
        var_r5 = 0;
        state->tasks20[0]->main = Task_8068360;
        state->tasks20[1]->main = Task_8068360;
        state->tasks20[2]->main = Task_8068360;
        state->tasks2C[0]->main = Task_8068360;
        state->task14->main = Task_806862C;
        state->task18->main = Task_8068214;
        state->task1C->main = Task_8068148;
        state->taskC->main = Task_806856C;
        gCurTask->main = Task_80679E4;
    }

    state->unk38 = var_r5;
    task->unk3C = var_r5;
}

void Task_80679E4()
{
    ExtraStageResults_64 *sp0;
    ExtraStageResults_64 *sp4;
    ExtraStageResults_64 *temp_sb;
    ExtraStageResults_64 *temp_sl;
    u32 temp_r5;

    ExtraStageResultsState *state = (void *)((gCurTask)->data);

    temp_sb = (void *)((state->taskC)->data);
    sp0 = (void *)((state->task1C)->data);
    sp4 = (void *)((state->task14)->data);
    temp_sl = (void *)((state->task18)->data);
    temp_r5 = state->unk38 + 1;
    sub_80677C4(temp_r5);
    gBgScrollRegs[0][1] = 0x128;
    if (temp_r5 > 0x336U) {
        temp_r5 = 0;
        state->unk38 = 0;
        temp_sb->unk3C = 0U;
        TaskDestroy(state->tasks20[0]);
        TaskDestroy(state->tasks20[1]);
        TaskDestroy(state->tasks20[2]);
        TaskDestroy(state->tasks2C[0]);
        TaskDestroy(state->task1C);
        TaskDestroy(state->task14);
        TaskDestroy(state->task18);
        state->taskC->main = Task_8068570;
        gCurTask->main = Task_8067B14;
        gBgSprites_Unknown1[0] = 0;
        gBgSprites_Unknown2[0][0] = 0;
        gBgSprites_Unknown2[0][1] = 0;
        gBgSprites_Unknown2[0][2] = 0xFF;
        gBgSprites_Unknown2[0][3] = 0x14;
        gBgScrollRegs[0][1] = 0;
        state->strc0.unk0 = 0;
        state->strc0.unk2 = 1;
        state->strc0.unk4 = 2;
        state->strc0.unk6 = 0;
        state->strc0.unk8 = 0x80;
        state->strc0.unkA = 1;
    } else {
        if ((0x336 - ({((0x80) != 0) ? ((s32)(0x2000) / (s32)(0x80)) : 0;})) == temp_r5) {
            state->strc0.unk0 = 0;
            state->strc0.unk2 = 1;
            state->strc0.unk4 = 1;
            state->strc0.unk6 = 0;
            state->strc0.unk8 = 0x80;
            state->strc0.unkA = 1;
        }
        sub_805423C(&state->strc0);
        state->unk38 = (s32)temp_r5;
        temp_sb->unk3C = temp_r5;
        sp0->unk3C = temp_r5;
        sp4->unk3C = temp_r5;
        temp_sl->unk3C = temp_r5;
    }
}

void Task_8067B14()
{
    ExtraStageResults_64 *sp0;
    ExtraStageResults_64 *sp4;
    ExtraStageResults_64 *temp_sb;
    ExtraStageResults_64 *temp_sl;
    u32 temp_r5;

    ExtraStageResultsState *state = (void *)((gCurTask)->data);

    temp_sb = (void *)((state->taskC)->data);
    sp0 = (void *)((state->task1C)->data);
    sp4 = (void *)((state->task14)->data);
    temp_sl = (void *)((state->task18)->data);
    temp_r5 = state->unk38 + 1;
    if (temp_r5 > 400) {
        temp_r5 = 0;
        state->unk38 = 0;
        temp_sb->unk3C = 0U;
        state->strc0.unk0 = 0;
        state->strc0.unk2 = 1;
        state->strc0.unk4 = 2;
        state->strc0.unk6 = 0;
        state->strc0.unk8 = 0x80;
        state->strc0.unkA = 1;
        state->taskC->main = Task_80685C8;
        gCurTask->main = Task_8067B9C;
    } else {
        if ((400 - ({((0x80) != 0) ? ((s32)(0x2000) / (s32)(0x80)) : 0;})) == temp_r5) {
            state->strc0.unk0 = 0;
            state->strc0.unk2 = 1;
            state->strc0.unk4 = 1;
            state->strc0.unk6 = 0;
            state->strc0.unk8 = 0x80;
            state->strc0.unkA = 1;
        }

        sub_805423C(&state->strc0);
        state->unk38 = (s32)temp_r5;
        temp_sb->unk3C = temp_r5;
    }
}

void Task_8067B9C()
{
    ExtraStageResults_64 *sp0;
    ExtraStageResults_64 *sp4;
    ExtraStageResults_64 *temp_sb;
    ExtraStageResults_64 *temp_sl;
    u32 temp_r5;

    ExtraStageResultsState *state = (void *)((gCurTask)->data);

    temp_sb = (void *)((state->taskC)->data);
    sp0 = (void *)((state->task1C)->data);
    sp4 = (void *)((state->task14)->data);
    temp_sl = (void *)((state->task18)->data);
    temp_r5 = state->unk38 + 1;
    if (temp_r5 > 400) {
        temp_r5 = 0;
        state->unk38 = 0;
        temp_sb->unk3C = 0U;
        state->strc0.unk0 = 0;
        state->strc0.unk2 = 1;
        state->strc0.unk4 = 2;
        state->strc0.unk6 = 0;
        state->strc0.unk8 = 0x80;
        state->strc0.unkA = 1;
        state->taskC->main = Task_8067F9C;
        gCurTask->main = Task_8067C24;
    } else {
        if ((400 - ({((0x80) != 0) ? ((s32)(0x2000) / (s32)(0x80)) : 0;})) == temp_r5) {
            state->strc0.unk0 = 0;
            state->strc0.unk2 = 1;
            state->strc0.unk4 = 1;
            state->strc0.unk6 = 0;
            state->strc0.unk8 = 0x80;
            state->strc0.unkA = 1;
        }

        sub_805423C(&state->strc0);
        state->unk38 = (s32)temp_r5;
        temp_sb->unk3C = temp_r5;
    }
}


void Task_8067C24()
{
    struct Task *tasks[3];
    u32 sp10;
    ExtraStageResults_64 *sp14;
    ExtraStageResults_164 *temp_r3_2;
    Sprite *s;
    s32 temp_r0;
    s32 var_r0;
    s32 var_r0_2;
    s32 var_r3;
    u16 var_r8_2;
    s8 *temp_r1_5;
    struct Task *temp_r0_5;
    u16 temp_r0_3;
    u16 temp_r0_4;
    u16 temp_r1;
    u16 temp_r1_2;
    u16 temp_r1_4;
    u16 var_r8;
    u32 temp_r0_2;
    u32 temp_r1_3;
    u32 temp_r2;
    u32 temp_r3;
    u32 temp_r4;
    u32 temp_r5;
    u32 temp_r6;
    u32 temp_r7;

    ExtraStageResultsState *state = (void *)((gCurTask)->data);

    sp14 = (void *)((state->taskC)->data);
    temp_r0 = state->unk38;
    sp10 = temp_r0 + 1;
    temp_r0_2 = temp_r0 - 0xB3;
    if (temp_r0_2 <= 0x80U) {
        temp_r7 = temp_r0_2 >> 4;
        for (var_r8 = 2; var_r8 < 16; var_r8++) {
            temp_r1 = gUiPaletteSoundTestBox3[var_r8];
            temp_r3 = 0x1F;
            temp_r3 &= temp_r1;
            temp_r5 = (u32)(0x3E0 & temp_r1) >> 5;
            temp_r4 = (u32)(0x7C00 & temp_r1) >> 0xA;
            temp_r1_2 = gUiPaletteSoundTestBox4[var_r8];
            temp_r2 = 0x1F & temp_r1_2;
            temp_r6 = (u32)(0x3E0 & temp_r1_2) >> 5;
            temp_r1_3 = (u32)(0x7C00 & temp_r1_2) >> 0xA;
            if (temp_r3 > temp_r2) {
                var_r3 = (temp_r3 - ((u32)(temp_r7 * (temp_r3 - temp_r2)) >> 3)) & 0x1F;
            } else {
                var_r3 = (temp_r3 + ((u32)(temp_r7 * (temp_r2 - temp_r3)) >> 3)) & 0x1F;
            }
            if (temp_r5 > temp_r6) {
                var_r0 = temp_r5 - ((u32)(temp_r7 * (temp_r5 - temp_r6)) >> 3);
            } else {
                var_r0 = temp_r5 + ((u32)(temp_r7 * (temp_r6 - temp_r5)) >> 3);
            }
            if (temp_r4 > temp_r1_3) {
                var_r0_2 = (temp_r4 - ((u32)(temp_r7 * (temp_r4 - temp_r1_3)) >> 3)) & 0x1F;
            } else {
                var_r0_2 = (temp_r4 + ((u32)(temp_r7 * (temp_r1_3 - temp_r4)) >> 3)) & 0x1F;
            }
            gObjPalette[14 * 16 + var_r8] = (var_r0_2 << 0xA) | (var_r3 | ((var_r0 & 0x1F) << 5));
        }

        gFlags |= 0x2;
    }

    if (sp10 > 0x190U) {
        sp10 = 0;
        for (var_r8_2 = 0; var_r8_2 < 3; var_r8_2++) {
            temp_r0_5 = TaskCreate(Task_8066D64, sizeof(ExtraStageResults_164), 0x2120U, 0U, ((void*)0));
            tasks[var_r8_2] = temp_r0_5;
            temp_r3_2 = (void *)((temp_r0_5)->data);
            s = &temp_r3_2->s;
            temp_r3_2->unk3C = 0;
            temp_r3_2->unk4C = 0xF;
            temp_r3_2->unk48 = 0;
            temp_r3_2->unk44 = var_r8_2;
            temp_r3_2->unk40 = 0;
            if (var_r8_2 == 0) {
                s->graphics.dest = &VRAM[0x10000] + 0x6060;
                s->graphics.anim = 0x311;
                s->variant = 0;
            } else if (var_r8_2 == 1) {
                s->graphics.dest = &VRAM[0x10000] + 0x6920;
                s->graphics.anim = 0x311;
                s->variant = 1;
            } else {
                s->graphics.dest = &VRAM[0x10000] + 0x6E20;
                s->graphics.anim = 0x311;
                s->variant = 2;
            }
            s->x = 0xB4;
            s->y = 0x50;
            s->oamFlags = 0;
            s->graphics.size = 0;
            s->animCursor = 0;
            s->qAnimDelay = 0;
            s->prevVariant = -1;
            s->animSpeed = 0x10;
            s->palId = 0;
            s->hitboxes[0].index = -1;
            s->frameFlags = 0x1000;
            UpdateSpriteAnimation(s);
            state->tasks20[var_r8_2] = tasks[var_r8_2];
        }
        state->taskC->main = Task_8068004;
        gCurTask->main = Task_8067E68;
    }
    sub_805423C(&state->strc0);
    state->unk38 = (s32)sp10;
    sp14->unk3C = sp10;
}


void Task_8067E68()
{
    ExtraStageResults_64_2 *tasks[3];
    ExtraStageResults_64 *temp_r8;
    s16 temp_r1;
    s32 temp_r7;
    u32 temp_r5;

    ExtraStageResultsState *state = (void *)((gCurTask)->data);

    temp_r8 = (void *)((state->taskC)->data);







    temp_r7 = state->unk38;
    temp_r5 = temp_r7 + 1;
    if (temp_r5 > 0x190U) {
        TasksDestroyInPriorityRange(0, 0xFFFF);
        gBackgroundsCopyQueueCursor = gBackgroundsCopyQueueIndex;;
        gBgSpritesCount = 0;
        gVramGraphicsCopyCursor = gVramGraphicsCopyQueueIndex;;
        CreateStaffCredits();
        return;
    } else {
        if ((0x190 - ({((0x80) != 0) ? ((s32)(0x2000) / (s32)(0x80)) : 0;})) == temp_r5) {
            state->strc0.unk0 = 0;
            state->strc0.unk2 = 1;
            state->strc0.unk4 = 1;
            state->strc0.unk6 = 0;
            state->strc0.unk8 = 0x80;
            state->strc0.unkA = 1;
        }
        sub_805423C(&state->strc0);
        state->unk38 = (s32)temp_r5;
        temp_r8->unk3C = temp_r5;





    }
}

void Task_8067F38()
{
    s32 temp_r0;
    s32 temp_r0_2;
    s32 temp_r0_3;
    s32 temp_r0_4;
    s32 temp_r0_5;
    s32 temp_r0_6;
    u32 unk3C;

    ExtraStageResults_64 *strc64 = (void *)((gCurTask)->data);

    unk3C = strc64->unk3C;
    if ((strc64->unk40 + 60) <= unk3C) {
        strc64->qUnk54[0] += ((s32)((85. / 256.)*256));
        gBgScrollRegs[0][1] = ((int)((strc64->qUnk54[0]) >> 8));
        if (gBgScrollRegs[0][1] > 71) {
            gBgScrollRegs[0][1] = 71;
        }

        strc64->qUnk54[1] += ((s32)((96. / 256.)*256));
        gBgScrollRegs[1][1] = ((int)((strc64->qUnk54[1]) >> 8));
        if (gBgScrollRegs[1][1] > 80) {
            gBgScrollRegs[1][1] = 80;
        }

        strc64->qUnk54[2] += ((s32)((0.75)*256));
        gBgScrollRegs[2][1] = ((int)((strc64->qUnk54[2]) >> 8));
        if (gBgScrollRegs[2][1] > 160) {
            gBgScrollRegs[2][1] = 160;
        }
    }
}

void Task_8067F9C()
{
    ExtraStageResults_64 *strc64 = (void *)((gCurTask)->data);

    if (strc64->unk3C == 0) {
        strc64->s.prevVariant = -1;
        strc64->s.graphics.dest = &VRAM[0x10000] + 0x26E0;
        strc64->s.graphics.anim = 734;
        strc64->s.variant = 0;
        strc64->s.x = (320 / 2);
        strc64->s.y = (240 / 2);
        strc64->s.oamFlags = 0x3C0;
        strc64->s.frameFlags = 0x2000;
    }
    UpdateSpriteAnimation(&strc64->s);
    DisplaySprite(&strc64->s);
}

void Task_8068004()
{
    ExtraStageResults_64 *strc64 = (void *)((gCurTask)->data);

    if (strc64->unk3C == 0) {
        strc64->s.prevVariant = -1;
        strc64->s.graphics.dest = &VRAM[0x10000] + 0x26E0;
        strc64->s.graphics.anim = 734;
        strc64->s.variant = 1;
        strc64->s.x = (320 / 2);
        strc64->s.y = (240 / 2);
        strc64->s.oamFlags = 0x3C0;
        strc64->s.frameFlags = 0x2000;
    }
    UpdateSpriteAnimation(&strc64->s);
    DisplaySprite(&strc64->s);
}

void Task_806806C()
{
    s32 temp_r4;
    u8 remainder;
    u8 whole;
    s32 unk3C;
    s32 *ptr;

    ExtraStageResults_64 *strc64 = (void *)((gCurTask)->data);
    Sprite *s;

    temp_r4 = strc64->unk3C;
    unk3C = strc64->unk3C;
    if (unk3C > (u32)strc64->unk40) {
        whole = ({((0x10) != 0) ? ((s32)(unk3C - strc64->unk40) / (s32)(0x10)) : 0;});
        remainder = ({((0x10) != 0) ? ((s32)(unk3C - strc64->unk40) % (s32)(0x10)) : 0;});

        if (whole == 0 || whole == 2) {
            if (whole == 2) {
                whole = 3;
            }
            s = &strc64->s;
            if (remainder == 0) {
                s->prevVariant = -1;
            }
            s->x = strc64->qUnk44[whole];
            s->y = strc64->qUnk54[whole];
            UpdateSpriteAnimation(&strc64->s);
            DisplaySprite(&strc64->s);
        } else if (whole == 1) {
            s = &strc64->s;
            if (remainder == 0) {
                s->prevVariant = -1;
            }

            ptr = &strc64->qUnk44[1];
            s->x = *ptr;
            ptr = &strc64->qUnk54[1];
            s->y = *ptr;
            UpdateSpriteAnimation(s);
            DisplaySprite(s);

            ptr = &strc64->qUnk44[2];
            s->x = *ptr;
            ptr = &strc64->qUnk54[2];
            s->y = *ptr;
            DisplaySprite(s);
        }
    }
}

void Task_8068148(void)
{
    u32 angle;

    ExtraStageResults_64 *strc64 = (void *)((gCurTask)->data);
    Sprite *s = &strc64->s;

    angle = strc64->unk3C;
    if (angle == 0x78) {
        s->graphics.anim = 0xBF;
        s->variant = 0;
        s->prevVariant = -1;
    } else if (angle == 0x1E0) {
        s->graphics.anim = 0xBF;
        s->variant = 1;
        s->prevVariant = -1;
    }
    if ((u32)angle <= 0x257U) {
        int index = (angle & 0xFF);
        strc64->qUnk54[0] += (gSineTable[(index * 4)]) >> 9;
    } else if (angle < 663) {
        strc64->qUnk54[0] += ({((0x1A) != 0) ? ((s32)((gSineTable[((angle - 600) * 4)])) / (s32)(0x1A)) : 0;});
    } else {
        strc64->qUnk44[0] = 0x8C00;
    }
    s->x = ((int)((strc64->qUnk44[0]) >> 8));
    s->y = ((int)((strc64->qUnk54[0]) >> 8));
    UpdateSpriteAnimation(s);
    DisplaySprite(s);
}

void Task_8068214()
{
    s16 temp_r4;
    s32 temp_r2;
    u32 angle;
    s32 val;
    SpriteTransform *tf;

    ExtraStageResults_64 *strc64 = (void *)((gCurTask)->data);
    Sprite *s = &strc64->s;

    tf = &strc64->transform;
    angle = strc64->unk3C;
    if ((u32)angle <= 0x257U) {
        angle &= 0xFF;
        val = ((gSineTable[(angle * 4)]) >> 9);
        strc64->qUnk54[0] += val;
        s->x = ((int)((strc64->qUnk44[0]) >> 8));
        s->y = ((int)((strc64->qUnk54[0]) >> 8));
        UpdateSpriteAnimation(s);
        DisplaySprite(s);
    } else if ((u32)angle <= 0x296U) {
        val = ({((0x1A) != 0) ? ((s32)((gSineTable[((angle - 600) * 4)])) / (s32)(0x1A)) : 0;});
        strc64->qUnk54[0] += val;
        s->x = ((int)((strc64->qUnk44[0]) >> 8));
        s->y = ((int)((strc64->qUnk54[0]) >> 8));
        UpdateSpriteAnimation(s);
        DisplaySprite(s);
    } else if ((u32)angle <= 0x2BBU) {
        strc64->qUnk44[0] = 0xB400;
        strc64->qUnk54[0] = 0xB400;
        if (angle == 0x2BB) {
            s->graphics.anim = 0x2DF;
            s->variant = 0;
            s->prevVariant = -1;
            s->frameFlags = 0x106B;
            UpdateSpriteAnimation(s);
        }
    } else {
        temp_r4 = (gSineTable[((0x3BB - angle) * 4)]);
        strc64->qUnk54[0] += ({((36) != 0) ? ((s32)((s32)temp_r4) / (s32)(36)) : 0;});
        strc64->qUnk44[0] += ({((18) != 0) ? ((s32)((s32)temp_r4) / (s32)(18)) : 0;});
        temp_r2 = angle + 0xFFFFFD44;
        tf->rotation = (s16)(0x3FF & ~(temp_r2 * 2));
        tf->qScaleX = ((s32)((1.5)*256)) - (temp_r2 * 3);
        tf->qScaleY = ((s32)((1.5)*256)) - (temp_r2 * 3);
        tf->x = ((int)((strc64->qUnk44[0]) >> 8));
        tf->y = ((int)((strc64->qUnk54[0]) >> 8));
        s->x = ((int)((strc64->qUnk44[0]) >> 8));
        s->y = ((int)((strc64->qUnk54[0]) >> 8));
        TransformSprite(s, tf);
        DisplaySprite(s);
    }
}

void Task_8068360()
{
    ExtraStageResults_64 *strc64 = (void *)((gCurTask)->data);
    Sprite *s = &strc64->s;

    strc64->qUnk44[0] += strc64->qUnk44[1];
    if (strc64->qUnk44[0] > ((s32)((272)*256))) {
        strc64->qUnk44[0] = -((s32)((120)*256));
    }
    if (strc64->qUnk44[0] < -((s32)((120)*256))) {
        strc64->qUnk44[0] = ((s32)((272)*256));
    }

    strc64->qUnk54[0] += strc64->qUnk54[1];
    if (strc64->qUnk54[0] > ((s32)((172)*256))) {
        strc64->qUnk54[0] = -((s32)((16)*256));
    }
    if (strc64->qUnk54[0] < -((s32)((16)*256))) {
        strc64->qUnk54[0] = ((s32)((172)*256));
    }

    s->x = ((int)((strc64->qUnk44[0]) >> 8));
    s->y = ((int)((strc64->qUnk54[0]) >> 8));
    UpdateSpriteAnimation(s);
    DisplaySprite(s);
}

void sub_80683D8(void)
{
    ExtraStageResults_64 *strc64 = (void *)((gCurTask)->data);
    Sprite *s = &strc64->s;

    strc64->qUnk44[0] += ((s32)((8)*256));
    strc64->qUnk54[0] += ((s32)((8)*256));
    strc64->qUnk44[0] += strc64->qUnk44[1];
    if (strc64->qUnk44[0] > ((s32)((272)*256))) {
        strc64->qUnk44[0] -= ((s32)((300)*256));
    }

    strc64->qUnk54[0] += strc64->qUnk54[1];
    if (strc64->qUnk54[0] > ((s32)((172)*256))) {
        strc64->qUnk54[0] -= ((s32)((300)*256));
    }

    s->x = ((int)((strc64->qUnk44[0]) >> 8));
    s->y = ((int)((strc64->qUnk54[0]) >> 8));
    UpdateSpriteAnimation(s);
    DisplaySprite(s);
}

void Task_nullsub_8068448(void) { }

void sub_806844C()
{
    ExtraStageResults_64 *strc64 = (void *)((gCurTask)->data);
    Sprite *s = &strc64->s;

    strc64->qUnk54[0] += strc64->qUnk54[1];

    if (strc64->qUnk54[0] < -((s32)((16)*256))) {
        strc64->qUnk54[0] = +((s32)((172)*256));
        strc64->qUnk44[0] += strc64->qUnk44[1] * 200;

        if (strc64->qUnk44[0] > ((s32)((272)*256))) {
            strc64->qUnk44[0] -= ((s32)((300)*256));
        }
    }

    s->x = ((int)((strc64->qUnk44[0]) >> 8));
    s->y = ((int)((strc64->qUnk54[0]) >> 8));
    UpdateSpriteAnimation(s);
    DisplaySprite(s);
}

void Task_80684B4()
{
    ExtraStageResults_64 *strc64 = (void *)((gCurTask)->data);
    Sprite *s = &strc64->s;

    if (strc64->qUnk54[0] >= -((s32)((16)*256))) {
        strc64->qUnk54[0] += strc64->qUnk54[1];
        s->x = ((int)((strc64->qUnk44[0]) >> 8));
        s->y = ((int)((strc64->qUnk54[0]) >> 8));
        UpdateSpriteAnimation(s);
        DisplaySprite(s);
    }
}

void sub_80684F4(s32 comp)
{
    ExtraStageResultsState *state = (void *)((gCurTask)->data);

    if (comp == 25) {
        UiGfxStackInit();
        sub_80538BC();
    } else if (comp == 30) {
        state->unk3C = CreateStageResults((u32)gRingCount, gCourseTime);
        return;
    }
}

void sub_8068538(void) { }

void Task_806853C(void)
{
    ExtraStageResults_64 *strc64 = (void *)((gCurTask)->data);
    Sprite *s = &strc64->s;

    if (strc64->unk3C < 600) {
        UpdateSpriteAnimation(s);
        DisplaySprite(s);
    }
}

void Task_806856C(void) { }

void Task_8068570()
{
    ExtraStageResults_64 *strc64 = (void *)((gCurTask)->data);
    u32 temp_r3;

    if (strc64->unk3C == 0) {
        strc64->s.prevVariant = -1;
        strc64->s.graphics.dest = &VRAM[0x10000] + 0x26E0;
        strc64->s.graphics.anim = 733;
        strc64->s.variant = 0;
        strc64->s.x = (320 / 2);
        strc64->s.y = (240 / 2);
        strc64->s.frameFlags = 0;
    }
    UpdateSpriteAnimation(&strc64->s);
    DisplaySprite(&strc64->s);
}

void Task_80685C8()
{
    ExtraStageResults_64 *strc64 = (void *)((gCurTask)->data);
    u32 temp_r3;

    if (strc64->unk3C == 0) {
        strc64->s.prevVariant = -1;
        strc64->s.graphics.dest = &VRAM[0x10000] + 0x26E0;
        strc64->s.graphics.anim = 733;
        strc64->s.variant = 1;
        strc64->s.x = (320 / 2);
        strc64->s.y = (240 / 2);
        strc64->s.frameFlags = 0;
    }
    UpdateSpriteAnimation(&strc64->s);
    DisplaySprite(&strc64->s);
}

void Task_8068620(void) { }

void Task_8068624(void) { }

void Task_8068628(void) { }

void Task_806862C()
{
    s32 temp_r0;
    s32 temp_r0_2;

    ExtraStageResults_64 *strc64 = (void *)((gCurTask)->data);
    Sprite *s = &strc64->s;

    if (strc64->unk3C > 180) {
        strc64->qUnk44[0] -= ((s32)((96. / 256.)*256));
        if (strc64->qUnk44[0] < -((s32)((64)*256))) {
            strc64->qUnk44[0] = -((s32)((64)*256));
        }
        strc64->qUnk54[0] += 0x30;
        if (strc64->qUnk54[0] > ((s32)((32)*256))) {
            strc64->qUnk54[0] = ((s32)((32)*256));
        }

        s->x = ((int)((strc64->qUnk44[0]) >> 8));
        s->y = ((int)((strc64->qUnk54[0]) >> 8));
        UpdateSpriteAnimation(s);
        DisplaySprite(s);
    }
}
