#ifndef GUARD_COLOR_H
#define GUARD_COLOR_H

// TODO: Full RGB in SA1
#if PLATFORM_GBA || (GAME == GAME_SA1) || (RENDERER == RENDERER_SOFTWARE)
// ABGR_1555
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

#else
// RGBA_8888
typedef uint32_t ColorRaw;
typedef union Color {
    struct {
        uint8_t r;
        uint8_t g;
        uint8_t b;
        uint8_t a;
    } split;

    ColorRaw raw;
} Color;
#endif

// NOTE: RGB16() is used in SA1 in some places for matching,
//       so we can't have one single macro. :(
#define RGB16(r, g, b) ((r) | ((g) << 5) | ((b) << 10))
#define RGB16_REV(r, g, b) (((b) << 10) | ((g) << 5) | (r))

#define RGB_BLACK      RGB16_REV(0, 0, 0)
#define RGB_WHITE      RGB16_REV(31, 31, 31)
#define RGB_RED        RGB16_REV(31, 0, 0)
#define RGB_GREEN      RGB16_REV(0, 31, 0)
#define RGB_BLUE       RGB16_REV(0, 0, 31)
#define RGB_YELLOW     RGB16_REV(31, 31, 0)
#define RGB_MAGENTA    RGB16_REV(31, 0, 31)
#define RGB_CYAN       RGB16_REV(0, 31, 31)
#define RGB_WHITEALPHA (RGB_WHITE | 0x8000)

#endif // GUARD_COLOR_H