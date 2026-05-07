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
    INCBIN_U16("graphics/sa1/obj_palettes/pal_000.gbapal"), INCBIN_U16("graphics/sa1/obj_palettes/pal_001.gbapal"),
    INCBIN_U16("graphics/sa1/obj_palettes/pal_002.gbapal"), INCBIN_U16("graphics/sa1/obj_palettes/pal_003.gbapal"),
    INCBIN_U16("graphics/sa1/obj_palettes/pal_004.gbapal"), INCBIN_U16("graphics/sa1/obj_palettes/pal_005.gbapal"),
    INCBIN_U16("graphics/sa1/obj_palettes/pal_006.gbapal"), INCBIN_U16("graphics/sa1/obj_palettes/pal_007.gbapal"),
    INCBIN_U16("graphics/sa1/obj_palettes/pal_008.gbapal"), INCBIN_U16("graphics/sa1/obj_palettes/pal_009.gbapal"),
    INCBIN_U16("graphics/sa1/obj_palettes/pal_010.gbapal"), INCBIN_U16("graphics/sa1/obj_palettes/pal_011.gbapal"),
    INCBIN_U16("graphics/sa1/obj_palettes/pal_012.gbapal"), INCBIN_U16("graphics/sa1/obj_palettes/pal_013.gbapal"),
    INCBIN_U16("graphics/sa1/obj_palettes/pal_014.gbapal"), INCBIN_U16("graphics/sa1/obj_palettes/pal_015.gbapal"),
    INCBIN_U16("graphics/sa1/obj_palettes/pal_016.gbapal"), INCBIN_U16("graphics/sa1/obj_palettes/pal_017.gbapal"),
    INCBIN_U16("graphics/sa1/obj_palettes/pal_018.gbapal"), INCBIN_U16("graphics/sa1/obj_palettes/pal_019.gbapal"),
    INCBIN_U16("graphics/sa1/obj_palettes/pal_020.gbapal"), INCBIN_U16("graphics/sa1/obj_palettes/pal_021.gbapal"),
    INCBIN_U16("graphics/sa1/obj_palettes/pal_022.gbapal"), INCBIN_U16("graphics/sa1/obj_palettes/pal_023.gbapal"),
    INCBIN_U16("graphics/sa1/obj_palettes/pal_024.gbapal"), INCBIN_U16("graphics/sa1/obj_palettes/pal_025.gbapal"),
    INCBIN_U16("graphics/sa1/obj_palettes/pal_026.gbapal"), INCBIN_U16("graphics/sa1/obj_palettes/pal_027.gbapal"),
    INCBIN_U16("graphics/sa1/obj_palettes/pal_028.gbapal"), INCBIN_U16("graphics/sa1/obj_palettes/pal_029.gbapal"),
    INCBIN_U16("graphics/sa1/obj_palettes/pal_030.gbapal"), INCBIN_U16("graphics/sa1/obj_palettes/pal_031.gbapal"),
    INCBIN_U16("graphics/sa1/obj_palettes/pal_032.gbapal"), INCBIN_U16("graphics/sa1/obj_palettes/pal_033.gbapal"),
    INCBIN_U16("graphics/sa1/obj_palettes/pal_034.gbapal"), INCBIN_U16("graphics/sa1/obj_palettes/pal_035.gbapal"),
    INCBIN_U16("graphics/sa1/obj_palettes/pal_036.gbapal"), INCBIN_U16("graphics/sa1/obj_palettes/pal_037.gbapal"),
    INCBIN_U16("graphics/sa1/obj_palettes/pal_038.gbapal"), INCBIN_U16("graphics/sa1/obj_palettes/pal_039.gbapal"),
    INCBIN_U16("graphics/sa1/obj_palettes/pal_040.gbapal"), INCBIN_U16("graphics/sa1/obj_palettes/pal_041.gbapal"),
    INCBIN_U16("graphics/sa1/obj_palettes/pal_042.gbapal"), INCBIN_U16("graphics/sa1/obj_palettes/pal_043.gbapal"),
    INCBIN_U16("graphics/sa1/obj_palettes/pal_044.gbapal"), INCBIN_U16("graphics/sa1/obj_palettes/pal_045.gbapal"),
    INCBIN_U16("graphics/sa1/obj_palettes/pal_046.gbapal"), INCBIN_U16("graphics/sa1/obj_palettes/pal_047.gbapal"),
    INCBIN_U16("graphics/sa1/obj_palettes/pal_048.gbapal"), INCBIN_U16("graphics/sa1/obj_palettes/pal_049.gbapal"),
    INCBIN_U16("graphics/sa1/obj_palettes/pal_050.gbapal"), INCBIN_U16("graphics/sa1/obj_palettes/pal_051.gbapal"),
    INCBIN_U16("graphics/sa1/obj_palettes/pal_052.gbapal"), INCBIN_U16("graphics/sa1/obj_palettes/pal_053.gbapal"),
    INCBIN_U16("graphics/sa1/obj_palettes/pal_054.gbapal"), INCBIN_U16("graphics/sa1/obj_palettes/pal_055.gbapal"),
    INCBIN_U16("graphics/sa1/obj_palettes/pal_056.gbapal"), INCBIN_U16("graphics/sa1/obj_palettes/pal_057.gbapal"),
    INCBIN_U16("graphics/sa1/obj_palettes/pal_058.gbapal"), INCBIN_U16("graphics/sa1/obj_palettes/pal_059.gbapal"),
    INCBIN_U16("graphics/sa1/obj_palettes/pal_060.gbapal"), INCBIN_U16("graphics/sa1/obj_palettes/pal_061.gbapal"),
    INCBIN_U16("graphics/sa1/obj_palettes/pal_062.gbapal"), INCBIN_U16("graphics/sa1/obj_palettes/pal_063.gbapal"),
    INCBIN_U16("graphics/sa1/obj_palettes/pal_064.gbapal"), INCBIN_U16("graphics/sa1/obj_palettes/pal_065.gbapal"),
    INCBIN_U16("graphics/sa1/obj_palettes/pal_066.gbapal"), INCBIN_U16("graphics/sa1/obj_palettes/pal_067.gbapal"),
    INCBIN_U16("graphics/sa1/obj_palettes/pal_068.gbapal"), INCBIN_U16("graphics/sa1/obj_palettes/pal_069.gbapal"),
    INCBIN_U16("graphics/sa1/obj_palettes/pal_070.gbapal"), INCBIN_U16("graphics/sa1/obj_palettes/pal_071.gbapal"),
    INCBIN_U16("graphics/sa1/obj_palettes/pal_072.gbapal"), INCBIN_U16("graphics/sa1/obj_palettes/pal_073.gbapal"),
    INCBIN_U16("graphics/sa1/obj_palettes/pal_074.gbapal"), INCBIN_U16("graphics/sa1/obj_palettes/pal_075.gbapal"),
    INCBIN_U16("graphics/sa1/obj_palettes/pal_076.gbapal"), INCBIN_U16("graphics/sa1/obj_palettes/pal_077.gbapal"),
    INCBIN_U16("graphics/sa1/obj_palettes/pal_078.gbapal"), INCBIN_U16("graphics/sa1/obj_palettes/pal_079.gbapal"),
    INCBIN_U16("graphics/sa1/obj_palettes/pal_080.gbapal"), INCBIN_U16("graphics/sa1/obj_palettes/pal_081.gbapal"),
    INCBIN_U16("graphics/sa1/obj_palettes/pal_082.gbapal"), INCBIN_U16("graphics/sa1/obj_palettes/pal_083.gbapal"),
    INCBIN_U16("graphics/sa1/obj_palettes/pal_084.gbapal"), INCBIN_U16("graphics/sa1/obj_palettes/pal_085.gbapal"),
    INCBIN_U16("graphics/sa1/obj_palettes/pal_086.gbapal"), INCBIN_U16("graphics/sa1/obj_palettes/pal_087.gbapal"),
    INCBIN_U16("graphics/sa1/obj_palettes/pal_088.gbapal"), INCBIN_U16("graphics/sa1/obj_palettes/pal_089.gbapal"),
    INCBIN_U16("graphics/sa1/obj_palettes/pal_090.gbapal"), INCBIN_U16("graphics/sa1/obj_palettes/pal_091.gbapal"),
    INCBIN_U16("graphics/sa1/obj_palettes/pal_092.gbapal"), INCBIN_U16("graphics/sa1/obj_palettes/pal_093.gbapal"),
    INCBIN_U16("graphics/sa1/obj_palettes/pal_094.gbapal"), INCBIN_U16("graphics/sa1/obj_palettes/pal_095.gbapal"),
    INCBIN_U16("graphics/sa1/obj_palettes/pal_096.gbapal"), INCBIN_U16("graphics/sa1/obj_palettes/pal_097.gbapal"),
    INCBIN_U16("graphics/sa1/obj_palettes/pal_098.gbapal"), INCBIN_U16("graphics/sa1/obj_palettes/pal_099.gbapal"),
    INCBIN_U16("graphics/sa1/obj_palettes/pal_100.gbapal"), INCBIN_U16("graphics/sa1/obj_palettes/pal_101.gbapal"),
    INCBIN_U16("graphics/sa1/obj_palettes/pal_102.gbapal"), INCBIN_U16("graphics/sa1/obj_palettes/pal_103.gbapal"),
    INCBIN_U16("graphics/sa1/obj_palettes/pal_104.gbapal"), INCBIN_U16("graphics/sa1/obj_palettes/pal_105.gbapal"),
    INCBIN_U16("graphics/sa1/obj_palettes/pal_106.gbapal"), INCBIN_U16("graphics/sa1/obj_palettes/pal_107.gbapal"),
    INCBIN_U16("graphics/sa1/obj_palettes/pal_108.gbapal"), INCBIN_U16("graphics/sa1/obj_palettes/pal_109.gbapal"),
    INCBIN_U16("graphics/sa1/obj_palettes/pal_110.gbapal"), INCBIN_U16("graphics/sa1/obj_palettes/pal_111.gbapal"),
    INCBIN_U16("graphics/sa1/obj_palettes/pal_112.gbapal"), INCBIN_U16("graphics/sa1/obj_palettes/pal_113.gbapal"),
    INCBIN_U16("graphics/sa1/obj_palettes/pal_114.gbapal"), INCBIN_U16("graphics/sa1/obj_palettes/pal_115.gbapal"),
    INCBIN_U16("graphics/sa1/obj_palettes/pal_116.gbapal"), INCBIN_U16("graphics/sa1/obj_palettes/pal_117.gbapal"),
    INCBIN_U16("graphics/sa1/obj_palettes/pal_118.gbapal"), INCBIN_U16("graphics/sa1/obj_palettes/pal_119.gbapal"),
    INCBIN_U16("graphics/sa1/obj_palettes/pal_120.gbapal"), INCBIN_U16("graphics/sa1/obj_palettes/pal_121.gbapal"),
    INCBIN_U16("graphics/sa1/obj_palettes/pal_122.gbapal"), INCBIN_U16("graphics/sa1/obj_palettes/pal_123.gbapal"),
    INCBIN_U16("graphics/sa1/obj_palettes/pal_124.gbapal"), INCBIN_U16("graphics/sa1/obj_palettes/pal_125.gbapal"),
    INCBIN_U16("graphics/sa1/obj_palettes/pal_126.gbapal"), INCBIN_U16("graphics/sa1/obj_palettes/pal_127.gbapal"),
    INCBIN_U16("graphics/sa1/obj_palettes/pal_128.gbapal"), INCBIN_U16("graphics/sa1/obj_palettes/pal_129.gbapal"),
    INCBIN_U16("graphics/sa1/obj_palettes/pal_130.gbapal"), INCBIN_U16("graphics/sa1/obj_palettes/pal_131.gbapal"),
    INCBIN_U16("graphics/sa1/obj_palettes/pal_132.gbapal"), INCBIN_U16("graphics/sa1/obj_palettes/pal_133.gbapal"),
    INCBIN_U16("graphics/sa1/obj_palettes/pal_134.gbapal"), INCBIN_U16("graphics/sa1/obj_palettes/pal_135.gbapal"),
    INCBIN_U16("graphics/sa1/obj_palettes/pal_136.gbapal"), INCBIN_U16("graphics/sa1/obj_palettes/pal_137.gbapal"),
    INCBIN_U16("graphics/sa1/obj_palettes/pal_138.gbapal"), INCBIN_U16("graphics/sa1/obj_palettes/pal_139.gbapal"),
    INCBIN_U16("graphics/sa1/obj_palettes/pal_140.gbapal"), INCBIN_U16("graphics/sa1/obj_palettes/pal_141.gbapal"),
    INCBIN_U16("graphics/sa1/obj_palettes/pal_142.gbapal"), INCBIN_U16("graphics/sa1/obj_palettes/pal_143.gbapal"),
    INCBIN_U16("graphics/sa1/obj_palettes/pal_144.gbapal"), INCBIN_U16("graphics/sa1/obj_palettes/pal_145.gbapal"),
    INCBIN_U16("graphics/sa1/obj_palettes/pal_146.gbapal"), INCBIN_U16("graphics/sa1/obj_palettes/pal_147.gbapal"),
    INCBIN_U16("graphics/sa1/obj_palettes/pal_148.gbapal"), INCBIN_U16("graphics/sa1/obj_palettes/pal_149.gbapal"),
    INCBIN_U16("graphics/sa1/obj_palettes/pal_150.gbapal"), INCBIN_U16("graphics/sa1/obj_palettes/pal_151.gbapal"),
    INCBIN_U16("graphics/sa1/obj_palettes/pal_152.gbapal"), INCBIN_U16("graphics/sa1/obj_palettes/pal_153.gbapal"),
    INCBIN_U16("graphics/sa1/obj_palettes/pal_154.gbapal"), INCBIN_U16("graphics/sa1/obj_palettes/pal_155.gbapal"),
    INCBIN_U16("graphics/sa1/obj_palettes/pal_156.gbapal"), INCBIN_U16("graphics/sa1/obj_palettes/pal_157.gbapal"),
    INCBIN_U16("graphics/sa1/obj_palettes/pal_158.gbapal"), INCBIN_U16("graphics/sa1/obj_palettes/pal_159.gbapal"),
    INCBIN_U16("graphics/sa1/obj_palettes/pal_160.gbapal"), INCBIN_U16("graphics/sa1/obj_palettes/pal_161.gbapal"),
    INCBIN_U16("graphics/sa1/obj_palettes/pal_162.gbapal"), INCBIN_U16("graphics/sa1/obj_palettes/pal_163.gbapal"),
    INCBIN_U16("graphics/sa1/obj_palettes/pal_164.gbapal"), INCBIN_U16("graphics/sa1/obj_palettes/pal_165.gbapal"),
    INCBIN_U16("graphics/sa1/obj_palettes/pal_166.gbapal"), INCBIN_U16("graphics/sa1/obj_palettes/pal_167.gbapal"),
    INCBIN_U16("graphics/sa1/obj_palettes/pal_168.gbapal"), INCBIN_U16("graphics/sa1/obj_palettes/pal_169.gbapal"),
    INCBIN_U16("graphics/sa1/obj_palettes/pal_170.gbapal"), INCBIN_U16("graphics/sa1/obj_palettes/pal_171.gbapal"),
    INCBIN_U16("graphics/sa1/obj_palettes/pal_172.gbapal"), INCBIN_U16("graphics/sa1/obj_palettes/pal_173.gbapal"),
    INCBIN_U16("graphics/sa1/obj_palettes/pal_174.gbapal"), INCBIN_U16("graphics/sa1/obj_palettes/pal_175.gbapal"),
    INCBIN_U16("graphics/sa1/obj_palettes/pal_176.gbapal"), INCBIN_U16("graphics/sa1/obj_palettes/pal_177.gbapal"),
    INCBIN_U16("graphics/sa1/obj_palettes/pal_178.gbapal"), INCBIN_U16("graphics/sa1/obj_palettes/pal_179.gbapal"),
    INCBIN_U16("graphics/sa1/obj_palettes/pal_180.gbapal"), INCBIN_U16("graphics/sa1/obj_palettes/pal_181.gbapal"),
    INCBIN_U16("graphics/sa1/obj_palettes/pal_182.gbapal"), INCBIN_U16("graphics/sa1/obj_palettes/pal_183.gbapal"),
    INCBIN_U16("graphics/sa1/obj_palettes/pal_184.gbapal"), INCBIN_U16("graphics/sa1/obj_palettes/pal_185.gbapal"),
    INCBIN_U16("graphics/sa1/obj_palettes/pal_186.gbapal"), INCBIN_U16("graphics/sa1/obj_palettes/pal_187.gbapal"),
    INCBIN_U16("graphics/sa1/obj_palettes/pal_188.gbapal"), INCBIN_U16("graphics/sa1/obj_palettes/pal_189.gbapal"),
    INCBIN_U16("graphics/sa1/obj_palettes/pal_190.gbapal"), INCBIN_U16("graphics/sa1/obj_palettes/pal_191.gbapal"),
    INCBIN_U16("graphics/sa1/obj_palettes/pal_192.gbapal"), INCBIN_U16("graphics/sa1/obj_palettes/pal_193.gbapal"),
    INCBIN_U16("graphics/sa1/obj_palettes/pal_194.gbapal"), INCBIN_U16("graphics/sa1/obj_palettes/pal_195.gbapal"),
    INCBIN_U16("graphics/sa1/obj_palettes/pal_196.gbapal"), INCBIN_U16("graphics/sa1/obj_palettes/pal_197.gbapal"),
    INCBIN_U16("graphics/sa1/obj_palettes/pal_198.gbapal"), INCBIN_U16("graphics/sa1/obj_palettes/pal_199.gbapal"),
    INCBIN_U16("graphics/sa1/obj_palettes/pal_200.gbapal"), INCBIN_U16("graphics/sa1/obj_palettes/pal_201.gbapal"),
    INCBIN_U16("graphics/sa1/obj_palettes/pal_202.gbapal"), INCBIN_U16("graphics/sa1/obj_palettes/pal_203.gbapal"),
    INCBIN_U16("graphics/sa1/obj_palettes/pal_204.gbapal"), INCBIN_U16("graphics/sa1/obj_palettes/pal_205.gbapal"),
    INCBIN_U16("graphics/sa1/obj_palettes/pal_206.gbapal"), INCBIN_U16("graphics/sa1/obj_palettes/pal_207.gbapal"),
    INCBIN_U16("graphics/sa1/obj_palettes/pal_208.gbapal"), INCBIN_U16("graphics/sa1/obj_palettes/pal_209.gbapal"),
    INCBIN_U16("graphics/sa1/obj_palettes/pal_210.gbapal"), INCBIN_U16("graphics/sa1/obj_palettes/pal_211.gbapal"),
    INCBIN_U16("graphics/sa1/obj_palettes/pal_212.gbapal"), INCBIN_U16("graphics/sa1/obj_palettes/pal_213.gbapal"),
    INCBIN_U16("graphics/sa1/obj_palettes/pal_214.gbapal"), INCBIN_U16("graphics/sa1/obj_palettes/pal_215.gbapal"),
    INCBIN_U16("graphics/sa1/obj_palettes/pal_216.gbapal"), INCBIN_U16("graphics/sa1/obj_palettes/pal_217.gbapal"),
    INCBIN_U16("graphics/sa1/obj_palettes/pal_218.gbapal"), INCBIN_U16("graphics/sa1/obj_palettes/pal_219.gbapal"),
    INCBIN_U16("graphics/sa1/obj_palettes/pal_220.gbapal"), INCBIN_U16("graphics/sa1/obj_palettes/pal_221.gbapal"),
    INCBIN_U16("graphics/sa1/obj_palettes/pal_222.gbapal"), INCBIN_U16("graphics/sa1/obj_palettes/pal_223.gbapal"),
    INCBIN_U16("graphics/sa1/obj_palettes/pal_224.gbapal"), INCBIN_U16("graphics/sa1/obj_palettes/pal_225.gbapal"),
    INCBIN_U16("graphics/sa1/obj_palettes/pal_226.gbapal"), INCBIN_U16("graphics/sa1/obj_palettes/pal_227.gbapal"),
    INCBIN_U16("graphics/sa1/obj_palettes/pal_228.gbapal"), INCBIN_U16("graphics/sa1/obj_palettes/pal_229.gbapal"),
    INCBIN_U16("graphics/sa1/obj_palettes/pal_230.gbapal"), INCBIN_U16("graphics/sa1/obj_palettes/pal_231.gbapal"),
    INCBIN_U16("graphics/sa1/obj_palettes/pal_232.gbapal"), INCBIN_U16("graphics/sa1/obj_palettes/pal_233.gbapal"),
    INCBIN_U16("graphics/sa1/obj_palettes/pal_234.gbapal"), INCBIN_U16("graphics/sa1/obj_palettes/pal_235.gbapal"),
    INCBIN_U16("graphics/sa1/obj_palettes/pal_236.gbapal"), INCBIN_U16("graphics/sa1/obj_palettes/pal_237.gbapal"),
    INCBIN_U16("graphics/sa1/obj_palettes/pal_238.gbapal"), INCBIN_U16("graphics/sa1/obj_palettes/pal_239.gbapal"),
    INCBIN_U16("graphics/sa1/obj_palettes/pal_240.gbapal"), INCBIN_U16("graphics/sa1/obj_palettes/pal_241.gbapal"),
    INCBIN_U16("graphics/sa1/obj_palettes/pal_242.gbapal"), INCBIN_U16("graphics/sa1/obj_palettes/pal_243.gbapal"),
    INCBIN_U16("graphics/sa1/obj_palettes/pal_244.gbapal"), INCBIN_U16("graphics/sa1/obj_palettes/pal_245.gbapal"),
    INCBIN_U16("graphics/sa1/obj_palettes/pal_246.gbapal"), INCBIN_U16("graphics/sa1/obj_palettes/pal_247.gbapal"),
    INCBIN_U16("graphics/sa1/obj_palettes/pal_248.gbapal"), INCBIN_U16("graphics/sa1/obj_palettes/pal_249.gbapal"),
    INCBIN_U16("graphics/sa1/obj_palettes/pal_250.gbapal"), INCBIN_U16("graphics/sa1/obj_palettes/pal_251.gbapal"),
    INCBIN_U16("graphics/sa1/obj_palettes/pal_252.gbapal"), INCBIN_U16("graphics/sa1/obj_palettes/pal_253.gbapal"),
    INCBIN_U16("graphics/sa1/obj_palettes/pal_254.gbapal"), INCBIN_U16("graphics/sa1/obj_palettes/pal_255.gbapal"),
    INCBIN_U16("graphics/sa1/obj_palettes/pal_256.gbapal"), INCBIN_U16("graphics/sa1/obj_palettes/pal_257.gbapal"),
    INCBIN_U16("graphics/sa1/obj_palettes/pal_258.gbapal"), INCBIN_U16("graphics/sa1/obj_palettes/pal_259.gbapal"),
    INCBIN_U16("graphics/sa1/obj_palettes/pal_260.gbapal"), INCBIN_U16("graphics/sa1/obj_palettes/pal_261.gbapal"),
    INCBIN_U16("graphics/sa1/obj_palettes/pal_262.gbapal"), INCBIN_U16("graphics/sa1/obj_palettes/pal_263.gbapal"),
    INCBIN_U16("graphics/sa1/obj_palettes/pal_264.gbapal"), INCBIN_U16("graphics/sa1/obj_palettes/pal_265.gbapal"),
    INCBIN_U16("graphics/sa1/obj_palettes/pal_266.gbapal"), INCBIN_U16("graphics/sa1/obj_palettes/pal_267.gbapal"),
    INCBIN_U16("graphics/sa1/obj_palettes/pal_268.gbapal"), INCBIN_U16("graphics/sa1/obj_palettes/pal_269.gbapal"),
    INCBIN_U16("graphics/sa1/obj_palettes/pal_270.gbapal"), INCBIN_U16("graphics/sa1/obj_palettes/pal_271.gbapal"),
    INCBIN_U16("graphics/sa1/obj_palettes/pal_272.gbapal"), INCBIN_U16("graphics/sa1/obj_palettes/pal_273.gbapal"),
    INCBIN_U16("graphics/sa1/obj_palettes/pal_274.gbapal"), INCBIN_U16("graphics/sa1/obj_palettes/pal_275.gbapal"),
    INCBIN_U16("graphics/sa1/obj_palettes/pal_276.gbapal"), INCBIN_U16("graphics/sa1/obj_palettes/pal_277.gbapal"),
    INCBIN_U16("graphics/sa1/obj_palettes/pal_278.gbapal"), INCBIN_U16("graphics/sa1/obj_palettes/pal_279.gbapal"),
    INCBIN_U16("graphics/sa1/obj_palettes/pal_280.gbapal"), INCBIN_U16("graphics/sa1/obj_palettes/pal_281.gbapal"),
    INCBIN_U16("graphics/sa1/obj_palettes/pal_282.gbapal"), INCBIN_U16("graphics/sa1/obj_palettes/pal_283.gbapal"),
    INCBIN_U16("graphics/sa1/obj_palettes/pal_284.gbapal"), INCBIN_U16("graphics/sa1/obj_palettes/pal_285.gbapal"),
    INCBIN_U16("graphics/sa1/obj_palettes/pal_286.gbapal"), INCBIN_U16("graphics/sa1/obj_palettes/pal_287.gbapal"),
    INCBIN_U16("graphics/sa1/obj_palettes/pal_288.gbapal"), INCBIN_U16("graphics/sa1/obj_palettes/pal_289.gbapal"),
    INCBIN_U16("graphics/sa1/obj_palettes/pal_290.gbapal"), INCBIN_U16("graphics/sa1/obj_palettes/pal_291.gbapal"),
    INCBIN_U16("graphics/sa1/obj_palettes/pal_292.gbapal"), INCBIN_U16("graphics/sa1/obj_palettes/pal_293.gbapal"),
    INCBIN_U16("graphics/sa1/obj_palettes/pal_294.gbapal"), INCBIN_U16("graphics/sa1/obj_palettes/pal_295.gbapal"),
    INCBIN_U16("graphics/sa1/obj_palettes/pal_296.gbapal"), INCBIN_U16("graphics/sa1/obj_palettes/pal_297.gbapal"),
    INCBIN_U16("graphics/sa1/obj_palettes/pal_298.gbapal"), INCBIN_U16("graphics/sa1/obj_palettes/pal_299.gbapal"),
    INCBIN_U16("graphics/sa1/obj_palettes/pal_300.gbapal"), INCBIN_U16("graphics/sa1/obj_palettes/pal_301.gbapal"),
    INCBIN_U16("graphics/sa1/obj_palettes/pal_302.gbapal"), INCBIN_U16("graphics/sa1/obj_palettes/pal_303.gbapal"),
    INCBIN_U16("graphics/sa1/obj_palettes/pal_304.gbapal"), INCBIN_U16("graphics/sa1/obj_palettes/pal_305.gbapal"),
    INCBIN_U16("graphics/sa1/obj_palettes/pal_306.gbapal"), INCBIN_U16("graphics/sa1/obj_palettes/pal_307.gbapal"),
    INCBIN_U16("graphics/sa1/obj_palettes/pal_308.gbapal"), INCBIN_U16("graphics/sa1/obj_palettes/pal_309.gbapal"),
    INCBIN_U16("graphics/sa1/obj_palettes/pal_310.gbapal"), INCBIN_U16("graphics/sa1/obj_palettes/pal_311.gbapal"),
    INCBIN_U16("graphics/sa1/obj_palettes/pal_312.gbapal"), INCBIN_U16("graphics/sa1/obj_palettes/pal_313.gbapal"),
    INCBIN_U16("graphics/sa1/obj_palettes/pal_314.gbapal"), INCBIN_U16("graphics/sa1/obj_palettes/pal_315.gbapal"),
    INCBIN_U16("graphics/sa1/obj_palettes/pal_316.gbapal"), INCBIN_U16("graphics/sa1/obj_palettes/pal_317.gbapal"),
    INCBIN_U16("graphics/sa1/obj_palettes/pal_318.gbapal"), INCBIN_U16("graphics/sa1/obj_palettes/pal_319.gbapal"),
    INCBIN_U16("graphics/sa1/obj_palettes/pal_320.gbapal"), INCBIN_U16("graphics/sa1/obj_palettes/pal_321.gbapal"),
    INCBIN_U16("graphics/sa1/obj_palettes/pal_322.gbapal"), INCBIN_U16("graphics/sa1/obj_palettes/pal_323.gbapal"),
    INCBIN_U16("graphics/sa1/obj_palettes/pal_324.gbapal"), INCBIN_U16("graphics/sa1/obj_palettes/pal_325.gbapal"),
    INCBIN_U16("graphics/sa1/obj_palettes/pal_326.gbapal"), INCBIN_U16("graphics/sa1/obj_palettes/pal_327.gbapal"),
    INCBIN_U16("graphics/sa1/obj_palettes/pal_328.gbapal"), INCBIN_U16("graphics/sa1/obj_palettes/pal_329.gbapal"),
    INCBIN_U16("graphics/sa1/obj_palettes/pal_330.gbapal"), INCBIN_U16("graphics/sa1/obj_palettes/pal_331.gbapal"),
    INCBIN_U16("graphics/sa1/obj_palettes/pal_332.gbapal"), INCBIN_U16("graphics/sa1/obj_palettes/pal_333.gbapal"),
    INCBIN_U16("graphics/sa1/obj_palettes/pal_334.gbapal"), INCBIN_U16("graphics/sa1/obj_palettes/pal_335.gbapal"),
    INCBIN_U16("graphics/sa1/obj_palettes/pal_336.gbapal"), INCBIN_U16("graphics/sa1/obj_palettes/pal_337.gbapal"),
    INCBIN_U16("graphics/sa1/obj_palettes/pal_338.gbapal"), INCBIN_U16("graphics/sa1/obj_palettes/pal_339.gbapal"),
    INCBIN_U16("graphics/sa1/obj_palettes/pal_340.gbapal"), INCBIN_U16("graphics/sa1/obj_palettes/pal_341.gbapal"),
    INCBIN_U16("graphics/sa1/obj_palettes/pal_342.gbapal"), INCBIN_U16("graphics/sa1/obj_palettes/pal_343.gbapal"),
    INCBIN_U16("graphics/sa1/obj_palettes/pal_344.gbapal"), INCBIN_U16("graphics/sa1/obj_palettes/pal_345.gbapal"),
    INCBIN_U16("graphics/sa1/obj_palettes/pal_346.gbapal"), INCBIN_U16("graphics/sa1/obj_palettes/pal_347.gbapal"),
    INCBIN_U16("graphics/sa1/obj_palettes/pal_348.gbapal"), INCBIN_U16("graphics/sa1/obj_palettes/pal_349.gbapal"),
    INCBIN_U16("graphics/sa1/obj_palettes/pal_350.gbapal"), INCBIN_U16("graphics/sa1/obj_palettes/pal_351.gbapal"),
    INCBIN_U16("graphics/sa1/obj_palettes/pal_352.gbapal"), INCBIN_U16("graphics/sa1/obj_palettes/pal_353.gbapal"),
    INCBIN_U16("graphics/sa1/obj_palettes/pal_354.gbapal"), INCBIN_U16("graphics/sa1/obj_palettes/pal_355.gbapal"),
    INCBIN_U16("graphics/sa1/obj_palettes/pal_356.gbapal"), INCBIN_U16("graphics/sa1/obj_palettes/pal_357.gbapal"),
    INCBIN_U16("graphics/sa1/obj_palettes/pal_358.gbapal"), INCBIN_U16("graphics/sa1/obj_palettes/pal_359.gbapal"),
    INCBIN_U16("graphics/sa1/obj_palettes/pal_360.gbapal"), INCBIN_U16("graphics/sa1/obj_palettes/pal_361.gbapal"),
    INCBIN_U16("graphics/sa1/obj_palettes/pal_362.gbapal"), INCBIN_U16("graphics/sa1/obj_palettes/pal_363.gbapal"),
    INCBIN_U16("graphics/sa1/obj_palettes/pal_364.gbapal"), INCBIN_U16("graphics/sa1/obj_palettes/pal_365.gbapal"),
    INCBIN_U16("graphics/sa1/obj_palettes/pal_366.gbapal"), INCBIN_U16("graphics/sa1/obj_palettes/pal_367.gbapal"),
    INCBIN_U16("graphics/sa1/obj_palettes/pal_368.gbapal"), INCBIN_U16("graphics/sa1/obj_palettes/pal_369.gbapal"),
    INCBIN_U16("graphics/sa1/obj_palettes/pal_370.gbapal"), INCBIN_U16("graphics/sa1/obj_palettes/pal_371.gbapal"),
    INCBIN_U16("graphics/sa1/obj_palettes/pal_372.gbapal"), INCBIN_U16("graphics/sa1/obj_palettes/pal_373.gbapal"),
    INCBIN_U16("graphics/sa1/obj_palettes/pal_374.gbapal"), INCBIN_U16("graphics/sa1/obj_palettes/pal_375.gbapal"),
    INCBIN_U16("graphics/sa1/obj_palettes/pal_376.gbapal"), INCBIN_U16("graphics/sa1/obj_palettes/pal_377.gbapal"),
    INCBIN_U16("graphics/sa1/obj_palettes/pal_378.gbapal"), INCBIN_U16("graphics/sa1/obj_palettes/pal_379.gbapal"),
    INCBIN_U16("graphics/sa1/obj_palettes/pal_380.gbapal"), INCBIN_U16("graphics/sa1/obj_palettes/pal_381.gbapal"),
    INCBIN_U16("graphics/sa1/obj_palettes/pal_382.gbapal"), INCBIN_U16("graphics/sa1/obj_palettes/pal_383.gbapal"),
    INCBIN_U16("graphics/sa1/obj_palettes/pal_384.gbapal"), INCBIN_U16("graphics/sa1/obj_palettes/pal_385.gbapal"),
    INCBIN_U16("graphics/sa1/obj_palettes/pal_386.gbapal"), INCBIN_U16("graphics/sa1/obj_palettes/pal_387.gbapal"),
    INCBIN_U16("graphics/sa1/obj_palettes/pal_388.gbapal"), INCBIN_U16("graphics/sa1/obj_palettes/pal_389.gbapal"),
    INCBIN_U16("graphics/sa1/obj_palettes/pal_390.gbapal"), INCBIN_U16("graphics/sa1/obj_palettes/pal_391.gbapal"),
    INCBIN_U16("graphics/sa1/obj_palettes/pal_392.gbapal"), INCBIN_U16("graphics/sa1/obj_palettes/pal_393.gbapal"),
    INCBIN_U16("graphics/sa1/obj_palettes/pal_394.gbapal"), INCBIN_U16("graphics/sa1/obj_palettes/pal_395.gbapal"),
    INCBIN_U16("graphics/sa1/obj_palettes/pal_396.gbapal"), INCBIN_U16("graphics/sa1/obj_palettes/pal_397.gbapal"),
    INCBIN_U16("graphics/sa1/obj_palettes/pal_398.gbapal"), INCBIN_U16("graphics/sa1/obj_palettes/pal_399.gbapal"),
    INCBIN_U16("graphics/sa1/obj_palettes/pal_400.gbapal"), INCBIN_U16("graphics/sa1/obj_palettes/pal_401.gbapal"),
    INCBIN_U16("graphics/sa1/obj_palettes/pal_402.gbapal"), INCBIN_U16("graphics/sa1/obj_palettes/pal_403.gbapal"),
    INCBIN_U16("graphics/sa1/obj_palettes/pal_404.gbapal"), INCBIN_U16("graphics/sa1/obj_palettes/pal_405.gbapal"),
    INCBIN_U16("graphics/sa1/obj_palettes/pal_406.gbapal"), INCBIN_U16("graphics/sa1/obj_palettes/pal_407.gbapal"),
    INCBIN_U16("graphics/sa1/obj_palettes/pal_408.gbapal"), INCBIN_U16("graphics/sa1/obj_palettes/pal_409.gbapal"),
    INCBIN_U16("graphics/sa1/obj_palettes/pal_410.gbapal"), INCBIN_U16("graphics/sa1/obj_palettes/pal_411.gbapal"),
    INCBIN_U16("graphics/sa1/obj_palettes/pal_412.gbapal"), INCBIN_U16("graphics/sa1/obj_palettes/pal_413.gbapal"),
    INCBIN_U16("graphics/sa1/obj_palettes/pal_414.gbapal"), INCBIN_U16("graphics/sa1/obj_palettes/pal_415.gbapal"),
    INCBIN_U16("graphics/sa1/obj_palettes/pal_416.gbapal"), INCBIN_U16("graphics/sa1/obj_palettes/pal_417.gbapal"),
    INCBIN_U16("graphics/sa1/obj_palettes/pal_418.gbapal"), INCBIN_U16("graphics/sa1/obj_palettes/pal_419.gbapal"),
    INCBIN_U16("graphics/sa1/obj_palettes/pal_420.gbapal"), INCBIN_U16("graphics/sa1/obj_palettes/pal_421.gbapal"),
    INCBIN_U16("graphics/sa1/obj_palettes/pal_422.gbapal"), INCBIN_U16("graphics/sa1/obj_palettes/pal_423.gbapal"),
    INCBIN_U16("graphics/sa1/obj_palettes/pal_424.gbapal"), INCBIN_U16("graphics/sa1/obj_palettes/pal_425.gbapal"),
    INCBIN_U16("graphics/sa1/obj_palettes/pal_426.gbapal"), INCBIN_U16("graphics/sa1/obj_palettes/pal_427.gbapal"),
    INCBIN_U16("graphics/sa1/obj_palettes/pal_428.gbapal"), INCBIN_U16("graphics/sa1/obj_palettes/pal_429.gbapal"),
    INCBIN_U16("graphics/sa1/obj_palettes/pal_430.gbapal"), INCBIN_U16("graphics/sa1/obj_palettes/pal_431.gbapal"),
    INCBIN_U16("graphics/sa1/obj_palettes/pal_432.gbapal"), INCBIN_U16("graphics/sa1/obj_palettes/pal_433.gbapal"),
    INCBIN_U16("graphics/sa1/obj_palettes/pal_434.gbapal"), INCBIN_U16("graphics/sa1/obj_palettes/pal_435.gbapal"),
    INCBIN_U16("graphics/sa1/obj_palettes/pal_436.gbapal"), INCBIN_U16("graphics/sa1/obj_palettes/pal_437.gbapal"),
    INCBIN_U16("graphics/sa1/obj_palettes/pal_438.gbapal"), INCBIN_U16("graphics/sa1/obj_palettes/pal_439.gbapal"),
    INCBIN_U16("graphics/sa1/obj_palettes/pal_440.gbapal"), INCBIN_U16("graphics/sa1/obj_palettes/pal_441.gbapal"),
    INCBIN_U16("graphics/sa1/obj_palettes/pal_442.gbapal"), INCBIN_U16("graphics/sa1/obj_palettes/pal_443.gbapal"),
    INCBIN_U16("graphics/sa1/obj_palettes/pal_444.gbapal"), INCBIN_U16("graphics/sa1/obj_palettes/pal_445.gbapal"),
    INCBIN_U16("graphics/sa1/obj_palettes/pal_446.gbapal"), INCBIN_U16("graphics/sa1/obj_palettes/pal_447.gbapal"),
    INCBIN_U16("graphics/sa1/obj_palettes/pal_448.gbapal"), INCBIN_U16("graphics/sa1/obj_palettes/pal_449.gbapal"),
    INCBIN_U16("graphics/sa1/obj_palettes/pal_450.gbapal"), INCBIN_U16("graphics/sa1/obj_palettes/pal_451.gbapal"),
    INCBIN_U16("graphics/sa1/obj_palettes/pal_452.gbapal"), INCBIN_U16("graphics/sa1/obj_palettes/pal_453.gbapal"),
    INCBIN_U16("graphics/sa1/obj_palettes/pal_454.gbapal"), INCBIN_U16("graphics/sa1/obj_palettes/pal_455.gbapal"),
    INCBIN_U16("graphics/sa1/obj_palettes/pal_456.gbapal"), INCBIN_U16("graphics/sa1/obj_palettes/pal_457.gbapal"),
    INCBIN_U16("graphics/sa1/obj_palettes/pal_458.gbapal"), INCBIN_U16("graphics/sa1/obj_palettes/pal_459.gbapal"),
    INCBIN_U16("graphics/sa1/obj_palettes/pal_460.gbapal"), INCBIN_U16("graphics/sa1/obj_palettes/pal_461.gbapal"),
    INCBIN_U16("graphics/sa1/obj_palettes/pal_462.gbapal"), INCBIN_U16("graphics/sa1/obj_palettes/pal_463.gbapal"),
};
