# 1 "/home/awaszczak/git/sa2/sa1/../src/game/sa1/special_stage/main.c"
# 1 "<built-in>" 1
# 1 "<built-in>" 3
# 384 "<built-in>" 3
# 1 "<command line>" 1
# 1 "<built-in>" 2
# 1 "/home/awaszczak/git/sa2/sa1/../src/game/sa1/special_stage/main.c" 2
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
# 2 "/home/awaszczak/git/sa2/sa1/../src/game/sa1/special_stage/main.c" 2
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
# 3 "/home/awaszczak/git/sa2/sa1/../src/game/sa1/special_stage/main.c" 2
# 1 "/home/awaszczak/git/sa2/sa1/../include/trig.h" 1





extern const s16 gSineTable[1280];
# 4 "/home/awaszczak/git/sa2/sa1/../src/game/sa1/special_stage/main.c" 2
# 1 "/home/awaszczak/git/sa2/sa1/../include/malloc_ewram.h" 1





struct EwramNode {
              struct EwramNode *next;
              s32 state;


              u8 space[0];
};

void EwramInitHeap(void);
void *EwramMalloc(u32);
void EwramFree(void *);
# 5 "/home/awaszczak/git/sa2/sa1/../src/game/sa1/special_stage/main.c" 2
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
# 6 "/home/awaszczak/git/sa2/sa1/../src/game/sa1/special_stage/main.c" 2

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
# 8 "/home/awaszczak/git/sa2/sa1/../src/game/sa1/special_stage/main.c" 2
# 1 "/home/awaszczak/git/sa2/sa1/../include/game/shared/stage/palette_loader.h" 1







struct Task *CreatePaletteLoaderTask(u16 priority, AnimId anim, u8 variant, TaskDestructor dtor);
# 9 "/home/awaszczak/git/sa2/sa1/../src/game/sa1/special_stage/main.c" 2
# 1 "/home/awaszczak/git/sa2/sa1/../include/game/shared/stage/pause_menu.h" 1



void CreatePauseMenu(void);
# 10 "/home/awaszczak/git/sa2/sa1/../src/game/sa1/special_stage/main.c" 2
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
# 11 "/home/awaszczak/git/sa2/sa1/../src/game/sa1/special_stage/main.c" 2
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
# 12 "/home/awaszczak/git/sa2/sa1/../src/game/sa1/special_stage/main.c" 2
# 1 "/home/awaszczak/git/sa2/sa1/../include/game/sa1/special_stage/main.h" 1



extern u16 gSpecialStageCollectedRings;
extern u16 gSpecialStageTargetRings;
extern u8 gUnknown_03005730;
extern void CreateTempSoundTask(u16 songId);
extern void CreateSpStageTrickSoundTask(u16 expectedSongId, u16 resumeSongId);
extern void CreateSpecialStage();
extern void CreateSpecialStageIntro();
# 13 "/home/awaszczak/git/sa2/sa1/../src/game/sa1/special_stage/main.c" 2
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
# 14 "/home/awaszczak/git/sa2/sa1/../src/game/sa1/special_stage/main.c" 2
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
# 15 "/home/awaszczak/git/sa2/sa1/../src/game/sa1/special_stage/main.c" 2

extern struct MP2KSongHeader se_ring_copy;

# 1 "/home/awaszczak/git/sa2/sa1/../include/constants/sa1/animations.h" 1






# 1 "/home/awaszczak/git/sa2/sa1/../include/constants/sa1/anim_sizes.h" 1
# 8 "/home/awaszczak/git/sa2/sa1/../include/constants/sa1/animations.h" 2
# 19 "/home/awaszczak/git/sa2/sa1/../src/game/sa1/special_stage/main.c" 2
# 1 "/home/awaszczak/git/sa2/sa1/../include/constants/sa1/tilemaps.h" 1
# 20 "/home/awaszczak/git/sa2/sa1/../src/game/sa1/special_stage/main.c" 2
# 1 "/home/awaszczak/git/sa2/sa1/../include/constants/sa1/songs.h" 1
# 21 "/home/awaszczak/git/sa2/sa1/../src/game/sa1/special_stage/main.c" 2


typedef struct Strc_30055E0 {
    u8 unk0;
    s16 unk2;
    u16 qBlend;
    s32 qUnk8;
    u8 fillerC[0x4];
} Strc_30055E0;

typedef struct Strc_3005690 {
    s32 unk0;
    s32 unk4;
    s32 unk8;
    s16 unkC;
    s16 unkE;
    s16 unk10;
    s16 unk12;
    s16 unk14;
    s16 unk16;
    s16 unk18;
    s16 unk1A;
    s16 unk1C;
    s16 unk1E;
    s16 unk20;
    u8 filler22[6];
    u8 unk28;
    u8 unk29;
    u8 unk2A;
    u8 unk2B;
    u8 filler2C[0x2];
    u16 unk2E;
    u8 unk30;
    u8 unk31;
    s16 unk32;
    s16 unk34;
    u8 filler36[0x4];
    s16 unk3A;
    s8 unk3C;
    s8 unk3D;
    s8 unk3E;
    u8 unk3F;
    u8 unk40;
    u8 unk41;
    u16 unk42;
    u16 unk44;
    u8 filler46[0x2];
    AnimId anim48;
    u16 variant4A;
    u8 unk4C;
    u8 unk4D;
    u8 filler4E[0x2];
    u16 unk50;
    u16 unk52;
    u16 unk54;
    u8 filler56[0xA];
} Strc_3005690;

typedef struct Strc_3005780 {
    s16 unk0;
    s16 unk2;
    s16 unk4;
    s16 unk6;
    s16 unk8;
    u8 unkA;
    s16 unkC;
    s16 unkE;
    s16 unk10;
    s8 unk12;
    s8 unk13;
} Strc_3005780;

typedef struct SpStage74 {
    SpriteTransform tf;
    Sprite s;
    s32 unk3C;
    s32 unk40;
    s32 unk44;
    s16 unk48;
    s16 unk4A;
    s16 unk4C;
    s16 unk4E;
    s16 unk50;
    s16 unk52;
    s16 unk54;
    s16 unk56;
    s16 unk58;
    s16 unk5A;
    s16 unk5C;
    u8 filler5E[2];
    u16 unk60;
    AnimId anim62;
    u16 variant64;
    u8 unk66;
    u8 unk67;
    s16 unk68;
    u8 unk6A;
    u8 unk6B;
    u8 unk6C;
    u8 unk6D;
    s16 unk6E;
    s16 unk70;
    u8 filler72[2];
} SpStage74;

typedef struct SpStage8 {
    u8 filler0[2];
    u16 unk2;
    u16 unk4;
    u8 unk6;
} SpStage8;


typedef struct SpStageC {
    s16 unk0;
    s16 unk2;
    s32 unk4;
    u16 unk8;
} SpStageC;

typedef struct SpStage40 {
    SpriteTransform tf;
    Sprite s;
    void *mem;
} SpStage40;


u16 gSpecialStageTargetRings = 0;

void Task_80299B0(void);
void sub_8029A50(void);
void Task_8029AC4(void);
void sub_8029B74(void);
void sub_8029E0C(s16 characterId);
void sub_8029EA8(s16 unusedCharacterId);
bool32 sub_8029F30(Strc_3005690 *param0);
bool32 sub_8029FA4(Strc_3005690 *param0);
void sub_802A068(Strc_3005690 *strc5690);
void sub_802A134(Strc_3005690 *strc5690);
void sub_802A248(Strc_3005690 *strc5690);
void sub_802A4C4(Strc_3005690 *strc5690);
void Task_802A560(void);
void sub_802A688(void);
void sub_802A890(void);
void sub_802A988(void);
void Task_802AA48(void);
void sub_802AAF0(void);
void sub_802ABA0(void);
void Task_802AC50(void);
void sub_802ACF0(void);
void sub_802B008(void);
void sub_802B07C(void);
void sub_802B18C(void);
void sub_802B214(void);
void Task_802AD9C(void);
void Task_802AE40(void);
void sub_802B5DC(Sprite *s);
void sub_802B884(void);
bool32 sub_802B66C(SpStage74 *strc74, Sprite *s, s16 param2, s16 param3);
bool32 sub_802BC6C(void);
void Task_802BEDC(void);
void sub_802C04C(SpStage74 *strc74);
void sub_802C0CC(void);
void sub_802C224(void);
void sub_802C2DC(SpStage74 *strc74);
void sub_802C488(void);
typedef enum CheckpointMsg {
    CHKPTMSG_PLAYER_COOL,
    CHKPTMSG_PLAYER_AAARGH,
    CHKPTMSG_NOT_ENOUGH_RINGS,
} CheckpointMsg;
static void CreateCheckpointMessage(u8 msg);
void sub_802C6C4(void);
void sub_802C89C(void);
void sub_802C934(void);
void UpdateObjectsAndRender(void);
void sub_802D158(void);
void sub_802D190(void);
void sub_802D1D8(void);
void sub_802D274(void);
void sub_802D464(void);
void Task_802D2BC(void);
u16 sub_802D2F4(Strc_3005690 *param0);
void sub_802D33C(void);
void Task_802D37C(void);
void sub_802D3E4(void);
void sub_802D450(void);
void sub_802D4C4(void);
void Task_802D508(void);
void TaskDestructor_802D578(struct Task *t);
void sub_802D560(void);
u8 sub_802D58C(s16 param0);
void SpStage_PlayRingSoundeffect(void);
void Task_SpStageInitializeSomethingAndStartMusic(void);
void Task_802D238(void);
void sub_802D66C(void);
void sub_802D680(void);
void sub_802D6FC(SpStage74 *strc74, Sprite *s);

void sub_802BE0C(Sprite *s, SpriteTransform *tf);

extern void sub_805C448(u8 arg0);
extern void sub_805D048(u8 arg0);
extern void sub_8068D0C();

extern void SetPlayerControls(bool32 flipFaceButtons);

typedef struct TfSprite {
    SpriteTransform tf;
    Sprite s;
} TfSprite;


extern u16 gUnknown_03005028;
extern u16 gUnknown_03005070;
# 254 "/home/awaszczak/git/sa2/sa1/../src/game/sa1/special_stage/main.c"
Background gUnknown_030055A0 = { 0 };
Strc_30055E0 gUnknown_030055E0 = { 0 };
TfSprite gUnknown_030055F0 = { 0 };
Background gUnknown_03005630 = { 0 };
s16 gUnknown_03005670[16] = { 0 };
Strc_3005690 gUnknown_03005690 = { 0 };
u16 gUnknown_030056F0[16][2] = { 0 };
extern u8 gUnknown_03005730;
Background gUnknown_03005740 = { 0 };
Strc_3005780 gUnknown_03005780 = { 0 };
Background gUnknown_030057A0 = { 0 };
s8 gUnknown_030057E0[32] = { 0 };
Background gUnknown_03005800 = { 0 };
s16 gUnknown_03005840[16] = { 0 };


extern u16 gUnknown_08487140[][2];
extern u8 gUnknown_08487134[6 * 2];

const Background gUnknown_08486FF4 = {
    .graphics = {
        .src = ((void*)0),
        .dest = (void*)(&VRAM[0] + 0x8000),
        .size = 0,
    },
    .layoutVram = (void*)(&VRAM[0] + 0xE000),
    .tilemapId = 54,
    .targetTilesX = (256 / 8),
    .targetTilesY = (256 / 8),
    .flags = 0x3,
    .prevScrollX = 0x7FFF,
    .prevScrollY = 0x7FFF,
};
const Background gUnknown_08487034 = {
    .graphics = {
        .src = ((void*)0),
        .dest = (void*)(&VRAM[0] + 0x4000),
        .size = 0,
    },
    .layoutVram = (void*)(&VRAM[0] + 0xC01A),
    .tilemapId = 55,
    .targetTilesX = (152 / 8),
    .targetTilesY = (112 / 8),
    .flags = 0x2,
    .scrollX = 136,
    .scrollY = 32,
    .prevScrollX = 0x7FFF,
    .prevScrollY = 0x7FFF,
};
const Background gUnknown_08487074 = {
    .graphics = {
        .src = ((void*)0),
        .dest = (void*)(&VRAM[0] + 0x4000),
        .size = 0,
    },
    .layoutVram = (void*)(&VRAM[0] + 0xC39A),
    .tilemapId = 55,
    .targetTilesX = (152 / 8),
    .targetTilesY = (112 / 8),
    .flags = 0x9A,
    .prevScrollX = 0x7FFF,
    .prevScrollY = 0x7FFF,
};
const Background gUnknown_084870B4 = {
    .graphics = {
        .src = ((void*)0),
        .dest = (void*)(&VRAM[0] + 0x4000),
        .size = 0,
    },
    .layoutVram = (void*)(&VRAM[0] + 0xC800),
    .tilemapId = 55,
    .targetTilesX = (152 / 8),
    .targetTilesY = (112 / 8),
    .flags = 0x11A,
    .prevScrollX = 0x7FFF,
    .prevScrollY = 0x7FFF,
};
const Background gUnknown_084870F4 = {
    .graphics = {
        .src = ((void*)0),
        .dest = (void*)(&VRAM[0] + 0x4000),
        .size = 0,
    },
    .layoutVram = (void*)(&VRAM[0] + 0xCB80),
    .tilemapId = 55,
    .targetTilesX = (152 / 8),
    .targetTilesY = (112 / 8),
    .flags = 0x19A,
    .prevScrollX = 0x7FFF,
    .prevScrollY = 0x7FFF,
};

typedef struct HitboxS16 {
    s16 left;
    s16 top;
    s16 right;
    s16 bottom;
} HitboxS16;

extern const s16 gUnknown_0848715C[16][2];
extern const s16 gUnknown_08487184[16][2];
extern const s16 gUnknown_084871C4[16][2];
extern const s16 gUnknown_084871C4[16][2];
extern const HitboxS16 gUnknown_08487204;
extern const HitboxS16 gUnknown_0848720C;
extern const s16 gUnknown_08487214[12][2];
extern const s16 gUnknown_0848722C[16][3];
extern const u16 gUnknown_0848728C[14][2];
extern s16 gUnknown_084872E0[12][2];
extern s16 gUnknown_08487310[8][2];
extern s16 gUnknown_08487330[10][2];

extern SpStageC *gUnknown_087BF8DC[7];
extern u16 gUnknown_084872C4[];

static inline void sub_802D6B4__inline(Strc_3005690 *strc5690)
{
    if ((strc5690->unk42 & gPlayerControls.jump) && !(1 & strc5690->unk29)) {
        strc5690->unk20 = +((s32)((1)*256));
    } else {
        if (!(2 & strc5690->unk29)) {
            strc5690->unk20 = ((s32)((0)*256));
        } else {
            strc5690->unk20 = -((s32)((1)*256));
        }
    }
}

static inline void sub_802D6FC__inline(SpStage74 *strc74, Sprite *s)
{
    s->graphics.dest = (gUnknown_084872C4[strc74->unk60] << 5) + &VRAM[0x10000];
    s->graphics.size = 0;
    s->graphics.anim = strc74->anim62;
    s->variant = strc74->variant64;
    s->prevVariant = -1;
    s->qAnimDelay = 0;
    s->animSpeed = ((int)((float)(1.0)*0x10));
}

void CreateSpecialStage()
{
    sa2__sub_801F044();
    gUnknown_03005730 = 0;
    gUnknown_0300507C = 0;
    gSpecialStageCollectedRings = 0;

    gUnknown_03005028 = gUnknown_08487140[gUnknown_08487134[gCurrentLevel]][0];
    gUnknown_03005070 = gUnknown_08487140[gUnknown_08487134[gCurrentLevel]][1];
    gSpecialStageTargetRings = gUnknown_03005028;

    gPlayer.itemEffect &= ~0x4;

    SetPlayerControls((&gLoadedSaveGame)->btnConfig);

    sub_802D158();
    sub_802D190();
    sub_802D1D8();
    sub_8029B74();
    sub_802C934();

    sub_805C448(1);
}

void Task_80299B0(void)
{
    Strc_3005690 *strc5690 = &gUnknown_03005690;
    Strc_30055E0 *strc55E0 = &gUnknown_030055E0;

    if (strc55E0->unk0 == 2) {
        strc55E0->unk2 = 0x1A4;
        strc5690->unk29 |= 1;
        strc5690->unk2A = 0x40;

        gCurTask->main = sub_8029A50;

        if (gUnknown_03005028 > gSpecialStageCollectedRings) {
            CreateCheckpointMessage(CHKPTMSG_NOT_ENOUGH_RINGS);
        }
    }
    if (strc55E0->unk0 == 1) {
        strc55E0->unk2 = 0x1A4;
        strc5690->unk29 |= 1;
        strc5690->unk2A = 0x80;
        gCurTask->main = sub_802D274;

        if (gUnknown_03005070 > gSpecialStageCollectedRings) {
            CreateCheckpointMessage(CHKPTMSG_NOT_ENOUGH_RINGS);
        }
    }
}

void sub_8029A50(void)
{
    Strc_3005690 *strc5690 = &gUnknown_03005690;

    if (--gUnknown_030055E0.unk2 <= 0) {
        if (gUnknown_03005028 <= gSpecialStageCollectedRings) {
            gUnknown_030055E0.unk0 = 0;
            strc5690->unk29 &= ~0x1;
            sub_802D560();
            gCurTask->main = Task_80299B0;
        } else {
            gStageFlags |= 0x20;
            gCurTask->main = Task_8029AC4;
        }
    }
}

void Task_8029AC4(void)
{
    gUnknown_030055E0.qBlend += ((s32)((0.25)*256));
    gBldRegs.bldCnt = 0x3F9F;
    gBldRegs.bldAlpha = 0;
    gBldRegs.bldY = ((int)((gUnknown_030055E0.qBlend) >> 8));

    if (gUnknown_030055E0.qBlend >= ((s32)((16)*256))) {
        gBldRegs.bldAlpha = 0x10;

        TasksDestroyInPriorityRange(0, 0xFFFF);
        gBackgroundsCopyQueueCursor = gBackgroundsCopyQueueIndex;;
        gBgSpritesCount = 0;
        gVramGraphicsCopyCursor = gVramGraphicsCopyQueueIndex;;

        gBldRegs.bldCnt |= 0x3F1F;
        if (gUnknown_030055E0.unk0 == 2) {
            sub_805D048(0);
        } else if (gSpecialStageTargetRings <= gSpecialStageCollectedRings) {
            sub_8068D0C();
        } else {
            sub_805D048(0);
        }
    }
}

void sub_8029B74(void)
{
    Strc_3005780 *strc5780 = &gUnknown_03005780;
    s32 var_r0;
    s32 var_r0_2;

    gDispCnt = 0x1C40;
    gBgCntRegs[1] = 0x201;
    gBgCntRegs[2] = 0x5806;
    gBgCntRegs[3] = 0x1C0B;
    strc5780->unk0 = 0x88;
    strc5780->unk2 = 0x20;
    strc5780->unkE = 0;
    strc5780->unk4 = 0;
    strc5780->unk10 = 0;
    strc5780->unk6 = 0;
    strc5780->unk8 = 0;
    strc5780->unkC = 0;





    var_r0 = 0x88 - strc5780->unk4;
    if (var_r0 < 0) {
        var_r0 += 7;
    }
    gBgScrollRegs[3][0] = (var_r0 >> 3);

    var_r0_2 = strc5780->unk6 + 0x20;
    if (var_r0_2 < 0) {
        var_r0_2 += 7;
    }
    gBgScrollRegs[3][1] = (s16)(var_r0_2 >> 3);
    gBgScrollRegs[2][0] = 0x88;
    gBgScrollRegs[2][1] = 0x20;

    gUnknown_03005630 = gUnknown_08487034;
    gUnknown_030055A0 = gUnknown_08487074;
    gUnknown_03005740 = gUnknown_084870B4;
    gUnknown_03005800 = gUnknown_084870F4;
    gUnknown_030057A0 = gUnknown_08486FF4;

    DrawBackground(&gUnknown_03005630);
    DrawBackground(&gUnknown_030055A0);
    DrawBackground(&gUnknown_03005740);
    DrawBackground(&gUnknown_03005800);
    DrawBackground(&gUnknown_030057A0);

    TaskCreate(Task_802D2BC, 0U, 0x1200U, 0U, ((void*)0));


    CreatePaletteLoaderTask(0x2000U, gUnknown_08487134[gCurrentLevel] + 0x340, 0U, ((void*)0));


    CreatePaletteLoaderTask(0x2000U, gUnknown_08487134[gCurrentLevel] + 0x340, 1U, ((void*)0));
}

void sub_8029CDC(void)
{
    Strc_3005780 *strc5780 = &gUnknown_03005780;
    Background *bg5630 = &gUnknown_03005630;
    Background *bg55A0 = &gUnknown_030055A0;
    Background *bg5740 = &gUnknown_03005740;
    Background *bg5800 = &gUnknown_03005800;
    Strc_3005690 *strc5690 = &gUnknown_03005690;
    s32 temp_r0;
    s32 var_r0;
    s32 var_r0_2;
    s32 var_r0_3;
    s32 var_r0_4;



    s32 r1;

    u8 r2;
    u32 temp_r0_2;

    strc5780->unk4 = ((int)((-((strc5690->unk0 / 134) * 32)) >> 8));
    temp_r0 = (s32)(0 - (((s32)strc5690->unk4 / 94) << 5)) >> 8;
    strc5780->unk6 = (s16)temp_r0;
    if ((s32)(s16)temp_r0 < -0x20) {
        strc5780->unk6 = -0x20;
    }
    if ((s32)strc5780->unk6 > 0x20) {
        strc5780->unk6 = 0x20;
    }
    if ((s32)strc5780->unk4 < -0x20) {
        strc5780->unk4 = -0x20;
    }
    if ((s32)strc5780->unk4 > 0x20) {
        strc5780->unk4 = 0x20;
    }





    var_r0 = strc5780->unk0 - strc5780->unk4;
    if (var_r0 < 0) {
        var_r0 += 7;
    }
    gBgScrollRegs[3][0] = (s16)(var_r0 >> 3);
    var_r0_2 = strc5780->unk2 + strc5780->unk6;
    if (var_r0_2 < 0) {
        var_r0_2 += 7;
    }
    gBgScrollRegs[3][1] = (s16)(var_r0_2 >> 3);

    gBgScrollRegs[2][0] = strc5780->unk0 - strc5780->unk4;
    gBgScrollRegs[2][1] = strc5780->unk2 + strc5780->unk6;

    r2 = strc5780->unk12;
    strc5780->unk12 = ((strc5690->unk18 >> 9) + r2) & 0x3F;
    var_r0_3 = strc5780->unk12;
    if (var_r0_3 < 0) {
        var_r0_3 += 3;
    }
    bg5630->tilemapId = 55 + (var_r0_3 >> 2);
    var_r0_4 = strc5780->unk12;





    r1 = var_r0_4;
    if (r1 < 0) {
        var_r0_4 = r1 + 3;
    }
    bg55A0->tilemapId = (var_r0_4 >> 2) + 0x37;
    bg5740->tilemapId = (var_r0_4 >> 2) + 0x37;
    bg5800->tilemapId = (var_r0_4 >> 2) + 0x37;
    bg5630->flags &= 0xFFF7;
    DrawBackground(bg5630);
    DrawBackground(bg55A0);
    DrawBackground(bg5740);
    DrawBackground(bg5800);
}

void sub_8029E0C(s16 characterId)
{
    gUnknown_03005690.unk4C = characterId;
    gUnknown_03005690.unk0 = 0;
    gUnknown_03005690.unk4 = 0;
    gUnknown_03005690.unk8 = 0;
    gUnknown_03005690.unk10 = -52;
    gUnknown_03005690.unk14 = 0;
    gUnknown_03005690.unk16 = 0;
    gUnknown_03005690.unk18 = 0x800;
    gUnknown_03005690.unk1A = 0;
    gUnknown_03005690.unk2B = 0;
    gUnknown_03005690.unk28 = 0;
    gUnknown_03005690.unk29 = 1;
    gUnknown_03005690.unk2A = 0;
    gUnknown_03005690.unk2E = 0;
    gUnknown_03005690.unk30 = 0;
    gUnknown_03005690.unk31 = 0;
    gUnknown_03005690.unk40 = 1;
    gUnknown_03005690.unk42 = 0;
    gUnknown_03005690.unk44 = 0;
    gUnknown_03005690.anim48 = 27 + gPlayerCharacterIdleAnims[gUnknown_03005690.unk4C];
    gUnknown_03005690.variant4A = 4;
    gUnknown_03005690.unk34 = 0;
    gUnknown_03005690.unk3F = 0;
    gUnknown_03005690.unk50 = 0;
    gUnknown_03005690.unk52 = 0;
    gUnknown_03005690.unk3D = 0;
    gUnknown_03005690.unk3E = 0;
    gUnknown_03005690.unk32 = 0;
}

void sub_8029EA8(s16 unusedCharacterId)
{
    Strc_3005690 *strc5690 = &gUnknown_03005690;
    Sprite *s = &gUnknown_030055F0.s;
    SpriteTransform *tf;

    s->graphics.dest = &VRAM[0x10000];
    s->graphics.size = 0;
    s->graphics.anim = strc5690->anim48;
    s->variant = strc5690->variant4A;
    s->prevVariant = -1;
    s->x = (320 / 2) + ((int)((strc5690->unk0) >> 8));
    s->y = (240 / 2) - ((int)((strc5690->unk4) >> 8));
    s->oamFlags = 0x180;
    s->qAnimDelay = 0;
    s->animSpeed = ((int)((float)(1.0)*0x10));
    s->palId = 0;
    s->frameFlags = ((2) << (12)) | ((1) << (5));

    tf = &gUnknown_030055F0.tf;
    tf->rotation = 0;
    tf->qScaleX = ((s32)((1)*256));
    tf->qScaleY = ((s32)((1)*256));
    tf->x = 0;
    tf->y = 0;
}

bool32 sub_8029F30(Strc_3005690 *param0)
{
    if (!(1 & param0->unk29)) {
        if (8 & param0->unk29) {
            param0->unk28 = 2;
            (param0->unk29) &= ~(1 << (3));
            sub_802A988();
            return 1;
        } else if (4 & param0->unk29) {
            if (param0->unk52 != param0->unk50) {
                param0->unk28 = 1;
                (param0->unk29) &= ~(1 << (2));
                param0->unk52 = param0->unk50;
                sub_802A688();
                return 1;
            }
        }
    }

    return 0;
}

bool32 sub_8029FA4(Strc_3005690 *param0)
{
    if (param0->unk3E != 0) {
        param0->unk3E--;
        param0->unk3D = 0;
    } else if (param0->unk3D != 0) {
        param0->unk3D--;

        if (param0->unk44 & gPlayerControls.attack) {
            sub_802ACF0();
            MPlayStop(gMPlayTable[gSongTable[42].ms].info);
            CreateSpStageTrickSoundTask(43, 42);
            return 1;
        }
    } else if (param0->unk44 & gPlayerControls.attack) {
        if (!(1 & param0->unk29)) {
            if (0x200 & param0->unk44) {
                param0->unk3C = 0;
            } else {
                param0->unk3C = -1;
            }
            sub_802ABA0();
            return 1;
        }
    }

    return 0;
}

void sub_802A068(Strc_3005690 *param0)
{
    s32 temp_r0;
    s32 var_r0;
    u16 temp_r1;

    if (0xC0 & param0->unk42) {
        param0->unk1E = gUnknown_084871C4[(0xF0 & param0->unk42) >> 4][1];
        if ((param0->unk16 > 0) && (param0->unk1E < 0)) {
            param0->unk16 = 0;
        }
        if ((param0->unk16 < 0) && (param0->unk1E > 0)) {
            param0->unk16 = 0;
        }
    } else {
        var_r0 = param0->unk16;
        if (var_r0 < 0) {
            var_r0 += 3;
        }

        param0->unk1E = -(var_r0 >> 2);
        if (param0->unk1E == 0) {
            param0->unk1E = 0 - (u16)param0->unk16;
        }
    }

    if (0x30 & param0->unk42) {
        param0->unk1C = gUnknown_084871C4[(0xF0 & param0->unk42) >> 4][0];
        if ((param0->unk14 > 0) && (param0->unk1C < 0)) {
            param0->unk14 = 0;
        }
        if ((param0->unk14 < 0) && (param0->unk1C > 0)) {
            param0->unk14 = 0;
        }
    } else {
        var_r0 = param0->unk14;
        if (var_r0 < 0) {
            var_r0 += 3;
        }
        param0->unk1C = -(var_r0 >> 2);
        if (param0->unk1C == 0) {
            param0->unk1C = -param0->unk14;
        }
    }
}

void sub_802A134(Strc_3005690 *param0)
{
    Sprite *s = &gUnknown_030055F0.s;
    u32 var_r0;

    if (2 & param0->unk29) {
        if (param0->unk18 <= ((s32)((12)*256))) {
            param0->anim48 = 29 + gPlayerCharacterIdleAnims[param0->unk4C];
            param0->variant4A = 0;
        } else {
            param0->anim48 = 29 + gPlayerCharacterIdleAnims[param0->unk4C];
            param0->variant4A = 1;
        }
    } else {
        if ((0xF0 & param0->unk42) != 0) {
            param0->anim48 = gUnknown_08487184[((0xF0 & param0->unk42) >> 4)][0] + gPlayerCharacterIdleAnims[param0->unk4C];
            param0->variant4A = gUnknown_08487184[((0xF0 & param0->unk42) >> 4)][1];
        } else {
            var_r0 = sub_802D2F4(param0);
            param0->anim48 = gUnknown_0848715C[var_r0][0] + gPlayerCharacterIdleAnims[param0->unk4C];
            param0->variant4A = gUnknown_0848715C[var_r0][1];
        }
    }

    if ((s->graphics.anim != param0->anim48) || (s->variant != param0->variant4A)) {
        s->graphics.anim = param0->anim48;
        s->variant = param0->variant4A;
        s->prevVariant = -1;
    }
}

void sub_802A248(Strc_3005690 *param0)
{
    s32 param0_unk0 = param0->unk0;
    s32 param0_unk4 = param0->unk4;

    param0->unk14 += param0->unk1C;
    param0->unk16 += param0->unk1E;
    param0->unk18 += param0->unk20;

    switch (param0->unk28) {
        case 0:
        case 2:
        case 3:
        case 4:
        case 5: {
            if (param0->unk14 > 0x400) {
                param0->unk14 = 0x400;
            } else if (param0->unk14 < -0x400) {
                param0->unk14 = -0x400;
            }

            if (param0->unk16 > 0x400) {
                param0->unk16 = 0x400;
            } else if (param0->unk16 < -0x400) {
                param0->unk16 = -0x400;
            }

            if (param0->unk18 <= 0xC00) {
                if (param0->unk18 <= 0x7FF) {
                    param0->unk18 = 0x800;
                }
            } else {
                param0->unk18 = 0xC00;
            }

            if (param0->unk18 == 0x800) {
                param0->unk29 &= ~2;
            } else {
                param0->unk29 |= 2;
            }

            if (2 & param0->unk29) {
                param0_unk4 = param0->unk4 >> 5;
                if (param0_unk4 >= 0) {
                    if (param0_unk4 < param0->unk16) {
                        param0->unk16 = param0_unk4;
                    }
                } else {
                    if (param0_unk4 > param0->unk16) {
                        param0->unk16 = param0_unk4;
                    }
                }

                if (2 & param0->unk29) {
                    param0->unk0 += (param0->unk14 * 8) / ((int)((param0->unk18) >> 8));
                    param0->unk4 += (param0->unk16 * 8) / ((int)((param0->unk18) >> 8));
                    param0->unk0 -= (param0->unk0 >> 5);
                    param0->unk4 -= (param0->unk4 >> 5);
                } else {
                    param0->unk0 += param0->unk14;
                    param0->unk4 += param0->unk16;
                }
            } else {
                param0->unk0 += param0->unk14;
                param0->unk4 += param0->unk16;
            }
            if (!(1 & param0->unk29)) {
                param0->unk8 += param0->unk18;
            }
        } break;

        case 1: {
            switch (param0->unk54) {
                default: {
                    param0->unk0 = param0_unk0 + param0->unk14;
                    param0->unk4 = param0_unk4 + param0->unk16;
                } break;

                case 4: {
                    param0->unk14 += param0->unk1C;
                    param0->unk16 += param0->unk1E;

                    if (param0->unk14 > 0x400) {
                        param0->unk14 = 0x400;
                    } else if (param0->unk14 < -0x400) {
                        param0->unk14 = -0x400;
                    }

                    if (param0->unk16 > 0x400) {
                        param0->unk16 = 0x400;
                    } else if (param0->unk16 < -0x400) {
                        param0->unk16 = -0x400;
                    }

                    param0->unk14 = (param0->unk14 * ((int)((param0->unk18) >> 8))) / 8;
                    param0->unk16 = (param0->unk16 * ((int)((param0->unk18) >> 8))) / 8;

                    param0->unk0 += param0->unk14;
                    param0->unk4 += param0->unk16;
                } break;

                case 5: {
                    param0->unk14 += param0->unk1C;
                    param0->unk16 += param0->unk1E;

                    if (param0->unk14 > 0x400) {
                        param0->unk14 = 0x400;
                    } else if (param0->unk14 < -0x400) {
                        param0->unk14 = -0x400;
                    }

                    if (param0->unk16 > 0x400) {
                        param0->unk16 = 0x400;
                    } else if (param0->unk16 < -0x400) {
                        param0->unk16 = -0x400;
                    }

                    param0->unk14 = (param0->unk14 * 8) / ((int)((param0->unk18) >> 8));
                    param0->unk16 = (param0->unk16 * 8) / ((int)((param0->unk18) >> 8));
                    param0->unk0 += param0->unk14;
                    param0->unk4 += param0->unk16;
                }
            }
            if (!(1 & param0->unk29)) {
                param0->unk8 += param0->unk18;
            }
        } break;
    }

    if (param0->unk0 < -((s32)((134)*256))) {
        param0->unk0 = -((s32)((134)*256));
    }
    if (param0->unk0 > +((s32)((134)*256))) {
        param0->unk0 = +((s32)((134)*256));
    }
    if (param0->unk4 < -((s32)((94)*256))) {
        param0->unk4 = -((s32)((94)*256));
    }
    if (param0->unk4 > +((s32)((94)*256))) {
        param0->unk4 = +((s32)((94)*256));
    }
}


void sub_802A4C4(Strc_3005690 *param0)
{
    Sprite *s = &gUnknown_030055F0.s;
    SpriteTransform *tf = &gUnknown_030055F0.tf;
    s16 temp_r1;
    s16 temp_r1_3;
    s16 x16, y16;
    s16 temp_r8;
    s32 r1, r8;
    s32 temp_r1_2;

    r8 = param0->unk10;
    temp_r1_2 = (param0->unk10 + 0x240);
    x16 = ((int)(((param0->unk0 * (param0->unk10 + 0x240)) / 576) >> 8));
    y16 = ((int)(((param0->unk4 * (param0->unk10 + 0x240)) / 576) >> 8));
    r1 = 80;
    r1 -= y16;

    param0->unkC = (x16 += 120 + gUnknown_03005780.unk4);
    param0->unkE = r1 -= (u16)gUnknown_03005780.unk6;
    s->x = param0->unkC;
    s->y = param0->unkE;
    tf->x = s->x;
    tf->y = s->y;
    tf->rotation = 0;
    tf->qScaleX = r8 + ((s32)((1)*256));
    tf->qScaleY = r8 + ((s32)((1)*256));
    s->frameFlags = 0x2020;
}


void Task_802A560(void)
{
    Strc_3005690 *strc5690 = &gUnknown_03005690;
    Sprite *s = &gUnknown_030055F0.s;
    SpriteTransform *tf = &gUnknown_030055F0.tf;
    u32 var_r0;

    strc5690->unk42 = gInput;
    strc5690->unk44 = gPressedKeys;
    if (0xC0 & strc5690->unk2A) {
        strc5690->unk32 = 0x78;
        strc5690->unk14 = (-strc5690->unk0) / 120;
        strc5690->unk16 = (-strc5690->unk4) / 120;
        strc5690->unk1C = 0;
        strc5690->unk1E = 0;
        gCurTask->main = Task_802AE40;
        Task_802AE40();
    } else {
        if (!sub_8029F30(strc5690) && !sub_8029FA4(strc5690)) {
            strc5690->unk12 = (strc5690->unk12 + 0x10) & 0x3FF;
            strc5690->unk10 = ((int)(((gSineTable[(strc5690->unk12)])) >> 6)) / 16u;

            sub_802D6B4__inline(strc5690);

            sub_802A068(strc5690);
            sub_802A134(strc5690);
            sub_802A248(strc5690);
            sub_802A4C4(strc5690);
            UpdateSpriteAnimation(s);
            sub_802BE0C(s, tf);
            DisplaySprite(s);
        }
    }
}

void sub_802A688(void)
{
    Strc_3005690 *strc5690 = &gUnknown_03005690;
    Sprite *s = &gUnknown_030055F0.s;
    SpriteTransform *tf = &gUnknown_030055F0.tf;
    u16 index;

    index = strc5690->unk54 - 4;
    strc5690->anim48 = gUnknown_08487214[index][0] + gPlayerCharacterIdleAnims[strc5690->unk4C];
    strc5690->variant4A = gUnknown_08487214[index][1];
    s->graphics.anim = strc5690->anim48;
    s->variant = strc5690->variant4A;
    s->prevVariant = -1;
    if (2 & strc5690->unk29) {
        strc5690->unk14 = (gUnknown_0848722C[index][0] * 4) / 3;
        strc5690->unk16 = (gUnknown_0848722C[index][1] * 4) / 3;
        strc5690->unk18 = (gUnknown_0848722C[index][2] * 4) / 3;
    } else {
        strc5690->unk14 = gUnknown_0848722C[index][0];
        strc5690->unk16 = gUnknown_0848722C[index][1];
        strc5690->unk18 = gUnknown_0848722C[index][2];
    }

    switch (index) {
        default: {
            s32 unk20;
            strc5690->unk1C = -(gUnknown_0848722C[index][0] >> 7);
            strc5690->unk1E = -(gUnknown_0848722C[index][1] >> 7);
            strc5690->unk20 = -32;
# 1066 "/home/awaszczak/git/sa2/sa1/../src/game/sa1/special_stage/main.c"
            strc5690->unk14 = (strc5690->unk14 * 3) >> 1;
            strc5690->unk16 = (strc5690->unk16 * 3) >> 1;
            strc5690->unk18 = (strc5690->unk18 * 3) >> 1;
            strc5690->unk1C *= 3;
            strc5690->unk1E *= 3;

            unk20 = -((s32)((0.375)*256));
            strc5690->unk20 = unk20;
        } break;

        case 0: {
            strc5690->unk1C = 0;
            strc5690->unk1E = 0;
            strc5690->unk20 = +((s32)((0.25)*256));
        } break;

        case 1: {
            strc5690->unk1C = 0;
            strc5690->unk1E = 0;
            strc5690->unk20 = -((s32)((0.25)*256));
        } break;
    }

    if (gUnknown_03005730 == 0) {
        m4aSongNumStart(148);
    }

    strc5690->unk29 &= ~0x6;
    sub_802A248(strc5690);
    sub_802A4C4(strc5690);
    UpdateSpriteAnimation(s);
    sub_802BE0C(s, tf);
    DisplaySprite(s);

    gCurTask->main = sub_802A890;
}

void sub_802A890(void)
{
    Strc_3005690 *strc5690 = &gUnknown_03005690;
    Sprite *s = &gUnknown_030055F0.s;
    SpriteTransform *tf = &gUnknown_030055F0.tf;
    bool32 var_r7 = 0;

    strc5690->unk42 = gInput;
    strc5690->unk44 = gPressedKeys;

    if (strc5690->unk3D != 0) {
        strc5690->unk3D--;
    }

    switch (strc5690->unk54) {
        case 4:
            if (strc5690->unk18 > 0) {
                sub_802A068(strc5690);
            }
            break;
        case 5:
            sub_802A068(strc5690);
            break;
    }

    if (sub_8029F30(strc5690) == 0) {
        if (strc5690->unk54 == 4) {
            if (strc5690->unk18 >= 0x800) {
                var_r7 = 1;
            }
        } else {
            if (strc5690->unk18 <= 0x800) {
                var_r7 = 1;
            }
        }

        if (var_r7 != 0) {
            gCurTask->main = Task_802A560;
            strc5690->unk28 = 0;
            strc5690->unk18 = 0x800;
            strc5690->unk20 = 0;
            strc5690->unk3E = 0;
        }
        sub_802A248(strc5690);
        sub_802A4C4(strc5690);
        UpdateSpriteAnimation(s);
        sub_802BE0C(s, tf);
        DisplaySprite(s);
    }
}

void sub_802A988(void)
{
    Strc_3005690 *strc5690 = &gUnknown_03005690;
    Sprite *s = &gUnknown_030055F0.s;
    SpriteTransform *tf = &gUnknown_030055F0.tf;

    if (gSpecialStageCollectedRings != 0) {
        sub_802AAF0();
        if (gUnknown_03005730 == 0) {
            m4aSongNumStart(118);
        }
    }

    strc5690->anim48 = gPlayerCharacterIdleAnims[strc5690->unk4C] + 32;
    strc5690->variant4A = 0;

    s->graphics.anim = strc5690->anim48;
    s->variant = strc5690->variant4A;
    s->prevVariant = 0xFF;

    strc5690->unk14 = 0;
    strc5690->unk16 = 0;
    strc5690->unk18 = 0x800;
    strc5690->unk1C = 0;
    strc5690->unk1E = 0;
    strc5690->unk20 = 0;
    strc5690->unk29 &= 0xFE;
    strc5690->unk34 = 0x3C;
    sub_802A248(strc5690);
    sub_802A4C4(strc5690);

    UpdateSpriteAnimation(s);
    sub_802BE0C(s, tf);
    DisplaySprite(s);

    gCurTask->main = Task_802AA48;
}

void Task_802AA48(void)
{
    Strc_3005690 *strc5690 = &gUnknown_03005690;
    Sprite *s = &gUnknown_030055F0.s;
    SpriteTransform *tf = &gUnknown_030055F0.tf;
    u16 temp_r0;

    strc5690->unk42 = gInput;
    strc5690->unk44 = gPressedKeys;
    if (strc5690->unk3D != 0) {
        strc5690->unk3D = (u8)strc5690->unk3D - 1;
    }

    if (--strc5690->unk34 == 0) {
        gCurTask->main = Task_802A560;
        strc5690->unk28 = 0;
        (&strc5690->unk28)[0x16] = 0;
    }
    if (strc5690->unk34 <= 30) {
        sub_802A068(&gUnknown_03005690);
    }
    sub_802A248(&gUnknown_03005690);
    sub_802A4C4(&gUnknown_03005690);
    UpdateSpriteAnimation(s);
    sub_802BE0C(s, tf);
    if (!(2 & strc5690->unk34)) {
        DisplaySprite(s);
    }
}

void sub_802AAF0(void)
{
    Strc_3005690 *strc5690 = &gUnknown_03005690;
    s32 temp_r3;
    SpStage74 *strc74;
    u16 temp_r7;
    u16 var_r5;

    if ((u32)gSpecialStageCollectedRings > 9U) {
        var_r5 = 10;
        gSpecialStageCollectedRings = gSpecialStageCollectedRings - 10;
    } else {
        var_r5 = gSpecialStageCollectedRings;
        gSpecialStageCollectedRings = 0;
    }

    temp_r7 = var_r5;
    while (var_r5 != 0) {
        strc74 = (void *)((TaskCreate(sub_802C6C4, sizeof(SpStage74), 0x1500U, 0U, ((void*)0)))->data);
        temp_r3 = var_r5 - 1;
        strc74->unk6A = temp_r3;
        strc74->unk6B = temp_r7;
        strc74->unk3C = strc5690->unk0;
        strc74->unk40 = strc5690->unk4;
        strc74->unk44 = strc5690->unk8;
        strc74->unk52 = 0;
        strc74->unk54 = 0;
        strc74->unk56 = 0;
        strc74->unk58 = 0;
        strc74->unk5A = 0;
        strc74->unk5C = 0;
        strc74->unk60 = 0;
        strc74->unk68 = 0xFFFF;
        var_r5 = temp_r3;
    }
}

void sub_802ABA0(void)
{
    Strc_3005690 *strc5690 = &gUnknown_03005690;
    Sprite *s = &gUnknown_030055F0.s;
    SpriteTransform *tf = &gUnknown_030055F0.tf;

    strc5690->anim48 = gPlayerCharacterIdleAnims[strc5690->unk4C] + 30;
    strc5690->variant4A = 0;

    s->graphics.anim = strc5690->anim48;
    s->variant = strc5690->variant4A;
    s->prevVariant = 0xFF;

    strc5690->unk14 = 0;
    strc5690->unk16 = 0;
    strc5690->unk1C = 0;
    strc5690->unk1E = 0;
    strc5690->unk20 = 0;
    strc5690->unk28 = 3;
    strc5690->unk29 |= 0x10;
    strc5690->unk3A = 0x2D;

    if (gUnknown_03005730 == 0) {
        m4aSongNumStart(149);
    }

    sub_802A248(strc5690);
    sub_802A4C4(strc5690);

    UpdateSpriteAnimation(s);
    sub_802BE0C(s, tf);
    DisplaySprite(s);

    gCurTask->main = Task_802AC50;
}

void Task_802AC50(void)
{
    Strc_3005690 *strc5690 = &gUnknown_03005690;
    Sprite *s = &gUnknown_030055F0.s;
    SpriteTransform *tf = &gUnknown_030055F0.tf;

    if (strc5690->unk3D != 0) {
        strc5690->unk3D--;
    }
    if (sub_8029F30(strc5690) == 0) {
        if (2 & strc5690->unk29) {
            strc5690->unk20 = -((s32)((0.5)*256));
        } else {
            strc5690->unk20 = 0;
        }

        if (--strc5690->unk3A == 0) {
            gCurTask->main = Task_802A560;
            strc5690->unk29 &= ~0x10;
            strc5690->unk28 = 0;
            strc5690->unk3E = 0xC;
        }

        sub_802A248(strc5690);
        sub_802A4C4(strc5690);
        UpdateSpriteAnimation(s);
        sub_802BE0C(s, tf);
        DisplaySprite(s);
    }
}

void sub_802ACF0(void)
{
    Strc_3005690 *strc5690 = &gUnknown_03005690;
    Sprite *s = &gUnknown_030055F0.s;
    SpriteTransform *tf = &gUnknown_030055F0.tf;

    strc5690->anim48 = gPlayerCharacterIdleAnims[strc5690->unk4C] + 31;
    strc5690->variant4A = 0;

    s->graphics.anim = strc5690->anim48;
    s->variant = strc5690->variant4A;
    s->prevVariant = 0xFF;

    strc5690->unk14 = 0;
    strc5690->unk16 = 0;
    strc5690->unk1C = 0;
    strc5690->unk1E = 0;
    strc5690->unk20 = 0;
    strc5690->unk28 = 4;
    strc5690->unk29 |= 0x20;

    if (gUnknown_03005730 == 0) {
        m4aSongNumStart(149);
    }

    sub_802A248(strc5690);
    sub_802A4C4(strc5690);

    UpdateSpriteAnimation(s);
    sub_802BE0C(s, tf);
    DisplaySprite(s);

    gCurTask->main = Task_802AD9C;
}

void Task_802AD9C(void)
{
    Strc_3005690 *strc5690 = &gUnknown_03005690;
    Sprite *s = &gUnknown_030055F0.s;
    SpriteTransform *tf = &gUnknown_030055F0.tf;

    if (strc5690->unk3D != 0) {
        strc5690->unk3D--;
    }
    if (sub_8029F30(strc5690) == 0) {
        if (2 & strc5690->unk29) {
            strc5690->unk20 = -((s32)((0.5)*256));
        } else {
            strc5690->unk20 = 0;
        }

        if (s->frameFlags & 0x4000) {
            gCurTask->main = Task_802A560;
            strc5690->unk29 &= ~0x20;
            strc5690->unk28 = 0;
            strc5690->unk3E = 0xC;
        }

        sub_802A248(strc5690);
        sub_802A4C4(strc5690);
        UpdateSpriteAnimation(s);
        sub_802BE0C(s, tf);
        DisplaySprite(s);
    }
}

void Task_802AE40(void)
{
    Strc_3005690 *strc5690 = &gUnknown_03005690;
    Sprite *s = &gUnknown_030055F0.s;
    SpriteTransform *tf = &gUnknown_030055F0.tf;

    strc5690->unk42 = 0;
    strc5690->unk44 = 0;
    strc5690->unk12 = ((u16)strc5690->unk12 + 0x10) & 0x3FF;
    strc5690->unk10 = (s16)((s32)((u16)gSineTable[strc5690->unk12] << 0x10) >> 0x1A);

    if (2 & strc5690->unk29) {
        strc5690->unk20 = -((s32)((1)*256));
    } else {
        strc5690->unk20 = 0;
    }

    sub_802A134(strc5690);
    sub_802A248(strc5690);
    sub_802A4C4(strc5690);
    UpdateSpriteAnimation(s);
    sub_802BE0C(s, tf);
    DisplaySprite(s);

    if (--strc5690->unk32 == 0) {
        if (strc5690->unk2A == 0x40) {
            if (gUnknown_03005028 <= gSpecialStageCollectedRings) {
                strc5690->unk32 = 0x14A;
                strc5690->anim48 = gPlayerCharacterIdleAnims[strc5690->unk4C] + 0x21;
                strc5690->variant4A = 0;
                gCurTask->main = sub_802B07C;
                CreateCheckpointMessage(CHKPTMSG_PLAYER_COOL);
            } else {
                strc5690->unk32 = 0;
                strc5690->anim48 = gPlayerCharacterIdleAnims[strc5690->unk4C] + 0x22;
                strc5690->variant4A = 0;
                gCurTask->main = sub_802B008;
                sub_802B214();
                CreateCheckpointMessage(CHKPTMSG_PLAYER_AAARGH);
            }
        } else if (gUnknown_03005070 <= gSpecialStageCollectedRings) {
            strc5690->anim48 = gPlayerCharacterIdleAnims[strc5690->unk4C] + 0x21;
            strc5690->variant4A = 0;
            gCurTask->main = sub_802B18C;
            m4aSongNumStart(44);
            CreateCheckpointMessage(CHKPTMSG_PLAYER_COOL);
        } else {
            strc5690->unk32 = 0;
            strc5690->anim48 = gPlayerCharacterIdleAnims[strc5690->unk4C] + 0x22;
            strc5690->variant4A = 0;
            gCurTask->main = sub_802B008;
            sub_802B214();
            CreateCheckpointMessage(CHKPTMSG_PLAYER_AAARGH);
        }
        s->graphics.anim = strc5690->anim48;
        s->variant = strc5690->variant4A;
        s->prevVariant = -1;
    }
}

void sub_802B008(void)
{
    Strc_3005690 *strc5690 = &gUnknown_03005690;
    Sprite *s = &gUnknown_030055F0.s;
    SpriteTransform *tf = &gUnknown_030055F0.tf;

    if (strc5690->unk32 > -120) {
        strc5690->unk10 = --strc5690->unk32;
        strc5690->unk42 = 0;
        strc5690->unk44 = 0;

        if (!(2 & strc5690->unk29)) {
            strc5690->unk20 = 0;
        } else {
            strc5690->unk20 = -((s32)((1.0)*256));
        }

        sub_802A068(strc5690);
        sub_802A248(strc5690);
        sub_802A4C4(strc5690);
        UpdateSpriteAnimation(s);
        sub_802BE0C(s, tf);
        DisplaySprite(s);
    }
}


void sub_802B07C(void)
{
    Strc_3005690 *strc5690 = &gUnknown_03005690;
    Sprite *s = &gUnknown_030055F0.s;
    SpriteTransform *tf = &gUnknown_030055F0.tf;
    u32 flags;
    u8 *ptr;

    strc5690->unk42 = 0;
    strc5690->unk44 = 0;
    strc5690->unk12 = (strc5690->unk12 + 0x10) & 0x3FF;
    strc5690->unk10 = (gSineTable[(strc5690->unk12)]) >> 10;
    flags = 2 & strc5690->unk29;
    ptr = &strc5690->unk29;
    if (flags) {
        strc5690->unk20 = -((s32)((1)*256));
    } else {
        strc5690->unk20 = 0;
    }

    sub_802A068(strc5690);
    sub_802A248(strc5690);
    sub_802A4C4(strc5690);
    UpdateSpriteAnimation(s);
    sub_802BE0C(s, tf);
    DisplaySprite(s);

    if (strc5690->unk32 == 0xB4) {
        gSpecialStageTargetRings = gUnknown_03005070;
        TasksDestroyInPriorityRange(0x1180U, 0x1181U);
        sub_805C448(0U);
    }
    if (strc5690->unk32 != 0) {
        if (--strc5690->unk32 == 0) {
            strc5690->variant4A = 1;
            s->variant = 1;
            s->prevVariant = 0xFF;
        }
    }
    if (s->frameFlags & 0x4000) {
        gCurTask->main = Task_802A560;
        *ptr = 0;
        strc5690->unk2A = 0;
        strc5690->unk3E = 0xC;
    }
}


void sub_802B18C(void)
{
    Strc_3005690 *strc5690 = &gUnknown_03005690;
    Sprite *s = &gUnknown_030055F0.s;
    SpriteTransform *tf = &gUnknown_030055F0.tf;
    u32 flags;

    strc5690->unk42 = 0;
    strc5690->unk44 = 0;
    strc5690->unk12 = (strc5690->unk12 + 0x10) & 0x3FF;
    strc5690->unk10 = ((int)(((gSineTable[(strc5690->unk12)])) >> 6)) / 16u;

    if (2 & strc5690->unk29) {
        strc5690->unk20 = -((s32)((1)*256));
    } else {
        strc5690->unk20 = 0;
    }

    sub_802A068(strc5690);
    sub_802A248(strc5690);
    sub_802A4C4(strc5690);
    UpdateSpriteAnimation(s);
    sub_802BE0C(s, tf);
    DisplaySprite(s);
}

void sub_802B214(void)
{
    Strc_3005690 *strc5690 = &gUnknown_03005690;
    Sprite *s;
    SpriteTransform *tf;
    s32 rnd;

    SpStage74 *strc74 = (void *)((TaskCreate(Task_802D508, sizeof(SpStage74), 0x10FFU, 0U, ((void*)0)))->data);
    strc74->unk3C = strc5690->unk0;
    strc74->unk40 = strc5690->unk4;
    strc74->unk44 = strc5690->unk8 - ((s32)((1)*256));
    strc74->unk50 = (s16)(u16)strc5690->unk10;
    strc74->unk52 = 0;
    strc74->unk54 = 0;
    strc74->unk56 = 0;
    rnd = ({ gPseudoRandom = (gPseudoRandom * 0x196225) + 0x3C6EF35F; gPseudoRandom; });
    strc74->unk58 = rnd & 0xF;
    strc74->unk5A = -((0x70 & rnd) >> 4);
    strc74->unk5C = -0x10;
    if (rnd & 0x80) {
        strc74->unk58 = -strc74->unk58;
    }
    strc74->unk6E = 0;
    strc74->unk60 = 0xE;
    strc74->anim62 = gPlayerCharacterIdleAnims[strc5690->unk4C] + 34;
    strc74->variant64 = 1U;
    strc74->unk67 = 0;

    s = &strc74->s;
    s->graphics.dest = &VRAM[0x10000] + 0x1400;
    s->graphics.size = 0;
    s->graphics.anim = strc74->anim62;
    s->variant = strc74->variant64;
    s->prevVariant = -1;
    s->qAnimDelay = 0;
    s->animSpeed = ((int)((float)(1.0)*0x10));

    strc74->unk66 = sub_802D58C(((int)((strc5690->unk8) >> 8)) - ((int)((strc74->unk44) >> 8)));
    s->x = ((int)((strc74->unk3C) >> 8)) + 120;
    s->y = 80 - ((int)((strc74->unk40) >> 8));
    s->oamFlags = ((4) << 6);
    s->qAnimDelay = 0;
    s->animSpeed = 0x10;
    s->palId = 0;
    s->frameFlags = strc74->unk66 | 0x2020;
    tf = &strc74->tf;
    tf->rotation = 0;
    tf->qScaleX = ((s32)((0.25)*256));
    tf->qScaleY = ((s32)((0.25)*256));
    tf->x = s->x;
    tf->y = s->y;
}

void Task_802B3E4()
{
    SpStage8 *strc8 = (void *)((gCurTask)->data);
    Strc_3005690 *strc5690 = &gUnknown_03005690;
    Strc_30055E0 *strc55E0 = &gUnknown_030055E0;
    SpStage74 *strc74;
    SpStageC *temp_r5;
    u16 var_r0;

    temp_r5 = gUnknown_087BF8DC[gUnknown_08487134[gCurrentLevel]];
    if ((strc8->unk6 == 0) && (strc55E0->unk0 != 1)) {
        while (temp_r5[strc8->unk2].unk4 < (((int)((strc5690->unk8) >> 8)) + 0x300)) {
            if (temp_r5[strc8->unk2].unk8 == 0xFFFF) {
                strc74 = (void *)((TaskCreate(sub_802D33C, sizeof(SpStage74), 0x1F00U, 0U, ((void*)0)))->data);
                strc74->unk60 = 1;
                strc74->unk44 = temp_r5[strc8->unk2].unk4 << 8;
                strc8->unk4 = temp_r5[strc8->unk2].unk4;
                strc8->unk2 += 1;
                strc8->unk6 = 1;
                break;
            } else if (temp_r5[strc8->unk2].unk8 == 0x7FFF) {
                strc74 = (void *)((TaskCreate(sub_802D33C, sizeof(SpStage74), 0x1F00U, 0U, ((void*)0)))->data);
                strc74->unk60 = 2;
                strc74->unk44 = temp_r5[strc8->unk2].unk4 << 8;
                strc8->unk4 = temp_r5[strc8->unk2].unk4;
                strc8->unk2++;
            } else if (temp_r5[strc8->unk2].unk8 == 0) {
                strc8->unk2++;
            } else {
                strc74 = (void *)((TaskCreate(Task_802BEDC, sizeof(SpStage74), 0x1500U, 0U, ((void*)0)))->data);
                strc74->unk60 = temp_r5[strc8->unk2].unk8;
                strc74->unk3C = ((s32)((temp_r5[strc8->unk2].unk0)*256));
                strc74->unk40 = ((s32)((temp_r5[strc8->unk2].unk2)*256));
                strc74->unk44 = ((s32)((temp_r5[strc8->unk2].unk4)*256));
                strc74->unk68 = (s16)strc8->unk2;
                strc74->unk6D = 0xB;
                strc74->unk70 = 0;
                strc8->unk4 = temp_r5[strc8->unk2].unk4;
                strc8->unk2++;
            }
        }
    }
}

void sub_802B5DC(Sprite *s)
{
    s32 i;

    if ((s->graphics.anim != 797) || (s->variant != 0)) {
        for (i = 0; i < (s32)(sizeof(gUnknown_030056F0) / sizeof((gUnknown_030056F0)[0])); i++) {
            if ((gUnknown_030056F0[i][0] == s->graphics.anim) && (gUnknown_030056F0[i][1] == s->variant)) {
                s->frameFlags = s->frameFlags | 0xC0000;
                return;
            }
        }

        for (i = 0; i < (s32)(sizeof(gUnknown_030056F0) / sizeof((gUnknown_030056F0)[0])); i++) {
            if ((gUnknown_030056F0[i][0] == 0) && (gUnknown_030056F0[i][1] == 0)) {
                gUnknown_030056F0[i][0] = s->graphics.anim;
                gUnknown_030056F0[i][1] = s->variant;
                return;
            }
        }
    }
}


u32 sub_802B66C(SpStage74 *strc74, Sprite *s, s16 param2, s16 param3)
{
    Sprite *spr55F0 = &gUnknown_030055F0.s;
    Strc_3005690 *strc5690;

    if (s->hitboxes[0].index == -1) {
        return 0U;
    }

    strc5690 = &gUnknown_03005690;
    if ((strc5690->unk8 >= strc74->unk44 - ((s32)((64)*256))) && (strc5690->unk8 <= strc74->unk44)) {
        u16 unk60 = strc74->unk60;
        if ((unk60 >= 4) && ((unk60 < 10) || (unk60 == 0xB))) {
            if (2 & strc5690->unk29) {
                if ((((((param2) + s->hitboxes[0].b.left) <= ((((int)((strc5690->unk0) >> 8))) + gUnknown_0848720C.left) && ((((param2)) + (s->hitboxes[0].b).left) + ((s->hitboxes[0].b).right - (s->hitboxes[0].b).left)) >= ((((int)((strc5690->unk0) >> 8))) + gUnknown_0848720C.left)) || (((param2) + s->hitboxes[0].b.left) >= ((((int)((strc5690->unk0) >> 8))) + gUnknown_0848720C.left) && ((((((int)((strc5690->unk0) >> 8)))) + (gUnknown_0848720C).left) + ((gUnknown_0848720C).right - (gUnknown_0848720C).left)) >= ((param2) + s->hitboxes[0].b.left))) && (((((param3)) + s->hitboxes[0].b.top) <= (((((int)((strc5690->unk4) >> 8)))) + gUnknown_0848720C.top) && ((((param3)) + s->hitboxes[0].b.top) + ((s->hitboxes[0].b).bottom - (s->hitboxes[0].b).top)) >= (((((int)((strc5690->unk4) >> 8)))) + gUnknown_0848720C.top)) || ((((param3)) + s->hitboxes[0].b.top) >= (((((int)((strc5690->unk4) >> 8)))) + gUnknown_0848720C.top) && ((((((int)((strc5690->unk4) >> 8)))) + gUnknown_0848720C.top) + ((gUnknown_0848720C).bottom - (gUnknown_0848720C).top)) >= (((param3)) + s->hitboxes[0].b.top))))) {
                    return 1;
                }
            } else if ((((((param2) + (&s->hitboxes[0].b)->left) <= ((((int)((strc5690->unk0) >> 8))) + (&gUnknown_08487204)->left) && (((param2) + (&s->hitboxes[0].b)->left) + ((&s->hitboxes[0].b)->right - (&s->hitboxes[0].b)->left)) >= ((((int)((strc5690->unk0) >> 8))) + (&gUnknown_08487204)->left)) || (((param2) + (&s->hitboxes[0].b)->left) >= ((((int)((strc5690->unk0) >> 8))) + (&gUnknown_08487204)->left) && (((((int)((strc5690->unk0) >> 8))) + (&gUnknown_08487204)->left) + ((&gUnknown_08487204)->right - (&gUnknown_08487204)->left)) >= ((param2) + (&s->hitboxes[0].b)->left))) && (((((param3)) + (&s->hitboxes[0].b)->top) <= (((((int)((strc5690->unk4) >> 8)))) + (&gUnknown_08487204)->top) && ((((param3)) + (&s->hitboxes[0].b)->top) + ((&s->hitboxes[0].b)->bottom - (&s->hitboxes[0].b)->top)) >= (((((int)((strc5690->unk4) >> 8)))) + (&gUnknown_08487204)->top)) || ((((param3)) + (&s->hitboxes[0].b)->top) >= (((((int)((strc5690->unk4) >> 8)))) + (&gUnknown_08487204)->top) && ((((((int)((strc5690->unk4) >> 8)))) + (&gUnknown_08487204)->top) + ((&gUnknown_08487204)->bottom - (&gUnknown_08487204)->top)) >= (((param3)) + (&s->hitboxes[0].b)->top))))) {
                return 1;
            }
        } else {
            if ((((((param2) + s->hitboxes[0].b.left) <= ((((int)((strc5690->unk0) >> 8))) + spr55F0->hitboxes[0].b.left) && ((((param2)) + (s->hitboxes[0].b).left) + ((s->hitboxes[0].b).right - (s->hitboxes[0].b).left)) >= ((((int)((strc5690->unk0) >> 8))) + spr55F0->hitboxes[0].b.left)) || (((param2) + s->hitboxes[0].b.left) >= ((((int)((strc5690->unk0) >> 8))) + spr55F0->hitboxes[0].b.left) && ((((((int)((strc5690->unk0) >> 8)))) + (spr55F0->hitboxes[0].b).left) + ((spr55F0->hitboxes[0].b).right - (spr55F0->hitboxes[0].b).left)) >= ((param2) + s->hitboxes[0].b.left))) && (((((param3)) + s->hitboxes[0].b.top) <= (((((int)((strc5690->unk4) >> 8)))) + spr55F0->hitboxes[0].b.top) && ((((param3)) + s->hitboxes[0].b.top) + ((s->hitboxes[0].b).bottom - (s->hitboxes[0].b).top)) >= (((((int)((strc5690->unk4) >> 8)))) + spr55F0->hitboxes[0].b.top)) || ((((param3)) + s->hitboxes[0].b.top) >= (((((int)((strc5690->unk4) >> 8)))) + spr55F0->hitboxes[0].b.top) && ((((((int)((strc5690->unk4) >> 8)))) + spr55F0->hitboxes[0].b.top) + ((spr55F0->hitboxes[0].b).bottom - (spr55F0->hitboxes[0].b).top)) >= (((param3)) + s->hitboxes[0].b.top))))) {
                return 1;
            }
        }
    }

    return 0;
}


void sub_802B884(void)
{
    u16 temp_r0;

    SpStage74 *strc74 = (void *)((gCurTask)->data);
    Sprite *s = &strc74->s;
    Strc_3005690 *strc5690 = &gUnknown_03005690;

    if (1 & strc74->unk67) {
        return;
    }
    if (1 & strc5690->unk29) {
        return;
    }
    if (strc5690->unk28 == 2) {
        return;
    }
    if (sub_802B66C(strc74, s, strc74->unk48, strc74->unk4A) == 0) {
        return;
    }

    switch (strc74->unk60) {
        case 0: {
            strc74->unk60 = 1;
            strc74->anim62 = gUnknown_0848728C[strc74->unk60][0];
            strc74->variant64 = gUnknown_0848728C[strc74->unk60][1];
            strc74->unk67 |= 1;
            strc74->unk52 = 0;
            strc74->unk54 = 0;
            strc74->unk56 = 0;
            strc74->unk58 = 0;
            strc74->unk5A = 0;
            strc74->unk5C = 0;
            s->graphics.dest = (gUnknown_084872C4[strc74->unk60] << 5) + &VRAM[0x10000];
            s->graphics.size = 0;
            s->graphics.anim = strc74->anim62;
            s->variant = strc74->variant64;
            s->prevVariant = -1;
            s->qAnimDelay = 0;
            s->animSpeed = 0x10;
            gSpecialStageCollectedRings += 1;
            SpStage_PlayRingSoundeffect();
            gCurTask->main = sub_802D3E4;
        } break;
        case 3: {
            strc74->unk60 = 1;
            strc74->anim62 = gUnknown_0848728C[strc74->unk60][0];
            strc74->variant64 = gUnknown_0848728C[strc74->unk60][1];
            strc74->unk67 |= 1;
            strc74->unk52 = 0;
            strc74->unk54 = 0;
            strc74->unk58 = 0;
            strc74->unk5A = 0;
            s->graphics.dest = (gUnknown_084872C4[strc74->unk60] << 5) + &VRAM[0x10000];
            s->graphics.size = 0;
            s->graphics.anim = strc74->anim62;
            s->variant = strc74->variant64;
            s->prevVariant = -1;
            s->qAnimDelay = 0;
            s->animSpeed = 0x10;
            gSpecialStageCollectedRings += 1;
            SpStage_PlayRingSoundeffect();
            gCurTask->main = sub_802C224;
        } break;

        case 2: {
            strc74->unk67 |= 1;
            if (gUnknown_03005730 == 0) {
                m4aSongNumStart(150);
            }
            sub_802C2DC(strc74);
            sub_802C04C(strc74);
            gCurTask->main = sub_802C488;
            strc5690->unk3D = 0xA;
            strc74->unk6D = 0xB;
        } break;
        case 4:
        case 5:
        case 6:
        case 7:
        case 8:
        case 9: {
            strc5690->unk29 = 4 | strc5690->unk29;
            strc5690->unk50 = (u16)strc74->unk68;
            strc5690->unk54 = (u16)strc74->unk60;
        } break;

        case 10: {
            TaskDestroy(gCurTask);
            if (gUnknown_03005730 == 0) {
                m4aSongNumStart(151);
            }
            gUnknown_0300507C += 1;
        } break;

        case 11: {
            strc74->unk60 = 0xC;
            strc74->anim62 = gUnknown_0848728C[strc74->unk60][0];
            strc74->variant64 = gUnknown_0848728C[strc74->unk60][1];
            strc74->unk67 |= 1;
            strc74->unk52 = 0;
            strc74->unk54 = 0;
            strc74->unk56 = 0;
            strc74->unk58 = 0;
            strc74->unk5A = 0;
            strc74->unk5C = 0;

            s->graphics.dest = &VRAM[0x10000] + (gUnknown_084872C4[strc74->unk60] * 32);
            s->graphics.size = 0;
            s->graphics.anim = strc74->anim62;
            s->variant = strc74->variant64;
            s->prevVariant = -1;
            s->qAnimDelay = 0;
            s->animSpeed = 0x10;
            strc5690->unk29 |= 8;

            if (gUnknown_03005730 == 0) {
                m4aSongNumStart(144);
            }

            gCurTask->main = sub_802D3E4;
        } break;
    }
}

void sub_802BBF0()
{
    SpStage74 *strc74 = (void *)((gCurTask)->data);

    strc74->unk52 += strc74->unk58;
    strc74->unk54 += strc74->unk5A;
    strc74->unk56 += strc74->unk5C;
    strc74->unk3C += strc74->unk52;
    strc74->unk40 += strc74->unk54;
    strc74->unk44 += strc74->unk56;
}

bool32 sub_802BC6C(void)
{
    s32 var_r0;
    s32 var_r4;
    s32 var_r7;
    Strc_3005690 *strc5690 = &gUnknown_03005690;

    SpStage74 *strc74 = (void *)((gCurTask)->data);
    Sprite *s = &strc74->s;
    SpriteTransform *tf = &strc74->tf;

    strc74->unk50 = (s16)((int)((strc5690->unk8 - strc74->unk44) >> 8));
    if ((strc74->unk60 != 3) && (strc74->unk50 > 576)) {
        TaskDestroy(gCurTask);
        return 0;
    }

    if (strc74->unk50 > 0xC0) {
        return 0;
    }
    if (strc74->unk50 < -((s32)((3)*256))) {
        return 0;
    }

    strc74->unk66 = sub_802D58C(strc74->unk50);
    var_r7 = (strc74->unk50 + 0x300);
    var_r7 >>= 3;
    if (var_r7 == 0) {
        var_r7 = 1;
    }
    var_r7 = (var_r7 * var_r7 * var_r7 * var_r7) / 408;
    var_r4 = var_r7;
    if (var_r7 < 0) {
        var_r4 = var_r7 + 0x1FF;
    }

    strc74->unk48 = ((((var_r4 >> 9) + 0x38) * strc74->unk3C) / 640) >> 8;
    strc74->unk4A = ((((var_r4 >> 9) + 0x38) * strc74->unk40) / 640) >> 8;
    strc74->unk4C = 120 + strc74->unk48;
    strc74->unk4E = 80 - strc74->unk4A;
    strc74->unk4C += gUnknown_03005780.unk4;
    strc74->unk4E -= gUnknown_03005780.unk6;
    s->x = strc74->unk4C;
    s->y = strc74->unk4E;
    tf->x = s->x;
    tf->y = s->y;

    var_r0 = var_r7;
    if (var_r7 < 0) {
        var_r0 = var_r7 + 0x3FF;
    }

    tf->qScaleX = (var_r0 >> 10) + 0x40;
    tf->qScaleY = (var_r0 >> 10) + 0x40;
    s->frameFlags = strc74->unk66 | 0x2020;
    if (tf->qScaleX > 0x100) {
        s->frameFlags |= 0x40;
    }

    var_r0 = ((strc74->unk50 - 0xC0) / 32);
    s->oamFlags = ((-var_r0) << 6);

    return 1;
}



void sub_802BE0C(Sprite *s, SpriteTransform *tf)
{
    u16 sp00[8];
    const SpriteOffset *dims;
    s8 temp_r7;
    u32 temp_r1;
    u32 temp_r1_2;
    u16 *affine;

    dims = s->dimensions;
    if (dims != (SpriteOffset *)-1) {
        u16 *ptrSP = &sp00[0];
        *ptrSP++ = tf->qScaleX;
        *ptrSP++ = tf->qScaleY;
        ptrSP = &sp00[7];
        *ptrSP = s->frameFlags & 0x1F;
        temp_r7 = gUnknown_030057E0[*ptrSP];
        if (temp_r7 == 0) {
            gUnknown_030057E0[*ptrSP] = 0xFF;

            affine = (*ptrSP << 4) + &gOamBuffer->all.affineParam;
            affine[0 * (12 / sizeof(short))] = ({((tf->qScaleX) != 0) ? ((s32)(0x10000) / (s32)(tf->qScaleX)) : 0;});
            affine[1 * (12 / sizeof(short))] = 0;
            affine[2 * (12 / sizeof(short))] = 0;
            affine[3 * (12 / sizeof(short))] = ({((tf->qScaleY) != 0) ? ((s32)(0x10000) / (s32)(tf->qScaleY)) : 0;});
        }
        sp00[2] = tf->x - ((int)(((tf->qScaleX * (dims->offsetX - (dims->width >> 1))) + ((s32)(((dims->width >> 1))*256))) >> 8));
        sp00[4] = tf->y - ((int)(((tf->qScaleY * (dims->offsetY - (dims->height >> 1))) + ((s32)(((dims->height >> 1))*256))) >> 8));
        s->x = sp00[2];
        s->y = sp00[4];
    }
}


void Task_802BEDC(void)
{
    SpStage74 *strc74 = (void *)((gCurTask)->data);
    Sprite *s;

    strc74->unk50 = 0;
    strc74->unk52 = 0;
    strc74->unk54 = 0;
    strc74->unk56 = 0;
    strc74->unk58 = 0;
    strc74->unk5A = 0;
    strc74->unk5C = 0;
    strc74->anim62 = gUnknown_0848728C[strc74->unk60][0];
    strc74->variant64 = gUnknown_0848728C[strc74->unk60][1];
    strc74->unk67 = 0;

    s = &strc74->s;
    s->graphics.dest = (gUnknown_084872C4[strc74->unk60] << 5) + &VRAM[0x10000];
    s->graphics.size = 0;
    s->graphics.anim = strc74->anim62;
    s->variant = strc74->variant64;
    s->prevVariant = -1;
    s->qAnimDelay = 0;
    s->animSpeed = ((int)((float)(1.0)*0x10));
    strc74->unk66 = sub_802D58C((((int)((gUnknown_03005690.unk8) >> 8)) - ((int)((strc74->unk44) >> 8))));
    s->x = 120 + ((int)((strc74->unk3C) >> 8));
    s->y = 80 - ((int)((strc74->unk40) >> 8));
    s->oamFlags = 0x7C0;
    s->palId = 0;
    s->frameFlags = strc74->unk66 | 0x2020;

    strc74->tf.rotation = 0;
    strc74->tf.qScaleX = ((s32)((0.25)*256));
    strc74->tf.qScaleY = ((s32)((0.25)*256));
    strc74->tf.x = s->x;
    strc74->tf.y = s->y;
    gCurTask->main = Task_802D37C;
    sub_802B5DC(s);
    UpdateSpriteAnimation(s);
    sub_802BE0C(s, &strc74->tf);
}

void sub_802C04C(SpStage74 *strc74)
{
    s32 var_r6;
    SpStage74 *newStrc74;

    for (var_r6 = 0; var_r6 < 12; var_r6++) {
        newStrc74 = (void *)((TaskCreate(Task_802BEDC, sizeof(SpStage74), 0x1510U, 0U, ((void*)0)))->data);
        newStrc74->unk60 = 3;
        newStrc74->unk3C = (strc74->unk3C + (gUnknown_084872E0[var_r6][0] << 6));
        newStrc74->unk40 = (strc74->unk40 + (gUnknown_084872E0[var_r6][1] << 6));
        newStrc74->unk44 = strc74->unk44;
        newStrc74->unk68 = strc74->unk68;
        newStrc74->unk70 = 0xF;
    }
}

void sub_802C0CC(void)
{
    s16 temp_r1_3;
    s32 temp_r1_2;
    s16 temp_r0_3;
    u16 var_r2;
    Strc_3005690 *strc5690 = &gUnknown_03005690;
    SpStage74 *strc74 = (void *)((gCurTask)->data);
    Sprite *s = &strc74->s;
    SpriteTransform *tf = &strc74->tf;
    s16 theta;
    s16 x, y;
    s32 v0, v1;

    x = (strc5690->unkC - strc74->unk4C);
    y = (strc5690->unkE - strc74->unk4E);

    theta = sa2__sub_8004418(y, x);
    strc74->unk52 += 0x15;
    v0 = (strc74->unk52 * (gSineTable[(theta) + 256]));
    v1 = ((gSineTable[(theta)]));
    strc74->unk3C += v0 >> 14;
    strc74->unk40 -= (strc74->unk52 * v1) >> 14;
    strc74->unk5C = ((int)((strc5690->unk8 - strc74->unk44) >> 8));
    temp_r0_3 = strc74->unk56 + strc74->unk5C;

    if (temp_r0_3 >= 0) {
        if (temp_r0_3 > ((s32)((14)*256))) {
            temp_r0_3 = ((s32)((14)*256));
        }
    } else if (temp_r0_3 < -((s32)((14)*256))) {
        temp_r0_3 = -((s32)((14)*256));
    }

    strc74->unk56 = temp_r0_3;
    strc74->unk44 += strc74->unk56;
    if ((strc5690->unk8 + 0x100) < strc74->unk44) {
        strc74->unk44 = strc5690->unk8;
    }
    if (sub_802BC6C() != 0) {
        if (strc74->unk70 != 0) {
            strc74->unk70 -= 1;
        } else {
            sub_802B884();
        }
        sub_802B5DC(s);
        UpdateSpriteAnimation(s);
        sub_802BE0C(s, tf);
        DisplaySprite(s);
    }
}

void sub_802C224(void)
{
    s16 temp_r1_3;
    s32 temp_r1_2;
    s16 temp_r0_3;
    u16 var_r2;
    Strc_3005690 *strc5690 = &gUnknown_03005690;
    SpStage74 *strc74 = (void *)((gCurTask)->data);
    Sprite *s = &strc74->s;
    SpriteTransform *tf = &strc74->tf;
    s16 theta;
    s16 x, y;
    s32 v0, v1;

    if (s->frameFlags & ((1) << (14))) {
        gCurTask->main = sub_802D450;
        return;
    }

    strc74->unk5C = ((int)((strc5690->unk8 - strc74->unk44) >> 8));

    temp_r0_3 = strc74->unk56 + strc74->unk5C;
    if (temp_r0_3 >= 0) {
        if (temp_r0_3 > ((s32)((14)*256))) {
            temp_r0_3 = ((s32)((14)*256));
        }
    } else if (temp_r0_3 < -((s32)((14)*256))) {
        temp_r0_3 = -((s32)((14)*256));
    }

    strc74->unk56 = temp_r0_3;
    strc74->unk44 += strc74->unk56;
    if ((strc5690->unk8 + 0x100) < strc74->unk44) {
        strc74->unk44 = strc5690->unk8;
    }
    if (sub_802BC6C() != 0) {
        sub_802B5DC(s);
        UpdateSpriteAnimation(s);
        sub_802BE0C(s, tf);
        DisplaySprite(s);
    }
}

void sub_802C2DC(SpStage74 *strc74)
{
    s32 i;
    SpStage74 *newStrc74;
    Sprite *s;

    for (i = 0; i < 8; i++) {
        newStrc74 = (void *)((TaskCreate(sub_802D3E4, sizeof(SpStage74), 0x1510U, 0U, ((void*)0)))->data);
        newStrc74->unk60 = 0xD;
        newStrc74->unk3C = (strc74->unk3C + ((s32)((gUnknown_08487310[i][0])*256)));
        newStrc74->unk40 = (strc74->unk40 + ((s32)((gUnknown_08487310[i][1])*256)));
        newStrc74->unk44 = strc74->unk44;
        newStrc74->unk50 = 0;
        newStrc74->unk52 = (u16)gUnknown_08487310[i][0] * 8;
        newStrc74->unk54 = (u16)gUnknown_08487310[i][1] * 8;
        newStrc74->unk56 = 0;
        newStrc74->unk58 = 0 - (newStrc74->unk52 / 32);
        newStrc74->unk5A = 0 - (newStrc74->unk54 / 32);
        newStrc74->unk5C = 0;
        newStrc74->anim62 = gUnknown_0848728C[newStrc74->unk60][0];
        newStrc74->variant64 = gUnknown_0848728C[newStrc74->unk60][1];
        newStrc74->unk66 = strc74->unk66;
        newStrc74->unk67 = 1;
        s = &newStrc74->s;
        s->graphics.dest = ((gUnknown_084872C4[newStrc74->unk60] << 5) + &VRAM[0x10000]);
        s->graphics.size = 0;
        s->graphics.anim = newStrc74->anim62;
        s->variant = newStrc74->variant64;
        s->prevVariant = 0xFF;
        s->qAnimDelay = 0;
        s->animSpeed = 0x10;
        s->palId = 0;
        s->frameFlags = (newStrc74->unk66 | 0x2020);
        s->oamFlags = ((31) << 6);
    }
}

void sub_802C488()
{
    u16 var_r0;
    u8 *temp_r1;
    u8 *temp_r3;
    u8 temp_r0_2;

    SpStage74 *strc74 = (void *)((gCurTask)->data);
    Sprite *s = &strc74->s;

    s = &strc74->s;
    if (--strc74->unk6D == 0) {
        strc74->unk6D = 60;
        if (gUnknown_03005690.unk28 == 4) {
            strc74->anim62 = 812;
            strc74->variant64 = 1;
        } else {
            strc74->anim62 = 812;
            strc74->variant64 = 2;
        }

        sub_802D6FC__inline(strc74, s);
        s->x = 120;
        s->y = 40;
        s->oamFlags = ((1) << 6);
        s->frameFlags = ((2) << (12));
        gCurTask->main = sub_802D4C4;
    }
}

static void CreateCheckpointMessage(u8 msg)
{
    Sprite *s;
    u8 *temp_r1;
    u8 var_r0;

    SpStage74 *strc74 = (void *)((TaskCreate(sub_802D4C4, 0x74U, 0x1500U, 0U, ((void*)0)))->data);
    s = &strc74->s;

    switch (msg) {
        case 0:

            s->y = 40;
            strc74->anim62 = 813;
            strc74->variant64 = (u16)msg;
            strc74->unk60 = 5;
            strc74->unk6D = 0xB4;
            break;
        case 1:

            s->y = 40;
            strc74->anim62 = 813;
            strc74->variant64 = (u16)msg;
            strc74->unk60 = 5;
            strc74->unk6D = 0xB4;
            break;
        case 2:

            s->y = 136;
            strc74->anim62 = 812;
            strc74->variant64 = 0;
            strc74->unk60 = (u16)msg;
            strc74->unk6D = 0x78;
            break;
    }

    s->graphics.dest = (gUnknown_084872C4[strc74->unk60] << 5) + &VRAM[0x10000];
    s->graphics.size = 0;
    s->graphics.anim = strc74->anim62;
    s->variant = strc74->variant64;
    s->prevVariant = -1;
    s->qAnimDelay = 0;
    s->animSpeed = 0x10;
    s->x = 120;
    s->oamFlags = 0x40;
    s->frameFlags = 0x2000;
    s->palId = 0;
    s->animCursor = 0;
    s->hitboxes[0].index = -1;
}

void sub_802C6C4()
{
    SpStage74 *strc74 = (void *)((gCurTask)->data);
    Sprite *s;
    SpriteTransform *tf;

    strc74->unk50 = 0;
    strc74->unk52 = gUnknown_08487330[strc74->unk6A][0];
    strc74->unk54 = gUnknown_08487330[strc74->unk6A][1];
    strc74->unk56 = 0x800;
    strc74->unk58 = -(strc74->unk52 / 32);
    strc74->unk5A = -(strc74->unk54 / 32);
    strc74->unk5C = -(strc74->unk56 / 64);
    strc74->anim62 = gUnknown_0848728C[0][0];
    strc74->variant64 = gUnknown_0848728C[0][1];
    strc74->unk67 = 0;
    strc74->unk66 = sub_802D58C(((int)((gUnknown_03005690.unk8) >> 8)) - ((int)((strc74->unk44) >> 8)));

    s = &strc74->s;
    s->graphics.dest = (gUnknown_084872C4[strc74->unk60] << 5) + &VRAM[0x10000];
    s->graphics.size = 0;
    s->graphics.anim = strc74->anim62;
    s->variant = strc74->variant64;
    s->prevVariant = -1;
    s->qAnimDelay = 0;
    s->animSpeed = 0x10;
    s->x = 120 + ((int)((strc74->unk3C) >> 8));
    s->y = +80 - ((int)((strc74->unk40) >> 8));
    s->oamFlags = 0x180;
    s->qAnimDelay = 0;
    s->animSpeed = 0x10;
    s->palId = 0;
    s->frameFlags = strc74->unk66 | 0x2020;

    tf = &strc74->tf;
    tf->rotation = 0;
    tf->qScaleX = 0x100;
    tf->qScaleY = 0x100;
    tf->x = s->x;
    tf->y = s->y;

    gCurTask->main = sub_802C89C;

    sub_802B5DC(s);
    UpdateSpriteAnimation(s);
    sub_802BE0C(s, tf);
}

void sub_802C89C()
{
    SpStage74 *strc74 = (void *)((gCurTask)->data);
    Sprite *s = &strc74->s;
    SpriteTransform *tf = &strc74->tf;

    strc74->unk58 = -(strc74->unk52 / 32);
    strc74->unk5A = -(strc74->unk54 / 32);

    sub_802BBF0();

    if (sub_802BC6C() != 0) {
        sub_802B5DC(s);
        UpdateSpriteAnimation(s);
        sub_802BE0C(s, tf);

        if (1 & strc74->unk6C++) {
            DisplaySprite(s);
        }
    }
}

void sub_802C934(void)
{
    s32 sp4;
    SpStageC *element;
    Sprite *s;
    u16 var_r4;
    u32 allocSize;
    u8 var_r2;
    u8 *temp_r6;
    SpStage40 *strc40;

    element = gUnknown_087BF8DC[gUnknown_08487134[gCurrentLevel]];
    var_r4 = 0;
    for (var_r2 = 0; var_r2 < 16; var_r2++) {
        while (((u32)(var_r2 << 12) > (element[var_r4].unk4 + 0x300))) {
            if (element[var_r4].unk8 == 0xFFFF) {
                break;
            }

            var_r4 += 1;
        }
        gUnknown_03005840[var_r2] = var_r4;
    }

    allocSize = ((var_r4 >> 3) + 4) & 0xFFFC;
    temp_r6 = EwramMalloc(allocSize);
    { u32 tmp = (u32)(0); DmaSet(3, &tmp, temp_r6, (u32)((0x8000 | 0x0000 | 0x0400 | 0x0100 | 0x0000) << 16 | ((allocSize)/(32/8)))); };
    strc40 = (void *)((TaskCreate(UpdateObjectsAndRender, sizeof(SpStage40), 0x1300U, 0U, TaskDestructor_802D578))->data);
    strc40->mem = temp_r6;
    s = &strc40->s;
    s->x = 0;
    s->y = 0;
    s->graphics.dest = (void *)&VRAM[0x10000] + 0x800;
    s->oamFlags = 0x500;
    s->graphics.size = 0;
    s->graphics.anim = 0x31B;
    s->variant = 0;
    s->animCursor = 0;
    s->qAnimDelay = 0;
    s->prevVariant = 0xFF;
    s->animSpeed = 0x10;
    s->palId = 0;
    s->frameFlags = 0x2030;
}





void UpdateObjectsAndRender(void)
{
    u16 sp4;
    SpStageC *sp8;
    Strc_3005690 *strc5690;
    SpStage40 *strc40;
    SpriteTransform *tf;
    const SpriteOffset *sp18;
    u8 *sp1C;
    u8 sp20;
    s32 sp24;
    s32 sp28;
    s32 sp2C;
    s32 sp34;
    s32 sp38;
    u16 *sp3C;
    u32 sp40;
    OamData *temp_r0_9;
    OamData *temp_r5_4;
    s16 temp_r0_6;
    s16 temp_r2_6;
    s16 temp_r3_6;
    s32 temp_r0_3;
    s32 temp_r1;
    s32 temp_r3;
    s32 temp_r4_3;
    s32 var_r0_2;
    s32 var_r6;
    s8 *temp_r1_7;
    s8 temp_r3_4;
    s8 temp_r6;
    s8 temp_r6_2;
    u16 *temp_r0_11;
    u16 *temp_r4_6;
    u16 temp_r0_2;
    u16 temp_r1_2;
    u16 temp_r2_7;
    u16 var_sb;
    u32 temp_r0_7;
    u32 temp_r0_8;
    u32 temp_r2_5;
    u8 var_r2;
    u8 var_r2_2;
    u16 *temp_r5_2;
    u16 *temp_r2;
    u8 vall;

    Sprite *spr55F0;
    Sprite *spr74;
    Sprite *s;
    SpStage74 *strc74;
    s16 someX, someY;

    strc40 = (void *)((gCurTask)->data);
    sp8 = gUnknown_087BF8DC[gUnknown_08487134[gCurrentLevel]];
    strc5690 = &gUnknown_03005690;
    spr55F0 = &gUnknown_030055F0.s;
    s = &strc40->s;

    sp20 = 0;
    { u16 tmp = (u16)((32767)); DmaSet(3, &tmp, gUnknown_03005670, (u32)((0x8000 | 0x0000 | 0x0000 | 0x0100 | 0x0000) << 16 | ((0x20)/(16/8)))); };
    { u16 tmp = (u16)(0); DmaSet(3, &tmp, gUnknown_030057E0, (u32)((0x8000 | 0x0000 | 0x0000 | 0x0100 | 0x0000) << 16 | ((0x10)/(16/8)))); };
    sp1C = strc40->mem;




    UpdateSpriteAnimation(s);
    sp18 = s->dimensions;
    temp_r3 = (((int)((strc5690->unk8) >> 8)) + 0x300);
    vall = (temp_r3 >> 0xC);
    var_sb = gUnknown_03005840[vall];
    sp34 = ((int)((strc5690->unk8) >> 8)) - 0xC0;
    sp3C = &sp4;
    while (sp8[var_sb].unk4 < temp_r3) {
        if (((sp8[var_sb].unk8 != 0xFFFF) && !(sp8[var_sb].unk8 != 0)) || (sp8[var_sb].unk4 < sp34)
            || (((((uintptr_t)(strc40 + (var_sb >> 3)) >> (7 & var_sb)) & 1) != 0))) {
            u8 *ptrU8;
            s32 valR3;
            sp24 = ((s32)((sp8[var_sb].unk0)*256));
            sp28 = ((s32)((sp8[var_sb].unk2)*256));
            sp2C = ((s32)((sp8[var_sb].unk4)*256));
            temp_r0_2 = ((int)((strc5690->unk8) >> 8)) - sp8[var_sb].unk4;
            var_r6 = (s32)((s16)temp_r0_2 + 0x300) >> 3;
            if (var_r6 == 0) {
                var_r6 = 1;
            }
            temp_r0_3 = (s32)(var_r6 * (var_r6 * var_r6) * var_r6) / 408;
            temp_r4_3 = (temp_r0_3 / 512) + 0x38;
            someX = ((temp_r4_3 * sp24) / 640) >> 8;
            someY = ((temp_r4_3 * sp28) / 640) >> 8;
            if (!(1 & strc5690->unk29) && (strc5690->unk28 != 2) && (((int)((strc5690->unk8) >> 8)) >= (s32)(((int)((sp2C) >> 8)) - 32))
                && (((int)((strc5690->unk8) >> 8)) <= ((int)((sp2C) >> 8)))
                && (((((someX) + s->hitboxes[0].b.left) <= ((((int)((strc5690->unk0) >> 8))) + spr55F0->hitboxes[0].b.left) && ((((someX)) + (s->hitboxes[0].b).left) + ((s->hitboxes[0].b).right - (s->hitboxes[0].b).left)) >= ((((int)((strc5690->unk0) >> 8))) + spr55F0->hitboxes[0].b.left)) || (((someX) + s->hitboxes[0].b.left) >= ((((int)((strc5690->unk0) >> 8))) + spr55F0->hitboxes[0].b.left) && ((((((int)((strc5690->unk0) >> 8)))) + (spr55F0->hitboxes[0].b).left) + ((spr55F0->hitboxes[0].b).right - (spr55F0->hitboxes[0].b).left)) >= ((someX) + s->hitboxes[0].b.left))) && (((((someY)) + s->hitboxes[0].b.top) <= (((((int)((strc5690->unk4) >> 8)))) + spr55F0->hitboxes[0].b.top) && ((((someY)) + s->hitboxes[0].b.top) + ((s->hitboxes[0].b).bottom - (s->hitboxes[0].b).top)) >= (((((int)((strc5690->unk4) >> 8)))) + spr55F0->hitboxes[0].b.top)) || ((((someY)) + s->hitboxes[0].b.top) >= (((((int)((strc5690->unk4) >> 8)))) + spr55F0->hitboxes[0].b.top) && ((((((int)((strc5690->unk4) >> 8)))) + spr55F0->hitboxes[0].b.top) + ((spr55F0->hitboxes[0].b).bottom - (spr55F0->hitboxes[0].b).top)) >= (((someY)) + s->hitboxes[0].b.top))))) {
                strc74 = (void *)((TaskCreate(sub_802D3E4, sizeof(SpStage74), 0x1500U, 0U, ((void*)0)))->data);
                strc74->unk60 = 1;
                strc74->unk3C = sp24;
                strc74->unk40 = sp28;
                strc74->unk44 = sp2C;
                strc74->unk50 = 0;
                strc74->unk52 = 0;
                strc74->unk54 = 0;
                strc74->unk56 = 0;
                strc74->unk58 = 0;
                strc74->unk5A = 0;
                strc74->unk5C = 0;
                strc74->anim62 = gUnknown_0848728C[strc74->unk60][0];
                strc74->variant64 = gUnknown_0848728C[strc74->unk60][1];

                valR3 = temp_r0_2;
                for (var_r2_2 = 0; var_r2_2 < 16; var_r2_2++) {
                    if (gUnknown_03005670[var_r2_2] == (32767)) {
                        gUnknown_03005670[var_r2_2] = valR3;
                        break;
                    }

                    if (gUnknown_03005670[var_r2_2] == valR3) {
                        break;
                    }
                }

                strc74->unk66 = var_r2_2 + 1;
                strc74->unk67 = 1;
                spr74 = &strc74->s;
                spr74->graphics.dest = (gUnknown_084872C4[strc74->unk60] << 5) + &VRAM[0x10000];
                spr74->graphics.size = 0;
                spr74->graphics.anim = strc74->anim62;
                spr74->variant = strc74->variant64;
                spr74->prevVariant = -1;
                spr74->qAnimDelay = 0;
                spr74->animSpeed = 0x10;
                spr74->qAnimDelay = 0;
                spr74->animSpeed = 0x10;
                spr74->palId = 0;
                spr74->frameFlags = strc74->unk66 | 0x2020;
                spr74->oamFlags = 0x7C0;
                gSpecialStageCollectedRings += 1;
                SpStage_PlayRingSoundeffect();
                sp1C[var_sb >> 3] |= 1 << (var_sb & 7);
                var_sb++;
            } else {
                for (var_r2 = 0; var_r2 < 16; var_r2++) {
                    if ((u16)gUnknown_03005670[var_r2] == (32767)) {
                        gUnknown_03005670[var_r2] = temp_r0_2;
                        break;
                    }

                    if (gUnknown_03005670[var_r2] == temp_r0_2) {
                        break;
                    }
                }

                var_r2++;
                strc40->tf.x = (120 + someX + gUnknown_03005780.unk4);
                strc40->tf.y = ((+80 - gUnknown_03005780.unk6) - someY);
                strc40->tf.qScaleX = (temp_r0_3 / 1024) + 64;
                strc40->tf.qScaleY = (temp_r0_3 / 1024) + 64;
                s->frameFlags = 0x2020 | var_r2;
                if (strc40->tf.qScaleX > ((s32)((1)*256))) {
                    s->frameFlags |= 0x40;
                }
                s->x = strc40->tf.x - ((int)(((strc40->tf.qScaleX * (sp18->offsetX - (sp18->width >> 1))) + ((sp18->width >> 1) << 8)) >> 8));
                s->y = strc40->tf.y - ((int)(((strc40->tf.qScaleY * (sp18->offsetY - (sp18->height >> 1))) + ((sp18->height >> 1) << 8)) >> 8));
                if ((sp20 == 0) || (s->oamBaseIndex == 0xFF)) {
                    s->oamBaseIndex = 0xFF;
                    sp3C[0] = s->frameFlags & 0x1F;
                    if (gUnknown_030057E0[sp3C[0]] == 0) {
                        gUnknown_030057E0[sp3C[0]] = -1;
                        temp_r5_2 = (u16 *)(&gOamBuffer[sp3C[0] * 4]);
                        temp_r5_2[0 * (12 / sizeof(short))] = ({((strc40->tf.qScaleX) != 0) ? ((s32)(0x10000) / (s32)(strc40->tf.qScaleX)) : 0;});
                        temp_r5_2[1 * (12 / sizeof(short))] = 0;
                        temp_r5_2[2 * (12 / sizeof(short))] = 0;
                        temp_r5_2[3 * (12 / sizeof(short))] = ({((strc40->tf.qScaleY) != 0) ? ((s32)(0x10000) / (s32)(strc40->tf.qScaleY)) : 0;});
                    }
                    DisplaySprite(s);
                    var_sb++;
                    sp20++;
                } else {
                    if (s->frameFlags & ((1) << (6))) {
                        s->x -= (sp18->width >> 1);
                        s->y -= (sp18->height >> 1);
                    }
                    sp3C[0] = s->frameFlags & 0x1F;
                    if (gUnknown_030057E0[sp3C[0]] == 0) {
                        gUnknown_030057E0[sp3C[0]] = -1;
                        temp_r5_2 = (u16 *)(&gOamBuffer[sp3C[0] * 4]);
                        temp_r5_2[0 * (12 / sizeof(short))] = ({((strc40->tf.qScaleX) != 0) ? ((s32)(0x10000) / (s32)(strc40->tf.qScaleX)) : 0;});
                        temp_r5_2[1 * (12 / sizeof(short))] = 0;
                        temp_r5_2[2 * (12 / sizeof(short))] = 0;
                        temp_r5_2[3 * (12 / sizeof(short))] = ({((strc40->tf.qScaleY) != 0) ? ((s32)(0x10000) / (s32)(strc40->tf.qScaleY)) : 0;});
                    }
                    temp_r5_2 = (u16 *)&gOamMallocBuffer[s->oamBaseIndex];
                    temp_r0_9 = OamMalloc(((s->oamFlags & 0x7C0) >> 6));
                    if (iwram_end == temp_r0_9) {
                        break;
                    }

                    DmaSet(3, temp_r5_2, temp_r0_9, (u32)((0x8000 | 0x0000 | 0x0000 | 0x0000 | 0x0000) << 16 | ((sizeof(OamDataShort))/(16/8))));

                    temp_r0_9->all.attr0 &= 0xFD00;
                    temp_r0_9->all.attr1 &= 0xC000;
                    temp_r0_9->all.attr0 |= (u8)s->y | ((s->frameFlags & ((1) << (6))) * 8);
                    temp_r0_9->all.attr1 |= ((u16)s->x & 0x1FF) | ((s->frameFlags & 0x1F) << 9);
                    var_sb++;
                    sp20++;
                }
            }
        } else {
            break;
        }

    }

}


void sub_802D158(void)
{
    TaskCreate(Task_SpStageInitializeSomethingAndStartMusic, 0, 0x1000, 0, ((void*)0));
    TaskCreate(sub_802D680, 0, 0x1000, 0, ((void*)0));
}

void sub_802D190(void)
{
    u8 *character;
    u16 charId = gSelectedCharacter;
    sub_8029E0C(charId);
    sub_8029EA8(charId);

    character = (void *)((TaskCreate(Task_802A560, sizeof(u8), 0x1100, 0, ((void*)0)))->data);
    *character = charId;
}

void sub_802D1D8(void)
{
    struct Task *t = TaskCreate(Task_802B3E4, sizeof(SpStage8), 0x1400, 0, ((void*)0));
    SpStage8 *strc8 = (void *)((t)->data);
    strc8->unk2 = 0;
    strc8->unk4 = 0;
    strc8->unk6 = 0;
}

void Task_SpStageInitializeSomethingAndStartMusic(void)
{
    gUnknown_030055E0.unk0 = 0;
    gUnknown_030055E0.unk2 = 240;
    gUnknown_030055E0.qBlend = ((s32)((0)*256));

    gCurTask->main = Task_802D238;

    m4aSongNumStart(42);
}

void Task_802D238(void)
{
    Strc_3005690 *strc5690 = &gUnknown_03005690;

    if (--gUnknown_030055E0.unk2 <= 0) {
        gCurTask->main = Task_80299B0;

        strc5690->unk29 &= ~0x1;

        sub_802D560();
    }
}

void sub_802D274(void)
{
    if (--gUnknown_030055E0.unk2 <= 0) {
        gStageFlags |= 0x20;
        gCurTask->main = Task_8029AC4;
    }
}

void sub_802D2A8(void) { gDispCnt |= 0x1000 | ((~0x0100) & 0x0F00); }

void Task_802D2BC(void)
{
    Strc_3005780 *strc5780 = &gUnknown_03005780;
    gBldRegs.bldCnt = 0;
    gBldRegs.bldY = 0;
    strc5780->unk12 = 0;
    strc5780->unk13 = 8;
    sub_8029CDC();
    gCurTask->main = sub_8029CDC;
}

void nullsub_802D2F0(void) { }

u16 sub_802D2F4(Strc_3005690 *param0)
{
    s32 temp_r2;
    s32 temp_r2_2;
    u16 var_r0;
    u16 var_r1;

    temp_r2 = param0->unk0;
    if (temp_r2 < -((s32)((40)*256))) {
        var_r1 = 1;
    } else if (temp_r2 <= +((s32)((40)*256))) {
        var_r1 = 2;
    } else {
        var_r1 = 3;
    }

    if (param0->unk4 < +((s32)((30)*256))) {
        if (param0->unk4 > -((s32)((30)*256))) {
            var_r1 += 3;
        } else {
            var_r1 += 6;
        }
    }

    return var_r1;
}

void sub_802D33C(void)
{
    Strc_3005690 *strc5690 = &gUnknown_03005690;
    Strc_30055E0 *strc55E0 = &gUnknown_030055E0;
    SpStage74 *strc74 = (void *)((gCurTask)->data);

    if (strc5690->unk8 >= strc74->unk44) {
        strc55E0->unk0 = strc74->unk60;
        TaskDestroy(gCurTask);
    }
}

void Task_802D37C(void)
{
    SpStage74 *strc74 = (void *)((gCurTask)->data);
    Sprite *s = &strc74->s;
    SpriteTransform *tf = &strc74->tf;

    sub_802D464();
    sub_802BBF0();
    if (sub_802BC6C() != 0) {
        if (strc74->unk70 != 0) {
            strc74->unk70 -= 1;
        } else {
            sub_802B884();
        }
        sub_802B5DC(s);
        UpdateSpriteAnimation(s);
        sub_802BE0C(s, tf);
        DisplaySprite(s);
    }
}

void sub_802D3E4(void)
{
    SpStage74 *strc74 = (void *)((gCurTask)->data);
    Sprite *s = &strc74->s;
    SpriteTransform *tf = &strc74->tf;

    sub_802BBF0();
    if (sub_802BC6C() != 0) {
        if (s->frameFlags & ((1) << (14))) {
            gCurTask->main = sub_802D450;
            return;
        }
        sub_802B5DC(s);
        if (UpdateSpriteAnimation(s) == ACMD_RESULT__ENDED) {
            gCurTask->main = sub_802D450;
        }
        sub_802BE0C(s, tf);
        DisplaySprite(s);
    }
}

void sub_802D450(void) { TaskDestroy(gCurTask); }

void sub_802D464(void)
{
    SpStage74 *strc74 = (void *)((gCurTask)->data);
    SpStage74 *parent = (void *)(((struct Task *)((gCurTask)->parent))->data);

    if (strc74->unk60 == 3) {
        if (parent->unk6D != 0) {
            if (gUnknown_03005690.unk28 == 4) {
                gCurTask->main = sub_802C0CC;
                strc74->unk52 = -((s32)((3)*256));
            }
        } else {
            strc74->unk60 = 0;
        }
    }
}

void sub_802D4C4(void)
{
    SpStage74 *strc74 = (void *)((gCurTask)->data);
    Sprite *s = &strc74->s;
    SpriteTransform *tf = &strc74->tf;

    UpdateSpriteAnimation(s);
    DisplaySprite(s);

    if (--strc74->unk6D == 0) {
        gCurTask->main = sub_802D66C;
    }
}

void Task_802D508(void)
{
    SpStage74 *strc74 = (void *)((gCurTask)->data);
    Sprite *s = &strc74->s;
    SpriteTransform *tf = &strc74->tf;

    if (strc74->unk6E > -160) {
        strc74->unk6E--;
        sub_802BBF0();

        if (sub_802BC6C() != 0) {
            s->oamFlags = ((5) << 6);
            UpdateSpriteAnimation(s);
            sub_802BE0C(s, tf);
            DisplaySprite(s);
        }
    }
}

void sub_802D560(void)
{
    s32 var_r1;
    u16(*var_r0)[2];

    var_r0 = gUnknown_030056F0;
    for (var_r1 = 0; var_r1 < 16; var_r1++) {
        var_r0[var_r1][0] = 0;
        var_r0[var_r1][1] = 0;
    }
}

void TaskDestructor_802D578(struct Task *t)
{
    SpStage40 *strc40 = (void *)((t)->data);
    EwramFree(strc40->mem);
}

u8 sub_802D58C(s16 param0)
{
    u8 var_r3;
    for (var_r3 = 0; var_r3 < 16; var_r3++) {
        if (gUnknown_03005670[var_r3] == (32767)) {
            gUnknown_03005670[var_r3] = param0;
            break;
        }

        if (gUnknown_03005670[var_r3] == param0) {
            break;
        }
    }

    var_r3++;

    return var_r3;
}

void SpStage_PlayRingSoundeffect(void)
{
    if (1 & gSpecialStageCollectedRings) {
        MPlayStart(&gMPlayInfo_SE2, &se_ring_copy);
        m4aMPlayImmInit(&gMPlayInfo_SE2);
        m4aMPlayVolumeControl(&gMPlayInfo_SE2, 0xFFFFU, 0x80U);
        m4aMPlayPanpotControl(&gMPlayInfo_SE2, 0xFFFFU, -0x40);
    } else {
        MPlayStart(&gMPlayInfo_SE1, &se_ring_copy);
        m4aMPlayImmInit(&gMPlayInfo_SE1);
        m4aMPlayVolumeControl(&gMPlayInfo_SE1, 0xFFFFU, 0x80U);
        m4aMPlayPanpotControl(&gMPlayInfo_SE1, 0xFFFFU, 0x40);
    }
}

void sub_802D66C(void) { TaskDestroy(gCurTask); }

void sub_802D680(void)
{
    if (!(0x20 & gStageFlags) && (0x0008 & gPressedKeys) && !(0x40 & gStageFlags)) {
        CreatePauseMenu();
    }
}

void sub_802D6B4(Strc_3005690 *strc5690)
{
    if ((strc5690->unk42 & gPlayerControls.jump) && !(1 & strc5690->unk29)) {
        strc5690->unk20 = 0x100;
    } else {
        if (!(2 & strc5690->unk29)) {
            strc5690->unk20 = 0;
        } else {
            strc5690->unk20 = 0xFF00;
        }
    }
}

void sub_802D6FC(SpStage74 *strc74, Sprite *s)
{
    u8 *temp_r1;

    s->graphics.dest = (gUnknown_084872C4[strc74->unk60] << 5) + &VRAM[0x10000];
    s->graphics.size = 0;
    s->graphics.anim = strc74->anim62;
    s->variant = strc74->variant64;
    s->prevVariant = -1;
    s->qAnimDelay = 0;
    s->animSpeed = ((int)((float)(1.0)*0x10));
}
