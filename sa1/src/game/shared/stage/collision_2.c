#include "global.h"
#include "rect.h"
#include "sprite.h"
#include "lib/m4a/m4a.h"
#include "game/shared/stage/mp_player.h"
#include "game/globals.h"
#include "game/shared/stage/collision.h"
#include "game/shared/stage/dust_cloud.h"
#include "game/shared/stage/entities_manager.h"
#include "game/shared/stage/player.h"

#if (GAME == GAME_SA2)
#include "game/cheese.h"
#endif

#include "game/shared/stage/entity.h"
#include "game/shared/stage/mp_event_mgr.h"
#include "game/shared/parameters/characters.h"
#include "game/shared/stage/player.h"
#include "game/shared/stage/rings_scatter.h"
#include "game/sa1/stage/trapped_animals.h"

#include "constants/sa1/animations.h"
#include "constants/sa1/char_states.h"
#include "constants/sa1/player_transitions.h"
#include "constants/sa1/songs.h"
#include "constants/sa1/zones.h"

// COLLISION 2

bool32 SA2_LABEL(sub_800DD54)(Player *p)
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

#if (GAME == GAME_SA1)
    p->charState = 15;
#else
    p->charState = SA2_CHAR_ANIM_20;
#endif
    PLAYERFN_CHANGE_SHIFT_OFFSETS(p, 6, 14);

    {
#if !NON_MATCHING && (GAME == GAME_SA1)
        u8 *ptr = &p->SA2_LABEL(unk61);
        u32 zero = 0;
        asm("strb %0, [%1]" ::"r"(zero), "r"(ptr));
        asm("add %0, #1" : "=r"(ptr));
        asm("strb %0, [%1]" ::"r"(zero), "r"(ptr));
#else
        p->SA2_LABEL(unk61) = 0;
        p->SA2_LABEL(unk62) = 0;
#endif
    }

    if (gGameMode == GAME_MODE_MULTI_PLAYER_COLLECT_RINGS) {
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

        {
            RoomEvent_RingLoss *roomEvent = CreateRoomEvent();
            roomEvent->type = ROOMEVENT_TYPE_PLAYER_RING_LOSS;
            roomEvent->ringCount = rings;
        }
    }

    m4aSongNumStart(SE_LIFE_LOST);

    return TRUE;
}

// TODO: This is close to SA2_LABEL(sub_800DD54).
bool32 SA2_LABEL(sub_800DE44)(Player *p)
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

#if (GAME == GAME_SA1)
    p->charState = 41;
#else
    p->charState = SA2_CHAR_ANIM_20;
#endif
    PLAYERFN_CHANGE_SHIFT_OFFSETS(p, 6, 14);

    {
#if !NON_MATCHING && (GAME == GAME_SA1)
        u8 *ptr = &p->SA2_LABEL(unk61);
        u32 zero = 0;
        asm("strb %0, [%1]" ::"r"(zero), "r"(ptr));
        asm("add %0, #1" : "=r"(ptr));
        asm("strb %0, [%1]" ::"r"(zero), "r"(ptr));
#else
        p->SA2_LABEL(unk61) = 0;
        p->SA2_LABEL(unk62) = 0;
#endif
    }

#if (GAME == GAME_SA2)
    p->transition = 9;
#endif

    if (gGameMode == GAME_MODE_MULTI_PLAYER_COLLECT_RINGS) {
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

        {
            RoomEvent_RingLoss *roomEvent = CreateRoomEvent();
            roomEvent->type = ROOMEVENT_TYPE_PLAYER_RING_LOSS;
            roomEvent->ringCount = rings;
        }
    }

    m4aSongNumStart(SE_LIFE_LOST);

    return TRUE;
}

#if (GAME == GAME_SA1)

// INCOMPLETE!
// (92.41%) https://decomp.me/scratch/9c6nz
NONMATCH("asm/non_matching/game/shared/stage/collision__sub_800C934.inc",
         bool32 sub_800C934(Sprite *s, s32 x, s32 y, Rect8 *rectPlayer, u32 param4, Player *p, u32 *moveState))
{
    bool16 gravityInverted = GRAVITY_IS_INVERTED;
    // bottom = sl
#ifndef NON_MATCHING
    register s32 middleY asm("sl") = y + ((s->hitboxes[0].b.top + s->hitboxes[0].b.bottom) >> 1);
#else
    s32 middleY = y + ((s->hitboxes[0].b.top + s->hitboxes[0].b.bottom) >> 1);
#endif

    if (!HB_COLLISION(x, y, s->hitboxes[0].b, I(p->qWorldX), I(p->qWorldY), (*rectPlayer))) {
        return FALSE;
    }

    if (!gravityInverted) {
        if (I(p->qWorldY) > middleY) {
            s32 whole = Q(s->hitboxes[0].b.bottom + y - rectPlayer->top);
            p->qWorldY = *(u8 *)&p->qWorldY + whole;
            asm("");
        } else {
            goto test;
        }
    } else {
        if (I(p->qWorldY) >= middleY) {
        test:
            if (!gravityInverted) {
                p->qWorldY = Q_24_8_FRAC(p->qWorldY) + Q(s->hitboxes[0].b.top + y - rectPlayer->bottom);
            } else {
                p->qWorldY = Q_24_8_FRAC(p->qWorldY) + Q(s->hitboxes[0].b.bottom + y + rectPlayer->bottom);
            }

            if (p->qWorldY < Q(gCamera.minY)) {
                p->qWorldY = Q(gCamera.minY);
                return FALSE;
            }

            if (p->qWorldY >= Q(gCamera.maxY)) {
                p->qWorldY = Q(gCamera.maxY);
                return FALSE;
            }

            if (p->qSpeedAirY < 0) {
                return FALSE;
            }

            rectPlayer->top = -p->spriteOffsetY;
            rectPlayer->bottom = +p->spriteOffsetY;
            p->qSpeedAirY = Q(0);

            if (!(p->moveState & MOVESTATE_IN_AIR) && (((p->rotation + 0x20) & 0x40) != 0)) {
                p->qSpeedGround = Q(0);
            }

            p->moveState |= MOVESTATE_STOOD_ON_OBJ;
            *moveState |= MOVESTATE_STOOD_ON_OBJ;

            if (p->character == CHARACTER_KNUCKLES) {
                if (p->SA2_LABEL(unk61) == 1 || p->SA2_LABEL(unk61) == 3) {
                    goto lbl;
                }
            }
            if ((p->character != CHARACTER_AMY) || !(p->moveState & 0x04000000) || (p->SA2_LABEL(unk62) == 0)) {
                p->moveState &= ~MOVESTATE_IN_AIR;
            }
        lbl:
            p->stoodObj = s;

            if (param4 == 0) {
                if (p->character != CHARACTER_KNUCKLES || (p->SA2_LABEL(unk61) != 1 && p->SA2_LABEL(unk61) != 3)) {
                    SA2_LABEL(sub_8021BE0)(p);
                    p->qSpeedGround = p->qSpeedAirX;
                }

                p->rotation = 0;
            }
            return 1;
        } else {
            // 204
            p->qWorldY = Q_24_8_FRAC(p->qWorldY) + Q(s->hitboxes[0].b.top + y + rectPlayer->top);
        }
    }

    if (p->qWorldY < Q(gCamera.minY)) {
        p->qWorldY = Q(gCamera.minY);
        return FALSE;
    }

    if (p->qWorldY >= Q(gCamera.maxY)) {
        p->qWorldY = Q(gCamera.maxY);
        return FALSE;
    }

    *moveState |= MOVESTATE_10000;

    if (p->qSpeedAirY <= 0) {
        p->qSpeedAirY = 0;

        if (!(p->moveState & MOVESTATE_IN_AIR)) {
            if ((p->rotation + 0x20) & 0x40) {
                p->qSpeedGround = 0;
            }
        }

        return TRUE;
    }

    return FALSE;
}
END_NONMATCH

// TODO: Check type of x/y!
// INCOMPLETE!
#ifdef BUG_FIX
bool32 sub_800CBBC(Sprite *s, s32 x, s32 y, Rect8 *rectPlayer, u32 UNUSED param4, Player *p, u32 *param6)
{
    s32 shbLeft = s->hitboxes[0].b.left;
    s32 shbRight = s->hitboxes[0].b.right;
    s32 shbMiddleH = x + ((shbLeft + shbRight) >> 1);

    // Skip side collision when player is on a slope
    if ((((s32)(p->rotation + 0x20) & 0xC0) >> 6) & 0x1) {
        return FALSE;
    }

    if (!HB_COLLISION(x, y, s->hitboxes[0].b, I(p->qWorldX), I(p->qWorldY), (*rectPlayer))) {
        return FALSE;
    }

    if (I(p->qWorldX) <= shbMiddleH) {
        // Player is to the left of the sprite
        if (p->qSpeedAirX > 0) {
            p->qSpeedAirX = 0;
        }
        if (!(p->moveState & MOVESTATE_IN_AIR) && p->qSpeedGround > 0) {
            p->qSpeedGround = 0;
        }
        p->qWorldX = Q(x + shbLeft - rectPlayer->right);
        *param6 |= COLL_FLAG_20000;

        if (!(p->moveState & MOVESTATE_IN_AIR)) {
            p->moveState = (p->moveState | MOVESTATE_20) & ~MOVESTATE_SPIN_ATTACK;
            *param6 = (*param6 | MOVESTATE_20) & ~MOVESTATE_SPIN_ATTACK;
            p->moveState &= ~MOVESTATE_FACING_LEFT;
            p->charState = CHARSTATE_14;
        }
    } else {
        // Player is to the right of the sprite
        if (p->qSpeedAirX < 0) {
            p->qSpeedAirX = 0;
        }
        if (!(p->moveState & MOVESTATE_IN_AIR) && p->qSpeedGround < 0) {
            p->qSpeedGround = 0;
        }
        p->qWorldX = Q(x + shbRight - rectPlayer->left + 1);
        *param6 |= COLL_FLAG_40000;

        if (!(p->moveState & MOVESTATE_IN_AIR)) {
            p->moveState = (p->moveState | MOVESTATE_20) & ~MOVESTATE_SPIN_ATTACK;
            *param6 = (*param6 | MOVESTATE_20) & ~MOVESTATE_SPIN_ATTACK;
            p->moveState |= MOVESTATE_FACING_LEFT;
            p->charState = CHARSTATE_14;
        }
    }

    PLAYERFN_CHANGE_SHIFT_OFFSETS(p, 6, 14);

    return TRUE;
}
#else
NONMATCH("asm/non_matching/game/shared/stage/collision__sub_800CBBC.inc",
         bool32 sub_800CBBC(Sprite *s, s32 x, s32 y, Rect8 *rectPlayer, u32 UNUSED param4, Player *p, u32 *param6))
{
    s32 shbLeft = s->hitboxes[0].b.left;
    s32 shbRight = s->hitboxes[0].b.right;
    s32 shbMiddleH = (shbLeft + shbRight) >> 1;

    if ((((s32)(p->rotation + 0x20) & 0xC0) >> 6) & 0x1) {
        return FALSE;
    }
    // _0800CC04

    if (((x + shbLeft) > (I(p->qWorldX) + rectPlayer->left)) && (RECT_RIGHT(I(p->qWorldX), rectPlayer) < shbLeft)) {
        return FALSE;
    }

    PLAYERFN_CHANGE_SHIFT_OFFSETS(p, 6, 14);

    return FALSE;
}
END_NONMATCH
#endif

#endif // (GAME == GAME_SA1)

// TODO: This might be an inline.
//       Code identical to beginning of sub_800C060
#if (GAME == GAME_SA1)
u32 Coll_Player_Entity_Intersection(Sprite *s, s16 x, s16 y, Player *p)
#elif (GAME == GAME_SA2)
u32 sub_800DF38(Sprite *s, s32 x, s32 y, Player *p)
#endif
{
    // TODO: Could this match with a 'Rect8' instead of s8[4]?
    s8 rectPlayer[4] = { -p->spriteOffsetX, -p->spriteOffsetY, +p->spriteOffsetX, +p->spriteOffsetY };

    return Coll_Player_Entity_RectIntersection(s, x, y, p, (Rect8 *)&rectPlayer);
}

#if (GAME == GAME_SA1)
u32 sub_800CE98(Sprite *s, s16 x, s16 y, Player *p)
{
    // TODO: Could this match with a 'Rect8' instead of s8[4]?
    s8 rectPlayer[4] = { -(p->spriteOffsetX + 5), (1 - p->spriteOffsetY), +(p->spriteOffsetX + 5), +(p->spriteOffsetY - 1) };

    return Coll_Player_Entity_RectIntersection(s, x, y, p, (Rect8 *)&rectPlayer);
}
#endif
