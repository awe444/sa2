#include "game/globals.h"
#include "game/shared/stage/camera.h"
#include "game/shared/stage/player.h"

void StageBgUpdate_Zone7Acts12(s32 x, s32 y)
{
    u32 act = !!(gCurrentLevel ^ (LEVEL_INDEX(ZONE_7, ACT_1)));
    u32 bgId = 0;
    u8 regionId = 0;

    if (x >= sZone7BgTransitionRegions[act][regionId]) {
        while (TRUE) {
            if (++regionId >= NUM_ZONE7_BG_TRANSITION_POSITIONS) {
                break;
            }
            if (x < sZone7BgTransitionRegions[act][regionId]) {
                bgId = regionId % 2;
                break;
            }
        };
    };

    if (bgId == 0) {
        Zone7BgUpdate_Inside(x, y);
    } else {
        Zone7BgUpdate_Outside(x, y);
    }

    gPlayer.unk99[15] = bgId;
}

void StageBgUpdate_Zone7ActBoss(UNUSED s32 x, UNUSED s32 y)
{
    if (!PLAYER_IS_ALIVE) {
        gStageTime--;
    }

    Zone7BgUpdate_Inside(gStageTime, 945);
}
