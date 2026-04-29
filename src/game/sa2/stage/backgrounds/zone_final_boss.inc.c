#include "game/globals.h"
#include "game/shared/stage/camera.h"
#include "game/shared/stage/player.h"

void StageBgUpdate_ZoneFinalActXX(UNUSED s32 x, UNUSED s32 y)
{
    if (!PLAYER_IS_ALIVE) {
        gStageTime--;
    }

    gHBlankCallbacks[gNumHBlankCallbacks++] = HBlankCB_BgUpdateZoneFinalActXX;
    gFlags |= FLAGS_EXECUTE_HBLANK_CALLBACKS;
}
