#include "core.h"
#include "game/game.h"

#if PLATFORM_SDL
#include <SDL.h>
#define LOG(fmt, ...) SDL_Log(fmt, ##__VA_ARGS__)
#elif !PLATFORM_GBA
#include <stdio.h>
#define LOG(fmt, ...) printf(fmt "\n", ##__VA_ARGS__)
#endif

void AgbMain(void)
{
#if !PLATFORM_GBA
    LOG("AgbMain: calling EngineInit");
#endif
    EngineInit();
#if !PLATFORM_GBA
    LOG("AgbMain: calling GameInit");
#endif
    GameInit();
#if !PLATFORM_GBA
    LOG("AgbMain: calling EngineMainLoop");
#endif
    EngineMainLoop();
}
