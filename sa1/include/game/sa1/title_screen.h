#ifndef GUARD_INTRO_H
#define GUARD_INTRO_H

#include "global.h"
#include "sprite.h"

// TODO: not sure why these were shared from here, may
// not be
extern const AnimId gPressStartTiles[2];

void CreateTitleScreen(bool32 playMusic);
void CreateSegaLogo(void);
void CreateMainMenu(u32 param0);
void LoadTinyChaoGarden(void);

#define TITLESCREEN_PARAM__BOOT_SILENT 0
#define TITLESCREEN_PARAM__PLAY_MUSIC  1

#endif
