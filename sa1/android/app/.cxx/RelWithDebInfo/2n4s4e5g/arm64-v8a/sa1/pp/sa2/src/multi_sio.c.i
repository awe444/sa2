# 1 "/home/awaszczak/git/sa2/sa1/../src/multi_sio.c"
# 1 "<built-in>" 1
# 1 "<built-in>" 3
# 384 "<built-in>" 3
# 1 "<command line>" 1
# 1 "<built-in>" 2
# 1 "/home/awaszczak/git/sa2/sa1/../src/multi_sio.c" 2
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
# 2 "/home/awaszczak/git/sa2/sa1/../src/multi_sio.c" 2
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
# 3 "/home/awaszczak/git/sa2/sa1/../src/multi_sio.c" 2
# 1 "/home/awaszczak/git/sa2/sa1/../include/sio32_multi_load.h" 1
# 59 "/home/awaszczak/git/sa2/sa1/../include/sio32_multi_load.h"
struct Sio32MultiLoadArea {
    u8 type;
    u8 state;
    u8 frameCounter;
    u8 downloadSuccessFlag;

    u32 *datap;
    s32 dataCounter;

    u32 checkSum;
    u32 checkSumTmp;
    s32 checkSumCounter;
};

extern struct Sio32MultiLoadArea gSio32MultiLoadArea;






extern void Sio32MultiLoadInit(u32 type, void *datap);
# 106 "/home/awaszczak/git/sa2/sa1/../include/sio32_multi_load.h"
extern u32 Sio32MultiLoadMain(u32 *progressCounterp);
# 131 "/home/awaszczak/git/sa2/sa1/../include/sio32_multi_load.h"
extern void Sio32MultiLoadIntr(void);
# 4 "/home/awaszczak/git/sa2/sa1/../src/multi_sio.c" 2

static const char sMultiSioLibVer[] = "MultiSio4Sio32Load010528";





struct MultiSioArea gMultiSioArea = {};


__attribute__((unused)) u32 gUnusedMultiSioSpace[2] = {};
# 24 "/home/awaszczak/git/sa2/sa1/../src/multi_sio.c"
extern u32 MultiSioRecvBufChange(void);

void MultiSioInit(u32 connectedFlags)
{
    s32 i;

    (*(reg_u16 *)(REG_BASE + 0x208)) = 0;
    (*(reg_u16 *)(REG_BASE + 0x200)) &= ~((1 << 7)
                | ((1 << 3) << 3));
    (*(reg_u16 *)(REG_BASE + 0x208)) = 1;
    (*(reg_u16 *)(REG_BASE + 0x134)) = 0;
    *(vu32 *)(REG_BASE + 0x128) = 0x2000;
    (*(reg_u16 *)(REG_BASE + 0x128)) |= 0x4000 | 0x0003;
    { vu32 tmp = (vu32)(0); CpuSet((void *)&tmp, &gMultiSioArea, 0x04000000 | 0x01000000 | ((sizeof(struct MultiSioArea))/(32/8) & 0x1FFFFF)); };





    gMultiSioArea.connectedFlags = connectedFlags;
    gMultiSioArea.sendBufCounter = 13;
    gMultiSioArea.nextSendBufp = (u16 *)&gMultiSioArea.sendBuf[0];
    gMultiSioArea.currentSendBufp = (u16 *)&gMultiSioArea.sendBuf[1];
    for (i = 0; i < 4; ++i) {
        gMultiSioArea.currentRecvBufp[i] = (u16 *)&gMultiSioArea.recvBuf[i][0];
        gMultiSioArea.lastRecvBufp[i] = (u16 *)&gMultiSioArea.recvBuf[i][1];
        gMultiSioArea.recvCheckBufp[i] = (u16 *)&gMultiSioArea.recvBuf[i][2];
    }
    (*(reg_u16 *)(REG_BASE + 0x208)) = 0;
    (*(reg_u16 *)(REG_BASE + 0x200)) |= (1 << 7);
    (*(reg_u16 *)(REG_BASE + 0x208)) = 1;
}





u32 MultiSioMain(void *sendp, void *recvp, u32 loadRequest)
{
    struct SioMultiCnt sioCntBak;
    __attribute__((unused)) s32 i, ii;

    sioCntBak = *(struct SioMultiCnt *)(REG_BASE + 0x128);
    switch (gMultiSioArea.state) {
        case 0:
            if (!sioCntBak.id) {
                if (!sioCntBak.sd || sioCntBak.enable)
                    break;
                if (!sioCntBak.si && gMultiSioArea.sendBufCounter == 13) {
                    (*(reg_u16 *)(REG_BASE + 0x208)) = 0;
                    (*(reg_u16 *)(REG_BASE + 0x200)) &= ~(1 << 7);
                    (*(reg_u16 *)(REG_BASE + 0x200)) |= ((1 << 3) << 3);
                    (*(reg_u16 *)(REG_BASE + 0x208)) = 1;
                    ((struct SioMultiCnt *)(REG_BASE + 0x128))->ifEnable = 0;
                    (*(reg_u16 *)(REG_BASE + 0x202)) = (1 << 7) | ((1 << 3) << 3);
                    (*(vu32 *)((REG_BASE + 0x100) + (3 * 4))) = (0x10000 - ((16 * 1024 * 1024) / 60 / ((2 + 4 + 20 + 6) / (16 / 8))));
                    gMultiSioArea.type = 0x0008;
                    ((struct SioMultiCnt *)(REG_BASE + 0x128))->enable = 1;
                }
            }
            gMultiSioArea.state = 1;

        case 1:
            MultiSioRecvDataCheck(recvp);
            MultiSioSendDataSet(sendp, loadRequest);
            break;
    }
    ++gMultiSioArea.sendFrameCounter;
    return gMultiSioArea.recvSuccessFlags | gMultiSioArea.loadEnable << 4 | gMultiSioArea.loadRequest << 5
        | gMultiSioArea.loadSuccessFlag << 6 | (gMultiSioArea.type == 0x0008) << 7 | gMultiSioArea.connectedFlags << 8
        | (gMultiSioArea.hardError != 0) << 12 | (sioCntBak.id >= 4) << 13;
}





void MultiSioSendDataSet(void *sendp, u32 loadRequest)
{
    s32 checkSum = 0;
    s32 i;

    ((struct MultiSioPacket *)gMultiSioArea.nextSendBufp)->loadRequest = loadRequest;
    ((struct MultiSioPacket *)gMultiSioArea.nextSendBufp)->downloadSuccessFlag = gSio32MultiLoadArea.downloadSuccessFlag;
    ((struct MultiSioPacket *)gMultiSioArea.nextSendBufp)->loadSuccessFlag = gMultiSioArea.loadSuccessFlag;
    ((struct MultiSioPacket *)gMultiSioArea.nextSendBufp)->frameCounter = (u8)gMultiSioArea.sendFrameCounter;
    ((struct MultiSioPacket *)gMultiSioArea.nextSendBufp)->recvErrorFlags = gMultiSioArea.connectedFlags ^ gMultiSioArea.recvSuccessFlags;
    ((struct MultiSioPacket *)gMultiSioArea.nextSendBufp)->checkSum = 0;
    CpuSet(sendp, &gMultiSioArea.nextSendBufp[2], 0x04000000 | ((20)/(32/8) & 0x1FFFFF));

    for (i = 0; i < sizeof(struct MultiSioPacket) / 2 - 2; ++i)
        checkSum += gMultiSioArea.nextSendBufp[i];
    ((struct MultiSioPacket *)gMultiSioArea.nextSendBufp)->checkSum = ~checkSum;
    if (gMultiSioArea.type)
        (*(vu16 *)((REG_BASE + 0x102) + (3 * 4))) = 0;
    gMultiSioArea.sendBufCounter = -1;
    if (gMultiSioArea.type && gMultiSioArea.startFlag)
        (*(vu16 *)((REG_BASE + 0x102) + (3 * 4))) = 0x00 | 0x40 | 0x80;
}





u32 MultiSioRecvDataCheck(void *recvp)
{



    s32 checkSum;
    vu32 __attribute__((unused)) recvCheck = 0;
    u8 syncRecvFlagBak[4];
    s32 i, ii;




    (*(reg_u16 *)(REG_BASE + 0x208)) = 0;
    for (i = 0; i < 4; ++i) {
        u16 *bufpTmp = gMultiSioArea.recvCheckBufp[i];
        gMultiSioArea.recvCheckBufp[i] = gMultiSioArea.lastRecvBufp[i];
        gMultiSioArea.lastRecvBufp[i] = bufpTmp;
    }
    (*(reg_u16 *)(REG_BASE + 0x208)) = 1;

    gMultiSioArea.recvSuccessFlags = 0;
    for (i = 0; i < 4; ++i) {
        checkSum = 0;
        for (ii = 0; ii < sizeof(struct MultiSioPacket) / 2 - 2; ++ii)
            checkSum += gMultiSioArea.recvCheckBufp[i][ii];
        if (syncRecvFlagBak[i])
            if ((s16)checkSum == -1) {
                gMultiSioArea.recvSuccessFlags |= 1 << i;
                gMultiSioArea.downloadSuccessFlags |= ((struct MultiSioPacket *)gMultiSioArea.recvCheckBufp[i])->downloadSuccessFlag << i;
                CpuSet(&((u8 *)gMultiSioArea.recvCheckBufp[i])[4], &((u8 *)recvp)[i * 20], 0x04000000 | ((20)/(32/8) & 0x1FFFFF));
            }
        { vu32 tmp = (vu32)(0); CpuSet((void *)&tmp, &((u8 *)gMultiSioArea.recvCheckBufp[i])[4], 0x04000000 | 0x01000000 | ((20)/(32/8) & 0x1FFFFF)); };
    }
    gMultiSioArea.connectedFlags |= gMultiSioArea.recvSuccessFlags;
    if (gMultiSioArea.recvSuccessFlags & 1) {

        if (gMultiSioArea.type == 0x0008) {
            if (gMultiSioArea.recvSuccessFlags & 0x3)
                if (gMultiSioArea.recvSuccessFlags == gMultiSioArea.connectedFlags)
                    gMultiSioArea.loadEnable = 1;
            if ((gMultiSioArea.downloadSuccessFlags & 0xe) == (gMultiSioArea.connectedFlags & 0xe))
                gMultiSioArea.loadSuccessFlag = 1;
        } else
            gMultiSioArea.loadSuccessFlag |= ((struct MultiSioPacket *)gMultiSioArea.recvCheckBufp[0])->loadSuccessFlag;
        gMultiSioArea.loadRequest |= ((struct MultiSioPacket *)gMultiSioArea.recvCheckBufp[0])->loadRequest;
    }
    return gMultiSioArea.recvSuccessFlags;
}





void MultiSioStart(void)
{
    if (gMultiSioArea.type)
        gMultiSioArea.startFlag = 1;
}





void MultiSioStop(void)
{
    (*(reg_u16 *)(REG_BASE + 0x208)) = 0;
    (*(reg_u16 *)(REG_BASE + 0x200)) &= ~((1 << 7) | ((1 << 3) << 3));
    (*(reg_u16 *)(REG_BASE + 0x208)) = 1;
    (*(reg_u16 *)(REG_BASE + 0x128)) = 0x2000 | 0x0003;
    (*(vu32 *)((REG_BASE + 0x100) + (3 * 4))) = (0x10000 - ((16 * 1024 * 1024) / 60 / ((2 + 4 + 20 + 6) / (16 / 8))));
    (*(reg_u16 *)(REG_BASE + 0x202)) = (1 << 7) | ((1 << 3) << 3);
    gMultiSioArea.startFlag = 0;
}






void MultiSioIntr(void)
{
    u16 recvTmp[4];
    u16 *bufpTmp;
    s32 i;
    __attribute__((unused)) s32 ii;


    *(u64 *)recvTmp = *(u64 *)(REG_BASE + 0x120);

    gMultiSioArea.hardError = ((struct SioMultiCnt *)(REG_BASE + 0x128))->error;

    if (gMultiSioArea.sendBufCounter == -1) {
        ((struct SioMultiCnt *)(REG_BASE + 0x128))->data = 0xfefe;
        bufpTmp = gMultiSioArea.currentSendBufp;
        gMultiSioArea.currentSendBufp = gMultiSioArea.nextSendBufp;
        gMultiSioArea.nextSendBufp = bufpTmp;
    } else if (gMultiSioArea.sendBufCounter >= 0) {
        ((struct SioMultiCnt *)(REG_BASE + 0x128))->data = gMultiSioArea.currentSendBufp[gMultiSioArea.sendBufCounter];
    }
    if (gMultiSioArea.sendBufCounter < (s32)(sizeof(struct MultiSioPacket) / 2 - 1))
        ++gMultiSioArea.sendBufCounter;

    for (i = 0; i < 4; ++i) {
        if (recvTmp[i] == 0xfefe && gMultiSioArea.recvBufCounter[i] > (s32)(sizeof(struct MultiSioPacket) / 2 - 3)) {
            gMultiSioArea.recvBufCounter[i] = -1;
        } else {
            gMultiSioArea.currentRecvBufp[i][gMultiSioArea.recvBufCounter[i]] = recvTmp[i];

            if (gMultiSioArea.recvBufCounter[i] == (s32)(sizeof(struct MultiSioPacket) / 2 - 3)) {
                bufpTmp = gMultiSioArea.lastRecvBufp[i];
                gMultiSioArea.lastRecvBufp[i] = gMultiSioArea.currentRecvBufp[i];
                gMultiSioArea.currentRecvBufp[i] = bufpTmp;
                gMultiSioArea.syncRecvFlag[i] = 1;
            }
        }
        if (gMultiSioArea.recvBufCounter[i] < (s32)(sizeof(struct MultiSioPacket) / 2 - 1))
            ++gMultiSioArea.recvBufCounter[i];
    }

    if (gMultiSioArea.type == 0x0008) {
        (*(vu16 *)((REG_BASE + 0x102) + (3 * 4))) = 0;
        (*(reg_u16 *)(REG_BASE + 0x128)) |= 0x0080;
        (*(vu16 *)((REG_BASE + 0x102) + (3 * 4))) = 0x00 | 0x40 | 0x80;
    }
}
