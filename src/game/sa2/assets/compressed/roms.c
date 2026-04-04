#include "global.h"
#include "game/sa2/assets/compressed/roms.h"

// TODO: build japan tiny chao garden
#ifdef JAPAN
const u8 gMultiBootProgram_TinyChaoGarden[] = INCBIN_U8("data/sa2/mb_chao_garden_japan.gba.lz");
#else
const u8 gMultiBootProgram_TinyChaoGarden[] = INCBIN_U8("chao_garden/mb_chao_garden.gba.lz");
#endif
