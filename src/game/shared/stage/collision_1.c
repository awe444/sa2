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

// COLLISION 1

u32 Coll_Player_Platform(Sprite *s, s32 sx, s32 sy, Player *p)
{
    s8 rectPlayer[4] = { -p->spriteOffsetX, -p->spriteOffsetY, +p->spriteOffsetX, +p->spriteOffsetY };

    bool32 stoodOnSprite = FALSE;

    u32 mask;

    if (!HITBOX_IS_ACTIVE(s->hitboxes[0])) {
        return COLL_NONE;
    }

    if (!IS_ALIVE(p)) {
        return COLL_NONE;
    }

    if ((p->moveState & MOVESTATE_STOOD_ON_OBJ) && (p->stoodObj == s)) {
        stoodOnSprite = TRUE;
        p->moveState &= ~MOVESTATE_STOOD_ON_OBJ;
        p->moveState |= MOVESTATE_IN_AIR;
    }

    mask = sub_800CE94(s, sx, sy, (Rect8 *)rectPlayer, p);

    if (mask != 0) {
        if (mask & COLL_FLAG_10000) {
            p->moveState |= MOVESTATE_STOOD_ON_OBJ;
            p->moveState &= ~MOVESTATE_IN_AIR;
            p->stoodObj = s;

            if (!stoodOnSprite && s == NULL) {
                p->qSpeedGround = p->qSpeedAirX;
            }
        }
    } else if (stoodOnSprite) {
        if (!(p->moveState & MOVESTATE_STOOD_ON_OBJ)) {
            p->moveState &= ~MOVESTATE_20;
            p->moveState |= MOVESTATE_IN_AIR;
            p->stoodObj = NULL;
#ifndef COLLECT_RINGS_ROM
            if (IS_BOSS_STAGE(gCurrentLevel)) {
                p->qSpeedGround -= Q(gCamera.dx);
            }
#endif
        }
    }

    return mask;
}

#if (GAME == GAME_SA2)
/**
 * Different to platform collision as never called in bosses
 * and doesn't handle jumping onto moving platforms etc.
 * Could be called static interactable collision?
 */
u32 Coll_Player_Interactable(Sprite *s, s32 sx, s32 sy, Player *p)
{
    s8 rectPlayer[4] = { -p->spriteOffsetX, -p->spriteOffsetY, +p->spriteOffsetX, +p->spriteOffsetY };

    bool32 stoodOnSprite = FALSE;

    u32 mask;

    if (!HITBOX_IS_ACTIVE(s->hitboxes[0])) {
        return COLL_NONE;
    }

    if (!IS_ALIVE(p)) {
        return COLL_NONE;
    }

    if ((p->moveState & MOVESTATE_STOOD_ON_OBJ) && (p->stoodObj == s)) {
        stoodOnSprite = TRUE;
        p->moveState &= ~MOVESTATE_STOOD_ON_OBJ;
    }

    mask = sub_800CE94(s, sx, sy, (Rect8 *)rectPlayer, p);

    if (mask & COLL_FLAG_10000) {
        p->moveState |= MOVESTATE_STOOD_ON_OBJ;
        p->stoodObj = s;
    } else if (stoodOnSprite) {
        p->stoodObj = NULL;
#ifndef COLLECT_RINGS_ROM
        if (IS_BOSS_STAGE(gCurrentLevel)) {
            p->qSpeedGround -= Q(gCamera.dx);
        }
#endif
    }

    return mask;
}

// Looks like each byte in the result is one value
// TODO: Remove gotos
u32 sub_800CE94(Sprite *s, s32 sx, s32 sy, Rect8 *inRect, Player *p)
{
    s32 px = I(p->qWorldX);
    s32 py = I(p->qWorldY);
    u32 result = 0;
    s32 r1;
    s32 r3, r6;

    if (RECT_COLLISION(sx, sy, (Rect8 *)&s->hitboxes[0].b.left, px, py, inRect)) {
        s32 sMidX = (sx + ((s->hitboxes[0].b.left + s->hitboxes[0].b.right) >> 1));
        s32 sMidY = (sy + ((s->hitboxes[0].b.top + s->hitboxes[0].b.bottom) >> 1));
        if ((sMidX <= px)) {
            r6 = (sx + s->hitboxes[0].b.right - (px + inRect->left));
            result |= COLL_FLAG_40000;
        } else {
            r6 = (sx + s->hitboxes[0].b.left - (px + inRect->right));
            result |= COLL_FLAG_80000;
        }

        if (sMidY > py) {
            r3 = sy + s->hitboxes[0].b.top - (py + inRect->bottom);
            r1 = r3 + 5;

            if ((r1) > 0) {
                r1 = 0;
            }
            result |= COLL_FLAG_10000;
        } else {
            r3 = sy + s->hitboxes[0].b.bottom - (py + inRect->top);
            r1 = r3 + 2;
            if ((r1) < 0) {
                r1 = 0;
            }
            result |= COLL_FLAG_20000;
        }
        // _0800CF90

        if (ABS(r6) < (ABS(r1))) {
            result &= (COLL_FLAG_40000 | COLL_FLAG_80000);
            goto temp_lbl;
        } else {
            result &= (COLL_FLAG_10000 | COLL_FLAG_20000);

            if (!(result & COLL_FLAG_10000)) {
                goto temp_lbl;
            }
        }

        if (GRAVITY_IS_INVERTED) {
            if (p->qSpeedAirY > 0) {
                return 0;
            }
        } else {
            if (p->qSpeedAirY < 0) {
                return 0;
            }
        }

        if (!(p->moveState & MOVESTATE_IN_AIR)) {
            if ((p->rotation + 0x20) & 0x40) {
                p->qSpeedGround = 0;
            }
        }

    temp_lbl:
        result |= (((r6 << 8) & 0xFF00) | (r3 & 0xFF));
        if (result & 0xC0000) {
            if (!(result & 0xFF00)) {
                result &= 0xFFF300FF;
            }
        } else {
            result &= 0xFFFF00FF;
        }

        if (!(result & (COLL_FLAG_10000 | COLL_FLAG_20000))) {
            result &= ~0xFF;
        }
    }

    return result;
}
#endif

// https://decomp.me/scratch/Mjin3
NONMATCH(
#ifndef COLLECT_RINGS_ROM
    "asm/non_matching/game/shared/stage/collision__sub_800D0A0.inc",
#else
    "asm/non_matching/game/shared/stage/collision__sub_800D0A0_collect_rings.inc",
#endif
    u32 sub_800D0A0(Sprite *s, s16 param1, s16 param2, s16 param3, s16 param4, u8 param5, u32 param6))
{
    return 0;
}
END_NONMATCH

// TODO: Maybe wrap sub_800DD54 and sub_800DE44 in a macro(?)
u32 SA2_LABEL(sub_800DA4C)(Sprite *opponent, s16 oppX, s16 oppY, UNUSED s32 param3, UNUSED s32 param4, u8 layer)
{
    MultiplayerPlayer *mpp;
    Sprite *mpPlayerSprite;
    u32 res2;
    u32 result = COLL_NONE;

    Player *p = &gPlayer;
    if (!IS_ALIVE(p)) {
        return COLL_NONE;
    }

    if (p->moveState & MOVESTATE_GOAL_REACHED) {
        return COLL_NONE;
    }

    mpp = TASK_DATA(gMultiplayerPlayerTasks[SIO_MULTI_CNT->id]);
    mpPlayerSprite = &mpp->s;

    if (layer != p->layer) {
        return COLL_NONE;
    }
    // _0800DABC

    if ((p->qSpeedAirX == 0 && p->qSpeedAirY == 0) && HITBOX_IS_ACTIVE(opponent->hitboxes[1])) {
        if (HB_COLLISION(oppX, oppY, opponent->hitboxes[1].b, mpp->pos.x, mpp->pos.y, mpPlayerSprite->hitboxes[0].b)) {
            // _0800DB68
            result |= COLL_FLAG_2;
        }
    }
    // _0800DB70
    if (HITBOX_IS_ACTIVE(mpPlayerSprite->hitboxes[1]) && HITBOX_IS_ACTIVE(opponent->hitboxes[0])
        && HB_COLLISION(oppX, oppY, opponent->hitboxes[0].b, mpp->pos.x, mpp->pos.y, mpPlayerSprite->hitboxes[1].b)) {
        // _0800DC34
        if (mpp->pos.x > oppX) {
            result |= COLL_FLAG_40000;
        } else {
            result |= COLL_FLAG_20000;
        }
        // _0800DC66

        if (mpp->pos.y > oppY) {
            result |= COLL_FLAG_10000;
        } else {
            result |= COLL_FLAG_100000;
        }

        result |= COLL_FLAG_1;
    } else if (HITBOX_IS_ACTIVE(mpPlayerSprite->hitboxes[0]) && HITBOX_IS_ACTIVE(opponent->hitboxes[1])
               && HB_COLLISION(oppX, oppY, opponent->hitboxes[1].b, mpp->pos.x, mpp->pos.y, mpPlayerSprite->hitboxes[0].b)) {
        result |= COLL_FLAG_2;
    }

    return result;
}
