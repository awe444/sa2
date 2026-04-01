#include "core.h"
#include "game/game.h"

#ifdef __ANDROID__
#include <android/log.h>
#define SA1_MAIN_DBG(...) __android_log_print(ANDROID_LOG_DEBUG, "SA1-DBG", __VA_ARGS__)
#else
#define SA1_MAIN_DBG(...) ((void)0)
#endif

void AgbMain(void)
{
    SA1_MAIN_DBG("AgbMain: calling EngineInit");
    EngineInit();
    SA1_MAIN_DBG("AgbMain: calling GameInit");
    GameInit();
    SA1_MAIN_DBG("AgbMain: calling EngineMainLoop");
    EngineMainLoop();
    SA1_MAIN_DBG("AgbMain: returned from EngineMainLoop");
}
