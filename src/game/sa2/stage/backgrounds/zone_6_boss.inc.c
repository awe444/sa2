#include "game/globals.h"
#include "game/shared/stage/camera.h"
#include "game/shared/stage/player.h"

void StageBgUpdate_Zone6ActBoss(UNUSED s32 a, UNUSED s32 b)
{
    gBgCntRegs[0] |= BGCNT_PRIORITY(3);
    gBgCntRegs[3] &= ~BGCNT_PRIORITY(3);
    gBgCntRegs[3] |= BGCNT_PRIORITY(2);
    gBgScrollRegs[0][0] = (gBgScrollRegs[0][0] - 2) & 0xFF;
    gBgScrollRegs[0][1] = (gBgScrollRegs[0][1] + 1) & 0xFF;
}
