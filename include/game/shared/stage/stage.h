#ifndef GUARD_STAGE_H
#define GUARD_STAGE_H

#include "global.h"
#include "core.h"

#if (GAME == GAME_SA1)
#include "constants/sa1/zones.h"
#elif (GAME == GAME_SA2)
#include "constants/sa2/zones.h"
#endif

void ApplyGameStageSettings(void);
void GameStageStart(void);
void CreateGameStage(void);
void GoToNextLevel(void);

void HandleLifeLost(void);
void HandleDeath(void);

extern struct Task *gGameStageTask;

#endif // GUARD_STAGE_H