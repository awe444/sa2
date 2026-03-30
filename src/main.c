#include "core.h"
#include "game/game.h"

#if PLATFORM_SDL
#include <SDL.h>
#define LOG SDL_Log
#elif !PLATFORM_GBA
#include <stdio.h>
#define LOG printf
#endif

void AgbMain(void)
{
#if !PLATFORM_GBA
    LOG("AgbMain: calling EngineInit\n");
#endif
    EngineInit();
#if !PLATFORM_GBA
    LOG("AgbMain: calling GameInit\n");
#endif
    GameInit();
#if !PLATFORM_GBA
    LOG("AgbMain: calling EngineMainLoop\n");
#endif
    EngineMainLoop();
}
