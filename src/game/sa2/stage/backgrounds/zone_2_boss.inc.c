#include "game/globals.h"
#include "game/shared/stage/camera.h"
#include "game/shared/stage/player.h"

void StageBgUpdate_Zone2ActBoss(UNUSED s32 a, UNUSED s32 b)
{
    if (!PLAYER_IS_ALIVE) {
        gStageTime--;
    }

    StageBgUpdate_Zone2Acts12(gStageTime, 4000);
}
