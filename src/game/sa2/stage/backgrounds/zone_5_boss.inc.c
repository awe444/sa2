#include "game/globals.h"
#include "game/shared/stage/camera.h"
#include "game/shared/stage/player.h"

void StageBgUpdate_Zone5ActBoss(UNUSED s32 a, UNUSED s32 b)
{
    gDispCnt &= ~DISPCNT_BG1_ON;
    gBgScrollRegs[0][0]++;
    gHBlankCallbacks[gNumHBlankCallbacks++] = HBlankCB_BgUpdateZone5ActBoss;
    gFlags |= FLAGS_EXECUTE_HBLANK_CALLBACKS;
}
