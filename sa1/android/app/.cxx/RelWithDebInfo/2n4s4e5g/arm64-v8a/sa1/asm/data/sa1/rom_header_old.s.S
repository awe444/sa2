# 1 "asm/macros.inc"
# 1 "asm/macros/misc.inc"
.macro mDataSize label:req
  .size \label, .-\label
.endm

.macro RGB r:req g:req b:req
  .short ((\r << 0) | (\g << 5) | (\b << 10))
.endm
# 2 "asm/macros.inc"

# 1 "asm/macros/function.inc"
	.macro arm_func_start name
	.align 2, 0
	.global \name
	.arm
	.type \name, function
	.endm

	.macro arm_func_end name
	.size \name, .-\name
	.endm

	.macro THUMB_FUNC_START name
	.align 2, 0
	.global \name
	.thumb
	.thumb_func
	.type \name, function
	.endm

	.macro non_word_aligned_thumb_func_start name
	.global \name
	.thumb
	.thumb_func
	.type \name, function
	.endm

	.macro thumb_func_end name
	.size \name, .-\name
	.endm
# 4 "asm/macros.inc"
# 1 "asm/macros/m4a.inc"
	.macro song label, music_player, unknown
	mPtr \label
	.short \music_player
	.short \unknown
	.endm

	.macro music_player info_struct, track_struct, unknown_1, unknown_2
	mPtr \info_struct
	mPtr \track_struct
	.byte \unknown_1
	.space 1
	.short \unknown_2
	.endm
# 5 "asm/macros.inc"
# 1 "asm/macros/music_voice.inc"
	.macro voice_directsound base_midi_key, pan, sample_data_pointer, attack, decay, sustain, release
	.byte 0
	_voice_directsound \base_midi_key, \pan, \sample_data_pointer, \attack, \decay, \sustain, \release
	.endm

	.macro voice_directsound_no_resample base_midi_key, pan, sample_data_pointer, attack, decay, sustain, release
	.byte 8
	_voice_directsound \base_midi_key, \pan, \sample_data_pointer, \attack, \decay, \sustain, \release
	.endm

	.macro voice_directsound_alt base_midi_key, pan, sample_data_pointer, attack, decay, sustain, release
	.byte 16
	_voice_directsound \base_midi_key, \pan, \sample_data_pointer, \attack, \decay, \sustain, \release
	.endm

	.macro _voice_directsound base_midi_key, pan, sample_data_pointer, attack, decay, sustain, release
	.byte \base_midi_key
	.byte 0
	.if \pan != 0
	.byte (0x80 | \pan)
	.else
	.byte 0
	.endif
mAlignWord
	mPtr \sample_data_pointer
	.byte \attack
	.byte \decay
	.byte \sustain
	.byte \release
	.endm

	.macro voice_square_1 sweep, duty_cycle, attack, decay, sustain, release
	_voice_square_1 1, \sweep, \duty_cycle, \attack, \decay, \sustain, \release
	.endm

	.macro voice_square_1_alt sweep, duty_cycle, attack, decay, sustain, release
	_voice_square_1 9, \sweep, \duty_cycle, \attack, \decay, \sustain, \release
	.endm

	.macro _voice_square_1 type, sweep, duty_cycle, attack, decay, sustain, release
	.byte \type, 60, 0
	.byte \sweep
mAlignWord
	.byte (\duty_cycle & 0x3)
	.byte 0, 0, 0
mAlignWord
	.byte (\attack  & 0x7)
	.byte (\decay   & 0x7)
	.byte (\sustain & 0xF)
	.byte (\release & 0x7)
	.endm

	.macro voice_square_2 duty_cycle, attack, decay, sustain, release
	_voice_square_2 2, \duty_cycle, \attack, \decay, \sustain, \release
	.endm

	.macro voice_square_2_alt duty_cycle, attack, decay, sustain, release
	_voice_square_2 10, \duty_cycle, \attack, \decay, \sustain, \release
	.endm

	.macro _voice_square_2 type, duty_cycle, attack, decay, sustain, release
	.byte \type, 60, 0, 0
mAlignWord
	.byte (\duty_cycle & 0x3)
	.byte 0, 0, 0
mAlignWord
	.byte (\attack  & 0x7)
	.byte (\decay   & 0x7)
	.byte (\sustain & 0xF)
	.byte (\release & 0x7)
	.endm

	.macro voice_programmable_wave wave_samples_pointer, attack, decay, sustain, release
	_voice_programmable_wave 3, \wave_samples_pointer, \attack, \decay, \sustain, \release
	.endm

	.macro voice_programmable_wave_alt wave_samples_pointer, attack, decay, sustain, release
	_voice_programmable_wave 11, \wave_samples_pointer, \attack, \decay, \sustain, \release
	.endm

	.macro _voice_programmable_wave type, wave_samples_pointer, attack, decay, sustain, release
	.byte \type, 60, 0, 0
mAlignWord
	mPtr \wave_samples_pointer
	.byte (\attack  & 0x7)
	.byte (\decay   & 0x7)
	.byte (\sustain & 0xF)
	.byte (\release & 0x7)
	.endm

	.macro voice_noise unk1, unk2, unk3, period, attack, decay, sustain, release
	_voice_noise 4, \unk1, \unk2, \unk3, \period, \attack, \decay, \sustain, \release
	.endm

	.macro voice_noise_alt unk1, unk2, unk3, period, attack, decay, sustain, release
	_voice_noise 12, \unk1, \unk2, \unk3, \period, \attack, \decay, \sustain, \release
	.endm

	.macro _voice_noise type, unk1, unk2, unk3, period, attack, decay, sustain, release
	.byte \type, \unk1, \unk2, \unk3
mAlignWord
	.byte (\period & 0x1)
	.byte 0, 0, 0
mAlignWord
	.byte (\attack  & 0x7)
	.byte (\decay   & 0x7)
	.byte (\sustain & 0xF)
	.byte (\release & 0x7)
	.endm

	.macro voice_keysplit voice_group_pointer, keysplit_table_pointer
mAlignWord
	.byte 0x40, 0, 0, 0
mAlignWord
	mPtr \voice_group_pointer
	mPtr \keysplit_table_pointer
	.endm

	.macro voice_keysplit_all voice_group_pointer
mAlignWord
	.byte 0x80, 0, 0, 0
mAlignWord
	mPtr \voice_group_pointer
	mPtr 0
	.endm
# 6 "asm/macros.inc"
# 2 "/home/awaszczak/git/sa2/sa1/data/sa1/rom_header_old.s"
# 1 "constants/constants.inc"
# 1 "constants/gba_constants.inc"
	.set PSR_USR_MODE,  0x00000010
	.set PSR_FIQ_MODE,  0x00000011
	.set PSR_IRQ_MODE,  0x00000012
	.set PSR_SVC_MODE,  0x00000013
	.set PSR_ABT_MODE,  0x00000017
	.set PSR_UND_MODE,  0x0000001b
	.set PSR_SYS_MODE,  0x0000001f
	.set PSR_MODE_MASK, 0x0000001f
	.set PSR_T_BIT,     0x00000020
	.set PSR_F_BIT,     0x00000040
	.set PSR_I_BIT,     0x00000080

	.set EWRAM_START, 0x2000000
	.set EWRAM_END,   EWRAM_START + 0x40000
	.set IWRAM_START, 0x3000000
	.set IWRAM_END,   IWRAM_START + 0x8000

	.set PLTT,     0x5000000
	.set BG_PLTT,  PLTT
	.set OBJ_PLTT, PLTT + 0x200

	.set VRAM,      0x6000000
	.set BG_VRAM,   VRAM
	.set OBJ_VRAM0, VRAM + 0x10000               
	.set OBJ_VRAM1, VRAM + 0x14000                 

	.set OAM, 0x7000000

	.set SOUND_INFO_PTR, 0x3007FF0
	.set INTR_CHECK,     0x3007FF8
	.set INTR_VECTOR,    0x3007FFC

	.set INTR_FLAG_VBLANK,  1 << 0
	.set INTR_FLAG_HBLANK,  1 << 1
	.set INTR_FLAG_VCOUNT,  1 << 2
	.set INTR_FLAG_TIMER0,  1 << 3
	.set INTR_FLAG_TIMER1,  1 << 4
	.set INTR_FLAG_TIMER2,  1 << 5
	.set INTR_FLAG_TIMER3,  1 << 6
	.set INTR_FLAG_SERIAL,  1 << 7
	.set INTR_FLAG_DMA0,    1 << 8
	.set INTR_FLAG_DMA1,    1 << 9
	.set INTR_FLAG_DMA2,    1 << 10
	.set INTR_FLAG_DMA3,    1 << 11
	.set INTR_FLAG_KEYPAD,  1 << 12
	.set INTR_FLAG_GAMEPAK, 1 << 13

	.set VCOUNT_VBLANK, 160
	.set TOTAL_SCANLINES, 228

	.set REG_BASE, 0x4000000                            

                      
	.set OFFSET_REG_DISPCNT,     0x0
	.set OFFSET_REG_DISPSTAT,    0x4
	.set OFFSET_REG_VCOUNT,      0x6
	.set OFFSET_REG_BG0CNT,      0x8
	.set OFFSET_REG_BG1CNT,      0xa
	.set OFFSET_REG_BG2CNT,      0xc
	.set OFFSET_REG_BG3CNT,      0xe
	.set OFFSET_REG_BG0HOFS,     0x10
	.set OFFSET_REG_BG0VOFS,     0x12
	.set OFFSET_REG_BG1HOFS,     0x14
	.set OFFSET_REG_BG1VOFS,     0x16
	.set OFFSET_REG_BG2HOFS,     0x18
	.set OFFSET_REG_BG2VOFS,     0x1a
	.set OFFSET_REG_BG3HOFS,     0x1c
	.set OFFSET_REG_BG3VOFS,     0x1e
	.set OFFSET_REG_BG2PA,       0x20
	.set OFFSET_REG_BG2PB,       0x22
	.set OFFSET_REG_BG2PC,       0x24
	.set OFFSET_REG_BG2PD,       0x26
	.set OFFSET_REG_BG2X_L,      0x28
	.set OFFSET_REG_BG2X_H,      0x2a
	.set OFFSET_REG_BG2Y_L,      0x2c
	.set OFFSET_REG_BG2Y_H,      0x2e
	.set OFFSET_REG_BG3PA,       0x30
	.set OFFSET_REG_BG3PB,       0x32
	.set OFFSET_REG_BG3PC,       0x34
	.set OFFSET_REG_BG3PD,       0x36
	.set OFFSET_REG_BG3X_L,      0x38
	.set OFFSET_REG_BG3X_H,      0x3a
	.set OFFSET_REG_BG3Y_L,      0x3c
	.set OFFSET_REG_BG3Y_H,      0x3e
	.set OFFSET_REG_WIN0H,       0x40
	.set OFFSET_REG_WIN1H,       0x42
	.set OFFSET_REG_WIN0V,       0x44
	.set OFFSET_REG_WIN1V,       0x46
	.set OFFSET_REG_WININ,       0x48
	.set OFFSET_REG_WINOUT,      0x4a
	.set OFFSET_REG_MOSAIC,      0x4c
	.set OFFSET_REG_BLDCNT,      0x50
	.set OFFSET_REG_BLDALPHA,    0x52
	.set OFFSET_REG_BLDY,        0x54

	.set OFFSET_REG_SOUND1CNT,   0x60
	.set OFFSET_REG_SOUND1CNT_L, 0x60
	.set OFFSET_REG_NR10,        0x60
	.set OFFSET_REG_SOUND1CNT_H, 0x62
	.set OFFSET_REG_NR11,        0x62
	.set OFFSET_REG_NR12,        0x63
	.set OFFSET_REG_SOUND1CNT_X, 0x64
	.set OFFSET_REG_NR13,        0x64
	.set OFFSET_REG_NR14,        0x65
	.set OFFSET_REG_SOUND2CNT,   0x68
	.set OFFSET_REG_SOUND2CNT_L, 0x68
	.set OFFSET_REG_NR21,        0x68
	.set OFFSET_REG_NR22,        0x69
	.set OFFSET_REG_SOUND2CNT_H, 0x6c
	.set OFFSET_REG_NR23,        0x6c
	.set OFFSET_REG_NR24,        0x6d
	.set OFFSET_REG_SOUND3CNT,   0x70
	.set OFFSET_REG_SOUND3CNT_L, 0x70
	.set OFFSET_REG_NR30,        0x70
	.set OFFSET_REG_SOUND3CNT_H, 0x72
	.set OFFSET_REG_NR31,        0x72
	.set OFFSET_REG_NR32,        0x73
	.set OFFSET_REG_SOUND3CNT_X, 0x74
	.set OFFSET_REG_NR33,        0x74
	.set OFFSET_REG_NR34,        0x75
	.set OFFSET_REG_SOUND4CNT,   0x78
	.set OFFSET_REG_SOUND4CNT_L, 0x78
	.set OFFSET_REG_NR41,        0x78
	.set OFFSET_REG_NR42,        0x79
	.set OFFSET_REG_SOUND4CNT_H, 0x7c
	.set OFFSET_REG_NR43,        0x7c
	.set OFFSET_REG_NR44,        0x7d
	.set OFFSET_REG_SOUNDCNT,    0x80
	.set OFFSET_REG_SOUNDCNT_L,  0x80
	.set OFFSET_REG_NR50,        0x80
	.set OFFSET_REG_NR51,        0x81
	.set OFFSET_REG_SOUNDCNT_H,  0x82
	.set OFFSET_REG_SOUNDCNT_X,  0x84
	.set OFFSET_REG_NR52,        0x84
	.set OFFSET_REG_SOUNDBIAS,   0x88
	.set OFFSET_REG_WAVE_RAM,    0x90
	.set OFFSET_REG_WAVE_RAM0,   0x90
	.set OFFSET_REG_WAVE_RAM0_L, 0x90
	.set OFFSET_REG_WAVE_RAM0_H, 0x92
	.set OFFSET_REG_WAVE_RAM1,   0x94
	.set OFFSET_REG_WAVE_RAM1_L, 0x94
	.set OFFSET_REG_WAVE_RAM1_H, 0x96
	.set OFFSET_REG_WAVE_RAM2,   0x98
	.set OFFSET_REG_WAVE_RAM2_L, 0x98
	.set OFFSET_REG_WAVE_RAM2_H, 0x9a
	.set OFFSET_REG_WAVE_RAM3,   0x9c
	.set OFFSET_REG_WAVE_RAM3_L, 0x9c
	.set OFFSET_REG_WAVE_RAM3_H, 0x9e
	.set OFFSET_REG_FIFO,        0xa0
	.set OFFSET_REG_FIFO_A,      0xa0
	.set OFFSET_REG_FIFO_A_L,    0xa0
	.set OFFSET_REG_FIFO_A_H,    0xa2
	.set OFFSET_REG_FIFO_B,      0xa4
	.set OFFSET_REG_FIFO_B_L,    0xa4
	.set OFFSET_REG_FIFO_B_H,    0xa6

	.set OFFSET_REG_DMA0,        0xb0
	.set OFFSET_REG_DMA0SAD,     0xb0
	.set OFFSET_REG_DMA0SAD_L,   0xb0
	.set OFFSET_REG_DMA0SAD_H,   0xb2
	.set OFFSET_REG_DMA0DAD,     0xb4
	.set OFFSET_REG_DMA0DAD_L,   0xb4
	.set OFFSET_REG_DMA0DAD_H,   0xb6
	.set OFFSET_REG_DMA0CNT,     0xb8
	.set OFFSET_REG_DMA0CNT_L,   0xb8
	.set OFFSET_REG_DMA0CNT_H,   0xba
	.set OFFSET_REG_DMA1,        0xbc
	.set OFFSET_REG_DMA1SAD,     0xbc
	.set OFFSET_REG_DMA1SAD_L,   0xbc
	.set OFFSET_REG_DMA1SAD_H,   0xbe
	.set OFFSET_REG_DMA1DAD,     0xc0
	.set OFFSET_REG_DMA1DAD_L,   0xc0
	.set OFFSET_REG_DMA1DAD_H,   0xc2
	.set OFFSET_REG_DMA1CNT,     0xc4
	.set OFFSET_REG_DMA1CNT_L,   0xc4
	.set OFFSET_REG_DMA1CNT_H,   0xc6
	.set OFFSET_REG_DMA2,        0xc8
	.set OFFSET_REG_DMA2SAD,     0xc8
	.set OFFSET_REG_DMA2SAD_L,   0xc8
	.set OFFSET_REG_DMA2SAD_H,   0xca
	.set OFFSET_REG_DMA2DAD,     0xcc
	.set OFFSET_REG_DMA2DAD_L,   0xcc
	.set OFFSET_REG_DMA2DAD_H,   0xce
	.set OFFSET_REG_DMA2CNT,     0xd0
	.set OFFSET_REG_DMA2CNT_L,   0xd0
	.set OFFSET_REG_DMA2CNT_H,   0xd2
	.set OFFSET_REG_DMA3,        0xd4
	.set OFFSET_REG_DMA3SAD,     0xd4
	.set OFFSET_REG_DMA3SAD_L,   0xd4
	.set OFFSET_REG_DMA3SAD_H,   0xd6
	.set OFFSET_REG_DMA3DAD,     0xd8
	.set OFFSET_REG_DMA3DAD_L,   0xd8
	.set OFFSET_REG_DMA3DAD_H,   0xda
	.set OFFSET_REG_DMA3CNT,     0xdc
	.set OFFSET_REG_DMA3CNT_L,   0xdc
	.set OFFSET_REG_DMA3CNT_H,   0xde

	.set OFFSET_REG_TM0CNT,      0x100
	.set OFFSET_REG_TM0CNT_L,    0x100
	.set OFFSET_REG_TM0CNT_H,    0x102
	.set OFFSET_REG_TM1CNT,      0x104
	.set OFFSET_REG_TM1CNT_L,    0x104
	.set OFFSET_REG_TM1CNT_H,    0x106
	.set OFFSET_REG_TM2CNT,      0x108
	.set OFFSET_REG_TM2CNT_L,    0x108
	.set OFFSET_REG_TM2CNT_H,    0x10a
	.set OFFSET_REG_TM3CNT,      0x10c
	.set OFFSET_REG_TM3CNT_L,    0x10c
	.set OFFSET_REG_TM3CNT_H,    0x10e

	.set OFFSET_REG_SIOCNT,      0x128
	.set OFFSET_REG_SIODATA8,    0x12a
	.set OFFSET_REG_SIODATA32,   0x120
	.set OFFSET_REG_SIOMLT_SEND, 0x12a
	.set OFFSET_REG_SIOMLT_RECV, 0x120
	.set OFFSET_REG_SIOMULTI0,   0x120
	.set OFFSET_REG_SIOMULTI1,   0x122
	.set OFFSET_REG_SIOMULTI2,   0x124
	.set OFFSET_REG_SIOMULTI3,   0x126

	.set OFFSET_REG_KEYINPUT,    0x130
	.set OFFSET_REG_KEYCNT,      0x132

	.set OFFSET_REG_RCNT,        0x134

	.set OFFSET_REG_JOYCNT,      0x140
	.set OFFSET_REG_JOYSTAT,     0x158
	.set OFFSET_REG_JOY_RECV,    0x150
	.set OFFSET_REG_JOY_RECV_L,  0x150
	.set OFFSET_REG_JOY_RECV_H,  0x152
	.set OFFSET_REG_JOY_TRANS,   0x154
	.set OFFSET_REG_JOY_TRANS_L, 0x154
	.set OFFSET_REG_JOY_TRANS_H, 0x156

	.set OFFSET_REG_IME,         0x208
	.set OFFSET_REG_IE,          0x200
	.set OFFSET_REG_IF,          0x202

	.set OFFSET_REG_WAITCNT,     0x204

                        
	.set REG_DISPCNT,     REG_BASE + OFFSET_REG_DISPCNT
	.set REG_DISPSTAT,    REG_BASE + OFFSET_REG_DISPSTAT
	.set REG_VCOUNT,      REG_BASE + OFFSET_REG_VCOUNT
	.set REG_BG0CNT,      REG_BASE + OFFSET_REG_BG0CNT
	.set REG_BG1CNT,      REG_BASE + OFFSET_REG_BG1CNT
	.set REG_BG2CNT,      REG_BASE + OFFSET_REG_BG2CNT
	.set REG_BG3CNT,      REG_BASE + OFFSET_REG_BG3CNT
	.set REG_BG0HOFS,     REG_BASE + OFFSET_REG_BG0HOFS
	.set REG_BG0VOFS,     REG_BASE + OFFSET_REG_BG0VOFS
	.set REG_BG1HOFS,     REG_BASE + OFFSET_REG_BG1HOFS
	.set REG_BG1VOFS,     REG_BASE + OFFSET_REG_BG1VOFS
	.set REG_BG2HOFS,     REG_BASE + OFFSET_REG_BG2HOFS
	.set REG_BG2VOFS,     REG_BASE + OFFSET_REG_BG2VOFS
	.set REG_BG3HOFS,     REG_BASE + OFFSET_REG_BG3HOFS
	.set REG_BG3VOFS,     REG_BASE + OFFSET_REG_BG3VOFS
	.set REG_BG2PA,       REG_BASE + OFFSET_REG_BG2PA
	.set REG_BG2PB,       REG_BASE + OFFSET_REG_BG2PB
	.set REG_BG2PC,       REG_BASE + OFFSET_REG_BG2PC
	.set REG_BG2PD,       REG_BASE + OFFSET_REG_BG2PD
	.set REG_BG2X_L,      REG_BASE + OFFSET_REG_BG2X_L
	.set REG_BG2X_H,      REG_BASE + OFFSET_REG_BG2X_H
	.set REG_BG2Y_L,      REG_BASE + OFFSET_REG_BG2Y_L
	.set REG_BG2Y_H,      REG_BASE + OFFSET_REG_BG2Y_H
	.set REG_BG3PA,       REG_BASE + OFFSET_REG_BG3PA
	.set REG_BG3PB,       REG_BASE + OFFSET_REG_BG3PB
	.set REG_BG3PC,       REG_BASE + OFFSET_REG_BG3PC
	.set REG_BG3PD,       REG_BASE + OFFSET_REG_BG3PD
	.set REG_BG3X_L,      REG_BASE + OFFSET_REG_BG3X_L
	.set REG_BG3X_H,      REG_BASE + OFFSET_REG_BG3X_H
	.set REG_BG3Y_L,      REG_BASE + OFFSET_REG_BG3Y_L
	.set REG_BG3Y_H,      REG_BASE + OFFSET_REG_BG3Y_H
	.set REG_WIN0H,       REG_BASE + OFFSET_REG_WIN0H
	.set REG_WIN1H,       REG_BASE + OFFSET_REG_WIN1H
	.set REG_WIN0V,       REG_BASE + OFFSET_REG_WIN0V
	.set REG_WIN1V,       REG_BASE + OFFSET_REG_WIN1V
	.set REG_WININ,       REG_BASE + OFFSET_REG_WININ
	.set REG_WINOUT,      REG_BASE + OFFSET_REG_WINOUT
	.set REG_MOSAIC,      REG_BASE + OFFSET_REG_MOSAIC
	.set REG_BLDCNT,      REG_BASE + OFFSET_REG_BLDCNT
	.set REG_BLDALPHA,    REG_BASE + OFFSET_REG_BLDALPHA
	.set REG_BLDY,        REG_BASE + OFFSET_REG_BLDY

	.set REG_SOUND1CNT,   REG_BASE + OFFSET_REG_SOUND1CNT
	.set REG_SOUND1CNT_L, REG_BASE + OFFSET_REG_SOUND1CNT_L
	.set REG_NR10,        REG_BASE + OFFSET_REG_NR10
	.set REG_SOUND1CNT_H, REG_BASE + OFFSET_REG_SOUND1CNT_H
	.set REG_NR11,        REG_BASE + OFFSET_REG_NR11
	.set REG_NR12,        REG_BASE + OFFSET_REG_NR12
	.set REG_SOUND1CNT_X, REG_BASE + OFFSET_REG_SOUND1CNT_X
	.set REG_NR13,        REG_BASE + OFFSET_REG_NR13
	.set REG_NR14,        REG_BASE + OFFSET_REG_NR14
	.set REG_SOUND2CNT,   REG_BASE + OFFSET_REG_SOUND2CNT
	.set REG_SOUND2CNT_L, REG_BASE + OFFSET_REG_SOUND2CNT_L
	.set REG_NR21,        REG_BASE + OFFSET_REG_NR21
	.set REG_NR22,        REG_BASE + OFFSET_REG_NR22
	.set REG_SOUND2CNT_H, REG_BASE + OFFSET_REG_SOUND2CNT_H
	.set REG_NR23,        REG_BASE + OFFSET_REG_NR23
	.set REG_NR24,        REG_BASE + OFFSET_REG_NR24
	.set REG_SOUND3CNT,   REG_BASE + OFFSET_REG_SOUND3CNT
	.set REG_SOUND3CNT_L, REG_BASE + OFFSET_REG_SOUND3CNT_L
	.set REG_NR30,        REG_BASE + OFFSET_REG_NR30
	.set REG_SOUND3CNT_H, REG_BASE + OFFSET_REG_SOUND3CNT_H
	.set REG_NR31,        REG_BASE + OFFSET_REG_NR31
	.set REG_NR32,        REG_BASE + OFFSET_REG_NR32
	.set REG_SOUND3CNT_X, REG_BASE + OFFSET_REG_SOUND3CNT_X
	.set REG_NR33,        REG_BASE + OFFSET_REG_NR33
	.set REG_NR34,        REG_BASE + OFFSET_REG_NR34
	.set REG_SOUND4CNT,   REG_BASE + OFFSET_REG_SOUND4CNT
	.set REG_SOUND4CNT_L, REG_BASE + OFFSET_REG_SOUND4CNT_L
	.set REG_NR41,        REG_BASE + OFFSET_REG_NR41
	.set REG_NR42,        REG_BASE + OFFSET_REG_NR42
	.set REG_SOUND4CNT_H, REG_BASE + OFFSET_REG_SOUND4CNT_H
	.set REG_NR43,        REG_BASE + OFFSET_REG_NR43
	.set REG_NR44,        REG_BASE + OFFSET_REG_NR44
	.set REG_SOUNDCNT,    REG_BASE + OFFSET_REG_SOUNDCNT
	.set REG_SOUNDCNT_L,  REG_BASE + OFFSET_REG_SOUNDCNT_L
	.set REG_NR50,        REG_BASE + OFFSET_REG_NR50
	.set REG_NR51,        REG_BASE + OFFSET_REG_NR51
	.set REG_SOUNDCNT_H,  REG_BASE + OFFSET_REG_SOUNDCNT_H
	.set REG_SOUNDCNT_X,  REG_BASE + OFFSET_REG_SOUNDCNT_X
	.set REG_NR52,        REG_BASE + OFFSET_REG_NR52
	.set REG_SOUNDBIAS,   REG_BASE + OFFSET_REG_SOUNDBIAS
	.set REG_WAVE_RAM,    REG_BASE + OFFSET_REG_WAVE_RAM
	.set REG_WAVE_RAM0,   REG_BASE + OFFSET_REG_WAVE_RAM0
	.set REG_WAVE_RAM0_L, REG_BASE + OFFSET_REG_WAVE_RAM0_L
	.set REG_WAVE_RAM0_H, REG_BASE + OFFSET_REG_WAVE_RAM0_H
	.set REG_WAVE_RAM1,   REG_BASE + OFFSET_REG_WAVE_RAM1
	.set REG_WAVE_RAM1_L, REG_BASE + OFFSET_REG_WAVE_RAM1_L
	.set REG_WAVE_RAM1_H, REG_BASE + OFFSET_REG_WAVE_RAM1_H
	.set REG_WAVE_RAM2,   REG_BASE + OFFSET_REG_WAVE_RAM2
	.set REG_WAVE_RAM2_L, REG_BASE + OFFSET_REG_WAVE_RAM2_L
	.set REG_WAVE_RAM2_H, REG_BASE + OFFSET_REG_WAVE_RAM2_H
	.set REG_WAVE_RAM3,   REG_BASE + OFFSET_REG_WAVE_RAM3
	.set REG_WAVE_RAM3_L, REG_BASE + OFFSET_REG_WAVE_RAM3_L
	.set REG_WAVE_RAM3_H, REG_BASE + OFFSET_REG_WAVE_RAM3_H
	.set REG_FIFO,        REG_BASE + OFFSET_REG_FIFO
	.set REG_FIFO_A,      REG_BASE + OFFSET_REG_FIFO_A
	.set REG_FIFO_A_L,    REG_BASE + OFFSET_REG_FIFO_A_L
	.set REG_FIFO_A_H,    REG_BASE + OFFSET_REG_FIFO_A_H
	.set REG_FIFO_B,      REG_BASE + OFFSET_REG_FIFO_B
	.set REG_FIFO_B_L,    REG_BASE + OFFSET_REG_FIFO_B_L
	.set REG_FIFO_B_H,    REG_BASE + OFFSET_REG_FIFO_B_H

	.set REG_DMA0,        REG_BASE + OFFSET_REG_DMA0
	.set REG_DMA0SAD,     REG_BASE + OFFSET_REG_DMA0SAD
	.set REG_DMA0SAD_L,   REG_BASE + OFFSET_REG_DMA0SAD_L
	.set REG_DMA0SAD_H,   REG_BASE + OFFSET_REG_DMA0SAD_H
	.set REG_DMA0DAD,     REG_BASE + OFFSET_REG_DMA0DAD
	.set REG_DMA0DAD_L,   REG_BASE + OFFSET_REG_DMA0DAD_L
	.set REG_DMA0DAD_H,   REG_BASE + OFFSET_REG_DMA0DAD_H
	.set REG_DMA0CNT,     REG_BASE + OFFSET_REG_DMA0CNT
	.set REG_DMA0CNT_L,   REG_BASE + OFFSET_REG_DMA0CNT_L
	.set REG_DMA0CNT_H,   REG_BASE + OFFSET_REG_DMA0CNT_H
	.set REG_DMA1,        REG_BASE + OFFSET_REG_DMA1
	.set REG_DMA1SAD,     REG_BASE + OFFSET_REG_DMA1SAD
	.set REG_DMA1SAD_L,   REG_BASE + OFFSET_REG_DMA1SAD_L
	.set REG_DMA1SAD_H,   REG_BASE + OFFSET_REG_DMA1SAD_H
	.set REG_DMA1DAD,     REG_BASE + OFFSET_REG_DMA1DAD
	.set REG_DMA1DAD_L,   REG_BASE + OFFSET_REG_DMA1DAD_L
	.set REG_DMA1DAD_H,   REG_BASE + OFFSET_REG_DMA1DAD_H
	.set REG_DMA1CNT,     REG_BASE + OFFSET_REG_DMA1CNT
	.set REG_DMA1CNT_L,   REG_BASE + OFFSET_REG_DMA1CNT_L
	.set REG_DMA1CNT_H,   REG_BASE + OFFSET_REG_DMA1CNT_H
	.set REG_DMA2,        REG_BASE + OFFSET_REG_DMA2
	.set REG_DMA2SAD,     REG_BASE + OFFSET_REG_DMA2SAD
	.set REG_DMA2SAD_L,   REG_BASE + OFFSET_REG_DMA2SAD_L
	.set REG_DMA2SAD_H,   REG_BASE + OFFSET_REG_DMA2SAD_H
	.set REG_DMA2DAD,     REG_BASE + OFFSET_REG_DMA2DAD
	.set REG_DMA2DAD_L,   REG_BASE + OFFSET_REG_DMA2DAD_L
	.set REG_DMA2DAD_H,   REG_BASE + OFFSET_REG_DMA2DAD_H
	.set REG_DMA2CNT,     REG_BASE + OFFSET_REG_DMA2CNT
	.set REG_DMA2CNT_L,   REG_BASE + OFFSET_REG_DMA2CNT_L
	.set REG_DMA2CNT_H,   REG_BASE + OFFSET_REG_DMA2CNT_H
	.set REG_DMA3,        REG_BASE + OFFSET_REG_DMA3
	.set REG_DMA3SAD,     REG_BASE + OFFSET_REG_DMA3SAD
	.set REG_DMA3SAD_L,   REG_BASE + OFFSET_REG_DMA3SAD_L
	.set REG_DMA3SAD_H,   REG_BASE + OFFSET_REG_DMA3SAD_H
	.set REG_DMA3DAD,     REG_BASE + OFFSET_REG_DMA3DAD
	.set REG_DMA3DAD_L,   REG_BASE + OFFSET_REG_DMA3DAD_L
	.set REG_DMA3DAD_H,   REG_BASE + OFFSET_REG_DMA3DAD_H
	.set REG_DMA3CNT,     REG_BASE + OFFSET_REG_DMA3CNT
	.set REG_DMA3CNT_L,   REG_BASE + OFFSET_REG_DMA3CNT_L
	.set REG_DMA3CNT_H,   REG_BASE + OFFSET_REG_DMA3CNT_H

	.set REG_TM0CNT,      REG_BASE + OFFSET_REG_TM0CNT
	.set REG_TM0CNT_L,    REG_BASE + OFFSET_REG_TM0CNT_L
	.set REG_TM0CNT_H,    REG_BASE + OFFSET_REG_TM0CNT_H
	.set REG_TM1CNT,      REG_BASE + OFFSET_REG_TM1CNT
	.set REG_TM1CNT_L,    REG_BASE + OFFSET_REG_TM1CNT_L
	.set REG_TM1CNT_H,    REG_BASE + OFFSET_REG_TM1CNT_H
	.set REG_TM2CNT,      REG_BASE + OFFSET_REG_TM2CNT
	.set REG_TM2CNT_L,    REG_BASE + OFFSET_REG_TM2CNT_L
	.set REG_TM2CNT_H,    REG_BASE + OFFSET_REG_TM2CNT_H
	.set REG_TM3CNT,      REG_BASE + OFFSET_REG_TM3CNT
	.set REG_TM3CNT_L,    REG_BASE + OFFSET_REG_TM3CNT_L
	.set REG_TM3CNT_H,    REG_BASE + OFFSET_REG_TM3CNT_H

	.set REG_SIOCNT,      REG_BASE + OFFSET_REG_SIOCNT
	.set REG_SIODATA8,    REG_BASE + OFFSET_REG_SIODATA8
	.set REG_SIODATA32,   REG_BASE + OFFSET_REG_SIODATA32
	.set REG_SIOMLT_SEND, REG_BASE + OFFSET_REG_SIOMLT_SEND
	.set REG_SIOMLT_RECV, REG_BASE + OFFSET_REG_SIOMLT_RECV
	.set REG_SIOMULTI0,   REG_BASE + OFFSET_REG_SIOMULTI0
	.set REG_SIOMULTI1,   REG_BASE + OFFSET_REG_SIOMULTI1
	.set REG_SIOMULTI2,   REG_BASE + OFFSET_REG_SIOMULTI2
	.set REG_SIOMULTI3,   REG_BASE + OFFSET_REG_SIOMULTI3

	.set REG_KEYINPUT,    REG_BASE + OFFSET_REG_KEYINPUT
	.set REG_KEYCNT,      REG_BASE + OFFSET_REG_KEYCNT

	.set REG_RCNT,        REG_BASE + OFFSET_REG_RCNT

	.set REG_JOYCNT,      REG_BASE + OFFSET_REG_JOYCNT
	.set REG_JOYSTAT,     REG_BASE + OFFSET_REG_JOYSTAT
	.set REG_JOY_RECV,    REG_BASE + OFFSET_REG_JOY_RECV
	.set REG_JOY_RECV_L,  REG_BASE + OFFSET_REG_JOY_RECV_L
	.set REG_JOY_RECV_H,  REG_BASE + OFFSET_REG_JOY_RECV_H
	.set REG_JOY_TRANS,   REG_BASE + OFFSET_REG_JOY_TRANS
	.set REG_JOY_TRANS_L, REG_BASE + OFFSET_REG_JOY_TRANS_L
	.set REG_JOY_TRANS_H, REG_BASE + OFFSET_REG_JOY_TRANS_H

	.set REG_IME,         REG_BASE + OFFSET_REG_IME
	.set REG_IE,          REG_BASE + OFFSET_REG_IE
	.set REG_IF,          REG_BASE + OFFSET_REG_IF

	.set REG_WAITCNT,     REG_BASE + OFFSET_REG_WAITCNT

                        

	.set DMA_DEST_INC,      0x0000
	.set DMA_DEST_DEC,      0x0020
	.set DMA_DEST_FIXED,    0x0040
	.set DMA_DEST_RELOAD,   0x0060
	.set DMA_SRC_INC,       0x0000
	.set DMA_SRC_DEC,       0x0080
	.set DMA_SRC_FIXED,     0x0100
	.set DMA_REPEAT,        0x0200
	.set DMA_16BIT,         0x0000
	.set DMA_32BIT,         0x0400
	.set DMA_DREQ_ON,       0x0800
	.set DMA_START_NOW,     0x0000
	.set DMA_START_VBLANK,  0x1000
	.set DMA_START_HBLANK,  0x2000
	.set DMA_START_SPECIAL, 0x3000
	.set DMA_INTR_ENABLE,   0x4000
	.set DMA_ENABLE,        0x8000

                         

	.set OAM_OBJ_NORMAL,         0x00000000
	.set OAM_OBJ_BLEND,          0x00000400
	.set OAM_OBJ_WINDOW,         0x00000800

	.set OAM_AFFINE_NONE,        0x00000000
	.set OAM_AFFINE_NORMAL_SIZE, 0x00000100
	.set OAM_OBJ_DISABLED,       0x00000200
	.set OAM_AFFINE_DOUBLE_SIZE, 0x00000300

	.set OAM_MOSAIC_OFF,         0x00000000
	.set OAM_MOSAIC_ON,          0x00001000

	.set OAM_4BPP,               0x00000000
	.set OAM_8BPP,               0x00002000

	.set OAM_H_FLIP,             0x10000000
	.set OAM_V_FLIP,             0x20000000

	.set OAM_SQUARE,             0x00000000
	.set OAM_H_RECTANGLE,        0x00004000
	.set OAM_V_RECTANGLE,        0x00008000
	.set OAM_SIZE_0,             0x00000000
	.set OAM_SIZE_1,             0x40000000
	.set OAM_SIZE_2,             0x80000000
	.set OAM_SIZE_3,             0xc0000000

	.set OAM_SIZE_8x8,           OAM_SIZE_0 | OAM_SQUARE
	.set OAM_SIZE_16x16,         OAM_SIZE_1 | OAM_SQUARE
	.set OAM_SIZE_32x32,         OAM_SIZE_2 | OAM_SQUARE
	.set OAM_SIZE_64x64,         OAM_SIZE_3 | OAM_SQUARE

	.set OAM_SIZE_16x8,          OAM_SIZE_0 | OAM_H_RECTANGLE
	.set OAM_SIZE_32x8,          OAM_SIZE_1 | OAM_H_RECTANGLE
	.set OAM_SIZE_32x16,         OAM_SIZE_2 | OAM_H_RECTANGLE
	.set OAM_SIZE_64x32,         OAM_SIZE_3 | OAM_H_RECTANGLE

	.set OAM_SIZE_8x16,          OAM_SIZE_0 | OAM_V_RECTANGLE
	.set OAM_SIZE_8x32,          OAM_SIZE_1 | OAM_V_RECTANGLE
	.set OAM_SIZE_16x32,         OAM_SIZE_2 | OAM_V_RECTANGLE
	.set OAM_SIZE_32x64,         OAM_SIZE_3 | OAM_V_RECTANGLE

               

	.set SIO_ENABLE,             0x80
	.set SIO_ERROR,              0x40
# 2 "constants/constants.inc"
# 1 "constants/misc_constants.inc"
	.set TRUE, 1
	.set FALSE, 0

	.set NULL, 0

    .set DISPLAY_WIDTH,  240
    .set DISPLAY_HEIGHT, 160

	.set SPRITE_SIZE_8x8,   (OAM_SIZE_0 >> 28) | (OAM_SQUARE >> 14)
	.set SPRITE_SIZE_16x16, (OAM_SIZE_1 >> 28) | (OAM_SQUARE >> 14)
	.set SPRITE_SIZE_32x32, (OAM_SIZE_2 >> 28) | (OAM_SQUARE >> 14)
	.set SPRITE_SIZE_64x64, (OAM_SIZE_3 >> 28) | (OAM_SQUARE >> 14)

	.set SPRITE_SIZE_16x8,  (OAM_SIZE_0 >> 28) | (OAM_H_RECTANGLE >> 14)
	.set SPRITE_SIZE_32x8,  (OAM_SIZE_1 >> 28) | (OAM_H_RECTANGLE >> 14)
	.set SPRITE_SIZE_32x16, (OAM_SIZE_2 >> 28) | (OAM_H_RECTANGLE >> 14)
	.set SPRITE_SIZE_64x32, (OAM_SIZE_3 >> 28) | (OAM_H_RECTANGLE >> 14)

	.set SPRITE_SIZE_8x16,  (OAM_SIZE_0 >> 28) | (OAM_V_RECTANGLE >> 14)
	.set SPRITE_SIZE_8x32,  (OAM_SIZE_1 >> 28) | (OAM_V_RECTANGLE >> 14)
	.set SPRITE_SIZE_16x32, (OAM_SIZE_2 >> 28) | (OAM_V_RECTANGLE >> 14)
	.set SPRITE_SIZE_32x64, (OAM_SIZE_3 >> 28) | (OAM_V_RECTANGLE >> 14)

    .set TILE_SIZE_4BPP,    (8*8 / 2)                 
    .set TILE_SIZE_8BPP,    (8*8)                     
    
    .set METATILE_WIDTH,    12
    .set METATILE_HEIGHT,   12
# 3 "constants/constants.inc"
# 1 "constants/multi_sio_constants.inc"
                                                                      

MULTI_SIO_BLOCK_SIZE            =   20                                                     

MULTI_SIO_PLAYERS_MAX           =   4                                  

MULTI_SIO_SYNC_DATA             =   0xfefe                                                       

                                                  
MULTI_SIO_DI_FUNC_FAST          =   1                                                                                     


MULTI_SIO_TIMER_NO              =   3                  
MULTI_SIO_TIMER_INTR_FLAG       =   (INTR_FLAG_TIMER0 << MULTI_SIO_TIMER_NO)
                                                                  
REG_MULTI_SIO_TIMER             =   (REG_TM0CNT + MULTI_SIO_TIMER_NO * 4)
REG_MULTI_SIO_TIMER_L           =    REG_MULTI_SIO_TIMER
REG_MULTI_SIO_TIMER_H           =   (REG_MULTI_SIO_TIMER + 2)
                                                            


                                                  

OFS_MSP_FRAME_COUNTER           =   0                      
OFS_MSP_RECV_ERROR_FLAGS        =   1                           
OFS_MSP_CHECK_SUM               =   2                 
OFS_MSP_DATA                    =   4                           
OFS_MSP_OVERRUN_CATCH           =   (OFS_MSP_DATA + MULTI_SIO_BLOCK_SIZE)
                                                                  

MULTI_SIO_PACKET_SIZE           =   (OFS_MSP_OVERRUN_CATCH + 4)
                                                            


                                                     

OFS_MS_TYPE                     =   0                                  
OFS_MS_STATE                    =   1                                     
OFS_MS_CONNECTED_FLAG           =   2                                
OFS_MS_RECV_SUCCESS_FLAGS       =   3                             

OFS_MS_SYNC_RECV_FLAG           =   4                                                    
OFS_MS_SYNC_RECV_ADJUST_COUNTER =   8                                           

OFS_MS_SEND_BUF_COUNTER_INIT    =   10                                          

OFS_MS_SYNC_SEND_FRAME_COUNTER  =   11                          
OFS_MS_SYNC_RECV_FRAME_COUNTER  =   12                             

OFS_MS_SEND_BUF_COUNTER         =   20                           
OFS_MS_RECV_BUF_COUNTER         =   24                              

OFS_MS_NEXT_SEND_BUF_P          =   40                           
OFS_MS_CURRENT_SEND_BUF_P       =   44
OFS_MS_CURRENT_RECV_BUF_P       =   48                              
OFS_MS_LAST_RECV_BUF_P          =   64
OFS_MS_RECV_CHECK_BUF_P         =   80

OFS_MS_SEND_BUF                 =   96                                   
OFS_MS_RECV_BUF                 =   (OFS_MS_SEND_BUF + MULTI_SIO_PACKET_SIZE * 2)
                                                                            

MULTI_SIO_AREA_SIZE             =   (OFS_MS_RECV_BUF + MULTI_SIO_PACKET_SIZE * 3 * MULTI_SIO_PLAYERS_MAX)
                                                            

OFS_MS_HARD_ERROR               =   9
# 4 "constants/constants.inc"
# 3 "/home/awaszczak/git/sa2/sa1/data/sa1/rom_header_old.s"

                                                          
                                 

                           
                         
   
                                 
    
                                     
                             
               
   
                          
             
   
                         
          
   
                          
            
   
                      
              
   
                             
           
   
                           
           
   
                          
            
   
                                
           
   
                         
           
   
                          
            
   
                       

                 
_0800032C:
	.incbin "baserom_sa1.gba", 0x32C, 0xC0
