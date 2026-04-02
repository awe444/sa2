#ifndef GUARD_STAGE_RESULTS_H
#define GUARD_STAGE_RESULTS_H

#include "global.h"
#include "sprite.h"

u32 CreateStageResults(u32, u32);
void StageResults_AnimateSeparator(void);
void StageResults_AnimateTitle(void);

extern const u16 gAnimsGotThroughZoneAndActNames[][3];
extern const u16 gStageResultsHeadlineTexts[][3];
extern const u16 gAnimsGotThroughCharacterNames[][3];

#endif // GUARD_STAGE_RESULTS_H
