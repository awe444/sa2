#include "constants/characters.h"
#include "game/sa2/stage/input_buffer.h"

// Unsure if this spacing is applied here
const u8 *const gUnknown_08c87098_unused[64] = { 0 };

const u8 *const unk_8C87198[] = { gUnknown_080D5254, gUnknown_080D5262, INPUTBUF_NULL_PTR };

const u8 *const unk_8C871A4[] = { gUnknown_080D5270, gUnknown_080D527E, INPUTBUF_NULL_PTR };

const u8 *const unk_8C871B0[] = { gUnknown_080D528C, gUnknown_080D529A, INPUTBUF_NULL_PTR };

const u8 *const unk_8C871BC[] = { gUnknown_080D52A8, gUnknown_080D52B6, INPUTBUF_NULL_PTR };

const u8 *const unk_8C871C8[] = { gUnknown_080D52C4, gUnknown_080D52D2, INPUTBUF_NULL_PTR };

const u8 *const *const gUnknown_08C871D4[NUM_CHARACTERS] = {
    unk_8C87198, unk_8C871A4, unk_8C871B0, unk_8C871BC, unk_8C871C8,
};
