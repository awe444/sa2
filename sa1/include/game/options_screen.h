#ifndef GUARD_OPTION_SCREEN_H
#define GUARD_OPTION_SCREEN_H

#include "global.h"
#include "config.h"
#include "game/sa1/ui/game_over.h"
#include "game/sa1/save.h"
#include "sprite.h"
#include "constants/text.h"

#define NUM_LANGSCRN_SPRITES_TYPE_1 6
#define NUM_LANGSCRN_SPRITES_TYPE_2 3
#define NUM_LANGSCRN_SPRITES        (NUM_LANGSCRN_SPRITES_TYPE_1 + NUM_LANGSCRN_SPRITES_TYPE_2)

typedef struct {
    /* 0x000 */ Background bg;
    /* 0x040 */ Sprite sprites[NUM_LANGSCRN_SPRITES];
    /* 0x1F0 */ Sprite spr1F0;
#ifndef NON_MATCHING
    /* 0x220 */ Sprite sprUnused;
#endif
    /* 0x250 */ Sprite spr250;
    /* 0x280 */ StrcUi_805423C unk280;
    /* 0x28C */ u8 unk28C;
    /* 0x28D */ s8 unk28D;
} EditLanguageScreen; /* 0x290 */

void CreateEditLanguageScreen(bool8 param0);
void CreateOptionsMenu(void);

#endif // GUARD_OPTION_SCREEN_H
