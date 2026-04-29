#include "game/globals.h"
#include "game/shared/stage/camera.h"
#include "game/shared/stage/player.h"

void StageBgUpdate_Zone3ActBoss(UNUSED s32 a, UNUSED s32 b)
{
    gBgScrollRegs[0][1] = 0;
    gBgScrollRegs[3][1] = 0;
    gBgScrollRegs[0][0] = 0;
    gBgScrollRegs[3][0] = 0;
}
