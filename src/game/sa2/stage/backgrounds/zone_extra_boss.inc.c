#include "game/globals.h"
#include "game/shared/stage/camera.h"
#include "game/shared/stage/player.h"
#include "game/sa2/stage/bosses/common.h"
#include "game/sa2/stage/bosses/boss_9.h"

void StageBgUpdate_ZoneFinalActTA53(UNUSED s32 a, UNUSED s32 b)
{
    u32 aBool = FALSE;
    int_vcount y;

    if (gActiveBossTask != NULL) {
        TA53Boss *boss = TASK_DATA(gActiveBossTask);
        aBool = boss->unk10 & 0x1;
    }

    if (aBool) {
        u16 *offset;
        gFlags |= FLAGS_EXECUTE_HBLANK_COPY;
        gHBlankCopyTarget = (void *)&REG_BG1HOFS;
        gHBlankCopySize = 2;

        offset = (u16 *)gBgOffsetsHBlankPrimary;
        for (y = 0; y < DISPLAY_HEIGHT - 1; y++) {
            s16 val = SIN(((y + gStageTime) * 40) & ONE_CYCLE) >> 12;
            *offset++ = val;
        }
    }
}
