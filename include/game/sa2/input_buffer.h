#ifndef GUARD_SA2_INPUT_BUFFER
#define GUARD_SA2_INPUT_BUFFER

#include "game/stage/player.h"

void InputBuffer_NewFrameInput(u16 param0, u16 param1);
void InputBuffer_HandleFrameInput(Player *p);
void InitNewInputCounters(void);

extern const u8 gUnknown_080D5254[];
extern const u8 gUnknown_080D5262[];
extern const u8 gUnknown_080D5270[];
extern const u8 gUnknown_080D527E[];
extern const u8 gUnknown_080D528C[];
extern const u8 gUnknown_080D529A[];
extern const u8 gUnknown_080D52A8[];
extern const u8 gUnknown_080D52B6[];
extern const u8 gUnknown_080D52C4[];
extern const u8 gUnknown_080D52D2[];

#define INPUTBUF_NULL_PTR ((void *)((intptr_t)-1))

#endif // GUARD_SA2_INPUT_BUFFER
