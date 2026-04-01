#include "global.h"
#include "game/globals.h"
#include "game/sa1/stage/player_controls.h"

struct ButtonConfig gPlayerControls = {};

ALIGNED(16) u16 gUnknown_030060F0[64] = { 0 };
ALIGNED(16) u16 gUnknown_03006170[64] = { 0 };

void SetPlayerControls(bool32 flipFaceButtons)
{
    struct ButtonConfig *controls = &gPlayerControls;

    if (!flipFaceButtons || gStageFlags & STAGE_FLAG__DEMO_RUNNING) {
        controls->jump = A_BUTTON;
        controls->attack = B_BUTTON;
    } else if (flipFaceButtons == TRUE) {
        controls->jump = B_BUTTON;
        controls->attack = A_BUTTON;
    }
}

s32 GetAirDashDirection(s32 n)
{
    u16 *data0 = gUnknown_03006170;
    u16 *data1 = gUnknown_030060F0;
    s32 i;
    u16 *data;

    u16 mask;
    u16 chkMask = *data0 & 0x30;

    // NOTE: This has to be separate for the same reason as the loop in sub_804D13C()!
    data0++;

    if (chkMask == DPAD_LEFT) {
        for (i = 0; i < n; i++) {
            mask = data1[i] & (DPAD_LEFT ^ DPAD_ANY);
            if (mask) {
                return 0;
            }

            chkMask = data0[i] & DPAD_LEFT;

            if (i >= 4 && chkMask != 0) {
                return -1;
            }
        }
    } else if (chkMask == DPAD_RIGHT) {
        for (i = 0; i < n; i++) {
            mask = data1[i] & (DPAD_RIGHT ^ DPAD_ANY);
            if (mask) {
                return 0;
            }

            chkMask = data0[i] & DPAD_RIGHT;

            if (i >= 4 && chkMask != 0) {
                return +1;
            }
        }
    }

    return 0;
}

void sub_804D100(void)
{
    DmaFill16(3, 0, gUnknown_030060F0, 2 * sizeof(u16));
    DmaFill16(3, 0, gUnknown_03006170, 2 * sizeof(u16));
}

void sub_804D13C(u16 param0)
{
    u16 *input0 = &gUnknown_030060F0[59];
    u16 *input1 = &gUnknown_03006170[59];
    s32 r4 = 58;

    do {
        // NOTE: This has to be written with the variable, because
        // some compilers evaluate *input0-- before *(input0 - 1) in
        // *input0-- = *(input0 - 1);
        u16 keys;
        keys = *(input0 - 1);
        *input0-- = keys;
        keys = *(input1 - 1);
        *input1-- = keys;
    } while (--r4 >= 0);

    *input0 = param0;
    *input1 = param0 & ~*(input0 + 1);
}
