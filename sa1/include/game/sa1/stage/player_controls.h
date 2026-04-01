#ifndef GUARD_PLAYER_CONTROLS_H
#define GUARD_PLAYER_CONTROLS_H

#include "global.h"

struct ButtonConfig {
    u16 jump;
    u16 attack;
    u16 trick;
};

extern struct ButtonConfig gPlayerControls;

s32 GetAirDashDirection(s32 n);
void sub_804D13C(u16 param0);
void SetPlayerControls(bool32);

extern u16 gUnknown_030060F0[64];

#endif // GUARD_PLAYER_CONTROLS_H
