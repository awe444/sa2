# 1 "/home/awaszczak/git/sa2/sa1/src/data/sa1/obj_palettes.c"
# 1 "<built-in>" 1
# 1 "<built-in>" 3
# 384 "<built-in>" 3
# 1 "<command line>" 1
# 1 "<built-in>" 2
# 1 "/home/awaszczak/git/sa2/sa1/src/data/sa1/obj_palettes.c" 2
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
# 2 "/home/awaszczak/git/sa2/sa1/src/data/sa1/obj_palettes.c" 2


const u16 gSpritePalettes[][16] = {
    {6880u,23254u,19584u,29952u,12288u,608u,20479u,895u,2387u,10943u,21u,4255u,4228u,32767u,14798u,32352u,}, {8586u,32767u,32695u,32622u,32550u,32388u,30115u,23714u,0u,1023u,15287u,20192u,672u,17263u,18215u,480u,},
    {6880u,31775u,4669u,4863u,2391u,28469u,32352u,32004u,20083u,14798u,21u,4255u,2114u,32767u,31775u,31775u,}, {6880u,31775u,4669u,4863u,2391u,28469u,32352u,32004u,20083u,14798u,21u,4255u,0u,32767u,31775u,31775u,},
    {6880u,2114u,21u,32004u,4255u,2391u,14798u,32352u,20083u,4669u,4863u,28469u,32767u,31775u,31775u,31775u,}, {21184u,23254u,23u,159u,14u,32004u,20479u,895u,339u,10943u,2720u,1006u,4228u,32767u,14798u,639u,},
    {7872u,32767u,24191u,21983u,18783u,16606u,12346u,22399u,671u,447u,29u,24u,22463u,13119u,0u,0u,}, {6880u,28469u,19741u,24191u,10391u,672u,14798u,20083u,339u,10943u,21u,31u,0u,32767u,20479u,1023u,},
    {6880u,672u,0u,14798u,20083u,339u,21u,28469u,10391u,19741u,31u,24191u,10943u,1023u,20479u,32767u,}, {6880u,24311u,13642u,19978u,8328u,490u,20479u,895u,2387u,10943u,21u,4255u,2247u,32767u,14798u,32384u,},
    {6880u,25368u,6709u,11029u,4369u,405u,20479u,895u,2387u,10943u,21u,4255u,1291u,32767u,14798u,32448u,}, {6880u,26425u,767u,1023u,409u,287u,20479u,895u,2387u,10943u,21u,4255u,334u,32767u,14798u,32480u,},
    {6880u,28539u,11135u,15359u,6783u,10815u,24575u,11199u,4669u,18239u,4319u,12703u,475u,32767u,22197u,32618u,}, {9610u,32767u,32695u,32622u,32550u,32416u,32288u,32128u,29952u,1023u,16311u,18080u,608u,0u,0u,0u,},
    {9610u,32767u,19455u,959u,831u,671u,0u,0u,0u,0u,0u,0u,0u,0u,0u,0u,}, {6880u,831u,2687u,405u,337u,32767u,26425u,20081u,12684u,351u,281u,211u,479u,15231u,8390u,0u,},
    {32416u,223u,155u,83u,12u,32767u,24377u,17969u,8456u,32422u,28104u,21832u,17670u,959u,767u,575u,}, {6880u,831u,2687u,405u,337u,32767u,26425u,20081u,12684u,351u,281u,211u,479u,15231u,8390u,0u,},
    {6688u,24418u,22240u,18016u,6464u,32767u,26425u,20081u,12684u,831u,635u,403u,30649u,28590u,8456u,0u,}, {6880u,24029u,21781u,17612u,8392u,32767u,26425u,20081u,12684u,1023u,767u,475u,32575u,32319u,8456u,0u,},
    {6688u,24511u,24381u,22265u,18039u,12755u,10638u,8524u,6410u,32767u,28539u,22197u,14798u,10570u,4228u,0u,}, {27840u,32767u,26229u,19918u,12616u,479u,157u,83u,12u,959u,26299u,30651u,26357u,22129u,14730u,0u,},
    {10912u,32767u,639u,351u,215u,12u,32494u,29288u,25028u,19776u,831u,28539u,26359u,22065u,14666u,0u,}, {27840u,32767u,15295u,831u,639u,351u,155u,149u,12u,959u,26299u,30651u,26357u,22129u,14730u,0u,},
    {32416u,24484u,22304u,18016u,10688u,479u,157u,83u,12u,959u,765u,32767u,26425u,14798u,10570u,0u,}, {23808u,24484u,22304u,18016u,10688u,479u,157u,83u,12u,959u,765u,32767u,26425u,14798u,10570u,0u,},
    {19908u,32635u,32503u,32371u,21900u,17672u,157u,83u,415u,959u,765u,32767u,26425u,12684u,573u,0u,}, {21504u,32484u,26177u,19840u,12480u,479u,157u,83u,12u,959u,32767u,30651u,28471u,20014u,12616u,0u,},
    {6592u,24168u,32305u,32198u,19648u,24360u,24488u,20403u,9145u,959u,32767u,30587u,24243u,17802u,25992u,0u,}, {32416u,32497u,28202u,25860u,17536u,479u,157u,83u,12u,959u,32767u,30587u,26357u,20014u,12616u,0u,},
    {32416u,32246u,27727u,19496u,17415u,479u,157u,83u,12u,959u,765u,32767u,26425u,17969u,10570u,0u,}, {19648u,32767u,31895u,31886u,12480u,479u,157u,83u,12u,959u,703u,30651u,26357u,22129u,14730u,0u,},
    {6880u,32767u,26425u,20081u,12684u,0u,29u,281u,211u,479u,895u,30167u,23886u,17608u,8322u,19935u,}, {384u,223u,155u,83u,12u,32767u,24377u,17969u,8456u,32422u,28104u,21832u,17670u,959u,767u,575u,},
    {6688u,24511u,24381u,22265u,18039u,12755u,10638u,8524u,6410u,32767u,28539u,24311u,17969u,12684u,8456u,0u,}, {6688u,24511u,24445u,22265u,18039u,12755u,10638u,8524u,6410u,32767u,25368u,19026u,14798u,10570u,5285u,0u,},
    {384u,2877u,1721u,565u,401u,32767u,24377u,17969u,8456u,31u,23u,14u,6u,22527u,11263u,7103u,}, {736u,223u,155u,83u,12u,32767u,24377u,17969u,8456u,32422u,28104u,21832u,17670u,959u,767u,575u,},
    {32544u,16223u,11006u,6812u,5659u,375u,10842u,6616u,3412u,1232u,13306u,14259u,13100u,11882u,9639u,5347u,}, {32544u,16223u,11006u,6812u,5659u,375u,10842u,6616u,3412u,1232u,13306u,14259u,13100u,11882u,9639u,5347u,},
    {28032u,223u,155u,83u,12u,32767u,24377u,17969u,8456u,32422u,28104u,21832u,17670u,959u,767u,575u,}, {19840u,223u,155u,83u,12u,32767u,24377u,17969u,8456u,32422u,28104u,21832u,17670u,959u,767u,575u,},
    {9600u,223u,155u,83u,12u,32767u,24377u,17969u,8456u,32422u,28104u,21832u,17670u,959u,767u,575u,}, {544u,223u,155u,83u,12u,32767u,24377u,17969u,8456u,32422u,28104u,21832u,17670u,959u,767u,575u,},
    {27840u,223u,155u,83u,12u,32767u,24377u,17969u,8456u,32422u,28104u,21832u,17670u,959u,767u,575u,}, {19648u,223u,155u,83u,12u,32767u,24377u,17969u,8456u,32422u,28104u,21832u,17670u,959u,767u,575u,},
    {480u,223u,155u,83u,12u,32767u,24377u,17969u,8456u,32422u,28104u,21832u,17670u,959u,767u,575u,}, {9600u,223u,155u,83u,12u,32767u,24377u,17969u,8456u,32422u,28104u,21832u,17670u,959u,767u,575u,},
    {0u,223u,155u,83u,12u,32767u,24377u,17969u,8456u,32422u,28104u,21832u,17670u,959u,767u,575u,}, {19840u,18428u,15222u,11983u,8683u,5415u,27615u,21307u,17046u,14865u,11661u,8456u,10143u,735u,473u,3442u,},
    {19840u,18428u,15222u,11983u,8683u,5415u,27615u,21307u,17046u,14865u,11661u,8456u,10143u,735u,473u,3442u,}, {19840u,18364u,11983u,8714u,6568u,5415u,27615u,21307u,17046u,14865u,11661u,8456u,10143u,735u,473u,3442u,},
    {19840u,18428u,15222u,11983u,8683u,5415u,27615u,21307u,17046u,14865u,11661u,8456u,10143u,735u,473u,3442u,}, {19840u,223u,155u,83u,12u,32767u,24377u,17969u,8456u,32422u,28104u,21832u,17670u,959u,767u,575u,},
    {19840u,18428u,15222u,11983u,8683u,5415u,27615u,21307u,17046u,14865u,11661u,8456u,10143u,735u,473u,3442u,}, {19840u,32597u,32457u,27204u,21888u,10400u,32767u,28472u,24242u,20014u,15754u,8352u,32511u,31775u,16407u,7182u,},
    {19840u,32597u,32457u,27204u,21888u,10400u,32767u,28472u,24242u,20014u,15754u,8352u,32511u,31775u,16407u,7182u,}, {19840u,18428u,15222u,11983u,8683u,5415u,27615u,21307u,17046u,14865u,11661u,8456u,10143u,735u,473u,3442u,},
    {9600u,223u,155u,83u,12u,32767u,24377u,17969u,8456u,32422u,28104u,21832u,17670u,959u,767u,575u,}, {9888u,223u,155u,83u,12u,32767u,24377u,17969u,8456u,32422u,28104u,21832u,17670u,959u,767u,575u,},
    {20448u,479u,155u,83u,12u,32539u,32345u,32146u,31883u,0u,25761u,32263u,32364u,32533u,32665u,32767u,}, {19840u,223u,155u,83u,12u,32767u,24377u,17969u,8456u,32422u,28104u,21832u,17670u,959u,767u,575u,},
    {19840u,223u,155u,83u,12u,32767u,24377u,17969u,8456u,32422u,28104u,21832u,17670u,959u,767u,575u,}, {20448u,479u,155u,83u,12u,32539u,32345u,32146u,31883u,0u,25761u,32263u,32364u,32533u,32665u,32767u,},
    {19840u,223u,155u,83u,12u,32767u,24377u,17969u,8456u,32422u,28104u,21832u,17670u,959u,767u,575u,}, {992u,32765u,32765u,29657u,25463u,23284u,18066u,11562u,863u,639u,221u,210u,108u,69u,72u,17904u,},
    {992u,32765u,32765u,29657u,25463u,23284u,18066u,11562u,863u,639u,221u,210u,108u,69u,72u,17904u,}, {608u,32767u,20479u,1023u,831u,4863u,8831u,8667u,8597u,8465u,6282u,0u,28539u,30653u,6342u,223u,},
    {608u,32767u,20479u,1023u,831u,4863u,8831u,8667u,8597u,8465u,6282u,0u,28539u,30653u,6342u,223u,}, {20448u,223u,155u,83u,12u,32539u,32345u,32146u,31883u,0u,26978u,32353u,32484u,32622u,32697u,32767u,},
    {416u,13151u,511u,86u,10u,15359u,11070u,8828u,9719u,11634u,11275u,20383u,17046u,13709u,7402u,32767u,}, {27104u,255u,154u,84u,15u,32767u,24344u,16912u,8456u,32391u,28136u,21832u,16647u,831u,703u,478u,},
    {19840u,18428u,15222u,11983u,8683u,5415u,27615u,21307u,17046u,14865u,11661u,8456u,10143u,735u,473u,3442u,}, {28032u,223u,155u,83u,12u,32767u,24377u,17969u,8456u,32422u,28104u,21832u,17670u,959u,767u,575u,},
    {20448u,479u,155u,83u,12u,32539u,32345u,32146u,31883u,0u,25761u,32263u,32364u,32533u,32665u,32767u,}, {672u,32767u,26425u,20083u,12684u,6342u,0u,29692u,26486u,26388u,20077u,12679u,15263u,730u,569u,0u,},
    {28256u,30148u,32608u,471u,21696u,2116u,32767u,8456u,10655u,155u,78u,959u,767u,26425u,20083u,12684u,}, {480u,223u,155u,83u,12u,32767u,24377u,17969u,8456u,32422u,28104u,21832u,17670u,959u,767u,575u,},
    {19840u,223u,155u,83u,12u,32767u,24377u,17969u,8456u,32422u,28104u,21832u,17670u,959u,767u,575u,}, {544u,18428u,15222u,11983u,8683u,5415u,27615u,21307u,17046u,14865u,11661u,8456u,10143u,735u,473u,3442u,},
    {544u,32597u,32457u,27204u,21888u,10400u,32767u,28472u,24242u,20014u,15754u,8352u,32511u,31775u,16407u,7182u,}, {544u,32597u,32457u,27204u,21888u,10400u,32767u,28472u,24242u,20014u,15754u,8352u,32511u,31775u,16407u,7182u,},
    {4864u,223u,155u,83u,12u,32767u,24377u,17969u,8456u,32422u,28104u,21832u,17670u,959u,767u,575u,}, {4864u,223u,155u,83u,12u,32767u,24377u,17969u,8456u,32422u,28104u,21832u,17670u,959u,767u,575u,},
    {19840u,18428u,15222u,11983u,8683u,5415u,27615u,21307u,17046u,14865u,11661u,8456u,10143u,735u,473u,3442u,}, {19840u,223u,155u,83u,12u,32767u,24377u,17969u,8456u,32422u,28104u,21832u,17670u,959u,767u,575u,},
    {19840u,32597u,32457u,27204u,21888u,10400u,32767u,28472u,24242u,20014u,15754u,8352u,32511u,31775u,16407u,7182u,}, {672u,32767u,26425u,20083u,12684u,6342u,0u,29692u,26486u,26388u,20077u,12679u,15263u,730u,569u,0u,},
    {6880u,26425u,29824u,32192u,19520u,672u,20479u,895u,2387u,10943u,21u,4255u,4228u,32767u,14798u,32480u,}, {28256u,32004u,32352u,471u,21696u,2116u,32767u,8456u,10655u,155u,78u,959u,831u,22197u,17969u,12684u,},
    {28256u,2116u,32767u,28469u,1023u,20479u,637u,405u,270u,8895u,21u,4255u,6342u,14798u,14600u,0u,}, {209u,32004u,20479u,32292u,471u,2116u,32767u,8456u,13119u,2685u,270u,959u,831u,22197u,17969u,12684u,},
    {10848u,27840u,32198u,32548u,19520u,2116u,32767u,223u,23874u,2131u,1023u,699u,24311u,20083u,12684u,8456u,}, {10848u,219u,479u,703u,19u,2116u,32767u,223u,23874u,2131u,1023u,699u,24311u,20083u,12684u,8456u,},
    {10848u,27840u,32198u,32548u,19520u,2116u,32767u,277u,23874u,475u,1023u,703u,30585u,24243u,17868u,10502u,}, {10848u,27840u,32198u,32548u,19520u,2116u,32701u,277u,23874u,475u,1023u,703u,30519u,24243u,17868u,10502u,},
    {15524u,2116u,32767u,28469u,1023u,20479u,637u,405u,270u,8895u,21u,4255u,6342u,14798u,14600u,0u,}, {28192u,32565u,32633u,32699u,32765u,32767u,25728u,32134u,32294u,32364u,32369u,32565u,32697u,831u,0u,32767u,},
    {22240u,23254u,8215u,19615u,6158u,32480u,20479u,1023u,339u,10943u,2391u,767u,4228u,32767u,14798u,32383u,}, {22240u,25368u,18861u,25265u,10504u,159u,20479u,1023u,339u,10943u,2391u,767u,4228u,32767u,14798u,29596u,},
    {22240u,23254u,18861u,25265u,10504u,159u,20479u,1023u,339u,10943u,2391u,767u,4228u,32767u,14798u,29596u,}, {22240u,223u,155u,83u,12u,32767u,24377u,17969u,8456u,32422u,28104u,21832u,17670u,959u,767u,575u,},
    {10848u,27840u,32198u,32548u,19520u,2116u,32701u,14u,23874u,21u,223u,219u,30519u,24243u,17868u,10502u,}, {32548u,2116u,32767u,28469u,1023u,20479u,637u,405u,270u,8895u,21u,4255u,6342u,14798u,14600u,0u,},
    {14336u,27840u,32198u,32548u,19520u,2116u,32767u,273u,6470u,475u,1023u,767u,32761u,26483u,20204u,12744u,}, {6752u,32767u,30653u,26425u,24245u,19918u,14664u,12484u,0u,2333u,213u,78u,575u,831u,32064u,32544u,},
    {6752u,32767u,32631u,32430u,32198u,25926u,19654u,12358u,0u,2333u,213u,78u,575u,831u,32753u,32672u,}, {6688u,31676u,27481u,24278u,20083u,16912u,12685u,9514u,6311u,32767u,28539u,22197u,14798u,10570u,4228u,0u,},
    {28256u,639u,8959u,473u,415u,2116u,32767u,8456u,29u,149u,76u,15295u,831u,26425u,20083u,12684u,}, {10848u,32128u,32480u,469u,2271u,2116u,32767u,10877u,28539u,215u,1023u,699u,24311u,20083u,12684u,8456u,},
    {10848u,2186u,2459u,469u,2257u,2116u,32767u,10877u,28539u,2325u,213u,639u,24311u,20083u,12684u,8456u,}, {14720u,27840u,32198u,32548u,19520u,2116u,32767u,273u,6342u,475u,1023u,767u,28601u,24371u,17964u,12616u,},
    {14720u,32767u,32198u,32548u,19520u,2116u,32763u,26356u,19916u,12681u,6470u,4575u,283u,151u,142u,138u,}, {14720u,32767u,32198u,32548u,19520u,2116u,32763u,26357u,19916u,12680u,6470u,4575u,283u,151u,142u,138u,},
    {480u,32004u,32352u,471u,21696u,2116u,32767u,8456u,10655u,155u,78u,1023u,831u,24311u,17969u,12684u,}, {672u,32767u,26425u,20083u,12684u,6342u,0u,29692u,26486u,26388u,20077u,12679u,15263u,730u,569u,0u,},
    {18114u,0u,25368u,32767u,32719u,31584u,30371u,28935u,24222u,22975u,10261u,3346u,607u,991u,5696u,896u,}, {800u,14798u,32767u,213u,10815u,287u,219u,1023u,9207u,32300u,29834u,637u,0u,24311u,21504u,32550u,},
    {7872u,13u,19u,25u,255u,21183u,32767u,0u,0u,0u,0u,0u,0u,0u,0u,0u,}, {7872u,25600u,27840u,29024u,32288u,32608u,32767u,0u,0u,0u,0u,0u,0u,0u,0u,0u,},
    {7872u,301u,467u,633u,831u,13311u,32767u,0u,0u,0u,0u,0u,0u,0u,0u,0u,}, {7872u,384u,544u,704u,864u,16303u,32767u,0u,0u,0u,0u,0u,0u,0u,0u,0u,},
    {7872u,12648u,16878u,21106u,24311u,29596u,32767u,0u,0u,0u,0u,0u,0u,0u,0u,0u,}, {7872u,24960u,28192u,30368u,32576u,32687u,32767u,0u,0u,0u,0u,0u,0u,0u,0u,0u,},
    {7872u,13324u,19474u,25624u,31775u,32511u,32767u,0u,0u,0u,0u,0u,0u,0u,0u,0u,}, {1009u,0u,260u,2146u,748u,32767u,27482u,31710u,7399u,0u,0u,0u,0u,0u,0u,0u,},
    {0u,32767u,30653u,26425u,24311u,20083u,17969u,12684u,10570u,10570u,8456u,6342u,4228u,2114u,0u,32767u,}, {22240u,0u,29952u,23552u,12288u,2175u,22u,19455u,8895u,1597u,32767u,26425u,20083u,11695u,9545u,672u,},
    {22240u,0u,31u,22u,4863u,7839u,574u,2525u,1367u,32767u,28605u,25434u,22198u,17970u,9547u,32576u,}, {22240u,0u,14u,22u,31u,10719u,14015u,19423u,448u,1760u,10570u,14798u,20083u,26425u,32767u,32384u,},
    {22240u,0u,31u,21u,24159u,19837u,926u,2719u,1534u,4373u,32767u,27583u,24349u,19060u,9547u,6816u,}, {832u,637u,4798u,9982u,15166u,20351u,24479u,28639u,32767u,0u,6144u,4096u,10943u,8735u,10943u,0u,},
    {832u,637u,4798u,9982u,15166u,20351u,24479u,28639u,32767u,0u,6144u,6144u,832u,637u,4798u,9982u,}, {832u,637u,4798u,9982u,15166u,20351u,24479u,28639u,32767u,0u,6144u,4096u,26655u,8735u,26655u,17969u,},
    {608u,639u,20479u,1023u,831u,4863u,8831u,8667u,8597u,8465u,6282u,0u,506u,573u,202u,223u,}, {608u,32767u,20479u,1023u,831u,4863u,8831u,8667u,8597u,8465u,6282u,0u,28539u,30653u,12684u,223u,},
    {24755u,22429u,21982u,10264u,14334u,3856u,2568u,32717u,32661u,32590u,32450u,17144u,12987u,5554u,32767u,4424u,}, {24755u,26623u,20083u,15822u,1023u,14143u,703u,473u,5370u,1055u,177u,14039u,11888u,8624u,6474u,3171u,},
    {24755u,32767u,21239u,6703u,959u,607u,5438u,152u,80u,3463u,18797u,14603u,28526u,22146u,17858u,12391u,}, {24755u,0u,13571u,18820u,24038u,26218u,27342u,29523u,31672u,8555u,13807u,18002u,20149u,23320u,26524u,32767u,},
    {24755u,32767u,31676u,30617u,29525u,25333u,29455u,24175u,28331u,27239u,26115u,23840u,15488u,0u,2207u,2207u,}, {736u,32767u,32695u,32622u,32550u,32388u,30115u,23714u,0u,1023u,15287u,20192u,672u,17263u,18215u,480u,},
    {992u,0u,4330u,6477u,7567u,8657u,9715u,10805u,12918u,16023u,18136u,21274u,23355u,25468u,28573u,30686u,}, {20174u,0u,4330u,7567u,9715u,12918u,18136u,23355u,10805u,18136u,23355u,16023u,25468u,32767u,25468u,4330u,},
    {20174u,0u,19u,25u,31u,543u,767u,1023u,9789u,11999u,19327u,22197u,28539u,32767u,20479u,8456u,}, {6880u,32767u,26425u,21140u,14798u,8456u,2114u,159u,23u,14u,959u,3807u,2558u,32736u,28488u,19040u,},
    {23296u,0u,32512u,32352u,32192u,32096u,30976u,29856u,28672u,21504u,12288u,992u,832u,704u,576u,384u,}, {32767u,30654u,29563u,27483u,25337u,24279u,22166u,18995u,14798u,10570u,9547u,32736u,29544u,26373u,20096u,13728u,},
    {21503u,19359u,10975u,5789u,2652u,2388u,27583u,21311u,12991u,2526u,380u,247u,29503u,25215u,23039u,20894u,}, {15645u,11482u,5140u,991u,4895u,799u,4799u,607u,2392u,84u,16063u,13823u,9599u,3199u,31u,29u,},
    {26u,24u,20u,81u,13u,32767u,32765u,32733u,32733u,32731u,31642u,30552u,31575u,29527u,29461u,31510u,}, {31407u,30252u,29161u,28071u,29031u,27013u,29028u,28963u,27875u,31507u,28371u,28305u,26189u,27082u,0u,0u,},
    {6880u,32767u,26425u,21140u,14798u,8456u,2114u,159u,23u,14u,959u,3807u,2558u,32736u,28488u,19040u,}, {6880u,23254u,19584u,29952u,12288u,608u,20479u,895u,2387u,10943u,21u,4255u,4228u,32767u,14798u,32352u,},
    {6880u,31775u,4669u,4863u,2391u,28469u,32352u,32004u,20083u,14798u,21u,4255u,0u,32767u,31775u,31775u,}, {21184u,23254u,23u,159u,14u,32004u,20479u,895u,339u,10943u,2720u,1006u,4228u,32767u,14798u,639u,},
    {6880u,28469u,19741u,24191u,10391u,672u,14798u,20083u,339u,10943u,21u,31u,0u,32767u,20479u,1023u,}, {11975u,32767u,31676u,30617u,29525u,29455u,28331u,27239u,26115u,23840u,15488u,26115u,26050u,27040u,31u,0u,},
    {11975u,32455u,32388u,31299u,30210u,28129u,27040u,29u,29u,32767u,32697u,31539u,30413u,29251u,20803u,15488u,}, {6880u,32767u,26425u,20081u,12684u,0u,29u,281u,211u,479u,895u,30167u,23886u,17608u,8322u,19935u,},
    {8586u,32767u,32695u,32622u,32550u,32388u,30115u,23714u,0u,1023u,15287u,20192u,672u,17263u,18215u,480u,}, {0u,0u,0u,0u,0u,0u,0u,0u,0u,0u,0u,0u,0u,0u,0u,0u,},
    {16000u,32767u,28437u,14798u,4228u,992u,19423u,9919u,637u,406u,270u,31u,21u,991u,7872u,15622u,}, {25344u,128u,320u,416u,544u,640u,768u,864u,7046u,13228u,20435u,26617u,32767u,0u,0u,0u,},
    {0u,1057u,3171u,6342u,7399u,9513u,11627u,14798u,17969u,21140u,24311u,26425u,28539u,30653u,31710u,32767u,}, {608u,0u,32767u,4228u,6342u,8456u,10570u,12684u,14798u,17969u,20083u,22197u,24311u,26425u,28539u,30653u,},
    {0u,4418u,5570u,6787u,11148u,309u,0u,0u,25761u,32134u,32263u,32364u,32368u,32533u,32665u,32767u,}, {31744u,20180u,27645u,15921u,21337u,10998u,3669u,12751u,1326u,69u,10538u,32767u,29681u,32655u,32524u,0u,},
    {31u,9440u,12678u,19051u,5283u,15880u,13807u,24443u,17044u,6475u,637u,92u,19744u,7200u,32767u,405u,}, {640u,32767u,30653u,28539u,32635u,32503u,30240u,32128u,32074u,31744u,27648u,25600u,31u,31u,31u,31u,},
    {416u,255u,154u,83u,12u,32767u,24344u,16912u,8456u,32391u,28136u,21832u,16647u,1023u,767u,574u,}, {7872u,32767u,24191u,21983u,18783u,16606u,12346u,22399u,671u,447u,29u,24u,22463u,13119u,0u,0u,},
    {7872u,32767u,24191u,21983u,18783u,16606u,12346u,22399u,671u,447u,29u,24u,22463u,13119u,0u,0u,}, {22240u,0u,32576u,32256u,29952u,27648u,21504u,12288u,32760u,0u,0u,32767u,32633u,24511u,23263u,29535u,},
    {959u,926u,895u,4863u,5885u,767u,6910u,7839u,607u,575u,574u,2391u,83u,0u,0u,0u,}, {18079u,13823u,12735u,3199u,31u,28u,23u,17u,27u,22u,14u,27551u,0u,0u,0u,0u,},
    {28446u,24159u,22014u,17758u,8376u,0u,0u,0u,0u,0u,0u,0u,0u,0u,0u,0u,}, {22240u,0u,32767u,0u,6342u,9513u,12684u,14798u,16912u,19026u,20083u,22197u,23254u,24311u,26425u,28539u,},
    {672u,0u,639u,4228u,3238u,3272u,3339u,2349u,2383u,2418u,1460u,1494u,1528u,539u,605u,639u,}, {672u,0u,32767u,4228u,6342u,8456u,10570u,12684u,14798u,17969u,20083u,22197u,24311u,26425u,28539u,30653u,},
    {672u,0u,32767u,4228u,6342u,8456u,10570u,12684u,14798u,17969u,20083u,22197u,24311u,26425u,28539u,30653u,}, {11975u,32455u,32388u,31299u,30210u,28129u,27040u,29u,29u,32767u,32665u,32563u,32460u,32358u,20803u,15488u,},
    {11975u,32455u,32388u,31299u,30210u,28129u,27040u,29u,29u,32767u,32697u,31539u,30413u,29251u,20803u,15488u,}, {608u,32767u,20479u,1023u,831u,4863u,8831u,8667u,8597u,8465u,6282u,0u,28539u,30653u,6342u,223u,},
    {7872u,13u,19u,25u,255u,21183u,32767u,23552u,27776u,28992u,32288u,32576u,32767u,0u,0u,0u,}, {736u,32767u,20479u,1023u,831u,4863u,8831u,8667u,8597u,8465u,6282u,0u,28539u,30653u,6342u,223u,},
    {608u,32767u,20479u,1023u,831u,4863u,8831u,8667u,8597u,8465u,6282u,0u,28539u,30653u,6342u,223u,}, {608u,32767u,20479u,1023u,831u,4863u,8831u,8667u,8597u,8465u,6282u,0u,28539u,30653u,6342u,223u,},
    {672u,0u,32767u,4228u,6342u,8456u,10570u,12684u,14798u,17969u,20083u,22197u,24311u,26425u,28539u,30653u,}, {12905u,32767u,28539u,24311u,20083u,11660u,32597u,32394u,32192u,22271u,10719u,223u,12905u,12905u,12905u,0u,},
    {31u,32767u,32762u,32756u,31693u,31623u,30502u,30437u,29344u,31658u,31593u,31560u,30502u,31593u,31560u,30502u,}, {0u,32762u,32756u,31693u,32767u,30502u,30437u,29344u,31623u,31593u,31560u,30502u,31658u,31593u,31560u,30502u,},
    {0u,32756u,31693u,32767u,32762u,30437u,29344u,31623u,30502u,31560u,30502u,31658u,31593u,31593u,31560u,30502u,}, {0u,31693u,32767u,32762u,32756u,29344u,31623u,30502u,30437u,30502u,31658u,31593u,31560u,31593u,31560u,30502u,},
    {31u,32767u,32762u,32756u,31693u,31623u,30502u,30437u,29344u,0u,0u,0u,0u,0u,0u,0u,}, {0u,32762u,32756u,31693u,31623u,30502u,30437u,29344u,32767u,0u,0u,0u,0u,0u,0u,0u,},
    {0u,32756u,31693u,31623u,30502u,30437u,29344u,32767u,32762u,0u,0u,0u,0u,0u,0u,0u,}, {0u,31693u,31623u,30502u,30437u,29344u,32767u,32762u,32756u,0u,0u,0u,0u,0u,0u,0u,},
    {0u,31623u,30502u,30437u,29344u,32767u,32762u,32756u,31693u,0u,0u,0u,0u,0u,0u,0u,}, {0u,30502u,30437u,29344u,32767u,32762u,32756u,31693u,31623u,0u,0u,0u,0u,0u,0u,0u,},
    {0u,30437u,29344u,32767u,32762u,32756u,31693u,31623u,30502u,0u,0u,0u,0u,0u,0u,0u,}, {0u,29344u,32767u,32762u,32756u,31693u,31623u,30502u,30437u,0u,0u,0u,0u,0u,0u,0u,},
    {31u,32736u,32480u,32288u,32096u,31744u,23552u,15360u,6144u,32767u,1023u,2815u,0u,0u,0u,31u,}, {31u,6144u,32736u,32480u,32288u,32096u,31744u,23552u,15360u,26425u,825u,569u,0u,0u,0u,31u,},
    {31u,15360u,6144u,32736u,32480u,32288u,32096u,31744u,23552u,32767u,1023u,2815u,0u,0u,0u,31u,}, {31u,23552u,15360u,6144u,32736u,32480u,32288u,32096u,31744u,26425u,825u,569u,0u,0u,0u,31u,},
    {31u,31744u,23552u,15360u,6144u,32736u,32480u,32288u,32096u,0u,0u,0u,1023u,575u,31u,31u,}, {31u,32096u,31744u,23552u,15360u,6144u,32736u,32480u,32288u,0u,0u,0u,825u,377u,25u,31u,},
    {31u,32288u,32096u,31744u,23552u,15360u,6144u,32736u,32480u,0u,0u,0u,1023u,575u,31u,31u,}, {31u,32480u,32288u,32096u,31744u,23552u,15360u,6144u,32736u,0u,0u,0u,825u,377u,25u,31u,},
    {13317u,255u,145u,9u,992u,672u,320u,32767u,1023u,415u,146u,32767u,21207u,15889u,0u,32736u,}, {0u,255u,145u,9u,992u,672u,320u,146u,32767u,1023u,415u,32767u,21207u,15889u,0u,32736u,},
    {0u,255u,145u,9u,992u,672u,320u,415u,146u,32767u,1023u,32767u,21207u,15889u,0u,32736u,}, {0u,255u,145u,9u,992u,672u,320u,1023u,415u,146u,32767u,32767u,21207u,15889u,0u,32736u,},
    {0u,31775u,24596u,17417u,992u,677u,331u,1023u,479u,146u,32736u,16032u,384u,32767u,21207u,0u,}, {0u,32736u,16032u,384u,31775u,24596u,17417u,992u,677u,331u,1023u,479u,146u,32767u,21207u,0u,},
    {0u,1023u,479u,146u,32736u,16032u,384u,31775u,24596u,17417u,992u,677u,331u,32767u,21207u,0u,}, {0u,992u,677u,331u,1023u,479u,146u,32736u,16032u,384u,31775u,24596u,17417u,32767u,21207u,0u,},
    {0u,1023u,703u,351u,1055u,1050u,21u,15u,21u,1050u,1055u,992u,992u,992u,992u,992u,}, {0u,1023u,703u,1055u,1050u,21u,15u,21u,1050u,1055u,351u,992u,992u,992u,992u,992u,},
    {0u,1023u,703u,1050u,21u,15u,21u,1050u,1055u,351u,1055u,992u,992u,992u,992u,992u,}, {0u,1023u,703u,21u,15u,21u,1050u,1055u,351u,1055u,1050u,992u,992u,992u,992u,992u,},
    {0u,1023u,703u,15u,21u,1050u,1055u,351u,1055u,1050u,21u,992u,992u,992u,992u,992u,}, {0u,1023u,703u,21u,1050u,1055u,351u,1055u,1050u,21u,15u,992u,992u,992u,992u,992u,},
    {0u,1023u,703u,1050u,1055u,351u,1055u,1050u,21u,15u,21u,992u,992u,992u,992u,992u,}, {0u,1023u,703u,1055u,351u,1055u,1050u,21u,15u,21u,1050u,992u,992u,992u,992u,992u,},
    {32545u,32767u,32634u,32470u,32337u,32173u,32040u,31876u,31744u,3378u,1232u,20351u,13020u,8728u,4498u,171u,}, {0u,32634u,32470u,32337u,32173u,32040u,31876u,31744u,32767u,3378u,1232u,20351u,13020u,8728u,4498u,171u,},
    {0u,32470u,32337u,32173u,32040u,31876u,31744u,32767u,32634u,3378u,1232u,20351u,13020u,8728u,4498u,171u,}, {0u,32337u,32173u,32040u,31876u,31744u,32767u,32634u,32470u,3378u,1232u,20351u,13020u,8728u,4498u,171u,},
    {0u,32173u,32040u,31876u,31744u,32767u,32634u,32470u,32337u,3378u,1232u,20351u,13020u,8728u,4498u,171u,}, {0u,32040u,31876u,31744u,32767u,32634u,32470u,32337u,32173u,3378u,1232u,20351u,13020u,8728u,4498u,171u,},
    {0u,31876u,31744u,32767u,32634u,32470u,32337u,32173u,32040u,3378u,1232u,20351u,13020u,8728u,4498u,171u,}, {0u,31744u,32767u,32634u,32470u,32337u,32173u,32040u,31876u,3378u,1232u,20351u,13020u,8728u,4498u,171u,},
    {32545u,31744u,31876u,32040u,32173u,32337u,32470u,32634u,32767u,3378u,1232u,20351u,13020u,8728u,4498u,171u,}, {0u,32767u,31744u,31876u,32040u,32173u,32337u,32470u,32634u,3378u,1232u,20351u,13020u,8728u,4498u,171u,},
    {0u,32634u,32767u,31744u,31876u,32040u,32173u,32337u,32470u,3378u,1232u,20351u,13020u,8728u,4498u,171u,}, {0u,32470u,32634u,32767u,31744u,31876u,32040u,32173u,32337u,3378u,1232u,20351u,13020u,8728u,4498u,171u,},
    {0u,32337u,32470u,32634u,32767u,31744u,31876u,32040u,32173u,3378u,1232u,20351u,13020u,8728u,4498u,171u,}, {0u,32173u,32337u,32470u,32634u,32767u,31744u,31876u,32040u,3378u,1232u,20351u,13020u,8728u,4498u,171u,},
    {0u,32040u,32173u,32337u,32470u,32634u,32767u,31744u,31876u,3378u,1232u,20351u,13020u,8728u,4498u,171u,}, {0u,31876u,32040u,32173u,32337u,32470u,32634u,32767u,31744u,3378u,1232u,20351u,13020u,8728u,4498u,171u,},
    {27168u,32533u,32600u,32666u,32733u,32767u,0u,799u,25761u,32134u,32263u,32364u,32368u,32533u,32665u,32767u,}, {0u,32767u,32533u,32600u,32666u,32733u,0u,799u,25761u,32134u,32263u,32364u,32368u,32533u,32665u,32767u,},
    {0u,32733u,32767u,32533u,32600u,32666u,0u,799u,25761u,32134u,32263u,32364u,32368u,32533u,32665u,32767u,}, {0u,32666u,32733u,32767u,32533u,32600u,0u,799u,25761u,32134u,32263u,32364u,32368u,32533u,32665u,32767u,},
    {0u,32600u,32666u,32733u,32767u,32533u,0u,799u,25761u,32134u,32263u,32364u,32368u,32533u,32665u,32767u,}, {27168u,32533u,32600u,32666u,32733u,32767u,608u,17569u,25761u,32134u,32263u,32364u,32368u,32533u,32665u,32767u,},
    {0u,32767u,32533u,32600u,32666u,32733u,608u,17569u,25761u,32134u,32263u,32364u,32368u,32533u,32665u,32767u,}, {0u,32733u,32767u,32533u,32600u,32666u,608u,17569u,25761u,32134u,32263u,32364u,32368u,32533u,32665u,32767u,},
    {0u,32666u,32733u,32767u,32533u,32600u,608u,17569u,25761u,32134u,32263u,32364u,32368u,32533u,32665u,32767u,}, {0u,32600u,32666u,32733u,32767u,32533u,608u,17569u,25761u,32134u,32263u,32364u,32368u,32533u,32665u,32767u,},
    {6592u,17247u,12061u,7867u,569u,9685u,3474u,18066u,29695u,25463u,23284u,7872u,7872u,7872u,7872u,7872u,}, {31u,12061u,7867u,569u,17247u,9685u,3474u,18066u,29695u,25463u,23284u,7872u,7872u,7872u,7872u,7872u,},
    {31u,7867u,569u,17247u,12061u,9685u,3474u,18066u,29695u,25463u,23284u,7872u,7872u,7872u,7872u,7872u,}, {31u,569u,17247u,12061u,7867u,9685u,3474u,18066u,29695u,25463u,23284u,7872u,7872u,7872u,7872u,7872u,},
    {0u,29695u,25467u,19091u,14831u,6341u,5438u,150u,76u,959u,639u,307u,13151u,511u,86u,10u,}, {0u,29695u,25467u,19091u,14831u,6341u,959u,639u,307u,5438u,150u,76u,13151u,511u,86u,10u,},
    {0u,1023u,798u,639u,447u,31u,15663u,15375u,992u,30719u,24476u,14040u,32500u,31744u,19103u,31u,}, {0u,639u,447u,31u,607u,1023u,15375u,15855u,992u,30719u,24476u,14040u,32500u,31744u,19103u,31u,},
    {0u,31u,511u,1023u,798u,639u,15855u,15663u,992u,30719u,24476u,14040u,32500u,31744u,19103u,31u,}, {0u,18463u,29725u,12307u,15375u,32767u,32736u,24288u,15840u,22144u,15840u,11616u,7392u,32767u,21204u,0u,},
    {0u,18463u,29725u,12307u,15375u,32736u,24288u,15840u,32767u,15840u,11616u,7392u,22144u,32767u,21204u,0u,}, {0u,29725u,18463u,15375u,12307u,24288u,15840u,32767u,32736u,11616u,7392u,22144u,15840u,32767u,21204u,0u,},
    {0u,29725u,18463u,15375u,12307u,15840u,32767u,32736u,24288u,7392u,22144u,15840u,11616u,32767u,21204u,0u,}, {544u,15719u,13574u,11429u,9284u,7171u,31u,31u,31u,31u,31u,23242u,20041u,16840u,13639u,10438u,},
    {544u,15719u,13574u,11429u,9284u,7171u,31u,31u,31u,31u,31u,20041u,16840u,13639u,10438u,10438u,}, {544u,15719u,13574u,11429u,9284u,7171u,31u,31u,31u,31u,31u,16840u,13639u,10438u,10438u,10438u,},
    {544u,15719u,13574u,11429u,9284u,7171u,31u,31u,31u,31u,31u,13639u,10438u,10438u,10438u,23242u,}, {544u,15719u,13574u,11429u,9284u,7171u,31u,31u,31u,31u,31u,10438u,10438u,10438u,23242u,20041u,},
    {544u,15719u,13574u,11429u,9284u,7171u,31u,31u,31u,31u,31u,10438u,10438u,23242u,20041u,16840u,}, {544u,15719u,13574u,11429u,9284u,7171u,31u,31u,31u,31u,31u,10438u,23242u,20041u,16840u,13639u,},
    {0u,31u,671u,9215u,0u,0u,0u,0u,0u,32767u,992u,608u,15007u,495u,303u,6341u,}, {0u,31u,671u,9215u,0u,0u,0u,0u,0u,992u,608u,32767u,495u,303u,15007u,6341u,},
    {0u,31u,671u,9215u,0u,0u,0u,0u,0u,608u,32767u,992u,303u,15007u,495u,6341u,}, {544u,32767u,23354u,18101u,12751u,7433u,2081u,19359u,13051u,10871u,8723u,32767u,32751u,32487u,32224u,24576u,},
    {0u,32767u,23354u,18101u,12751u,7433u,2081u,19359u,13051u,10871u,8723u,32751u,32487u,32224u,24576u,12288u,}, {0u,32767u,23354u,18101u,12751u,7433u,2081u,19359u,13051u,10871u,8723u,32487u,32224u,24576u,12288u,0u,},
    {640u,6436u,12865u,16352u,32767u,0u,5472u,5824u,23254u,31u,32767u,22328u,14931u,7501u,104u,2081u,}, {0u,32767u,6436u,12865u,16352u,23254u,0u,5472u,5824u,31u,32767u,22328u,14931u,7501u,104u,2081u,},
    {0u,16352u,32767u,6436u,12865u,5824u,23254u,0u,5472u,31u,32767u,22328u,14931u,7501u,104u,2081u,}, {0u,12865u,16352u,32767u,6436u,5472u,5824u,23254u,0u,31u,32767u,22328u,14931u,7501u,104u,2081u,},
    {576u,32223u,23580u,18450u,32736u,25280u,14784u,992u,736u,448u,31u,15538u,14574u,11499u,9417u,6310u,}, {0u,32736u,25280u,14784u,992u,736u,448u,1023u,735u,376u,31u,15538u,14574u,11499u,9417u,6310u,},
    {0u,992u,736u,448u,1023u,735u,376u,32223u,23580u,18450u,31u,15538u,14574u,11499u,9417u,6310u,}, {0u,1023u,735u,376u,32223u,23580u,18450u,32736u,25280u,14784u,31u,15538u,14574u,11499u,9417u,6310u,},
    {31775u,32736u,30563u,28387u,26179u,22977u,20800u,32767u,21183u,10719u,255u,25u,20u,14u,9u,15584u,}, {31u,30563u,28387u,26179u,22977u,20800u,15584u,32767u,21183u,10719u,255u,25u,20u,14u,9u,32736u,},
    {31u,28387u,26179u,22977u,20800u,15584u,32736u,32767u,21183u,10719u,255u,25u,20u,14u,9u,30563u,}, {31u,26179u,22977u,20800u,15584u,32736u,30563u,32767u,21183u,10719u,255u,25u,20u,14u,9u,28387u,},
    {31u,22977u,20800u,15584u,32736u,30563u,28387u,32767u,21183u,10719u,255u,25u,20u,14u,9u,26179u,}, {31u,20800u,15584u,32736u,30563u,28387u,26179u,32767u,21183u,10719u,255u,25u,20u,14u,9u,22977u,},
    {31u,15584u,32736u,30563u,28387u,26179u,22977u,32767u,21183u,10719u,255u,25u,20u,14u,9u,20800u,}, {0u,1023u,924u,794u,16328u,16328u,16328u,32767u,21183u,10719u,255u,25u,20u,14u,9u,15584u,},
    {32767u,794u,694u,595u,16328u,16328u,16328u,32767u,21183u,10719u,255u,25u,20u,14u,9u,15584u,}, {32767u,595u,463u,298u,16328u,16328u,16328u,32767u,21183u,10719u,255u,25u,20u,14u,9u,15584u,},
    {32767u,463u,298u,231u,10304u,16328u,16328u,32767u,21183u,10719u,255u,25u,20u,14u,9u,15584u,}, {31775u,1023u,924u,794u,663u,532u,401u,32767u,32723u,30508u,27176u,23972u,18691u,13507u,10370u,302u,},
    {31u,924u,794u,663u,532u,401u,302u,32767u,32723u,30508u,27176u,23972u,18691u,13507u,10370u,1023u,}, {31u,794u,663u,532u,401u,302u,1023u,32767u,32723u,30508u,27176u,23972u,18691u,13507u,10370u,924u,},
    {31u,663u,532u,401u,302u,1023u,924u,32767u,32723u,30508u,27176u,23972u,18691u,13507u,10370u,794u,}, {31u,532u,401u,302u,1023u,924u,794u,32767u,32723u,30508u,27176u,23972u,18691u,13507u,10370u,663u,},
    {31u,401u,302u,1023u,924u,794u,663u,32767u,32723u,30508u,27176u,23972u,18691u,13507u,10370u,532u,}, {31u,302u,1023u,924u,794u,663u,532u,32767u,32723u,30508u,27176u,23972u,18691u,13507u,10370u,401u,},
    {0u,31u,1051u,3095u,16328u,16328u,16328u,32767u,32723u,30508u,27176u,23972u,18691u,13507u,10370u,302u,}, {32767u,1051u,3095u,5138u,16328u,16328u,16328u,32767u,32723u,30508u,27176u,23972u,18691u,13507u,10370u,302u,},
    {32767u,3095u,5138u,7182u,16328u,16328u,16328u,32767u,32723u,30508u,27176u,23972u,18691u,13507u,10370u,302u,}, {32767u,5138u,7182u,8202u,16328u,16328u,16328u,32767u,32723u,30508u,27176u,23972u,18691u,13507u,10370u,302u,},
    {31775u,7647u,7483u,6295u,5138u,7182u,8202u,32767u,23551u,12188u,794u,629u,464u,332u,167u,6150u,}, {31u,7483u,6295u,5138u,7182u,8202u,6150u,32767u,23551u,12188u,794u,629u,464u,332u,167u,7647u,},
    {31u,6295u,5138u,7182u,8202u,6150u,7647u,32767u,23551u,12188u,794u,629u,464u,332u,167u,7483u,}, {31u,5138u,7182u,8202u,6150u,7647u,7483u,32767u,23551u,12188u,794u,629u,464u,332u,167u,6295u,},
    {31u,7182u,8202u,6150u,7647u,7483u,6295u,32767u,23551u,12188u,794u,629u,464u,332u,167u,5138u,}, {31u,8202u,6150u,7647u,7483u,6295u,5138u,32767u,23551u,12188u,794u,629u,464u,332u,167u,7182u,},
    {31u,6150u,7647u,7483u,6295u,5138u,7182u,32767u,23551u,12188u,794u,629u,464u,332u,167u,8202u,}, {0u,8071u,7943u,7815u,16328u,16328u,16328u,32767u,23551u,12188u,794u,629u,464u,332u,167u,6150u,},
    {32767u,7815u,7687u,7591u,16328u,16328u,16328u,32767u,23551u,12188u,794u,629u,464u,332u,167u,6150u,}, {32767u,7687u,7591u,3362u,16328u,16328u,16328u,32767u,23551u,12188u,794u,629u,464u,332u,167u,6150u,},
    {32767u,7591u,3362u,1152u,16328u,16328u,16328u,32767u,23551u,12188u,794u,629u,464u,332u,167u,6150u,}, {31775u,1023u,924u,794u,663u,532u,401u,32767u,19443u,992u,832u,640u,480u,288u,128u,302u,},
    {31u,924u,794u,663u,532u,401u,302u,32767u,19443u,992u,832u,640u,480u,288u,128u,1023u,}, {31u,794u,663u,532u,401u,302u,1023u,32767u,19443u,992u,832u,640u,480u,288u,128u,924u,},
    {31u,663u,532u,401u,302u,1023u,924u,32767u,19443u,992u,832u,640u,480u,288u,128u,794u,}, {31u,532u,401u,302u,1023u,924u,794u,32767u,19443u,992u,832u,640u,480u,288u,128u,663u,},
    {31u,401u,302u,1023u,924u,794u,663u,32767u,19443u,992u,832u,640u,480u,288u,128u,532u,}, {31u,302u,1023u,924u,794u,663u,532u,32767u,19443u,992u,832u,640u,480u,288u,128u,401u,},
    {0u,31u,1051u,3095u,16328u,16328u,16328u,32767u,19443u,992u,832u,640u,480u,288u,128u,302u,}, {32767u,1051u,3095u,5138u,16328u,16328u,16328u,32767u,19443u,992u,832u,640u,480u,288u,128u,302u,},
    {32767u,3095u,5138u,7182u,16328u,16328u,16328u,32767u,19443u,992u,832u,640u,480u,288u,128u,302u,}, {32767u,5138u,7182u,8202u,16328u,16328u,16328u,32767u,19443u,992u,832u,640u,480u,288u,128u,302u,},
    {31775u,32736u,30563u,28387u,26179u,22977u,20800u,32767u,31742u,28604u,23287u,18001u,11692u,6375u,1089u,15584u,}, {31u,30563u,28387u,26179u,22977u,20800u,15584u,32767u,31742u,28604u,23287u,18001u,11692u,6375u,1089u,32736u,},
    {31u,28387u,26179u,22977u,20800u,15584u,32736u,32767u,31742u,28604u,23287u,18001u,11692u,6375u,1089u,30563u,}, {31u,26179u,22977u,20800u,15584u,32736u,30563u,32767u,31742u,28604u,23287u,18001u,11692u,6375u,1089u,28387u,},
    {31u,22977u,20800u,15584u,32736u,30563u,28387u,32767u,31742u,28604u,23287u,18001u,11692u,6375u,1089u,26179u,}, {31u,20800u,15584u,32736u,30563u,28387u,26179u,32767u,31742u,28604u,23287u,18001u,11692u,6375u,1089u,22977u,},
    {31u,15584u,32736u,30563u,28387u,26179u,22977u,32767u,31742u,28604u,23287u,18001u,11692u,6375u,1089u,20800u,}, {0u,1023u,924u,794u,16328u,16328u,16328u,32767u,31742u,28604u,23287u,18001u,11692u,6375u,1089u,302u,},
    {32767u,794u,694u,595u,16328u,16328u,16328u,32767u,31742u,28604u,23287u,18001u,11692u,6375u,1089u,15584u,}, {32767u,595u,463u,298u,16328u,16328u,16328u,32767u,31742u,28604u,23287u,18001u,11692u,6375u,1089u,15584u,},
    {32767u,463u,298u,231u,10304u,16328u,16328u,32767u,31742u,28604u,23287u,18001u,11692u,6375u,1089u,15584u,}, {31775u,1023u,924u,794u,663u,532u,401u,32767u,32755u,30575u,28387u,23106u,16801u,11489u,6208u,302u,},
    {31u,924u,794u,663u,532u,401u,302u,32767u,32755u,30575u,28387u,23106u,16801u,11489u,6208u,1023u,}, {31u,794u,663u,532u,401u,302u,1023u,32767u,32755u,30575u,28387u,23106u,16801u,11489u,6208u,924u,},
    {31u,663u,532u,401u,302u,1023u,924u,32767u,32755u,30575u,28387u,23106u,16801u,11489u,6208u,794u,}, {31u,532u,401u,302u,1023u,924u,794u,32767u,32755u,30575u,28387u,23106u,16801u,11489u,6208u,663u,},
    {31u,401u,302u,1023u,924u,794u,663u,32767u,32755u,30575u,28387u,23106u,16801u,11489u,6208u,532u,}, {31u,302u,1023u,924u,794u,663u,532u,32767u,32755u,30575u,28387u,23106u,16801u,11489u,6208u,401u,},
    {0u,31u,1051u,3095u,16328u,16328u,16328u,32767u,32755u,30575u,28387u,23106u,16801u,11489u,6208u,302u,}, {32767u,1051u,3095u,5138u,16328u,16328u,16328u,32767u,32755u,30575u,28387u,23106u,16801u,11489u,6208u,302u,},
    {32767u,3095u,5138u,7182u,16328u,16328u,16328u,32767u,32755u,30575u,28387u,23106u,16801u,11489u,6208u,302u,}, {32767u,5138u,7182u,8202u,16328u,16328u,16328u,32767u,32755u,30575u,28387u,23106u,16801u,11489u,6208u,302u,},
    {31775u,1023u,924u,794u,663u,532u,401u,32767u,32511u,31775u,26650u,20500u,15375u,9225u,3075u,302u,}, {31u,924u,794u,663u,532u,401u,302u,32767u,32511u,31775u,26650u,20500u,15375u,9225u,3075u,1023u,},
    {31u,794u,663u,532u,401u,302u,1023u,32767u,32511u,31775u,26650u,20500u,15375u,9225u,3075u,924u,}, {31u,663u,532u,401u,302u,1023u,924u,32767u,32511u,31775u,26650u,20500u,15375u,9225u,3075u,794u,},
    {31u,532u,401u,302u,1023u,924u,794u,32767u,32511u,31775u,26650u,20500u,15375u,9225u,3075u,663u,}, {31u,401u,302u,1023u,924u,794u,663u,32767u,32511u,31775u,26650u,20500u,15375u,9225u,3075u,532u,},
    {31u,302u,1023u,924u,794u,663u,532u,32767u,32511u,31775u,26650u,20500u,15375u,9225u,3075u,401u,}, {0u,31u,1051u,3095u,16328u,16328u,16328u,32767u,32511u,31775u,26650u,20500u,15375u,9225u,3075u,302u,},
    {32767u,1051u,3095u,5138u,16328u,16328u,16328u,32767u,32511u,31775u,26650u,20500u,15375u,9225u,3075u,302u,}, {32767u,3095u,5138u,7182u,16328u,16328u,16328u,32767u,32511u,31775u,26650u,20500u,15375u,9225u,3075u,302u,},
    {32767u,5138u,7182u,8202u,16328u,16328u,16328u,32767u,32511u,31775u,26650u,20500u,15375u,9225u,3075u,302u,}, {32767u,31u,14317u,1023u,31744u,32736u,5823u,7646u,3325u,111u,512u,512u,7395u,12678u,5383u,5249u,},
    {32767u,32736u,31u,14317u,1023u,31744u,5823u,7646u,3325u,111u,512u,512u,7395u,12678u,5383u,5249u,}, {32767u,31744u,32736u,31u,14317u,1023u,5823u,7646u,3325u,111u,512u,512u,7395u,12678u,5383u,5249u,},
    {32767u,1023u,31744u,32736u,31u,14317u,5823u,7646u,3325u,111u,512u,512u,7395u,12678u,5383u,5249u,}, {32767u,14317u,1023u,31744u,32736u,31u,5823u,7646u,3325u,111u,512u,512u,7395u,12678u,5383u,5249u,},
    {512u,11263u,703u,1426u,269u,512u,512u,512u,512u,512u,512u,512u,512u,512u,512u,12678u,}, {512u,703u,1426u,269u,11263u,512u,512u,512u,512u,512u,512u,512u,512u,512u,512u,12678u,},
    {512u,1426u,269u,11263u,703u,512u,512u,512u,512u,512u,512u,512u,512u,512u,512u,12678u,}, {512u,269u,11263u,703u,1426u,512u,512u,512u,512u,512u,512u,512u,512u,512u,512u,12678u,},
    {512u,15955u,13807u,3302u,30686u,24510u,19326u,8991u,638u,30686u,24510u,19326u,8991u,638u,512u,512u,}, {512u,15955u,13807u,3302u,30686u,24510u,19326u,8991u,638u,24510u,19326u,8991u,638u,638u,512u,512u,},
    {32767u,31u,14317u,1023u,31744u,32736u,7646u,3325u,3321u,107u,512u,512u,7395u,12678u,5383u,5249u,}, {32767u,31u,14317u,1023u,31744u,32736u,3325u,3321u,107u,137u,512u,512u,7395u,12678u,5383u,5249u,},
    {32767u,31u,14317u,1023u,31744u,32736u,3321u,107u,137u,36u,512u,512u,7395u,12678u,5383u,5249u,}, {0u,10239u,6879u,511u,86u,0u,32593u,32392u,32192u,32383u,31775u,16415u,17376u,15200u,9664u,32u,},
    {0u,10239u,6879u,511u,86u,0u,32383u,31775u,16415u,32593u,32392u,32192u,9664u,32u,17376u,15200u,}, {17862u,1023u,992u,672u,352u,1023u,799u,511u,31u,0u,0u,0u,0u,0u,0u,0u,},
    {0u,992u,672u,352u,1023u,1023u,799u,511u,31u,0u,0u,0u,0u,0u,0u,0u,}, {0u,672u,352u,1023u,992u,511u,31u,1023u,799u,0u,0u,0u,0u,0u,0u,0u,},
    {0u,352u,1023u,992u,672u,511u,31u,1023u,799u,0u,0u,0u,0u,0u,0u,0u,}, {0u,3645u,5655u,6609u,7562u,8548u,5461u,5424u,5386u,5349u,5312u,31u,31u,31u,31u,31u,},
    {0u,5655u,6609u,7562u,8548u,8548u,5424u,5386u,5349u,5312u,5312u,31u,31u,31u,31u,31u,}, {0u,6609u,7562u,8548u,8548u,8548u,5386u,5349u,5312u,5312u,5312u,31u,31u,31u,31u,31u,},
    {0u,5655u,6609u,7562u,8548u,8548u,5424u,5386u,5349u,5312u,5312u,31u,31u,31u,31u,31u,}, {0u,32767u,18270u,6909u,6742u,6575u,5451u,6342u,28543u,24191u,14719u,6303u,23u,31u,31u,2081u,},
    {0u,32767u,18270u,6909u,6742u,6575u,5451u,6342u,30655u,26303u,15775u,7359u,1081u,0u,0u,0u,}, {0u,32767u,18270u,6909u,6742u,6575u,5451u,6342u,31711u,27359u,17887u,9471u,3194u,0u,0u,0u,},
    {0u,32767u,18270u,6909u,6742u,6575u,5451u,6342u,32767u,29471u,19999u,10527u,4252u,0u,0u,0u,}, {0u,32767u,18270u,6909u,6742u,6575u,5451u,6342u,32767u,31551u,21055u,12639u,6366u,0u,0u,0u,},
    {0u,32767u,18270u,6909u,6742u,6575u,5451u,6342u,32767u,29471u,19999u,10527u,4252u,0u,0u,0u,}, {0u,32767u,18270u,6909u,6742u,6575u,5451u,6342u,31711u,27359u,17887u,9471u,3194u,0u,0u,0u,},
    {0u,32767u,18270u,6909u,6742u,6575u,5451u,6342u,30655u,26303u,15775u,7359u,1081u,0u,0u,0u,}, {576u,31674u,28405u,24243u,21105u,17935u,14764u,8391u,31u,479u,831u,1023u,32751u,32487u,24576u,2081u,},
    {576u,31674u,28405u,24243u,21105u,17935u,14764u,8391u,24576u,31u,479u,831u,1023u,32751u,32487u,0u,}, {576u,31674u,28405u,24243u,21105u,17935u,14764u,8391u,32487u,24576u,31u,479u,831u,1023u,32751u,0u,},
    {576u,31674u,28405u,24243u,21105u,17935u,14764u,8391u,32751u,32487u,24576u,31u,479u,831u,1023u,0u,}, {576u,31674u,28405u,24243u,21105u,17935u,14764u,8391u,1023u,32751u,32487u,24576u,31u,479u,831u,0u,},
    {576u,31674u,28405u,24243u,21105u,17935u,14764u,8391u,831u,1023u,32751u,32487u,24576u,31u,479u,0u,}, {576u,31674u,28405u,24243u,21105u,17935u,14764u,8391u,479u,831u,1023u,32751u,32487u,24576u,31u,0u,},
    {576u,32767u,30617u,27348u,23186u,20048u,14764u,8391u,831u,7039u,14271u,20479u,16352u,17386u,19445u,20479u,}, {576u,32767u,30617u,27348u,23186u,20048u,14764u,8391u,23517u,7962u,13147u,18332u,23486u,20386u,20395u,22453u,},
    {576u,32767u,30617u,27348u,23186u,20048u,14764u,8391u,23417u,26555u,16117u,19255u,25429u,25437u,23365u,24397u,}, {576u,32767u,30617u,27348u,23186u,20048u,14764u,8391u,25363u,27477u,29592u,23248u,27374u,28405u,28412u,27368u,},
    {576u,32767u,30617u,27348u,23186u,20048u,14764u,8391u,31403u,31470u,32562u,32630u,31403u,31408u,31381u,31387u,}, {576u,32767u,30617u,27348u,23186u,20048u,14764u,8391u,29592u,23248u,25363u,27477u,28412u,27368u,27374u,28405u,},
    {576u,32767u,30617u,27348u,23186u,20048u,14764u,8391u,23417u,26555u,16117u,23417u,25429u,25437u,23365u,24397u,}, {576u,32767u,30617u,27348u,23186u,20048u,14764u,8391u,13147u,18332u,23517u,7962u,20395u,22453u,23486u,20386u,},
    {31u,3211u,0u,5615u,3435u,17039u,14826u,10599u,16054u,13908u,11794u,9647u,8556u,6410u,5319u,3204u,}, {31u,4277u,3211u,1023u,3897u,17039u,14826u,10599u,16054u,13908u,11794u,9647u,8556u,6410u,5319u,3204u,},
    {31u,31u,4277u,3897u,7795u,17039u,14826u,10599u,16054u,13908u,11794u,9647u,8556u,6410u,5319u,3204u,}, {31u,4277u,3211u,7795u,5615u,17039u,14826u,10599u,16054u,13908u,11794u,9647u,8556u,6410u,5319u,3204u,},
    {31u,4277u,3211u,3435u,1189u,17039u,14826u,10599u,16054u,13908u,11794u,9647u,8556u,6410u,5319u,3204u,}, {31u,31u,4277u,1189u,0u,17039u,14826u,10599u,16054u,13908u,11794u,9647u,8556u,6410u,5319u,3204u,},
    {31u,4277u,3211u,0u,0u,17039u,14826u,10599u,16054u,13908u,11794u,9647u,8556u,6410u,5319u,3204u,}, {576u,70u,1260u,1394u,1529u,7967u,24575u,4257u,13769u,19117u,22353u,24501u,31u,543u,27456u,32749u,},
    {576u,70u,1260u,1394u,1529u,7967u,24575u,4257u,13769u,19117u,22353u,24501u,27456u,32749u,31u,543u,}, {576u,28095u,24924u,21721u,18550u,15538u,12525u,32767u,21140u,32736u,23142u,32288u,22918u,18720u,15622u,6310u,},
    {576u,28095u,24924u,21721u,18550u,15538u,12525u,32736u,23142u,32288u,22918u,18720u,15622u,32767u,21140u,6310u,}, {576u,28095u,24924u,21721u,18550u,15538u,12525u,32288u,22918u,18720u,15622u,32767u,21140u,32736u,23142u,6310u,},
    {576u,28095u,24924u,21721u,18550u,15538u,12525u,18720u,15622u,32767u,21140u,32736u,23142u,32288u,22918u,6310u,}, {6880u,23254u,19584u,29952u,12288u,608u,20479u,895u,2387u,10943u,21u,4255u,4228u,32767u,14798u,32352u,},
    {6880u,31775u,4669u,4863u,2391u,28469u,32352u,32004u,20083u,14798u,21u,4255u,2114u,32767u,31775u,31775u,}, {21184u,23254u,23u,159u,14u,32004u,20479u,895u,339u,10943u,2720u,1006u,4228u,32767u,14798u,639u,},
    {6880u,28469u,19741u,24191u,10391u,672u,14798u,20083u,339u,10943u,21u,31u,0u,32767u,20479u,1023u,}, {7872u,32767u,24191u,21983u,18783u,16606u,12346u,22399u,671u,447u,29u,24u,22463u,13119u,0u,0u,},
    {8586u,32767u,32695u,32622u,32550u,32388u,30115u,23714u,0u,1023u,15287u,20192u,672u,17263u,18215u,480u,}, {608u,32767u,20479u,1023u,831u,4863u,8831u,8667u,8597u,8465u,6282u,0u,28539u,30653u,6342u,223u,},
    {384u,223u,155u,83u,12u,32767u,24377u,17969u,8456u,32422u,28104u,21832u,17670u,959u,767u,575u,}, {384u,2877u,1721u,565u,401u,32767u,24377u,17969u,8456u,31u,23u,14u,6u,22527u,11263u,7103u,},
    {6688u,24511u,24445u,22265u,18039u,12755u,10638u,8524u,6410u,32767u,25368u,19026u,14798u,10570u,5285u,0u,}, {800u,14798u,32767u,213u,10815u,287u,219u,1023u,9207u,32300u,29834u,637u,0u,24311u,21504u,32550u,},
    {20448u,479u,155u,83u,12u,32539u,32345u,32146u,31883u,0u,25761u,32263u,32364u,32533u,32665u,32767u,}, {21504u,32484u,26177u,19840u,12480u,479u,157u,83u,12u,959u,32767u,30651u,28471u,20014u,12616u,0u,},
    {32416u,32497u,28202u,25860u,17536u,479u,157u,83u,12u,959u,32767u,30587u,26357u,20014u,12616u,0u,}, {6592u,24168u,32305u,32198u,19648u,24360u,24488u,20403u,9145u,959u,32767u,30587u,24243u,17802u,25992u,0u,},
    {6880u,32767u,26425u,20081u,12684u,0u,29u,281u,211u,479u,895u,30167u,23886u,17608u,8322u,19935u,}, {6880u,0u,32767u,24311u,9547u,26527u,20255u,926u,639u,3184u,704u,512u,24159u,17758u,8376u,31u,},
    {672u,32767u,20479u,1023u,831u,4863u,8831u,8667u,8597u,8465u,6282u,0u,28539u,30653u,6342u,223u,}, {608u,0u,32767u,4228u,6342u,10570u,8456u,12684u,14798u,17969u,20083u,22197u,24311u,26425u,28539u,30653u,},
    {672u,0u,32767u,4228u,6342u,10570u,8456u,12684u,14798u,17969u,20083u,22197u,24311u,26425u,28539u,30653u,}, {608u,32767u,20479u,1023u,831u,4863u,8831u,8667u,8597u,8465u,6282u,0u,28539u,30653u,6342u,223u,},
    {736u,0u,32767u,4228u,6342u,8456u,10570u,12684u,14815u,17969u,20083u,22197u,24311u,26425u,28539u,30653u,}, {608u,20083u,10570u,8456u,0u,32635u,32503u,32074u,32128u,21504u,30240u,27648u,31744u,1023u,32767u,25600u,},
    {672u,0u,32767u,4228u,6342u,8456u,10570u,12684u,14798u,17969u,20083u,22197u,24311u,26425u,28539u,30653u,}, {616u,0u,32767u,4228u,6342u,8456u,10570u,12684u,14798u,17969u,20083u,22197u,24311u,26425u,28539u,30653u,},
    {992u,32767u,22524u,11224u,22431u,11039u,703u,764u,856u,575u,479u,31u,0u,0u,0u,0u,}, {992u,0u,32767u,26426u,17970u,926u,6910u,607u,2525u,3346u,6816u,3558u,8000u,31u,1080u,1104u,},
    {948u,32767u,22524u,11224u,22431u,11039u,703u,764u,856u,575u,479u,31u,0u,0u,0u,0u,}, {608u,1023u,831u,4863u,8831u,32767u,30653u,28539u,26425u,24311u,22197u,20083u,14798u,12684u,8456u,0u,},
    {672u,31u,22079u,32767u,12480u,23616u,31744u,0u,74u,149u,223u,266u,665u,895u,6284u,18781u,}, {736u,0u,32767u,4228u,6342u,8456u,10570u,12684u,14798u,17969u,20083u,22197u,24311u,26425u,28539u,30653u,},
    {512u,0u,32767u,4228u,6342u,8456u,10570u,12684u,14798u,17969u,20083u,22197u,24311u,26425u,28539u,30653u,}, {27388u,0u,32767u,4228u,6342u,8456u,10570u,12684u,14798u,17969u,20083u,22197u,24311u,26425u,28539u,30653u,},
    {18114u,0u,32767u,24222u,22975u,991u,799u,607u,3346u,32719u,31584u,30371u,30149u,17603u,26425u,11156u,}, {18114u,0u,32767u,24222u,22975u,991u,799u,607u,3346u,32719u,31584u,30371u,29092u,17603u,26425u,11156u,},
    {608u,32767u,20479u,1023u,831u,4863u,8831u,8667u,8597u,8465u,6282u,0u,28539u,30653u,6342u,223u,}, {736u,0u,32767u,4228u,6342u,8456u,10570u,12684u,14798u,17969u,20083u,22197u,24311u,26425u,28539u,30653u,},
    {608u,0u,32767u,4228u,6342u,8456u,10570u,12684u,14798u,17969u,20083u,22197u,24311u,26425u,28539u,30653u,}, {576u,0u,32767u,4228u,6342u,8456u,10570u,12684u,14798u,17969u,20083u,22197u,24311u,26425u,28539u,30653u,},
    {21184u,26425u,23u,159u,14u,32004u,20479u,895u,339u,10943u,2720u,1006u,4228u,32767u,14798u,415u,}, {1009u,32767u,20479u,1023u,831u,4863u,8831u,8667u,8597u,8465u,6282u,0u,28539u,30653u,6342u,223u,},
};
