# 1 "/home/awaszczak/git/sa2/sa1/src/data/sa1/ui_graphics_table.c"
# 1 "<built-in>" 1
# 1 "<built-in>" 3
# 384 "<built-in>" 3
# 1 "<command line>" 1
# 1 "<built-in>" 2
# 1 "/home/awaszczak/git/sa2/sa1/src/data/sa1/ui_graphics_table.c" 2
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
# 2 "/home/awaszczak/git/sa2/sa1/src/data/sa1/ui_graphics_table.c" 2
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
# 3 "/home/awaszczak/git/sa2/sa1/src/data/sa1/ui_graphics_table.c" 2







const UiGraphics gUiGraphics[] = {
    {

        .tiles = gUiGraphicsAsciiChars,
        .palette = gUiPaletteAsciiChars,
        .unk8 = 2,
        .unkC = 0,
        .unk10 = 2,
        .unk14 = 1,
        .unk18 = 2,
    },
    {

        .tiles = gUiGraphics1UpIconSonic,
        .palette = gUiPalette1UpIconSonic,
        .unk8 = 4,
        .unkC = 1,
        .unk10 = 0,
        .unk14 = 2,
        .unk18 = 2,
    },
    {

        .tiles = gUiGraphics1UpIconTails,
        .palette = gUiPalette1UpIconTails,
        .unk8 = 4,
        .unkC = 1,
        .unk10 = 0,
        .unk14 = 2,
        .unk18 = 2,
    },
    {

        .tiles = gUiGraphics1UpIconKnuckles,
        .palette = gUiPalette1UpIconKnuckles,
        .unk8 = 4,
        .unkC = 1,
        .unk10 = 0,
        .unk14 = 2,
        .unk18 = 2,
    },
    {

        .tiles = gUiGraphics1UpIconAmy,
        .palette = gUiPalette1UpIconAmy,
        .unk8 = 4,
        .unkC = 1,
        .unk10 = 0,
        .unk14 = 2,
        .unk18 = 2,
    },
    {

        .tiles = gUiGraphicsHudRing,
        .palette = gUiPaletteHudRing,
        .unk8 = 16,
        .unkC = 2,
        .unk10 = 0,
        .unk14 = 4,
        .unk18 = 4,
    },
    {

        .tiles = gUiGraphicsStageIntroSonic,
        .palette = gUiPaletteStageIntroSonic,
        .unk8 = 16,
        .unkC = 2,
        .unk10 = 0,
        .unk14 = 4,
        .unk18 = 4,
    },
    {

        .tiles = gUiGraphicsStageIntroTails,
        .palette = gUiPaletteStageIntroTails,
        .unk8 = 16,
        .unkC = 2,
        .unk10 = 0,
        .unk14 = 4,
        .unk18 = 4,
    },
    {

        .tiles = gUiGraphicsStageIntroKnuckles,
        .palette = gUiPaletteStageIntroKnuckles,
        .unk8 = 16,
        .unkC = 2,
        .unk10 = 0,
        .unk14 = 4,
        .unk18 = 4,
    },
    {

        .tiles = gUiGraphicsStageIntroAmy,
        .palette = gUiPaletteStageIntroAmy,
        .unk8 = 16,
        .unkC = 2,
        .unk10 = 0,
        .unk14 = 4,
        .unk18 = 4,
    },
    {

        .tiles = gUiGraphicsStageIntrochar_names,
        .palette = gUiPaletteStageIntrochar_names,
        .unk8 = 16,
        .unkC = 2,
        .unk10 = 0,
        .unk14 = 4,
        .unk18 = 4,
    },
    {

        .tiles = gUiGraphicsStageResultSonic,
        .palette = gUiPaletteStageResultSonic,
        .unk8 = 16,
        .unkC = 2,
        .unk10 = 0,
        .unk14 = 4,
        .unk18 = 4,
    },
    {

        .tiles = gUiGraphicsStageResultTails,
        .palette = gUiPaletteStageResultTails,
        .unk8 = 16,
        .unkC = 2,
        .unk10 = 0,
        .unk14 = 4,
        .unk18 = 4,
    },
    {

        .tiles = gUiGraphicsStageResultKnuckles,
        .palette = gUiPaletteStageResultKnuckles,
        .unk8 = 16,
        .unkC = 2,
        .unk10 = 0,
        .unk14 = 4,
        .unk18 = 4,
    },
    {

        .tiles = gUiGraphicsStageResultAmy,
        .palette = gUiPaletteStageResultAmy,
        .unk8 = 16,
        .unkC = 2,
        .unk10 = 0,
        .unk14 = 4,
        .unk18 = 4,
    },
    {

        .tiles = gUiGraphicsStageResultAct12,
        .palette = gUiPaletteStageResultAct12,
        .unk8 = 2,
        .unkC = 0,
        .unk10 = 2,
        .unk14 = 1,
        .unk18 = 2,
    },
    {

        .tiles = gUiGraphicsStageResultHeadlineBack,
        .palette = gUiPaletteStageResultHeadlineBack,
        .unk8 = 16,
        .unkC = 2,
        .unk10 = 0,
        .unk14 = 4,
        .unk18 = 4,
    },
    {

        .tiles = gUiGraphicsStageNamesJapanese0,
        .palette = gUiPaletteStageNamesJapanese0,
        .unk8 = 1,
        .unkC = 0,
        .unk10 = 0,
        .unk14 = 1,
        .unk18 = 1,
    },
    {

        .tiles = gUiGraphicsStageNamesJapanese1,
        .palette = gUiPaletteStageNamesJapanese1,
        .unk8 = 4,
        .unkC = 1,
        .unk10 = 1,
        .unk14 = 4,
        .unk18 = 1,
    },
    {

        .tiles = gUiGraphicsStageNameNeoGreenHillZone,
        .palette = gUiPaletteStageNameNeoGreenHillZone,
        .unk8 = 8,
        .unkC = 2,
        .unk10 = 1,
        .unk14 = 4,
        .unk18 = 2,
    },
    {

        .tiles = gUiGraphicsStageNameSecretBaseZone,
        .palette = gUiPaletteStageNameSecretBaseZone,
        .unk8 = 8,
        .unkC = 2,
        .unk10 = 1,
        .unk14 = 4,
        .unk18 = 2,
    },
    {

        .tiles = gUiGraphicsStageNameCasinoParadiseZone,
        .palette = gUiPaletteStageNameCasinoParadiseZone,
        .unk8 = 8,
        .unkC = 2,
        .unk10 = 1,
        .unk14 = 4,
        .unk18 = 2,
    },
    {

        .tiles = gUiGraphicsStageNameIceMountainZone,
        .palette = gUiPaletteStageNameIceMountainZone,
        .unk8 = 8,
        .unkC = 2,
        .unk10 = 1,
        .unk14 = 4,
        .unk18 = 2,
    },
    {

        .tiles = gUiGraphicsStageNameAngelIslandZone,
        .palette = gUiPaletteStageNameAngelIslandZone,
        .unk8 = 8,
        .unkC = 2,
        .unk10 = 1,
        .unk14 = 4,
        .unk18 = 2,
    },
    {

        .tiles = gUiGraphicsStageNameEggRocketZone,
        .palette = gUiPaletteStageNameEggRocketZone,
        .unk8 = 8,
        .unkC = 2,
        .unk10 = 1,
        .unk14 = 4,
        .unk18 = 2,
    },
    {

        .tiles = gUiGraphicsStageNameCosmicAngelZone,
        .palette = gUiPaletteStageNameCosmicAngelZone,
        .unk8 = 8,
        .unkC = 2,
        .unk10 = 1,
        .unk14 = 4,
        .unk18 = 2,
    },
    {

        .tiles = gUiGraphicsStageNameXZone,
        .palette = gUiPaletteStageNameXZone,
        .unk8 = 8,
        .unkC = 2,
        .unk10 = 1,
        .unk14 = 4,
        .unk18 = 2,
    },
    {

        .tiles = gUiGraphicsStageNameTheMoonZone,
        .palette = gUiPaletteStageNameTheMoonZone,
        .unk8 = 8,
        .unkC = 2,
        .unk10 = 1,
        .unk14 = 4,
        .unk18 = 2,
    },
    {

        .tiles = gUiGraphicsStageNameForestChaoGarden,
        .palette = gUiPaletteStageNameForestChaoGarden,
        .unk8 = 8,
        .unkC = 2,
        .unk10 = 1,
        .unk14 = 4,
        .unk18 = 2,
    },
    {

        .tiles = gUiGraphicsStageNameFactoryChaoGarden,
        .palette = gUiPaletteStageNameFactoryChaoGarden,
        .unk8 = 8,
        .unkC = 2,
        .unk10 = 1,
        .unk14 = 4,
        .unk18 = 2,
    },
    {

        .tiles = gUiGraphicsStageNamePinballChaoGarden,
        .palette = gUiPaletteStageNamePinballChaoGarden,
        .unk8 = 8,
        .unkC = 2,
        .unk10 = 1,
        .unk14 = 4,
        .unk18 = 2,
    },
    {

        .tiles = gUiGraphicsStageNameSpaceChaoGarden,
        .palette = gUiPaletteStageNameSpaceChaoGarden,
        .unk8 = 8,
        .unkC = 2,
        .unk10 = 1,
        .unk14 = 4,
        .unk18 = 2,
    },
    {

        .tiles = gUiGraphicsTimerDigits,
        .palette = gUiPaletteTimerDigits,
        .unk8 = 4,
        .unkC = 1,
        .unk10 = 0,
        .unk14 = 2,
        .unk18 = 2,
    },
    {

        .tiles = gUiGraphicsOK,
        .palette = gUiPaletteOK,
        .unk8 = 16,
        .unkC = 2,
        .unk10 = 0,
        .unk14 = 4,
        .unk18 = 4,
    },
    {

        .tiles = gUiGraphicsGotThroughTexts,
        .palette = gUiPaletteGotThroughTexts,
        .unk8 = 16,
        .unkC = 2,
        .unk10 = 0,
        .unk14 = 4,
        .unk18 = 4,
    },
    {

        .tiles = gUiGraphicsOverlayEnterName,
        .palette = gUiPaletteOverlayEnterName,
        .unk8 = 1,
        .unkC = 0,
        .unk10 = 0,
        .unk14 = 1,
        .unk18 = 1,
    },
    {

        .tiles = gUiGraphicsOverlayCharacters,
        .palette = gUiPaletteOverlayCharacters,
        .unk8 = 1,
        .unkC = 0,
        .unk10 = 0,
        .unk14 = 1,
        .unk18 = 1,
    },
    {

        .tiles = gUiGraphicsOverlayRedCorner,
        .palette = gUiPaletteOverlayRedCorner,
        .unk8 = 1,
        .unkC = 0,
        .unk10 = 0,
        .unk14 = 1,
        .unk18 = 1,
    },
    {

        .tiles = gUiGraphicsOverlayCursors,
        .palette = gUiPaletteOverlayCursors,
        .unk8 = 4,
        .unkC = 1,
        .unk10 = 0,
        .unk14 = 2,
        .unk18 = 2,
    },
    {

        .tiles = gUiGraphicsCharSelectZigZag,
        .palette = gUiPaletteCharSelectZigZag,
        .unk8 = 16,
        .unkC = 2,
        .unk10 = 0,
        .unk14 = 4,
        .unk18 = 4,
    },
    {

        .tiles = gUiGraphicsCharSelectArrow,
        .palette = gUiPaletteCharSelectArrow,
        .unk8 = 16,
        .unkC = 2,
        .unk10 = 0,
        .unk14 = 4,
        .unk18 = 4,
    },
    {

        .tiles = gUiGraphicsCharSelectNames,
        .palette = gUiPaletteCharSelectNames,
        .unk8 = 16,
        .unkC = 2,
        .unk10 = 0,
        .unk14 = 4,
        .unk18 = 4,
    },
    {

        .tiles = gUiGraphicsCharSelectSelectACharacter,
        .palette = gUiPaletteCharSelectSelectACharacter,
        .unk8 = 8,
        .unkC = 2,
        .unk10 = 1,
        .unk14 = 4,
        .unk18 = 2,
    },
    {

        .tiles = gUiGraphicsCharSelectBlackBox,
        .palette = gUiPaletteCharSelectBlackBox,
        .unk8 = 8,
        .unkC = 2,
        .unk10 = 1,
        .unk14 = 4,
        .unk18 = 2,
    },
    {

        .tiles = gUiGraphicsCharSelectOK,
        .palette = gUiPaletteCharSelectOK,
        .unk8 = 8,
        .unkC = 2,
        .unk10 = 1,
        .unk14 = 4,
        .unk18 = 2,
    },
    {

        .tiles = gUiGraphicsCharSelectBlackBox2,
        .palette = gUiPaletteCharSelectBlackBox2,
        .unk8 = 16,
        .unkC = 2,
        .unk10 = 0,
        .unk14 = 4,
        .unk18 = 4,
    },
    {

        .tiles = gUiGraphicsSpecialStage46,
        .palette = gUiPaletteSpecialStage46,
        .unk8 = 32,
        .unkC = 3,
        .unk10 = 1,
        .unk14 = 8,
        .unk18 = 4,
    },
    {

        .tiles = gUiGraphicsSpecialStageTextGotRings0,
        .palette = gUiPaletteSpecialStageTextGotRings0,
        .unk8 = 16,
        .unkC = 2,
        .unk10 = 0,
        .unk14 = 4,
        .unk18 = 4,
    },
    {

        .tiles = gUiGraphicsSpecialStageTextGotRings1,
        .palette = gUiPaletteSpecialStageTextGotRings1,
        .unk8 = 16,
        .unkC = 2,
        .unk10 = 0,
        .unk14 = 4,
        .unk18 = 4,
    },
    {

        .tiles = gUiGraphicsSpecialStageTextGotRings2,
        .palette = gUiPaletteSpecialStageTextGotRings2,
        .unk8 = 16,
        .unkC = 2,
        .unk10 = 0,
        .unk14 = 4,
        .unk18 = 4,
    },
    {

        .tiles = gUiGraphicsSpecialStageTextStart,
        .palette = gUiPaletteSpecialStageTextStart,
        .unk8 = 16,
        .unkC = 2,
        .unk10 = 0,
        .unk14 = 4,
        .unk18 = 4,
    },
    {

        .tiles = gUiGraphicsSpecialStageTextGotAChaosEmerald,
        .palette = gUiPaletteSpecialStageTextGotAChaosEmerald,
        .unk8 = 16,
        .unkC = 2,
        .unk10 = 0,
        .unk14 = 4,
        .unk18 = 4,
    },
    {

        .tiles = gUiGraphicsSpecialStageTextSpecialStage,
        .palette = gUiPaletteSpecialStageTextSpecialStage,
        .unk8 = 8,
        .unkC = 2,
        .unk10 = 1,
        .unk14 = 4,
        .unk18 = 2,
    },
    {

        .tiles = gUiGraphicsSpecialStage53,
        .palette = gUiPaletteSpecialStage53,
        .unk8 = 16,
        .unkC = 2,
        .unk10 = 0,
        .unk14 = 4,
        .unk18 = 4,
    },
    {

        .tiles = gUiGraphicsSpecialStageChaosEmerald,
        .palette = gUiPaletteSpecialStageChaosEmerald,
        .unk8 = 16,
        .unkC = 2,
        .unk10 = 0,
        .unk14 = 4,
        .unk18 = 4,
    },
    {

        .tiles = gUiGraphicsTransparent0,
        .palette = gUiPaletteTransparent0,
        .unk8 = 1,
        .unkC = 0,
        .unk10 = 0,
        .unk14 = 1,
        .unk18 = 1,
    },
    {

        .tiles = gUiGraphicsTransparent1,
        .palette = gUiPaletteTransparent1,
        .unk8 = 1,
        .unkC = 0,
        .unk10 = 0,
        .unk14 = 1,
        .unk18 = 1,
    },
    {

        .tiles = gUiGraphicsTransparent2,
        .palette = gUiPaletteTransparent2,
        .unk8 = 1,
        .unkC = 0,
        .unk10 = 0,
        .unk14 = 1,
        .unk18 = 1,
    },
    {

        .tiles = gUiGraphicsTransparent3,
        .palette = gUiPaletteTransparent3,
        .unk8 = 1,
        .unkC = 0,
        .unk10 = 0,
        .unk14 = 1,
        .unk18 = 1,
    },
    {

        .tiles = gUiGraphicsTransparent4,
        .palette = gUiPaletteTransparent4,
        .unk8 = 1,
        .unkC = 0,
        .unk10 = 0,
        .unk14 = 1,
        .unk18 = 1,
    },
    {

        .tiles = gUiGraphicsTransparent5,
        .palette = gUiPaletteTransparent5,
        .unk8 = 1,
        .unkC = 0,
        .unk10 = 0,
        .unk14 = 1,
        .unk18 = 1,
    },
    {

        .tiles = gUiGraphicsSoundTestBackground,
        .palette = gUiPaletteSoundTestBackground,
        .unk8 = 1,
        .unkC = 0,
        .unk10 = 0,
        .unk14 = 1,
        .unk18 = 1,
    },
    {

        .tiles = gUiGraphicsSoundTestBox2,
        .palette = gUiPaletteSoundTestBox2,
        .unk8 = 1,
        .unkC = 0,
        .unk10 = 0,
        .unk14 = 1,
        .unk18 = 1,
    },
    {

        .tiles = gUiGraphicsSoundTestBox3,
        .palette = gUiPaletteSoundTestBox3,
        .unk8 = 1,
        .unkC = 0,
        .unk10 = 0,
        .unk14 = 1,
        .unk18 = 1,
    },
    {

        .tiles = gUiGraphicsSoundTestBox4,
        .palette = gUiPaletteSoundTestBox4,
        .unk8 = 1,
        .unkC = 0,
        .unk10 = 0,
        .unk14 = 1,
        .unk18 = 1,
    },
};
