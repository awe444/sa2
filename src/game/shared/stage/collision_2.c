#include "global.h"
#include "rect.h"
#include "sprite.h"
#include "lib/m4a/m4a.h"
#include "game/globals.h"
#include "game/shared/stage/collision.h"
#include "game/shared/stage/dust_cloud.h"
#include "game/shared/stage/entities_manager.h"
#include "game/shared/stage/player.h"

#include "game/sa2/stage/cheese.h"
#include "game/shared/stage/entity.h"
#include "game/shared/stage/mp_event_mgr.h"
#include "game/shared/stage/rings_scatter.h"
#include "game/sa2/stage/trapped_animals.h"

#include "constants/sa2/animations.h"
#include "constants/sa2/player_transitions.h"
#include "constants/sa2/songs.h"

// COLLISION 2

bool32 sub_800DD54(Player *p)
{
    if (p->timerInvincibility > 0 || p->timerInvulnerability > 0) {
        return FALSE;
    }

    p->timerInvulnerability = PLAYER_INVULNERABLE_DURATION;

    if (p->moveState & MOVESTATE_FACING_LEFT) {
        p->qSpeedAirX = +Q(1.5);
    } else {
        p->qSpeedAirX = -Q(1.5);
    }

    p->qSpeedAirY = -Q(3.0);

#ifndef COLLECT_RINGS_ROM
    if (p->moveState & MOVESTATE_IN_WATER) {
        HALVE(p->qSpeedAirY);
        HALVE(p->qSpeedAirX);
    }
#endif

    p->moveState &= ~MOVESTATE_STOOD_ON_OBJ;
    p->moveState &= ~MOVESTATE_20;
    p->moveState &= ~MOVESTATE_SPIN_ATTACK;
    p->moveState &= ~MOVESTATE_FLIP_WITH_MOVE_DIR;
    p->moveState |= MOVESTATE_IN_AIR;
    p->moveState &= ~MOVESTATE_SPINDASH;
    p->moveState &= ~MOVESTATE_100;

    p->charState = SA2_CHAR_ANIM_20;
    PLAYERFN_CHANGE_SHIFT_OFFSETS(p, 6, 14);

    p->SA2_LABEL(unk61) = 0;
    p->SA2_LABEL(unk62) = 0;

    p->transition = 9;

    if (gGameMode == GAME_MODE_MULTI_PLAYER_COLLECT_RINGS) {
        RoomEvent_RingLoss *roomEvent;
#ifndef NON_MATCHING
        register u32 rings asm("r4") = gRingCount;
#else
        u32 rings = gRingCount;
#endif

        if (rings > 10) {
            rings = 10;
        }

        InitScatteringRings(I(p->qWorldX), I(p->qWorldY), rings);
        gRingCount -= rings;

        roomEvent = CreateRoomEvent();
        roomEvent->type = ROOMEVENT_TYPE_PLAYER_RING_LOSS;
        roomEvent->ringCount = rings;
    }

    m4aSongNumStart(SE_LIFE_LOST);

    return TRUE;
}

#ifndef COLLECT_RINGS_ROM
bool32 sub_800DE44(Player *p)
{
    if (p->timerInvincibility > 0 || p->timerInvulnerability > 0) {
        return FALSE;
    }

    p->timerInvulnerability = PLAYER_INVULNERABLE_DURATION;

    if (p->moveState & MOVESTATE_FACING_LEFT) {
        p->qSpeedAirX = -Q(1.5);
    } else {
        p->qSpeedAirX = +Q(1.5);
    }

    p->qSpeedAirY = -Q(3.0);

    if (p->moveState & MOVESTATE_IN_WATER) {
        HALVE(p->qSpeedAirY);
        HALVE(p->qSpeedAirX);
    }

    p->moveState &= ~MOVESTATE_STOOD_ON_OBJ;
    p->moveState &= ~MOVESTATE_20;
    p->moveState &= ~MOVESTATE_SPIN_ATTACK;
    p->moveState &= ~MOVESTATE_FLIP_WITH_MOVE_DIR;
    p->moveState |= MOVESTATE_IN_AIR;
    p->moveState &= ~MOVESTATE_SPINDASH;
    p->moveState &= ~MOVESTATE_100;

    p->charState = SA2_CHAR_ANIM_20;
    PLAYERFN_CHANGE_SHIFT_OFFSETS(p, 6, 14);

    p->SA2_LABEL(unk61) = 0;
    p->SA2_LABEL(unk62) = 0;

    p->transition = 9;

    if (gGameMode == GAME_MODE_MULTI_PLAYER_COLLECT_RINGS) {
        RoomEvent_RingLoss *roomEvent;
#ifndef NON_MATCHING
        register u32 rings asm("r4") = gRingCount;
#else
        u32 rings = gRingCount;
#endif

        if (rings > 5) {
            rings = 5;
        }

        InitScatteringRings(I(p->qWorldX), I(p->qWorldY), rings);
        gRingCount -= rings;

        roomEvent = CreateRoomEvent();
        roomEvent->type = ROOMEVENT_TYPE_PLAYER_RING_LOSS;
        roomEvent->ringCount = rings;
    }

    m4aSongNumStart(SE_LIFE_LOST);

    return TRUE;
}

u32 Coll_Player_Entity_Intersection(Sprite *s, s32 x, s32 y, Player *p)
{
    s8 rectPlayer[4] = { -p->spriteOffsetX, -p->spriteOffsetY, +p->spriteOffsetX, +p->spriteOffsetY };

    return Coll_Player_Entity_RectIntersection(s, x, y, p, (Rect8 *)&rectPlayer);
}
#endif
