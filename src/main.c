#include "core.h"
#include "game/game.h"

#if !PLATFORM_GBA
#include <SDL.h>
#endif

void AgbMain(void)
{
#if !PLATFORM_GBA
    SDL_Log("AgbMain: calling EngineInit");
#endif
    EngineInit();
#if !PLATFORM_GBA
    SDL_Log("AgbMain: calling GameInit");
#endif
    GameInit();
#if !PLATFORM_GBA
    SDL_Log("AgbMain: calling EngineMainLoop");
#endif
    EngineMainLoop();
}
