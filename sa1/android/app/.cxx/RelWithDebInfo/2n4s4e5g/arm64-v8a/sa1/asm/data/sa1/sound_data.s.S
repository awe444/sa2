# 1 "asm/macros/c_decl.inc"
// NOTE:
// For this to work, the file that is including this file HAS to be passed through the C preprocessor before assembling!

// 32bit Windows and MacOS versions prefix labels using an underscore.
// For interoperability we need to replicate that behavior here.
#if ( (CPU_ARCH_X86 && defined(_WIN32) && !defined(_WIN64)) || defined(__APPLE__) )
    #define C_DECL(label) _##label
#else
    #define C_DECL(label) label
#endif
# 2 "/home/awaszczak/git/sa2/sa1/data/sa1/sound_data.s"
# 1 "asm/macros/portable.inc"
.macro mSectionRodata
#if (!CPU_ARCH_X86 && defined(__APPLE__)) // On macos, native compilation uses this name for the rodata section
  .section __DATA,__data
#elif defined(__ANDROID__)
  // On Android the assembly is linked into a shared library (libmain.so).
  // Pointer tables emitted with mPtr (.quad) produce absolute relocations
  // (R_AARCH64_ABS64 on ARM64, R_X86_64_64 on x86_64) which the linker
  // cannot place in read-only .rodata.
  // .data.rel.ro is writable during relocation, then made read-only.
  .section .data.rel.ro,"aw",%progbits
#else
  .section .rodata
#endif
.endm

// Used so that we can have cross platform (32bit or 64bit) pointers
.macro mPtr value
#if defined(__aarch64__) || defined(__x86_64__)
    .quad \value
#else
    .int \value
#endif
.endm

// Used for cross platform aligning of labels.
// Uses .balign (byte-count alignment) which is unambiguous across all
// assemblers.  The earlier .align N form is interpreted as 2^N on ARM
// targets, which produced 256-byte gaps instead of 8-byte gaps and
// caused struct-layout mismatches with C code on AArch64.
// The System V AMD64 ABI (and AAPCS64) requires global arrays of 16+
// bytes to be 16-byte aligned.  Clang -O2 relies on this and emits
// movaps (x86-64) / LDP with aligned hint (AArch64) when inlining
// memcpy from such symbols.  Assembly data files pack symbols with no
// padding, violating the ABI; this macro inserts the required
// alignment before each .global on 64-bit targets while leaving
// 32-bit (GBA) builds untouched.
.macro mAlignData
#if defined(__aarch64__) || defined(__x86_64__)
    .balign 16
#endif
.endm

.macro mAlignWord
#if defined(__aarch64__) || defined(__x86_64__)
    .balign 8
#else
    .balign 4
#endif
.endm
# 3 "/home/awaszczak/git/sa2/sa1/data/sa1/sound_data.s"
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
# 4 "/home/awaszczak/git/sa2/sa1/data/sa1/sound_data.s"
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
# 5 "/home/awaszczak/git/sa2/sa1/data/sa1/sound_data.s"
# 1 "asm/macros/c_decl.inc"
// NOTE:
// For this to work, the file that is including this file HAS to be passed through the C preprocessor before assembling!

// 32bit Windows and MacOS versions prefix labels using an underscore.
// For interoperability we need to replicate that behavior here.
#if ( (CPU_ARCH_X86 && defined(_WIN32) && !defined(_WIN64)) || defined(__APPLE__) )
    #define C_DECL(label) _##label
#else
    #define C_DECL(label) label
#endif
# 6 "/home/awaszczak/git/sa2/sa1/data/sa1/sound_data.s"
    
                              
mSectionRodata
# 1 "sound/sa1/voice_groups.inc"
# 1 "sound/sa1/voicegroups/voicegroup000.inc"
	mAlignWord
	                                                          

	.global voicegroup000
voicegroup000:	            
mAlignWord
	voice_square_1_alt 0, 0, 0, 0, 15, 0	         
mAlignWord
	voice_square_1_alt 0, 1, 0, 0, 15, 0	         
mAlignWord
	voice_square_1_alt 0, 2, 0, 0, 15, 0	         
mAlignWord
	voice_square_1_alt 0, 3, 0, 0, 15, 0	         
mAlignWord
	voice_square_1_alt 0, 2, 2, 0, 15, 0	         
mAlignWord
	voice_square_1 0, 2, 0, 0, 15, 0	         
mAlignWord
	voice_square_1 0, 2, 0, 0, 15, 0	         
mAlignWord
	voice_square_1 0, 2, 0, 0, 15, 0	         
mAlignWord
	voice_square_1 0, 2, 0, 0, 15, 0	         
mAlignWord
	voice_square_1 0, 2, 0, 0, 15, 0	         
mAlignWord
	voice_square_2_alt 0, 0, 0, 15, 0	         
mAlignWord
	voice_square_2_alt 1, 0, 0, 15, 0	         
mAlignWord
	voice_square_2_alt 2, 0, 0, 15, 0	         
mAlignWord
	voice_square_2_alt 3, 0, 0, 15, 0	         
mAlignWord
	voice_square_2_alt 2, 2, 0, 15, 0	         
mAlignWord
	voice_square_1 0, 2, 0, 0, 15, 0	         
mAlignWord
	voice_square_1 0, 2, 0, 0, 15, 0	         
mAlignWord
	voice_square_1 0, 2, 0, 0, 15, 0	         
mAlignWord
	voice_square_1 0, 2, 0, 0, 15, 0	         
mAlignWord
	voice_square_1 0, 2, 0, 0, 15, 0	         
mAlignWord
	voice_square_1 0, 2, 0, 0, 15, 0	         
mAlignWord
	voice_square_1 0, 2, 0, 0, 15, 0	         
mAlignWord
	voice_square_1 0, 2, 0, 0, 15, 0	         
mAlignWord
	voice_square_1 0, 2, 0, 0, 15, 0	         
mAlignWord
	voice_square_1 0, 2, 0, 0, 15, 0	         
mAlignWord
	voice_square_1 0, 2, 0, 0, 15, 0	         
mAlignWord
	voice_square_1 0, 2, 0, 0, 15, 0	         
mAlignWord
	voice_square_1 0, 2, 0, 0, 15, 0	         
mAlignWord
	voice_square_1 0, 2, 0, 0, 15, 0	         
mAlignWord
	voice_square_1 0, 2, 0, 0, 15, 0	         
mAlignWord
	voice_square_1 0, 2, 0, 0, 15, 0	         
mAlignWord
	voice_square_1 0, 2, 0, 0, 15, 0	         
mAlignWord
	voice_square_1 0, 2, 0, 0, 15, 0	         
mAlignWord
	voice_square_1 0, 2, 0, 0, 15, 0	         
mAlignWord
	voice_square_1 0, 2, 0, 0, 15, 0	         
mAlignWord
	voice_square_1 0, 2, 0, 0, 15, 0	         
mAlignWord
	voice_square_1_alt 0, 1, 1, 0, 15, 0	         
mAlignWord
	voice_square_1 0, 2, 0, 0, 15, 0	         
mAlignWord
	voice_square_1 0, 2, 0, 0, 15, 0	         
mAlignWord
	voice_square_1 0, 2, 0, 0, 15, 0	         
mAlignWord
	voice_programmable_wave_alt ProgrammableWaveData_86DD6D0, 0, 4, 4, 0	         
mAlignWord
	voice_programmable_wave_alt ProgrammableWaveData_86DD6E0, 0, 0, 15, 0	         
mAlignWord
	voice_programmable_wave_alt ProgrammableWaveData_86DD6F0, 0, 0, 15, 0	         
mAlignWord
	voice_programmable_wave_alt ProgrammableWaveData_86DD700, 0, 0, 15, 0	         
mAlignWord
	voice_programmable_wave_alt ProgrammableWaveData_86DD710, 0, 0, 15, 0	         
mAlignWord
	voice_programmable_wave_alt ProgrammableWaveData_86DD720, 0, 0, 15, 0	         
mAlignWord
	voice_programmable_wave_alt ProgrammableWaveData_86DD730, 0, 0, 15, 0	         
mAlignWord
	voice_programmable_wave_alt ProgrammableWaveData_86DD740, 0, 0, 15, 0	         
mAlignWord
	voice_programmable_wave_alt ProgrammableWaveData_86DD750, 0, 3, 0, 2	         
mAlignWord
	voice_square_1 0, 2, 0, 0, 15, 0	         
mAlignWord
	voice_noise 60, 0, 0, 0, 0, 0, 15, 0	         
mAlignWord
	voice_noise 60, 0, 0, 1, 0, 0, 15, 0	         
mAlignWord
	voice_square_1_alt 0, 2, 0, 3, 0, 0	         
mAlignWord
	voice_programmable_wave_alt ProgrammableWaveData_86DD6D0, 0, 0, 15, 0	         
mAlignWord
	voice_programmable_wave_alt ProgrammableWaveData_86DD750, 0, 3, 0, 2	         
mAlignWord
	voice_programmable_wave_alt ProgrammableWaveData_86DD6D0, 0, 0, 15, 0	         
mAlignWord
	voice_square_1_alt 0, 0, 0, 0, 15, 5	         
mAlignWord
	voice_noise 60, 0, 0, 0, 1, 0, 15, 0	         
mAlignWord
	voice_noise 60, 0, 0, 1, 0, 0, 15, 0	         
mAlignWord
	voice_noise 60, 0, 0, 0, 0, 0, 15, 2	         
mAlignWord
	voice_square_1_alt 0, 0, 0, 4, 0, 0	         
mAlignWord
	voice_programmable_wave_alt ProgrammableWaveData_86DD750, 0, 4, 0, 0	         
mAlignWord
	voice_square_2_alt 0, 0, 4, 4, 0	         
mAlignWord
	voice_square_1_alt 0, 1, 0, 3, 0, 0	         
mAlignWord
	voice_square_1_alt 0, 1, 0, 2, 0, 0	         
mAlignWord
	voice_square_1_alt 0, 3, 0, 1, 0, 1	         
mAlignWord
	voice_programmable_wave_alt ProgrammableWaveData_86DD710, 0, 0, 15, 0	         
mAlignWord
	voice_programmable_wave_alt ProgrammableWaveData_86DD720, 0, 0, 15, 0	         
mAlignWord
	voice_programmable_wave_alt ProgrammableWaveData_86DD730, 0, 0, 15, 0	         
mAlignWord
	voice_programmable_wave_alt ProgrammableWaveData_86DD740, 0, 0, 15, 0	         
mAlignWord
	voice_directsound 60, 0, gUnknown_086DE134, 255, 0, 255, 0	         
mAlignWord
	voice_directsound 60, 0, gUnknown_086DF608, 255, 0, 255, 0	         
mAlignWord
	voice_directsound 60, 0, gUnknown_086E0A1C, 255, 0, 255, 0	         
mAlignWord
	voice_directsound 60, 0, gUnknown_086E134C, 255, 0, 255, 0	         
mAlignWord
	voice_directsound 60, 0, gUnknown_086E1ABC, 255, 0, 255, 127	         
mAlignWord
	voice_directsound 60, 0, gUnknown_086E33B0, 255, 0, 255, 127	         
mAlignWord
	voice_directsound 60, 0, gUnknown_086E64DC, 255, 0, 255, 0	         
mAlignWord
	voice_directsound 60, 0, gUnknown_086E6B24, 255, 235, 38, 165	         
mAlignWord
	voice_directsound 60, 0, gUnknown_086EA218, 255, 0, 255, 127	         
mAlignWord
	voice_directsound 60, 0, gUnknown_086ED1F4, 255, 0, 255, 0	         
mAlignWord
	voice_directsound 60, 0, gUnknown_086F0138, 255, 0, 255, 0	         
mAlignWord
	voice_directsound 60, 0, gUnknown_086F1AC0, 255, 0, 255, 127	         
mAlignWord
	voice_directsound 60, 0, gUnknown_086F1DC0, 255, 0, 255, 127	         
mAlignWord
	voice_keysplit voicegroup002, KeySplitTable1	         
mAlignWord
	voice_directsound 60, 0, gUnknown_086F2994, 255, 246, 64, 149	         
mAlignWord
	voice_directsound 60, 0, gUnknown_086F5578, 255, 0, 255, 127	         
mAlignWord
	voice_directsound 60, 0, gUnknown_086F836C, 255, 0, 255, 127	         
mAlignWord
	voice_directsound 60, 0, gUnknown_086FA790, 255, 0, 255, 127	         
mAlignWord
	voice_directsound 60, 0, gUnknown_086FAEA4, 255, 0, 255, 127	         
mAlignWord
	voice_programmable_wave_alt ProgrammableWaveData_86DD720, 0, 0, 15, 0	         
mAlignWord
	voice_directsound 60, 0, gUnknown_086FBBD4, 255, 0, 255, 127	         
mAlignWord
	voice_directsound 60, 0, gUnknown_086FE150, 255, 231, 0, 188	         
# 2 "sound/sa1/voice_groups.inc"
# 1 "sound/sa1/voicegroups/voicegroup001.inc"
	mAlignWord
	                                                          

	.global voicegroup001
voicegroup001:	            
mAlignWord
	voice_directsound 60, 0, gUnknown_086FE7E4, 255, 0, 255, 0	         
mAlignWord
	voice_directsound 60, 0, gUnknown_086FF18C, 255, 0, 255, 149	         
mAlignWord
	voice_directsound 60, 0, gUnknown_0870224C, 255, 235, 25, 165	         
mAlignWord
	voice_directsound 60, 0, gUnknown_08702F60, 255, 0, 255, 149	         
mAlignWord
	voice_directsound 60, 0, gUnknown_0870613C, 255, 0, 255, 0	         
mAlignWord
	voice_directsound 60, 0, gUnknown_08708210, 37, 0, 255, 165	         
mAlignWord
	voice_directsound 60, 0, gUnknown_08708210, 255, 0, 255, 165	         
mAlignWord
	voice_directsound 60, 0, gUnknown_0870A724, 255, 252, 0, 149	         
mAlignWord
	voice_directsound 60, 0, gUnknown_0870CA4C, 255, 0, 255, 0	         
mAlignWord
	voice_directsound 60, 0, gUnknown_0870D7EC, 255, 0, 255, 0	         
mAlignWord
	voice_directsound 60, 0, gUnknown_0870DC84, 255, 0, 255, 0	         
mAlignWord
	voice_directsound 60, 0, gUnknown_0870E60C, 255, 0, 255, 0	         
mAlignWord
	voice_directsound 60, 0, gUnknown_0870EA00, 255, 0, 255, 0	         
mAlignWord
	voice_directsound 60, 0, gUnknown_0870EE50, 255, 0, 255, 0	         
mAlignWord
	voice_directsound 60, 0, gUnknown_0870F254, 255, 0, 255, 0	         
mAlignWord
	voice_directsound 60, 0, gUnknown_0870FBC0, 255, 0, 255, 0	         
mAlignWord
	voice_directsound 60, 0, gUnknown_0870FFA0, 255, 0, 255, 0	         
mAlignWord
	voice_directsound 60, 0, gUnknown_087103F8, 255, 0, 255, 0	         
mAlignWord
	voice_directsound 60, 0, gUnknown_08710D74, 255, 0, 255, 0	         
mAlignWord
	voice_directsound 60, 0, gUnknown_087111D4, 255, 0, 255, 0	         
mAlignWord
	voice_directsound 60, 0, gUnknown_08711640, 255, 0, 255, 0	         
mAlignWord
	voice_directsound 60, 0, gUnknown_08711ACC, 255, 0, 255, 0	         
mAlignWord
	voice_directsound 60, 0, gUnknown_087123F8, 255, 0, 255, 0	         
mAlignWord
	voice_directsound 60, 0, gUnknown_08712950, 255, 0, 255, 0	         
mAlignWord
	voice_directsound 60, 0, gUnknown_08712DB8, 255, 0, 255, 0	         
mAlignWord
	voice_directsound 60, 0, gUnknown_0871375C, 255, 250, 18, 250	         
mAlignWord
	voice_directsound 60, 0, gUnknown_0871AED4, 255, 216, 25, 0	         
mAlignWord
	voice_directsound 60, 0, spectrasonics__symphony_of_voices__partition_d__big_chord__big_min__c4_r, 37, 0, 255, 149	         
mAlignWord
	voice_directsound 60, 0, gUnknown_0871EF30, 255, 0, 255, 0	         
mAlignWord
	voice_directsound 60, 0, gUnknown_08727348, 255, 0, 255, 0	         
mAlignWord
	voice_directsound 60, 0, gUnknown_0872CF68, 255, 0, 255, 149	         
mAlignWord
	voice_programmable_wave_alt ProgrammableWaveData_86DD710, 0, 5, 1, 0	         
mAlignWord
	voice_directsound 60, 0, gUnknown_0872E77C, 255, 216, 25, 0	         
mAlignWord
	voice_programmable_wave_alt ProgrammableWaveData_86DD710, 0, 4, 4, 0	         
mAlignWord
	voice_keysplit_all voicegroup003	         
mAlignWord
	voice_keysplit_all voicegroup001	         
# 3 "sound/sa1/voice_groups.inc"
# 1 "sound/sa1/voicegroups/voicegroup002.inc"
	mAlignWord
	                                                          

	.global voicegroup002
voicegroup002:	            
mAlignWord
	voice_directsound_no_resample 60, 0, gUnknown_08730340, 255, 255, 255, 0	         
mAlignWord
	voice_directsound_no_resample 60, 0, gUnknown_08730BF0, 255, 0, 255, 0	         
mAlignWord
	voice_noise 84, 0, 192, 0, 0, 1, 0, 0	         
mAlignWord
	voice_noise 84, 0, 192, 0, 0, 2, 0, 0	         
mAlignWord
	voice_noise 84, 0, 192, 0, 0, 3, 7, 0	         
mAlignWord
	voice_directsound 45, 0, gUnknown_08731868, 255, 0, 255, 0	         
mAlignWord
	voice_directsound 50, 0, gUnknown_08731868, 255, 0, 255, 0	         
mAlignWord
	voice_directsound 55, 0, gUnknown_08731868, 255, 0, 255, 0	         
mAlignWord
	voice_directsound 60, 0, gUnknown_08731868, 255, 0, 255, 0	         
mAlignWord
	voice_directsound 65, 0, gUnknown_08731868, 255, 0, 255, 0	         
mAlignWord
	voice_directsound_no_resample 60, 0, gUnknown_08732A00, 255, 0, 255, 0	         
mAlignWord
	voice_directsound_no_resample 60, 0, gUnknown_08733304, 255, 0, 255, 0	         
mAlignWord
	voice_directsound_no_resample 60, 0, gUnknown_08733D74, 255, 0, 255, 0	         
mAlignWord
	voice_directsound_no_resample 60, 0, gUnknown_08737EB4, 255, 0, 255, 0	         
mAlignWord
	voice_directsound_no_resample 60, 0, gUnknown_0873BCBC, 255, 0, 255, 0	         
mAlignWord
	voice_directsound_no_resample 60, 0, gUnknown_0873C470, 255, 0, 255, 0	         
mAlignWord
	voice_directsound_no_resample 60, 0, gUnknown_0873CC80, 255, 0, 255, 0	         
mAlignWord
	voice_directsound 57, 0, gUnknown_08737EB4, 255, 0, 255, 0	         
mAlignWord
	voice_directsound 59, 0, gUnknown_08737EB4, 255, 0, 255, 0	         
mAlignWord
	voice_directsound 61, 0, gUnknown_08737EB4, 255, 0, 255, 0	         
mAlignWord
	voice_directsound 45, 0, gUnknown_0873D430, 255, 0, 255, 0	         
mAlignWord
	voice_directsound 50, 0, gUnknown_0873D430, 255, 0, 255, 0	         
mAlignWord
	voice_directsound 55, 0, gUnknown_0873D430, 255, 0, 255, 0	         
mAlignWord
	voice_directsound 60, 0, gUnknown_0873D430, 255, 0, 255, 0	         
mAlignWord
	voice_directsound 65, 0, gUnknown_0873D430, 255, 0, 255, 0	         
mAlignWord
	voice_directsound_no_resample 60, 0, gUnknown_0873DF74, 255, 0, 255, 0	         
mAlignWord
	voice_directsound_no_resample 60, 0, gUnknown_0873ECE8, 255, 0, 255, 0	         
mAlignWord
	voice_directsound_no_resample 60, 0, gUnknown_0873F1C0, 255, 0, 255, 0	         
mAlignWord
	voice_directsound_no_resample 60, 0, gUnknown_0873F654, 255, 0, 255, 0	         
mAlignWord
	voice_directsound_no_resample 60, 0, gUnknown_0873FAB8, 255, 0, 255, 0	         
mAlignWord
	voice_directsound_no_resample 60, 0, gUnknown_0873FF64, 255, 0, 255, 0	         
mAlignWord
	voice_directsound_no_resample 60, 0, gUnknown_087403FC, 255, 0, 255, 0	         
mAlignWord
	voice_directsound_no_resample 60, 0, gUnknown_08740854, 255, 0, 255, 0	         
mAlignWord
	voice_directsound_no_resample 60, 0, gUnknown_08740D00, 255, 0, 255, 0	         
mAlignWord
	voice_directsound_no_resample 60, 0, gUnknown_08741248, 255, 0, 255, 0	         
mAlignWord
	voice_directsound_no_resample 60, 0, gUnknown_08741694, 255, 0, 255, 0	         
mAlignWord
	voice_directsound_no_resample 60, 0, gUnknown_08741B00, 255, 0, 255, 0	         
mAlignWord
	voice_directsound_no_resample 60, 0, gUnknown_0874216C, 255, 0, 255, 0	         
mAlignWord
	voice_directsound_no_resample 60, 0, gUnknown_087424D8, 255, 0, 255, 0	         
mAlignWord
	voice_directsound_no_resample 60, 0, gUnknown_0874267C, 255, 0, 255, 0	         
mAlignWord
	voice_directsound_no_resample 60, 0, gUnknown_08742E90, 255, 0, 255, 0	         
mAlignWord
	voice_directsound_no_resample 60, 0, gUnknown_087432F0, 255, 0, 255, 0	         
mAlignWord
	voice_directsound_no_resample 60, 0, gUnknown_087436FC, 255, 0, 255, 0	         
mAlignWord
	voice_directsound_no_resample 60, 0, gUnknown_08743BEC, 255, 0, 255, 0	         
mAlignWord
	voice_directsound_no_resample 60, 0, gUnknown_0874408C, 255, 0, 255, 0	         
mAlignWord
	voice_directsound_no_resample 60, 0, gUnknown_087444B4, 255, 0, 255, 0	         
mAlignWord
	voice_directsound_no_resample 60, 0, gUnknown_087449BC, 255, 0, 255, 0	         
mAlignWord
	voice_square_1 0, 2, 0, 0, 15, 0	         
mAlignWord
	voice_square_1 0, 2, 0, 0, 15, 0	         
mAlignWord
	voice_square_1 0, 2, 0, 0, 15, 0	         
mAlignWord
	voice_square_1 0, 2, 0, 0, 15, 0	         
mAlignWord
	voice_square_1 0, 2, 0, 0, 15, 0	         
mAlignWord
	voice_square_1 0, 2, 0, 0, 15, 0	         
# 4 "sound/sa1/voice_groups.inc"
# 1 "sound/sa1/voicegroups/voicegroup003.inc"
	mAlignWord
	                                                          

	.global voicegroup003
voicegroup003:	            
mAlignWord
	voice_square_1 0, 2, 0, 0, 15, 0	         
mAlignWord
	voice_square_1 0, 2, 0, 0, 15, 0	         
mAlignWord
	voice_square_1 0, 2, 0, 0, 15, 0	         
mAlignWord
	voice_square_1 0, 2, 0, 0, 15, 0	         
mAlignWord
	voice_square_1 0, 2, 0, 0, 15, 0	         
mAlignWord
	voice_directsound_no_resample 60, 0, gUnknown_0874621C, 255, 0, 255, 0	         
mAlignWord
	voice_directsound_no_resample 60, 0, gUnknown_08746C04, 255, 0, 255, 0	         
mAlignWord
	voice_directsound_no_resample 60, 0, gUnknown_08747908, 255, 0, 255, 0	         
mAlignWord
	voice_directsound_no_resample 60, 0, gUnknown_08747D18, 255, 0, 255, 0	         
mAlignWord
	voice_directsound_no_resample 60, 0, gUnknown_08748108, 255, 0, 255, 0	         
mAlignWord
	voice_directsound_no_resample 60, 0, gUnknown_08748BD8, 255, 0, 255, 0	         
mAlignWord
	voice_directsound_no_resample 60, 0, gUnknown_087493A4, 255, 0, 255, 0	         
mAlignWord
	voice_directsound_no_resample 60, 0, gUnknown_08749864, 255, 0, 255, 0	         
mAlignWord
	voice_square_1 0, 2, 0, 0, 15, 0	         
mAlignWord
	voice_square_1 0, 2, 0, 0, 15, 0	         
mAlignWord
	voice_square_1 0, 2, 0, 0, 15, 0	         
mAlignWord
	voice_square_1 0, 2, 0, 0, 15, 0	         
mAlignWord
	voice_square_1 0, 2, 0, 0, 15, 0	         
mAlignWord
	voice_square_1 0, 2, 0, 0, 15, 0	         
mAlignWord
	voice_square_1 0, 2, 0, 0, 15, 0	         
mAlignWord
	voice_square_1 0, 2, 0, 0, 15, 0	         
mAlignWord
	voice_square_1 0, 2, 0, 0, 15, 0	         
mAlignWord
	voice_directsound_no_resample 60, 0, gUnknown_08749D20, 255, 0, 255, 0	         
mAlignWord
	voice_directsound_no_resample 60, 0, gUnknown_0874A750, 255, 0, 255, 0	         
mAlignWord
	voice_directsound_no_resample 60, 0, gUnknown_0874AAF8, 255, 0, 255, 0	         
mAlignWord
	voice_directsound_no_resample 60, 0, gUnknown_0874B5D0, 255, 0, 255, 0	         
mAlignWord
	voice_directsound_no_resample 60, 0, gUnknown_0874B844, 255, 0, 255, 0	         
mAlignWord
	voice_directsound_no_resample 60, 0, gUnknown_0874CAFC, 255, 0, 255, 0	         
mAlignWord
	voice_directsound_no_resample 60, 0, gUnknown_0874D4D0, 255, 0, 255, 0	         
mAlignWord
	voice_directsound_no_resample 60, 0, gUnknown_0874DDCC, 255, 0, 255, 0	         
mAlignWord
	voice_directsound_no_resample 60, 0, gUnknown_0874E228, 255, 0, 255, 0	         
# 5 "sound/sa1/voice_groups.inc"
# 1 "sound/sa1/voicegroups/voicegroup004.inc"
	mAlignWord
	                                                          

	.global voicegroup004
voicegroup004:	            
mAlignWord
	voice_directsound 60, 0, gUnknown_0874E6D0, 255, 0, 255, 0	         
mAlignWord
	voice_directsound 60, 0, gUnknown_08753AEC, 255, 0, 255, 0	         
mAlignWord
	voice_directsound 60, 0, gUnknown_08758BB4, 255, 0, 255, 0	         
mAlignWord
	voice_directsound 60, 0, gUnknown_0875A76C, 255, 0, 255, 0	         
mAlignWord
	voice_directsound 60, 0, gUnknown_0875E854, 255, 0, 255, 0	         
mAlignWord
	voice_directsound_no_resample 60, 0, gUnknown_0871EF30, 255, 0, 255, 0	         
mAlignWord
	voice_square_1 0, 2, 0, 0, 15, 0	         
mAlignWord
	voice_square_1 0, 2, 0, 0, 15, 0	         
mAlignWord
	voice_square_1 0, 2, 0, 0, 15, 0	         
mAlignWord
	voice_directsound_no_resample 60, 0, gUnknown_087634B0, 255, 0, 255, 0	         
mAlignWord
	voice_directsound_no_resample 60, 0, gUnknown_08763F44, 255, 0, 255, 0	         
mAlignWord
	voice_directsound_no_resample 60, 0, gUnknown_087644B8, 255, 0, 255, 0	         
mAlignWord
	voice_directsound_no_resample 60, 0, gUnknown_08764A24, 255, 0, 255, 0	         
mAlignWord
	voice_directsound_no_resample 60, 0, gUnknown_08764EC8, 255, 0, 255, 0	         
mAlignWord
	voice_directsound_no_resample 60, 0, gUnknown_08765524, 255, 0, 255, 0	         
mAlignWord
	voice_directsound_no_resample 60, 0, gUnknown_08765FF0, 255, 0, 255, 0	         
mAlignWord
	voice_directsound_no_resample 60, 0, gUnknown_087665C8, 255, 0, 255, 0	         
mAlignWord
	voice_directsound_no_resample 60, 0, gUnknown_08766AE4, 255, 0, 255, 0	         
mAlignWord
	voice_directsound_no_resample 60, 0, gUnknown_0876701C, 255, 0, 255, 0	         
mAlignWord
	voice_directsound_no_resample 60, 0, gUnknown_08767588, 255, 0, 255, 0	         
mAlignWord
	voice_directsound_no_resample 60, 0, gUnknown_08767A20, 255, 0, 255, 0	         
mAlignWord
	voice_directsound_no_resample 60, 0, gUnknown_08768070, 255, 0, 255, 0	         
mAlignWord
	voice_square_1 0, 2, 0, 0, 15, 0	         
mAlignWord
	voice_square_1 0, 2, 0, 0, 15, 0	         
mAlignWord
	voice_square_1 0, 2, 0, 0, 15, 0	         
mAlignWord
	voice_directsound_no_resample 60, 0, gUnknown_08768BA0, 255, 0, 255, 0	         
mAlignWord
	voice_directsound_no_resample 60, 0, gUnknown_087692C0, 255, 0, 255, 0	         
mAlignWord
	voice_directsound_no_resample 60, 0, gUnknown_0876995C, 255, 0, 255, 0	         
mAlignWord
	voice_directsound_no_resample 60, 0, gUnknown_0876A058, 255, 0, 255, 0	         
mAlignWord
	voice_directsound_no_resample 60, 0, gUnknown_0876A7E8, 255, 0, 255, 0	         
mAlignWord
	voice_directsound_no_resample 60, 0, gUnknown_0876AE6C, 255, 0, 255, 0	         
mAlignWord
	voice_directsound_no_resample 60, 0, gUnknown_0876B5CC, 255, 0, 255, 0	         
mAlignWord
	voice_directsound_no_resample 60, 0, gUnknown_0876BCBC, 255, 0, 255, 0	         
mAlignWord
	voice_directsound_no_resample 60, 0, gUnknown_0876C1C4, 255, 0, 255, 0	         
mAlignWord
	voice_directsound_no_resample 60, 0, gUnknown_0876C974, 255, 0, 255, 0	         
mAlignWord
	voice_directsound_no_resample 60, 0, gUnknown_0876D0E8, 255, 0, 255, 0	         
mAlignWord
	voice_directsound_no_resample 60, 0, gUnknown_0876D79C, 255, 0, 255, 0	         
mAlignWord
	voice_directsound_no_resample 60, 0, gUnknown_0876DF8C, 255, 0, 255, 0	         
mAlignWord
	voice_directsound_no_resample 60, 0, gUnknown_0876E614, 255, 0, 255, 0	         
mAlignWord
	voice_directsound_no_resample 60, 0, gUnknown_0876ED88, 255, 0, 255, 0	         
mAlignWord
	voice_directsound_no_resample 60, 0, gUnknown_0876F47C, 255, 0, 255, 0	         
# 6 "sound/sa1/voice_groups.inc"
# 1 "sound/sa1/voicegroups/voicegroup005.inc"
	mAlignWord
	                                                          

	.global voicegroup005
voicegroup005:	            
mAlignWord
	voice_square_1_alt 0, 0, 0, 0, 15, 0	         
mAlignWord
	voice_square_1_alt 0, 1, 0, 0, 15, 0	         
mAlignWord
	voice_square_1_alt 0, 2, 0, 0, 15, 0	         
mAlignWord
	voice_square_1_alt 0, 3, 0, 0, 15, 0	         
mAlignWord
	voice_square_1_alt 0, 2, 2, 0, 15, 0	         
mAlignWord
	voice_square_1 0, 2, 0, 0, 15, 0	         
mAlignWord
	voice_noise 60, 0, 0, 0, 0, 0, 15, 0	         
mAlignWord
	voice_square_1 0, 2, 0, 0, 15, 0	         
mAlignWord
	voice_square_1 0, 2, 0, 0, 15, 0	         
mAlignWord
	voice_square_1 0, 2, 0, 0, 15, 0	         
mAlignWord
	voice_square_2_alt 0, 0, 0, 15, 0	         
mAlignWord
	voice_square_2_alt 1, 0, 0, 15, 0	         
mAlignWord
	voice_square_2_alt 2, 0, 0, 15, 0	         
mAlignWord
	voice_square_2_alt 3, 0, 0, 15, 0	         
mAlignWord
	voice_square_2_alt 2, 2, 0, 15, 0	         
mAlignWord
	voice_noise 60, 0, 0, 1, 1, 0, 12, 2	         
mAlignWord
	voice_noise 60, 0, 0, 1, 0, 0, 12, 2	         
mAlignWord
	voice_square_1_alt 0, 1, 0, 0, 15, 0	         
mAlignWord
	voice_square_1_alt 0, 1, 0, 0, 5, 3	         
mAlignWord
	voice_noise 60, 0, 0, 1, 0, 0, 12, 2	         
mAlignWord
	voice_noise 60, 0, 0, 1, 1, 0, 12, 2	         
mAlignWord
	voice_noise 60, 0, 0, 1, 4, 0, 12, 2	         
mAlignWord
	voice_noise 60, 0, 0, 0, 0, 0, 15, 2	         
mAlignWord
	voice_square_1_alt 0, 1, 0, 0, 5, 4	         
mAlignWord
	voice_square_1_alt 0, 0, 0, 0, 15, 5	         
mAlignWord
	voice_square_1_alt 0, 2, 0, 2, 0, 0	         
mAlignWord
	voice_noise 60, 0, 0, 1, 0, 0, 15, 0	         
mAlignWord
	voice_noise 60, 0, 0, 1, 0, 0, 15, 2	         
mAlignWord
	voice_square_1 0, 2, 0, 0, 15, 0	         
mAlignWord
	voice_square_1 0, 2, 0, 0, 15, 0	         
mAlignWord
	voice_noise 60, 0, 0, 0, 0, 0, 15, 2	         
mAlignWord
	voice_noise 60, 0, 0, 0, 3, 0, 15, 4	         
mAlignWord
	voice_square_1_alt 0, 1, 0, 2, 0, 0	         
mAlignWord
	voice_square_1_alt 0, 1, 0, 2, 0, 0	         
mAlignWord
	voice_noise 60, 0, 0, 0, 0, 0, 15, 2	         
mAlignWord
	voice_noise 60, 0, 0, 0, 1, 0, 15, 0	         
mAlignWord
	voice_square_1_alt 0, 1, 1, 0, 15, 0	         
mAlignWord
	voice_noise 60, 0, 0, 0, 0, 0, 15, 2	         
mAlignWord
	voice_square_1_alt 0, 1, 0, 2, 0, 0	         
mAlignWord
	voice_square_2_alt 2, 2, 0, 15, 1	         
mAlignWord
	voice_programmable_wave_alt ProgrammableWaveData_86DD6D0, 0, 4, 4, 0	         
mAlignWord
	voice_programmable_wave_alt ProgrammableWaveData_86DD6E0, 0, 0, 15, 0	         
mAlignWord
	voice_programmable_wave_alt ProgrammableWaveData_86DD6F0, 0, 0, 15, 0	         
mAlignWord
	voice_programmable_wave_alt ProgrammableWaveData_86DD700, 0, 0, 15, 0	         
mAlignWord
	voice_programmable_wave_alt ProgrammableWaveData_86DD710, 0, 0, 15, 0	         
mAlignWord
	voice_programmable_wave_alt ProgrammableWaveData_86DD720, 0, 0, 15, 0	         
mAlignWord
	voice_programmable_wave_alt ProgrammableWaveData_86DD730, 0, 0, 15, 0	         
mAlignWord
	voice_programmable_wave_alt ProgrammableWaveData_86DD740, 0, 0, 15, 0	         
mAlignWord
	voice_programmable_wave_alt ProgrammableWaveData_86DD750, 0, 3, 0, 2	         
mAlignWord
	voice_square_1 0, 2, 0, 0, 15, 0	         
mAlignWord
	voice_noise 60, 0, 0, 0, 0, 0, 15, 0	         
mAlignWord
	voice_noise 60, 0, 0, 0, 0, 0, 15, 0	         
mAlignWord
	voice_square_1_alt 0, 2, 0, 3, 0, 0	         
mAlignWord
	voice_programmable_wave_alt ProgrammableWaveData_86DD6D0, 0, 0, 15, 0	         
mAlignWord
	voice_programmable_wave_alt ProgrammableWaveData_86DD750, 0, 3, 0, 2	         
mAlignWord
	voice_programmable_wave_alt ProgrammableWaveData_86DD6D0, 0, 0, 15, 0	         
mAlignWord
	voice_square_1_alt 0, 0, 0, 0, 15, 5	         
mAlignWord
	voice_noise 60, 0, 0, 0, 1, 0, 15, 0	         
mAlignWord
	voice_noise 60, 0, 0, 1, 0, 0, 15, 0	         
mAlignWord
	voice_noise 60, 0, 0, 0, 0, 0, 15, 2	         
mAlignWord
	voice_square_1_alt 0, 0, 0, 4, 0, 0	         
mAlignWord
	voice_programmable_wave_alt ProgrammableWaveData_86DD750, 0, 4, 0, 0	         
mAlignWord
	voice_square_2_alt 0, 0, 4, 4, 0	         
mAlignWord
	voice_square_1_alt 0, 1, 0, 3, 0, 0	         
mAlignWord
	voice_square_1_alt 0, 1, 0, 2, 0, 0	         
mAlignWord
	voice_square_1_alt 0, 3, 0, 1, 0, 1	         
mAlignWord
	voice_square_1_alt 0, 2, 0, 2, 2, 2	         
mAlignWord
	voice_square_1_alt 0, 2, 1, 0, 10, 3	         
mAlignWord
	voice_noise 60, 0, 0, 0, 0, 0, 15, 2	         
mAlignWord
	voice_square_1_alt 0, 1, 0, 2, 0, 0	         
mAlignWord
	voice_directsound 60, 0, gUnknown_086DE134, 255, 0, 255, 0	         
mAlignWord
	voice_directsound 60, 0, gUnknown_086DF608, 255, 0, 255, 0	         
mAlignWord
	voice_directsound 60, 0, gUnknown_086E0A1C, 255, 0, 255, 0	         
mAlignWord
	voice_directsound 60, 0, gUnknown_086E134C, 255, 0, 255, 0	         
mAlignWord
	voice_directsound 60, 0, gUnknown_086E1ABC, 255, 0, 255, 127	         
mAlignWord
	voice_directsound 60, 0, gUnknown_086E33B0, 255, 0, 255, 127	         
mAlignWord
	voice_directsound 60, 0, gUnknown_086E64DC, 255, 0, 255, 0	         
mAlignWord
	voice_directsound 60, 0, gUnknown_086E6B24, 255, 235, 38, 165	         
mAlignWord
	voice_directsound 60, 0, gUnknown_086EA218, 255, 0, 255, 127	         
mAlignWord
	voice_directsound 60, 0, gUnknown_086ED1F4, 255, 0, 255, 0	         
mAlignWord
	voice_directsound 60, 0, gUnknown_086F0138, 255, 0, 255, 0	         
mAlignWord
	voice_directsound 60, 0, gUnknown_086F1AC0, 255, 0, 255, 127	         
mAlignWord
	voice_directsound 60, 0, gUnknown_086F1DC0, 255, 0, 255, 127	         
mAlignWord
	voice_noise 60, 0, 0, 0, 3, 0, 15, 4	         
mAlignWord
	voice_square_2_alt 2, 0, 0, 15, 0	         
mAlignWord
	voice_programmable_wave_alt ProgrammableWaveData_86DD720, 0, 0, 15, 0	         
mAlignWord
	voice_square_1_alt 0, 2, 0, 2, 0, 0	         
mAlignWord
	voice_noise 60, 0, 0, 1, 0, 0, 15, 1	         
mAlignWord
	voice_square_1 0, 2, 0, 0, 15, 0	         
mAlignWord
	voice_square_1 0, 2, 0, 0, 15, 0	         
mAlignWord
	voice_directsound 60, 0, gUnknown_086FBBD4, 255, 0, 255, 0	         
mAlignWord
	voice_directsound 60, 0, gUnknown_086FE150, 255, 0, 255, 0	         
mAlignWord
	voice_directsound 60, 0, gUnknown_086FE7E4, 255, 0, 255, 0	         
mAlignWord
	voice_programmable_wave_alt ProgrammableWaveData_86DD750, 0, 3, 0, 2	         
mAlignWord
	voice_noise 60, 0, 0, 1, 1, 0, 12, 2	         
mAlignWord
	voice_square_1 0, 2, 0, 0, 15, 0	         
mAlignWord
	voice_square_1 0, 2, 0, 0, 15, 0	         
mAlignWord
	voice_square_1 0, 2, 0, 0, 15, 0	         
mAlignWord
	voice_square_1 0, 2, 0, 0, 15, 0	         
mAlignWord
	voice_square_1 0, 2, 0, 0, 15, 0	         
mAlignWord
	voice_directsound 60, 0, gUnknown_0876FB20, 255, 0, 255, 0	         
mAlignWord
	voice_directsound 60, 0, gUnknown_08771CC4, 255, 0, 255, 0	         
mAlignWord
	voice_directsound 60, 0, gUnknown_08773848, 255, 0, 255, 0	         
mAlignWord
	voice_directsound 60, 0, gUnknown_08775640, 255, 0, 255, 0	         
mAlignWord
	voice_directsound 60, 0, gUnknown_08775E7C, 255, 0, 255, 0	         
mAlignWord
	voice_directsound 60, 0, gUnknown_08778D48, 255, 0, 255, 0	         
mAlignWord
	voice_directsound_no_resample 60, 0, gUnknown_08779EDC, 255, 0, 255, 0	         
mAlignWord
	voice_directsound_no_resample 60, 0, gUnknown_0870FBC0, 255, 0, 255, 0	         
mAlignWord
	voice_directsound_no_resample 60, 0, gUnknown_0870FFA0, 255, 0, 255, 0	         
mAlignWord
	voice_directsound_no_resample 60, 0, gUnknown_087103F8, 255, 0, 255, 0	         
mAlignWord
	voice_directsound_no_resample 60, 0, gUnknown_08710D74, 255, 0, 255, 0	         
mAlignWord
	voice_directsound_no_resample 60, 0, gUnknown_087111D4, 255, 0, 255, 0	         
mAlignWord
	voice_directsound_no_resample 60, 0, gUnknown_08711640, 255, 0, 255, 0	         
mAlignWord
	voice_directsound_no_resample 60, 0, gUnknown_08711ACC, 255, 0, 255, 0	         
mAlignWord
	voice_directsound_no_resample 60, 0, gUnknown_087123F8, 255, 0, 255, 0	         
mAlignWord
	voice_directsound_no_resample 60, 0, gUnknown_08712950, 255, 0, 255, 0	         
mAlignWord
	voice_directsound_no_resample 60, 0, gUnknown_0877AD00, 255, 0, 255, 0	         
mAlignWord
	voice_directsound_no_resample 60, 0, gUnknown_0877B9A0, 255, 0, 255, 0	         
mAlignWord
	voice_noise 60, 0, 0, 0, 0, 0, 15, 0	         
mAlignWord
	voice_noise 60, 0, 0, 0, 1, 0, 15, 2	         
mAlignWord
	voice_noise 60, 0, 0, 1, 1, 0, 12, 2	         
mAlignWord
	voice_square_1_alt 0, 2, 2, 0, 15, 0	         
mAlignWord
	voice_noise 60, 0, 0, 0, 1, 0, 15, 2	         
mAlignWord
	voice_noise 60, 0, 0, 0, 0, 0, 15, 2	         
mAlignWord
	voice_noise 60, 0, 0, 1, 0, 0, 15, 2	         
mAlignWord
	voice_square_1_alt 0, 2, 3, 0, 10, 3	         
mAlignWord
	voice_square_1_alt 0, 1, 0, 2, 0, 0	         
mAlignWord
	voice_keysplit_all voicegroup001	         
# 7 "sound/sa1/voice_groups.inc"
# 1 "sound/sa1/voicegroups/voicegroup006.inc"
	mAlignWord
	                                                          

	.global voicegroup006
voicegroup006:	            
mAlignWord
	voice_square_1_alt 0, 0, 0, 0, 15, 0	         
mAlignWord
	voice_square_1_alt 0, 1, 0, 0, 15, 0	         
mAlignWord
	voice_square_1_alt 0, 2, 0, 0, 15, 0	         
mAlignWord
	voice_square_1_alt 0, 3, 0, 0, 15, 0	         
mAlignWord
	voice_square_1_alt 0, 2, 2, 0, 15, 0	         
mAlignWord
	voice_square_1 0, 2, 0, 0, 15, 0	         
mAlignWord
	voice_square_1 0, 2, 0, 0, 15, 0	         
mAlignWord
	voice_square_1 0, 2, 0, 0, 15, 0	         
mAlignWord
	voice_square_1 0, 2, 0, 0, 15, 0	         
mAlignWord
	voice_square_1 0, 2, 0, 0, 15, 0	         
mAlignWord
	voice_square_2_alt 0, 0, 0, 15, 0	         
mAlignWord
	voice_square_2_alt 1, 0, 0, 15, 0	         
mAlignWord
	voice_square_2_alt 2, 0, 0, 15, 0	         
mAlignWord
	voice_square_2_alt 3, 0, 0, 15, 0	         
mAlignWord
	voice_square_2_alt 2, 2, 0, 15, 0	         
mAlignWord
	voice_square_1 0, 2, 0, 0, 15, 0	         
mAlignWord
	voice_square_1 0, 2, 0, 0, 15, 0	         
mAlignWord
	voice_square_2_alt 0, 0, 3, 0, 2	         
mAlignWord
	voice_programmable_wave_alt ProgrammableWaveData_86DD730, 0, 3, 4, 0	         
mAlignWord
	voice_square_2_alt 2, 0, 2, 2, 0	         
mAlignWord
	voice_directsound 60, 0, gUnknown_086FF18C, 255, 0, 255, 149	         
mAlignWord
	voice_directsound 60, 0, gUnknown_0877CF24, 255, 0, 255, 149	         
mAlignWord
	voice_square_1_alt 0, 2, 1, 0, 10, 3	         
mAlignWord
	voice_programmable_wave_alt ProgrammableWaveData_86DD730, 0, 3, 7, 0	         
mAlignWord
	voice_square_2_alt 2, 0, 0, 15, 0	         
mAlignWord
	voice_square_1_alt 0, 2, 2, 0, 9, 6	         
mAlignWord
	voice_square_2_alt 2, 0, 6, 0, 6	         
mAlignWord
	voice_square_2_alt 2, 0, 4, 0, 6	         
mAlignWord
	voice_square_2_alt 2, 0, 6, 0, 6	         
mAlignWord
	voice_square_2_alt 2, 0, 4, 13, 6	         
mAlignWord
	voice_square_1_alt 0, 1, 0, 2, 0, 0	         
mAlignWord
	voice_programmable_wave_alt ProgrammableWaveData_86DD740, 0, 0, 15, 0	         
mAlignWord
	voice_programmable_wave_alt ProgrammableWaveData_86DD730, 0, 0, 15, 0	         
mAlignWord
	voice_programmable_wave_alt ProgrammableWaveData_86DD730, 0, 3, 1, 4	         
mAlignWord
	voice_square_2_alt 2, 0, 6, 0, 6	         
mAlignWord
	voice_square_1_alt 0, 1, 0, 6, 0, 6	         
mAlignWord
	voice_programmable_wave_alt ProgrammableWaveData_86DD730, 2, 0, 15, 0	         
mAlignWord
	voice_programmable_wave_alt ProgrammableWaveData_86DD730, 0, 3, 1, 2	         
mAlignWord
	voice_square_2_alt 2, 0, 0, 15, 0	         
mAlignWord
	voice_square_2_alt 2, 0, 6, 0, 6	         
mAlignWord
	voice_square_1_alt 0, 1, 0, 6, 0, 6	         
mAlignWord
	voice_square_1_alt 0, 2, 0, 6, 0, 6	         
mAlignWord
	voice_programmable_wave_alt ProgrammableWaveData_86DD730, 0, 0, 15, 0	         
mAlignWord
	voice_square_2_alt 2, 0, 6, 0, 6	         
mAlignWord
	voice_square_1_alt 0, 2, 1, 0, 10, 3	         
mAlignWord
	voice_square_2_alt 2, 0, 6, 0, 6	         
mAlignWord
	voice_programmable_wave_alt ProgrammableWaveData_86DD730, 0, 3, 1, 4	         
mAlignWord
	voice_square_1_alt 0, 2, 0, 6, 0, 6	         
mAlignWord
	voice_programmable_wave_alt ProgrammableWaveData_86DD740, 0, 6, 0, 6	         
mAlignWord
	voice_square_1_alt 0, 2, 1, 0, 10, 3	         
mAlignWord
	voice_square_2_alt 1, 0, 0, 15, 0	         
mAlignWord
	voice_programmable_wave_alt ProgrammableWaveData_86DD730, 0, 3, 1, 4	         
mAlignWord
	voice_square_1_alt 0, 2, 1, 0, 10, 3	         
mAlignWord
	voice_square_2_alt 2, 0, 6, 0, 6	         
mAlignWord
	voice_programmable_wave_alt ProgrammableWaveData_86DD730, 0, 3, 1, 3	         
mAlignWord
	voice_square_2_alt 2, 0, 0, 15, 0	         
mAlignWord
	voice_square_1_alt 0, 1, 2, 0, 10, 3	         
mAlignWord
	voice_noise 60, 0, 0, 0, 1, 0, 15, 0	         
mAlignWord
	voice_noise 60, 0, 0, 1, 0, 0, 15, 0	         
mAlignWord
	voice_noise 60, 0, 0, 0, 0, 0, 15, 2	         
mAlignWord
	voice_directsound 60, 0, gUnknown_0877F2A4, 255, 0, 255, 0	         
mAlignWord
	voice_directsound 60, 0, gUnknown_0878306C, 255, 0, 255, 0	         
mAlignWord
	voice_directsound 60, 0, gUnknown_08789214, 255, 0, 255, 0	         
mAlignWord
	voice_directsound 60, 0, gUnknown_0878D964, 255, 0, 255, 0	         
mAlignWord
	voice_directsound 60, 0, gUnknown_0878FAAC, 255, 0, 255, 0	         
mAlignWord
	voice_directsound 60, 0, gUnknown_0877F2A4, 255, 0, 255, 0	         
mAlignWord
	voice_directsound 60, 0, gUnknown_0878306C, 255, 0, 255, 0	         
mAlignWord
	voice_directsound 60, 0, gUnknown_08789214, 255, 250, 18, 250	         
mAlignWord
	voice_directsound 60, 0, gUnknown_0878D964, 255, 250, 18, 250	         
mAlignWord
	voice_directsound 60, 0, gUnknown_0878FAAC, 255, 250, 18, 250	         
mAlignWord
	voice_directsound 60, 0, gUnknown_086DE134, 255, 0, 255, 0	         
mAlignWord
	voice_directsound 60, 0, gUnknown_086DF608, 255, 0, 255, 0	         
mAlignWord
	voice_directsound 60, 0, gUnknown_086E0A1C, 255, 0, 255, 0	         
mAlignWord
	voice_directsound 60, 0, gUnknown_086E134C, 255, 0, 255, 0	         
mAlignWord
	voice_directsound 60, 0, gUnknown_086E1ABC, 255, 0, 255, 127	         
mAlignWord
	voice_directsound 60, 0, gUnknown_086E33B0, 255, 0, 255, 127	         
mAlignWord
	voice_directsound 60, 0, gUnknown_086E64DC, 255, 0, 255, 0	         
mAlignWord
	voice_directsound 60, 0, gUnknown_086E6B24, 255, 235, 38, 165	         
mAlignWord
	voice_directsound 60, 0, gUnknown_086EA218, 255, 0, 255, 127	         
mAlignWord
	voice_directsound 60, 0, gUnknown_086ED1F4, 255, 0, 255, 0	         
mAlignWord
	voice_directsound 60, 0, gUnknown_086F0138, 255, 0, 255, 0	         
mAlignWord
	voice_directsound 60, 0, gUnknown_086F1AC0, 255, 0, 255, 127	         
mAlignWord
	voice_directsound 60, 0, gUnknown_086F1DC0, 255, 0, 255, 127	         
mAlignWord
	voice_square_1 0, 2, 0, 0, 15, 0	         
mAlignWord
	voice_square_1 0, 2, 0, 0, 15, 0	         
mAlignWord
	voice_square_1 0, 2, 0, 0, 15, 0	         
mAlignWord
	voice_square_1 0, 2, 0, 0, 15, 0	         
mAlignWord
	voice_noise 60, 0, 0, 1, 0, 0, 15, 1	         
mAlignWord
	voice_square_1 0, 2, 0, 0, 15, 0	         
mAlignWord
	voice_square_1 0, 2, 0, 0, 15, 0	         
mAlignWord
	voice_directsound 60, 0, gUnknown_086FBBD4, 255, 0, 255, 0	         
mAlignWord
	voice_directsound 60, 0, gUnknown_086FE150, 255, 0, 255, 0	         
mAlignWord
	voice_directsound 60, 0, gUnknown_086FE7E4, 255, 0, 255, 0	         
mAlignWord
	voice_square_1 0, 2, 0, 0, 15, 0	         
mAlignWord
	voice_square_1 0, 2, 0, 0, 15, 0	         
mAlignWord
	voice_square_1 0, 2, 0, 0, 15, 0	         
mAlignWord
	voice_square_1 0, 2, 0, 0, 15, 0	         
mAlignWord
	voice_square_1 0, 2, 0, 0, 15, 0	         
mAlignWord
	voice_square_1 0, 2, 0, 0, 15, 0	         
mAlignWord
	voice_square_1 0, 2, 0, 0, 15, 0	         
mAlignWord
	voice_square_1 0, 2, 0, 0, 15, 0	         
mAlignWord
	voice_square_1 0, 2, 0, 0, 15, 0	         
mAlignWord
	voice_square_1 0, 2, 0, 0, 15, 0	         
mAlignWord
	voice_square_1 0, 2, 0, 0, 15, 0	         
mAlignWord
	voice_square_1 0, 2, 0, 0, 15, 0	         
mAlignWord
	voice_square_1 0, 2, 0, 0, 15, 0	         
mAlignWord
	voice_square_1 0, 2, 0, 0, 15, 0	         
mAlignWord
	voice_directsound_no_resample 60, 0, gUnknown_0870FBC0, 255, 0, 255, 0	         
mAlignWord
	voice_directsound_no_resample 60, 0, gUnknown_0870FFA0, 255, 0, 255, 0	         
mAlignWord
	voice_directsound_no_resample 60, 0, gUnknown_087103F8, 255, 0, 255, 0	         
mAlignWord
	voice_directsound_no_resample 60, 0, gUnknown_08710D74, 255, 0, 255, 0	         
mAlignWord
	voice_directsound_no_resample 60, 0, gUnknown_087111D4, 255, 0, 255, 0	         
mAlignWord
	voice_directsound_no_resample 60, 0, gUnknown_08711640, 255, 0, 255, 0	         
mAlignWord
	voice_directsound_no_resample 60, 0, gUnknown_08711ACC, 255, 0, 255, 0	         
mAlignWord
	voice_directsound_no_resample 60, 0, gUnknown_087123F8, 255, 0, 255, 0	         
mAlignWord
	voice_directsound_no_resample 60, 0, gUnknown_08712950, 255, 0, 255, 0	         
mAlignWord
	voice_directsound_no_resample 60, 0, gUnknown_0877AD00, 255, 0, 255, 0	         
mAlignWord
	voice_directsound_no_resample 60, 0, gUnknown_0877B9A0, 255, 0, 255, 0	         
mAlignWord
	voice_noise 60, 0, 0, 0, 0, 0, 15, 0	         
mAlignWord
	voice_noise 60, 0, 0, 0, 1, 0, 15, 2	         
mAlignWord
	voice_noise 60, 0, 0, 1, 1, 0, 12, 2	         
mAlignWord
	voice_square_1_alt 0, 2, 2, 0, 15, 0	         
mAlignWord
	voice_noise 60, 0, 0, 0, 1, 0, 15, 2	         
mAlignWord
	voice_noise 60, 0, 0, 0, 0, 0, 15, 2	         
mAlignWord
	voice_noise 60, 0, 0, 1, 0, 0, 15, 2	         
mAlignWord
	voice_square_1_alt 0, 2, 3, 0, 10, 3	         
mAlignWord
	voice_square_1_alt 0, 1, 0, 2, 0, 0	         
mAlignWord
	voice_keysplit_all voicegroup001	         
# 8 "sound/sa1/voice_groups.inc"
# 1 "sound/sa1/voicegroups/voicegroup007.inc"
	mAlignWord
	                                                          

	.global voicegroup007
voicegroup007:	            
mAlignWord
	voice_square_1_alt 0, 2, 0, 3, 1, 3	         
mAlignWord
	voice_square_2_alt 2, 0, 0, 15, 0	         
mAlignWord
	voice_programmable_wave_alt ProgrammableWaveData_86DD730, 0, 3, 3, 0	         
mAlignWord
	voice_square_2_alt 2, 0, 6, 0, 6	         
mAlignWord
	voice_square_1_alt 0, 2, 0, 0, 15, 0	         
mAlignWord
	voice_programmable_wave_alt ProgrammableWaveData_86DD730, 0, 3, 4, 0	         
mAlignWord
	voice_square_2_alt 0, 0, 0, 15, 0	         
mAlignWord
	voice_square_1_alt 0, 2, 1, 0, 10, 3	         
mAlignWord
	voice_square_2_alt 2, 0, 0, 15, 0	         
mAlignWord
	voice_programmable_wave_alt ProgrammableWaveData_86DD730, 0, 3, 7, 0	         
mAlignWord
	voice_square_1_alt 0, 2, 0, 0, 15, 0	         
mAlignWord
	voice_square_1_alt 0, 2, 0, 3, 4, 0	         
mAlignWord
	voice_square_2_alt 2, 0, 0, 15, 0	         
mAlignWord
	voice_programmable_wave_alt ProgrammableWaveData_86DD730, 0, 3, 7, 0	         
mAlignWord
	voice_programmable_wave_alt ProgrammableWaveData_86DD730, 0, 3, 3, 0	         
mAlignWord
	voice_square_1_alt 0, 2, 1, 0, 10, 3	         
mAlignWord
	voice_square_2_alt 2, 0, 0, 15, 0	         
mAlignWord
	voice_square_2_alt 2, 0, 3, 1, 2	         
mAlignWord
	voice_square_1_alt 0, 2, 1, 0, 10, 3	         
mAlignWord
	voice_programmable_wave_alt ProgrammableWaveData_86DD730, 0, 3, 7, 0	         
mAlignWord
	voice_directsound 60, 0, gUnknown_086FF18C, 255, 0, 255, 149	         
mAlignWord
	voice_directsound 60, 0, gUnknown_0877CF24, 255, 0, 255, 149	         
mAlignWord
	voice_square_1_alt 0, 2, 1, 0, 10, 3	         
mAlignWord
	voice_square_2_alt 0, 0, 0, 15, 0	         
mAlignWord
	voice_programmable_wave_alt ProgrammableWaveData_86DD730, 0, 3, 1, 3	         
mAlignWord
	voice_square_1_alt 0, 2, 2, 0, 9, 6	         
mAlignWord
	voice_square_2_alt 2, 0, 6, 0, 6	         
mAlignWord
	voice_square_2_alt 2, 0, 4, 0, 6	         
mAlignWord
	voice_square_2_alt 2, 0, 6, 0, 6	         
mAlignWord
	voice_square_2_alt 2, 0, 4, 13, 6	         
mAlignWord
	voice_square_1_alt 0, 1, 0, 2, 0, 0	         
mAlignWord
	voice_programmable_wave_alt ProgrammableWaveData_86DD740, 0, 0, 15, 0	         
mAlignWord
	voice_programmable_wave_alt ProgrammableWaveData_86DD730, 0, 0, 15, 0	         
mAlignWord
	voice_programmable_wave_alt ProgrammableWaveData_86DD730, 0, 3, 1, 4	         
mAlignWord
	voice_square_1_alt 0, 2, 0, 6, 0, 6	         
mAlignWord
	voice_square_2_alt 1, 0, 6, 0, 6	         
mAlignWord
	voice_programmable_wave_alt ProgrammableWaveData_86DD730, 2, 0, 15, 0	         
mAlignWord
	voice_programmable_wave_alt ProgrammableWaveData_86DD730, 0, 3, 1, 2	         
mAlignWord
	voice_square_2_alt 2, 0, 0, 15, 0	         
mAlignWord
	voice_square_2_alt 2, 0, 6, 0, 6	         
mAlignWord
	voice_square_1_alt 0, 1, 0, 6, 0, 6	         
mAlignWord
	voice_square_1_alt 0, 2, 0, 6, 0, 6	         
mAlignWord
	voice_programmable_wave_alt ProgrammableWaveData_86DD730, 0, 0, 15, 0	         
mAlignWord
	voice_square_2_alt 2, 0, 6, 0, 6	         
mAlignWord
	voice_square_1_alt 0, 2, 1, 0, 10, 3	         
mAlignWord
	voice_square_2_alt 2, 0, 6, 0, 6	         
mAlignWord
	voice_programmable_wave_alt ProgrammableWaveData_86DD730, 0, 3, 1, 4	         
mAlignWord
	voice_square_1_alt 0, 2, 0, 6, 0, 6	         
mAlignWord
	voice_programmable_wave_alt ProgrammableWaveData_86DD740, 0, 6, 0, 6	         
mAlignWord
	voice_square_1_alt 0, 2, 1, 0, 10, 3	         
mAlignWord
	voice_square_2_alt 1, 0, 0, 15, 0	         
mAlignWord
	voice_programmable_wave_alt ProgrammableWaveData_86DD730, 0, 3, 1, 4	         
mAlignWord
	voice_square_1_alt 0, 2, 1, 0, 10, 3	         
mAlignWord
	voice_square_2_alt 2, 0, 6, 0, 6	         
mAlignWord
	voice_programmable_wave_alt ProgrammableWaveData_86DD730, 0, 3, 1, 3	         
mAlignWord
	voice_square_2_alt 2, 0, 0, 15, 0	         
mAlignWord
	voice_square_1_alt 0, 1, 2, 0, 10, 3	         
mAlignWord
	voice_noise 60, 0, 0, 0, 1, 0, 15, 0	         
mAlignWord
	voice_noise 60, 0, 0, 1, 0, 0, 15, 0	         
mAlignWord
	voice_directsound 60, 0, gUnknown_08797224, 255, 0, 128, 235	         
mAlignWord
	voice_directsound 60, 0, gUnknown_0877F2A4, 255, 0, 255, 0	         
mAlignWord
	voice_directsound 60, 0, gUnknown_0878306C, 255, 0, 255, 0	         
mAlignWord
	voice_directsound 60, 0, gUnknown_08789214, 255, 0, 255, 0	         
mAlignWord
	voice_directsound 60, 0, gUnknown_0878D964, 255, 0, 255, 0	         
mAlignWord
	voice_directsound 60, 0, gUnknown_0878FAAC, 255, 0, 255, 0	         
mAlignWord
	voice_directsound 60, 0, gUnknown_0877F2A4, 255, 0, 255, 0	         
mAlignWord
	voice_directsound 60, 0, gUnknown_0878306C, 255, 0, 255, 0	         
mAlignWord
	voice_directsound 60, 0, gUnknown_08789214, 255, 250, 18, 250	         
mAlignWord
	voice_directsound 60, 0, gUnknown_0878D964, 255, 250, 18, 250	         
mAlignWord
	voice_directsound 60, 0, gUnknown_0878FAAC, 255, 250, 18, 250	         
mAlignWord
	voice_directsound 60, 0, gUnknown_086DE134, 255, 0, 255, 0	         
mAlignWord
	voice_directsound 60, 0, gUnknown_086DF608, 255, 0, 255, 0	         
mAlignWord
	voice_directsound 60, 0, gUnknown_086E0A1C, 255, 0, 255, 0	         
mAlignWord
	voice_directsound 60, 0, gUnknown_086E134C, 255, 0, 255, 0	         
mAlignWord
	voice_directsound 60, 0, gUnknown_086E1ABC, 255, 0, 255, 127	         
mAlignWord
	voice_directsound 60, 0, gUnknown_086E33B0, 255, 0, 255, 127	         
mAlignWord
	voice_directsound 60, 0, gUnknown_086E64DC, 255, 0, 255, 0	         
mAlignWord
	voice_directsound 60, 0, gUnknown_086E6B24, 255, 235, 38, 165	         
mAlignWord
	voice_directsound 60, 0, gUnknown_086EA218, 255, 0, 255, 127	         
mAlignWord
	voice_directsound 60, 0, gUnknown_086ED1F4, 255, 0, 255, 0	         
mAlignWord
	voice_directsound 60, 0, gUnknown_086F0138, 255, 0, 255, 0	         
mAlignWord
	voice_directsound 60, 0, gUnknown_086F1AC0, 255, 0, 255, 127	         
mAlignWord
	voice_directsound 60, 0, gUnknown_086F1DC0, 255, 0, 255, 127	         
mAlignWord
	voice_programmable_wave_alt ProgrammableWaveData_86DD730, 0, 3, 1, 3	         
mAlignWord
	voice_square_2_alt 2, 0, 4, 10, 0	         
mAlignWord
	voice_square_1_alt 0, 2, 1, 0, 10, 3	         
mAlignWord
	voice_square_1 0, 2, 0, 0, 15, 0	         
mAlignWord
	voice_noise 60, 0, 0, 1, 0, 0, 15, 1	         
mAlignWord
	voice_square_1_alt 0, 2, 0, 6, 0, 2	         
mAlignWord
	voice_square_1 0, 2, 0, 0, 15, 0	         
mAlignWord
	voice_directsound 60, 0, gUnknown_086FBBD4, 255, 0, 255, 0	         
mAlignWord
	voice_directsound 60, 0, gUnknown_086FE150, 255, 0, 255, 0	         
mAlignWord
	voice_directsound 60, 0, gUnknown_086FE7E4, 255, 0, 255, 0	         
mAlignWord
	voice_programmable_wave_alt ProgrammableWaveData_86DD730, 0, 3, 7, 2	         
mAlignWord
	voice_square_1_alt 0, 2, 1, 0, 10, 2	         
mAlignWord
	voice_square_2_alt 2, 0, 6, 0, 2	         
mAlignWord
	voice_programmable_wave_alt ProgrammableWaveData_86DD730, 0, 2, 9, 2	         
mAlignWord
	voice_square_2_alt 2, 1, 0, 10, 3	         
mAlignWord
	voice_square_1_alt 0, 2, 0, 4, 10, 0	         
mAlignWord
	voice_square_2_alt 3, 1, 6, 0, 0	         
mAlignWord
	voice_square_2_alt 2, 0, 0, 15, 0	         
mAlignWord
	voice_square_1_alt 0, 2, 0, 4, 0, 4	         
mAlignWord
	voice_programmable_wave_alt ProgrammableWaveData_86DD730, 0, 2, 9, 2	         
mAlignWord
	voice_programmable_wave_alt ProgrammableWaveData_86DD730, 1, 2, 9, 2	         
mAlignWord
	voice_square_1_alt 0, 2, 0, 0, 15, 0	         
mAlignWord
	voice_square_2_alt 2, 0, 0, 15, 0	         
mAlignWord
	voice_square_1_alt 0, 2, 0, 4, 0, 4	         
mAlignWord
	voice_programmable_wave_alt ProgrammableWaveData_86DD730, 0, 2, 9, 2	         
mAlignWord
	voice_square_2_alt 2, 0, 4, 0, 4	         
mAlignWord
	voice_square_1_alt 0, 2, 0, 4, 0, 4	         
mAlignWord
	voice_square_2_alt 2, 0, 0, 15, 0	         
mAlignWord
	voice_square_1_alt 0, 2, 0, 4, 0, 4	         
mAlignWord
	voice_programmable_wave_alt ProgrammableWaveData_86DD730, 0, 2, 9, 2	         
mAlignWord
	voice_square_2_alt 2, 1, 3, 3, 5	         
mAlignWord
	voice_square_1_alt 0, 2, 1, 3, 3, 5	         
mAlignWord
	voice_square_2_alt 2, 0, 0, 15, 0	         
mAlignWord
	voice_square_1 0, 2, 0, 0, 15, 0	         
mAlignWord
	voice_square_1 0, 2, 0, 0, 15, 0	         
mAlignWord
	voice_square_1 0, 2, 0, 0, 15, 0	         
mAlignWord
	voice_square_1 0, 2, 0, 0, 15, 0	         
mAlignWord
	voice_square_1_alt 0, 2, 0, 4, 0, 4	         
mAlignWord
	voice_programmable_wave_alt ProgrammableWaveData_86DD730, 0, 2, 9, 2	         
mAlignWord
	voice_programmable_wave_alt ProgrammableWaveData_86DD730, 0, 3, 7, 2	         
mAlignWord
	voice_square_2_alt 2, 0, 6, 0, 2	         
mAlignWord
	voice_square_1_alt 0, 2, 1, 0, 10, 2	         
mAlignWord
    voice_square_2_alt 2, 0, 6, 0, 6             
mAlignWord
    voice_square_1_alt 0, 1, 0, 0, 15, 0             
mAlignWord
    voice_keysplit_all voicegroup001
# 9 "sound/sa1/voice_groups.inc"
# 10 "/home/awaszczak/git/sa2/sa1/data/sa1/sound_data.s"
# 1 "sound/sa1/keysplit_tables.inc"
            
                                                                 
                                                                            
                                                                                
                                                                                       
                                                                         
                                               
 
                                                                            
                                                                            
                                                                           
                               

    mAlignWord
	                                                        

#if (defined(__aarch64__) || defined(__x86_64__))
.set MP2KVoiceGroup_size, 0x18
#else
.set MP2KVoiceGroup_size, 0xC
#endif

	.global KeySplitTable1
.set KeySplitTable1, . - (3 * MP2KVoiceGroup_size)	            
	.byte	25
	.byte	26
	.byte	27
	.byte	28
	.byte	29
	.byte	0
	.byte	0
	.byte	30
	.byte	31
	.byte	32
	.byte	33
	.byte	34
	.byte	35
	.byte	36
	.byte	37
	.byte	38
	.byte	39
	.byte	40
	.byte	41
	.byte	42
	.byte	43
	.byte	44
	.byte	45
	.byte	46
	.byte	47
	.byte	56
	.byte	57
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	48
	.byte	49
	.byte	50
	.byte	51
	.byte	52
	.byte	53
	.byte	54
	.byte	55
	.byte	58
	.byte	59
	.byte	60
	.byte	0
	.byte	61
	.byte	62
	.byte	63
	.byte	64
	.byte	65
	.byte	0
	.byte	75
	.byte	76
	.byte	77
	.byte	78
	.byte	79
	.byte	80
	.byte	81
	.byte	82
	.byte	83
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
# 11 "/home/awaszczak/git/sa2/sa1/data/sa1/sound_data.s"
# 1 "sound/sa1/programmable_wave_data.inc"
	mAlignWord
    mAlignData
	.global ProgrammableWaveData_86DD6D0
ProgrammableWaveData_86DD6D0:
	.incbin "sound/sa1/programmable_wave_samples/086DD6D0.pcm"

	mAlignWord
    mAlignData
	.global ProgrammableWaveData_86DD6E0
ProgrammableWaveData_86DD6E0:
	.incbin "sound/sa1/programmable_wave_samples/086DD6E0.pcm"

	mAlignWord
    mAlignData
	.global ProgrammableWaveData_86DD6F0
ProgrammableWaveData_86DD6F0:
	.incbin "sound/sa1/programmable_wave_samples/086DD6F0.pcm"

	mAlignWord
    mAlignData
	.global ProgrammableWaveData_86DD700
ProgrammableWaveData_86DD700:
	.incbin "sound/sa1/programmable_wave_samples/086DD700.pcm"

	mAlignWord
    mAlignData
	.global ProgrammableWaveData_86DD710
ProgrammableWaveData_86DD710:
	.incbin "sound/sa1/programmable_wave_samples/086DD710.pcm"

	mAlignWord
    mAlignData
	.global ProgrammableWaveData_86DD720
ProgrammableWaveData_86DD720:
	.incbin "sound/sa1/programmable_wave_samples/086DD720.pcm"

	mAlignWord
    mAlignData
	.global ProgrammableWaveData_86DD730
ProgrammableWaveData_86DD730:
	.incbin "sound/sa1/programmable_wave_samples/086DD730.pcm"

	mAlignWord
    mAlignData
	.global ProgrammableWaveData_86DD740
ProgrammableWaveData_86DD740:
	.incbin "sound/sa1/programmable_wave_samples/086DD740.pcm"

	mAlignWord
    mAlignData
	.global ProgrammableWaveData_86DD750
ProgrammableWaveData_86DD750:
	.incbin "sound/sa1/programmable_wave_samples/086DD750.pcm"
# 12 "/home/awaszczak/git/sa2/sa1/data/sa1/sound_data.s"
# 1 "sound/sa1/music_player_table.inc"
.equiv NUM_TRACKS_BGM, 16
.equiv NUM_TRACKS_SE1, 16
.equiv NUM_TRACKS_SE2, 16
.equiv NUM_TRACKS_SE3, 16

	mSectionRodata

	mAlignWord
	.global C_DECL(gMPlayTable)
C_DECL(gMPlayTable):
	music_player C_DECL(gMPlayInfo_BGM), C_DECL(gMPlayTrack_BGM), NUM_TRACKS_BGM, 0
mAlignWord
	music_player C_DECL(gMPlayInfo_SE1), C_DECL(gMPlayTrack_SE1), NUM_TRACKS_SE1, 0
mAlignWord
	music_player C_DECL(gMPlayInfo_SE2), C_DECL(gMPlayTrack_SE2), NUM_TRACKS_SE2, 0
mAlignWord
	music_player C_DECL(gMPlayInfo_SE3), C_DECL(gMPlayTrack_SE3), NUM_TRACKS_SE3, 0
# 13 "/home/awaszczak/git/sa2/sa1/data/sa1/sound_data.s"
# 1 "sound/sa1/song_table.inc"
    mAlignWord
	.global C_DECL(gSongTable)
C_DECL(gSongTable):	            
	song C_DECL(dummy_song_header), 0, 0
mAlignWord
	song C_DECL(song001), 0, 0
mAlignWord
	song C_DECL(song002), 0, 0
mAlignWord
	song C_DECL(song003), 0, 0
mAlignWord
	song C_DECL(song004), 0, 0
mAlignWord
	song C_DECL(song005), 0, 0
mAlignWord
	song C_DECL(song006), 0, 0
mAlignWord
	song C_DECL(song007), 0, 0
mAlignWord
	song C_DECL(song008), 0, 0
mAlignWord
	song C_DECL(song009), 0, 0
mAlignWord
	song C_DECL(song010), 0, 0
mAlignWord
	song C_DECL(song011), 0, 0
mAlignWord
	song C_DECL(song012), 0, 0
mAlignWord
	song C_DECL(song013), 0, 0
mAlignWord
	song C_DECL(song014), 0, 0
mAlignWord
	song C_DECL(song015), 0, 0
mAlignWord
	song C_DECL(song016), 0, 0
mAlignWord
	song C_DECL(song017), 0, 0
mAlignWord
	song C_DECL(song018), 0, 0
mAlignWord
	song C_DECL(song019), 0, 0
mAlignWord
	song C_DECL(song020), 0, 0
mAlignWord
	song C_DECL(song021), 0, 0
mAlignWord
	song C_DECL(song022), 0, 0
mAlignWord
	song C_DECL(song023), 0, 0
mAlignWord
	song C_DECL(song024), 0, 0
mAlignWord
	song C_DECL(song025), 0, 0
mAlignWord
	song C_DECL(song026), 0, 0
mAlignWord
	song C_DECL(song027), 0, 0
mAlignWord
	song C_DECL(song028), 0, 0
mAlignWord
	song C_DECL(song029), 0, 0
mAlignWord
	song C_DECL(song030), 0, 0
mAlignWord
	song C_DECL(song031), 0, 0
mAlignWord
	song C_DECL(song032), 0, 0
mAlignWord
	song C_DECL(song033), 0, 0
mAlignWord
	song C_DECL(song034), 0, 0
mAlignWord
	song C_DECL(song035), 0, 0
mAlignWord
	song C_DECL(song036), 0, 0
mAlignWord
	song C_DECL(song037), 0, 0
mAlignWord
	song C_DECL(song038), 1, 1
mAlignWord
	song C_DECL(song039), 1, 1
mAlignWord
	song C_DECL(song040), 1, 1
mAlignWord
	song C_DECL(song041), 0, 0
mAlignWord
	song C_DECL(song042), 0, 0
mAlignWord
	song C_DECL(mus_sp_stage_trick), 0, 0
mAlignWord
	song C_DECL(song044), 0, 0
mAlignWord
	song C_DECL(song045), 0, 0
mAlignWord
	song C_DECL(song046), 0, 0
mAlignWord
	song C_DECL(song047), 0, 0
mAlignWord
	song C_DECL(song048), 0, 0
mAlignWord
	song C_DECL(song049), 0, 0
mAlignWord
	song C_DECL(song050), 0, 0
mAlignWord
	song C_DECL(song051), 0, 0
mAlignWord
	song C_DECL(song052), 0, 0
mAlignWord
	song C_DECL(song053), 0, 0
mAlignWord
	song C_DECL(song054), 0, 0
mAlignWord
	song C_DECL(dummy_song_header), 0, 0
mAlignWord
	song C_DECL(dummy_song_header), 0, 0
mAlignWord
	song C_DECL(dummy_song_header), 0, 0
mAlignWord
	song C_DECL(dummy_song_header), 0, 0
mAlignWord
	song C_DECL(dummy_song_header), 0, 0
mAlignWord
	song C_DECL(dummy_song_header), 0, 0
mAlignWord
	song C_DECL(dummy_song_header), 0, 0
mAlignWord
	song C_DECL(dummy_song_header), 0, 0
mAlignWord
	song C_DECL(dummy_song_header), 0, 0
mAlignWord
	song C_DECL(dummy_song_header), 0, 0
mAlignWord
	song C_DECL(dummy_song_header), 0, 0
mAlignWord
	song C_DECL(dummy_song_header), 0, 0
mAlignWord
	song C_DECL(dummy_song_header), 0, 0
mAlignWord
	song C_DECL(dummy_song_header), 0, 0
mAlignWord
	song C_DECL(dummy_song_header), 0, 0
mAlignWord
	song C_DECL(dummy_song_header), 0, 0
mAlignWord
	song C_DECL(dummy_song_header), 0, 0
mAlignWord
	song C_DECL(dummy_song_header), 0, 0
mAlignWord
	song C_DECL(dummy_song_header), 0, 0
mAlignWord
	song C_DECL(dummy_song_header), 0, 0
mAlignWord
	song C_DECL(dummy_song_header), 0, 0
mAlignWord
	song C_DECL(dummy_song_header), 0, 0
mAlignWord
	song C_DECL(dummy_song_header), 0, 0
mAlignWord
	song C_DECL(dummy_song_header), 0, 0
mAlignWord
	song C_DECL(dummy_song_header), 0, 0
mAlignWord
	song C_DECL(dummy_song_header), 0, 0
mAlignWord
	song C_DECL(dummy_song_header), 0, 0
mAlignWord
	song C_DECL(dummy_song_header), 0, 0
mAlignWord
	song C_DECL(dummy_song_header), 0, 0
mAlignWord
	song C_DECL(dummy_song_header), 0, 0
mAlignWord
	song C_DECL(dummy_song_header), 0, 0
mAlignWord
	song C_DECL(dummy_song_header), 0, 0
mAlignWord
	song C_DECL(dummy_song_header), 0, 0
mAlignWord
	song C_DECL(dummy_song_header), 0, 0
mAlignWord
	song C_DECL(dummy_song_header), 0, 0
mAlignWord
	song C_DECL(dummy_song_header), 0, 0
mAlignWord
	song C_DECL(dummy_song_header), 0, 0
mAlignWord
	song C_DECL(dummy_song_header), 0, 0
mAlignWord
	song C_DECL(dummy_song_header), 0, 0
mAlignWord
	song C_DECL(dummy_song_header), 0, 0
mAlignWord
	song C_DECL(dummy_song_header), 0, 0
mAlignWord
	song C_DECL(dummy_song_header), 0, 0
mAlignWord
	song C_DECL(dummy_song_header), 0, 0
mAlignWord
	song C_DECL(dummy_song_header), 0, 0
mAlignWord
	song C_DECL(dummy_song_header), 0, 0
mAlignWord
	song C_DECL(dummy_song_header), 0, 0
mAlignWord
	song C_DECL(dummy_song_header), 0, 0
mAlignWord
	song C_DECL(song102), 3, 3
mAlignWord
	song C_DECL(song103), 3, 3
mAlignWord
	song C_DECL(song104), 3, 3
mAlignWord
	song C_DECL(song105), 3, 3
mAlignWord
	song C_DECL(song106), 2, 2
mAlignWord
	song C_DECL(song107), 2, 2
mAlignWord
	song C_DECL(song108), 2, 2
mAlignWord
	song C_DECL(song109), 3, 3
mAlignWord
	song C_DECL(song110), 2, 2
mAlignWord
	song C_DECL(song111), 3, 3
mAlignWord
	song C_DECL(song112), 3, 3
mAlignWord
	song C_DECL(song113), 2, 2
mAlignWord
	song C_DECL(song114), 2, 2
mAlignWord
	song C_DECL(song115), 2, 2
mAlignWord
	song C_DECL(song116), 2, 2
mAlignWord
	song C_DECL(se_ring_copy), 3, 3
mAlignWord
	song C_DECL(song118), 3, 3
mAlignWord
	song C_DECL(song119), 2, 2
mAlignWord
	song C_DECL(song120), 3, 3
mAlignWord
	song C_DECL(song121), 3, 3
mAlignWord
	song C_DECL(song122), 3, 3
mAlignWord
	song C_DECL(song123), 3, 3
mAlignWord
	song C_DECL(song124), 3, 3
mAlignWord
	song C_DECL(song125), 3, 3
mAlignWord
	song C_DECL(song126), 3, 3
mAlignWord
	song C_DECL(song127), 3, 3
mAlignWord
	song C_DECL(song128), 3, 3
mAlignWord
	song C_DECL(song129), 3, 3
mAlignWord
	song C_DECL(song130), 3, 3
mAlignWord
	song C_DECL(song131), 3, 3
mAlignWord
	song C_DECL(song132), 3, 3
mAlignWord
	song C_DECL(song133), 3, 3
mAlignWord
	song C_DECL(song134), 3, 3
mAlignWord
	song C_DECL(song135), 3, 3
mAlignWord
	song C_DECL(song136), 3, 3
mAlignWord
	song C_DECL(song137), 3, 3
mAlignWord
	song C_DECL(song138), 2, 2
mAlignWord
	song C_DECL(song139), 2, 2
mAlignWord
	song C_DECL(song140), 2, 2
mAlignWord
	song C_DECL(song141), 3, 3
mAlignWord
	song C_DECL(song142), 3, 3
mAlignWord
	song C_DECL(song143), 1, 1
mAlignWord
	song C_DECL(song144), 3, 3
mAlignWord
	song C_DECL(song145), 3, 3
mAlignWord
	song C_DECL(song146), 3, 3
mAlignWord
	song C_DECL(song147), 3, 3
mAlignWord
	song C_DECL(song148), 3, 3
mAlignWord
	song C_DECL(song149), 3, 3
mAlignWord
	song C_DECL(song150), 3, 3
mAlignWord
	song C_DECL(song151), 3, 3
mAlignWord
	song C_DECL(song152), 3, 3
mAlignWord
	song C_DECL(song153), 3, 3
mAlignWord
	song C_DECL(song154), 3, 3
mAlignWord
	song C_DECL(song155), 3, 3
mAlignWord
	song C_DECL(song156), 3, 3
mAlignWord
	song C_DECL(song157), 3, 3
mAlignWord
	song C_DECL(song158), 3, 3
mAlignWord
	song C_DECL(song159), 3, 3
mAlignWord
	song C_DECL(song160), 3, 3
mAlignWord
	song C_DECL(song161), 3, 3
mAlignWord
	song C_DECL(song162), 3, 3
mAlignWord
	song C_DECL(song163), 3, 3
mAlignWord
	song C_DECL(song164), 3, 3
mAlignWord
	song C_DECL(dummy_song_header), 0, 0
mAlignWord
	song C_DECL(song166), 3, 3
mAlignWord
	song C_DECL(song167), 2, 2
mAlignWord
	song C_DECL(song168), 2, 2
mAlignWord
	song C_DECL(song169), 2, 2
mAlignWord
	song C_DECL(song170), 2, 2
mAlignWord
	song C_DECL(song171), 2, 2
mAlignWord
	song C_DECL(song172), 2, 2
mAlignWord
	song C_DECL(song173), 2, 2
mAlignWord
	song C_DECL(song174), 2, 2
mAlignWord
	song C_DECL(song175), 2, 2
mAlignWord
	song C_DECL(song176), 2, 2
mAlignWord
	song C_DECL(song177), 2, 2
mAlignWord
	song C_DECL(song178), 2, 2
mAlignWord
	song C_DECL(song179), 2, 2
mAlignWord
	song C_DECL(song180), 2, 2
mAlignWord
	song C_DECL(song181), 2, 2
mAlignWord
	song C_DECL(song182), 2, 2
mAlignWord
	song C_DECL(song183), 2, 2
mAlignWord
	song C_DECL(song184), 2, 2
mAlignWord
	song C_DECL(song185), 2, 2
mAlignWord
	song C_DECL(dummy_song_header), 0, 0
mAlignWord
	song C_DECL(dummy_song_header), 0, 0
mAlignWord
	song C_DECL(song188), 2, 2
mAlignWord
	song C_DECL(song189), 2, 2
mAlignWord
	song C_DECL(song190), 2, 2
mAlignWord
	song C_DECL(song191), 2, 2
mAlignWord
	song C_DECL(song192), 2, 2
mAlignWord
	song C_DECL(song193), 2, 2
mAlignWord
	song C_DECL(song194), 2, 2
mAlignWord
	song C_DECL(song195), 2, 2
mAlignWord
	song C_DECL(song196), 2, 2
mAlignWord
	song C_DECL(dummy_song_header), 0, 0
mAlignWord
	song C_DECL(song198), 2, 2
mAlignWord
	song C_DECL(song199), 2, 2
mAlignWord
	song C_DECL(song200), 2, 2
mAlignWord
	song C_DECL(song201), 2, 2
mAlignWord
	song C_DECL(song202), 2, 2
mAlignWord
	song C_DECL(song203), 2, 2
mAlignWord
	song C_DECL(song204), 2, 2
mAlignWord
	song C_DECL(song205), 2, 2
mAlignWord
	song C_DECL(song206), 2, 2
mAlignWord
	song C_DECL(song207), 2, 2
mAlignWord
	song C_DECL(song208), 2, 2
mAlignWord
	song C_DECL(song209), 2, 2
mAlignWord
	song C_DECL(song210), 2, 2
mAlignWord
	song C_DECL(song211), 2, 2
mAlignWord
	song C_DECL(song212), 2, 2
mAlignWord
	song C_DECL(song213), 2, 2
mAlignWord
	song C_DECL(song214), 2, 2
mAlignWord
	song C_DECL(song215), 3, 3
mAlignWord
	song C_DECL(song216), 3, 3
mAlignWord
	song C_DECL(song217), 3, 3
mAlignWord
	song C_DECL(song218), 3, 3
mAlignWord
	song C_DECL(song219), 3, 3
mAlignWord
	song C_DECL(song220), 3, 3
mAlignWord
	song C_DECL(song221), 3, 3
mAlignWord
	song C_DECL(song222), 3, 3
mAlignWord
	song C_DECL(song223), 3, 3
mAlignWord
	song C_DECL(song224), 3, 3
mAlignWord
	song C_DECL(dummy_song_header), 0, 0
mAlignWord
	song C_DECL(dummy_song_header), 0, 0
mAlignWord
	song C_DECL(dummy_song_header), 0, 0
mAlignWord
	song C_DECL(dummy_song_header), 0, 0
mAlignWord
	song C_DECL(dummy_song_header), 0, 0
mAlignWord
	song C_DECL(dummy_song_header), 0, 0
mAlignWord
	song C_DECL(dummy_song_header), 0, 0
mAlignWord
	song C_DECL(dummy_song_header), 0, 0
mAlignWord
	song C_DECL(dummy_song_header), 0, 0
mAlignWord
	song C_DECL(dummy_song_header), 0, 0
mAlignWord
	song C_DECL(dummy_song_header), 0, 0
mAlignWord
	song C_DECL(dummy_song_header), 0, 0
mAlignWord
	song C_DECL(dummy_song_header), 0, 0
mAlignWord
	song C_DECL(dummy_song_header), 0, 0
mAlignWord
	song C_DECL(dummy_song_header), 0, 0
mAlignWord
	song C_DECL(dummy_song_header), 0, 0
mAlignWord
	song C_DECL(dummy_song_header), 0, 0
mAlignWord
	song C_DECL(dummy_song_header), 0, 0
mAlignWord
	song C_DECL(dummy_song_header), 0, 0
mAlignWord
	song C_DECL(dummy_song_header), 0, 0
mAlignWord
	song C_DECL(dummy_song_header), 0, 0
mAlignWord
	song C_DECL(dummy_song_header), 0, 0
mAlignWord
	song C_DECL(dummy_song_header), 0, 0
mAlignWord
	song C_DECL(dummy_song_header), 0, 0
mAlignWord
	song C_DECL(dummy_song_header), 0, 0
mAlignWord
	song C_DECL(dummy_song_header), 0, 0
mAlignWord
	song C_DECL(dummy_song_header), 0, 0
mAlignWord
	song C_DECL(dummy_song_header), 0, 0
mAlignWord
	song C_DECL(dummy_song_header), 0, 0
mAlignWord
	song C_DECL(dummy_song_header), 0, 0
mAlignWord
	song C_DECL(dummy_song_header), 0, 0
mAlignWord
	song C_DECL(dummy_song_header), 0, 0
mAlignWord
	song C_DECL(dummy_song_header), 0, 0
mAlignWord
	song C_DECL(dummy_song_header), 0, 0
mAlignWord
	song C_DECL(dummy_song_header), 0, 0
mAlignWord
	song C_DECL(dummy_song_header), 0, 0
mAlignWord
	song C_DECL(dummy_song_header), 0, 0
mAlignWord
	song C_DECL(dummy_song_header), 0, 0
mAlignWord
	song C_DECL(dummy_song_header), 0, 0
mAlignWord
	song C_DECL(dummy_song_header), 0, 0
mAlignWord
	song C_DECL(dummy_song_header), 0, 0
mAlignWord
	song C_DECL(dummy_song_header), 0, 0
mAlignWord
	song C_DECL(dummy_song_header), 0, 0
mAlignWord
	song C_DECL(dummy_song_header), 0, 0
mAlignWord
	song C_DECL(dummy_song_header), 0, 0
mAlignWord
	song C_DECL(dummy_song_header), 0, 0
mAlignWord
	song C_DECL(dummy_song_header), 0, 0
mAlignWord
	song C_DECL(dummy_song_header), 0, 0
mAlignWord
	song C_DECL(dummy_song_header), 0, 0
mAlignWord
	song C_DECL(dummy_song_header), 0, 0
mAlignWord
	song C_DECL(dummy_song_header), 0, 0
mAlignWord
	song C_DECL(dummy_song_header), 0, 0
mAlignWord
	song C_DECL(dummy_song_header), 0, 0
mAlignWord
	song C_DECL(dummy_song_header), 0, 0
mAlignWord
	song C_DECL(dummy_song_header), 0, 0
mAlignWord
	song C_DECL(dummy_song_header), 0, 0
mAlignWord
	song C_DECL(dummy_song_header), 0, 0
mAlignWord
	song C_DECL(dummy_song_header), 0, 0
mAlignWord
	song C_DECL(dummy_song_header), 0, 0
mAlignWord
	song C_DECL(dummy_song_header), 0, 0
mAlignWord
	song C_DECL(dummy_song_header), 0, 0
mAlignWord
	song C_DECL(dummy_song_header), 0, 0
mAlignWord
	song C_DECL(dummy_song_header), 0, 0
mAlignWord
	song C_DECL(dummy_song_header), 0, 0
mAlignWord
	song C_DECL(dummy_song_header), 0, 0
mAlignWord
	song C_DECL(dummy_song_header), 0, 0
mAlignWord
	song C_DECL(dummy_song_header), 0, 0
mAlignWord
	song C_DECL(dummy_song_header), 0, 0
mAlignWord
	song C_DECL(dummy_song_header), 0, 0
mAlignWord
	song C_DECL(dummy_song_header), 0, 0
mAlignWord
	song C_DECL(dummy_song_header), 0, 0
mAlignWord
	song C_DECL(dummy_song_header), 0, 0
mAlignWord
	song C_DECL(dummy_song_header), 0, 0
mAlignWord
	song C_DECL(dummy_song_header), 0, 0
mAlignWord
	song C_DECL(dummy_song_header), 0, 0
mAlignWord
	song C_DECL(dummy_song_header), 0, 0
mAlignWord
	song C_DECL(song301), 0, 0
mAlignWord
	song C_DECL(song302), 0, 0
mAlignWord
	song C_DECL(song303), 0, 0
mAlignWord
	song C_DECL(song304), 0, 0
mAlignWord
	song C_DECL(song305), 0, 0
mAlignWord
	song C_DECL(song306), 0, 0
mAlignWord
	song C_DECL(song307), 0, 0

    mAlignWord
C_DECL(dummy_song_header):	            
	.byte	0		            
	.byte	0		            
	.byte	0		          
	.byte	0		        
# 14 "/home/awaszczak/git/sa2/sa1/data/sa1/sound_data.s"
# 1 "sound/sa1/direct_sound_data.inc"
    mAlignWord
    mAlignData
	.global gUnknown_086DE134
gUnknown_086DE134:
	.incbin "sound/sa1/direct_sound_samples/086DE134.bin"

	mAlignWord
    mAlignData
	.global gUnknown_086DF608
gUnknown_086DF608:
	.incbin "sound/sa1/direct_sound_samples/086DF608.bin"

	mAlignWord
    mAlignData
	.global gUnknown_086E0A1C
gUnknown_086E0A1C:
	.incbin "sound/sa1/direct_sound_samples/086E0A1C.bin"

	mAlignWord
    mAlignData
	.global gUnknown_086E134C
gUnknown_086E134C:
	.incbin "sound/sa1/direct_sound_samples/086E134C.bin"

	mAlignWord
    mAlignData
	.global gUnknown_086E1ABC
gUnknown_086E1ABC:
	.incbin "sound/sa1/direct_sound_samples/086E1ABC.bin"

	mAlignWord
    mAlignData
	.global gUnknown_086E33B0
gUnknown_086E33B0:
	.incbin "sound/sa1/direct_sound_samples/086E33B0.bin"

	mAlignWord
    mAlignData
	.global gUnknown_086E64DC
gUnknown_086E64DC:
	.incbin "sound/sa1/direct_sound_samples/086E64DC.bin"

	mAlignWord
    mAlignData
	.global gUnknown_086E6B24
gUnknown_086E6B24:
	.incbin "sound/sa1/direct_sound_samples/086E6B24.bin"

	mAlignWord
    mAlignData
	.global gUnknown_086EA218
gUnknown_086EA218:
	.incbin "sound/sa1/direct_sound_samples/086EA218.bin"

	mAlignWord
    mAlignData
	.global gUnknown_086ED1F4
gUnknown_086ED1F4:
	.incbin "sound/sa1/direct_sound_samples/086ED1F4.bin"

	mAlignWord
    mAlignData
	.global gUnknown_086F0138
gUnknown_086F0138:
	.incbin "sound/sa1/direct_sound_samples/086F0138.bin"

	mAlignWord
    mAlignData
	.global gUnknown_086F1AC0
gUnknown_086F1AC0:
	.incbin "sound/sa1/direct_sound_samples/086F1AC0.bin"

	mAlignWord
    mAlignData
	.global gUnknown_086F1DC0
gUnknown_086F1DC0:
	.incbin "sound/sa1/direct_sound_samples/086F1DC0.bin"

	mAlignWord
    mAlignData
	.global gUnknown_086F2994
gUnknown_086F2994:
	.incbin "sound/sa1/direct_sound_samples/086F2994.bin"

	mAlignWord
    mAlignData
	.global gUnknown_086F5578
gUnknown_086F5578:
	.incbin "sound/sa1/direct_sound_samples/086F5578.bin"

	mAlignWord
    mAlignData
	.global gUnknown_086F836C
gUnknown_086F836C:
	.incbin "sound/sa1/direct_sound_samples/086F836C.bin"

	mAlignWord
    mAlignData
	.global gUnknown_086FA790
gUnknown_086FA790:
	.incbin "sound/sa1/direct_sound_samples/086FA790.bin"

	mAlignWord
    mAlignData
	.global gUnknown_086FAEA4
gUnknown_086FAEA4:
	.incbin "sound/sa1/direct_sound_samples/086FAEA4.bin"

	mAlignWord
    mAlignData
	.global gUnknown_086FBBD4
gUnknown_086FBBD4:
	.incbin "sound/sa1/direct_sound_samples/086FBBD4.bin"

	mAlignWord
    mAlignData
	.global gUnknown_086FE150
gUnknown_086FE150:
	.incbin "sound/sa1/direct_sound_samples/086FE150.bin"

	mAlignWord
    mAlignData
	.global gUnknown_086FE7E4
gUnknown_086FE7E4:
	.incbin "sound/sa1/direct_sound_samples/086FE7E4.bin"

	mAlignWord
    mAlignData
	.global gUnknown_086FF18C
gUnknown_086FF18C:
	.incbin "sound/sa1/direct_sound_samples/086FF18C.bin"

	mAlignWord
    mAlignData
	.global gUnknown_0870224C
gUnknown_0870224C:
	.incbin "sound/sa1/direct_sound_samples/0870224C.bin"

	mAlignWord
    mAlignData
	.global gUnknown_08702F60
gUnknown_08702F60:
	.incbin "sound/sa1/direct_sound_samples/08702F60.bin"

	mAlignWord
    mAlignData
	.global gUnknown_0870613C
gUnknown_0870613C:
	.incbin "sound/sa1/direct_sound_samples/0870613C.bin"

	mAlignWord
    mAlignData
	.global gUnknown_08708210
gUnknown_08708210:
	.incbin "sound/sa1/direct_sound_samples/08708210.bin"

	mAlignWord
    mAlignData
	.global gUnknown_0870A724
gUnknown_0870A724:
	.incbin "sound/sa1/direct_sound_samples/0870A724.bin"

	mAlignWord
    mAlignData
	.global gUnknown_0870CA4C
gUnknown_0870CA4C:
	.incbin "sound/sa1/direct_sound_samples/0870CA4C.bin"

	mAlignWord
    mAlignData
	.global gUnknown_0870D7EC
gUnknown_0870D7EC:
	.incbin "sound/sa1/direct_sound_samples/0870D7EC.bin"

	mAlignWord
    mAlignData
	.global gUnknown_0870DC84
gUnknown_0870DC84:
	.incbin "sound/sa1/direct_sound_samples/0870DC84.bin"

	mAlignWord
    mAlignData
	.global gUnknown_0870E60C
gUnknown_0870E60C:
	.incbin "sound/sa1/direct_sound_samples/0870E60C.bin"

	mAlignWord
    mAlignData
	.global gUnknown_0870EA00
gUnknown_0870EA00:
	.incbin "sound/sa1/direct_sound_samples/0870EA00.bin"

	mAlignWord
    mAlignData
	.global gUnknown_0870EE50
gUnknown_0870EE50:
	.incbin "sound/sa1/direct_sound_samples/0870EE50.bin"

	mAlignWord
    mAlignData
	.global gUnknown_0870F254
gUnknown_0870F254:
	.incbin "sound/sa1/direct_sound_samples/0870F254.bin"

	mAlignWord
    mAlignData
	.global gUnknown_0870FBC0
gUnknown_0870FBC0:
	.incbin "sound/sa1/direct_sound_samples/0870FBC0.bin"

	mAlignWord
    mAlignData
	.global gUnknown_0870FFA0
gUnknown_0870FFA0:
	.incbin "sound/sa1/direct_sound_samples/0870FFA0.bin"

	mAlignWord
    mAlignData
	.global gUnknown_087103F8
gUnknown_087103F8:
	.incbin "sound/sa1/direct_sound_samples/087103F8.bin"

	mAlignWord
    mAlignData
	.global gUnknown_08710D74
gUnknown_08710D74:
	.incbin "sound/sa1/direct_sound_samples/08710D74.bin"

	mAlignWord
    mAlignData
	.global gUnknown_087111D4
gUnknown_087111D4:
	.incbin "sound/sa1/direct_sound_samples/087111D4.bin"

	mAlignWord
    mAlignData
	.global gUnknown_08711640
gUnknown_08711640:
	.incbin "sound/sa1/direct_sound_samples/08711640.bin"

	mAlignWord
    mAlignData
	.global gUnknown_08711ACC
gUnknown_08711ACC:
	.incbin "sound/sa1/direct_sound_samples/08711ACC.bin"

	mAlignWord
    mAlignData
	.global gUnknown_087123F8
gUnknown_087123F8:
	.incbin "sound/sa1/direct_sound_samples/087123F8.bin"

	mAlignWord
    mAlignData
	.global gUnknown_08712950
gUnknown_08712950:
	.incbin "sound/sa1/direct_sound_samples/08712950.bin"

	mAlignWord
    mAlignData
	.global gUnknown_08712DB8
gUnknown_08712DB8:
	.incbin "sound/sa1/direct_sound_samples/08712DB8.bin"

	mAlignWord
    mAlignData
	.global gUnknown_0871375C
gUnknown_0871375C:
	.incbin "sound/sa1/direct_sound_samples/0871375C.bin"

	mAlignWord
    mAlignData
	.global gUnknown_0871AED4
gUnknown_0871AED4:
	.incbin "sound/sa1/direct_sound_samples/0871AED4.bin"

	mAlignWord
    mAlignData
	.global spectrasonics__symphony_of_voices__partition_d__big_chord__big_min__c4_r
spectrasonics__symphony_of_voices__partition_d__big_chord__big_min__c4_r:
	.incbin "sound/sa1/direct_sound_samples/spectrasonics__symphony_of_voices__partition_d__big_chord__big_min__c4_r.bin"

	mAlignWord
    mAlignData
	.global gUnknown_0871EF30
gUnknown_0871EF30:
	.incbin "sound/sa1/direct_sound_samples/0871EF30.bin"

	mAlignWord
    mAlignData
	.global gUnknown_08727348
gUnknown_08727348:
	.incbin "sound/sa1/direct_sound_samples/08727348.bin"

	mAlignWord
    mAlignData
	.global gUnknown_0872CF68
gUnknown_0872CF68:
	.incbin "sound/sa1/direct_sound_samples/0872CF68.bin"

	mAlignWord
    mAlignData
	.global gUnknown_0872E77C
gUnknown_0872E77C:
	.incbin "sound/sa1/direct_sound_samples/0872E77C.bin"

	mAlignWord
    mAlignData
	.global gUnknown_08730340
gUnknown_08730340:
	.incbin "sound/sa1/direct_sound_samples/08730340.bin"

	mAlignWord
    mAlignData
	.global gUnknown_08730BF0
gUnknown_08730BF0:
	.incbin "sound/sa1/direct_sound_samples/08730BF0.bin"

	mAlignWord
    mAlignData
	.global gUnknown_08731868
gUnknown_08731868:
	.incbin "sound/sa1/direct_sound_samples/08731868.bin"

	mAlignWord
    mAlignData
	.global gUnknown_08732A00
gUnknown_08732A00:
	.incbin "sound/sa1/direct_sound_samples/08732A00.bin"

	mAlignWord
    mAlignData
	.global gUnknown_08733304
gUnknown_08733304:
	.incbin "sound/sa1/direct_sound_samples/08733304.bin"

	mAlignWord
    mAlignData
	.global gUnknown_08733D74
gUnknown_08733D74:
	.incbin "sound/sa1/direct_sound_samples/08733D74.bin"

	mAlignWord
    mAlignData
	.global gUnknown_08737EB4
gUnknown_08737EB4:
	.incbin "sound/sa1/direct_sound_samples/08737EB4.bin"

	mAlignWord
    mAlignData
	.global gUnknown_0873BCBC
gUnknown_0873BCBC:
	.incbin "sound/sa1/direct_sound_samples/0873BCBC.bin"

	mAlignWord
    mAlignData
	.global gUnknown_0873C470
gUnknown_0873C470:
	.incbin "sound/sa1/direct_sound_samples/0873C470.bin"

	mAlignWord
    mAlignData
	.global gUnknown_0873CC80
gUnknown_0873CC80:
	.incbin "sound/sa1/direct_sound_samples/0873CC80.bin"

	mAlignWord
    mAlignData
	.global gUnknown_0873D430
gUnknown_0873D430:
	.incbin "sound/sa1/direct_sound_samples/0873D430.bin"

	mAlignWord
    mAlignData
	.global gUnknown_0873DF74
gUnknown_0873DF74:
	.incbin "sound/sa1/direct_sound_samples/0873DF74.bin"

	mAlignWord
    mAlignData
	.global gUnknown_0873ECE8
gUnknown_0873ECE8:
	.incbin "sound/sa1/direct_sound_samples/0873ECE8.bin"

	mAlignWord
    mAlignData
	.global gUnknown_0873F1C0
gUnknown_0873F1C0:
	.incbin "sound/sa1/direct_sound_samples/0873F1C0.bin"

	mAlignWord
    mAlignData
	.global gUnknown_0873F654
gUnknown_0873F654:
	.incbin "sound/sa1/direct_sound_samples/0873F654.bin"

	mAlignWord
    mAlignData
	.global gUnknown_0873FAB8
gUnknown_0873FAB8:
	.incbin "sound/sa1/direct_sound_samples/0873FAB8.bin"

	mAlignWord
    mAlignData
	.global gUnknown_0873FF64
gUnknown_0873FF64:
	.incbin "sound/sa1/direct_sound_samples/0873FF64.bin"

	mAlignWord
    mAlignData
	.global gUnknown_087403FC
gUnknown_087403FC:
	.incbin "sound/sa1/direct_sound_samples/087403FC.bin"

	mAlignWord
    mAlignData
	.global gUnknown_08740854
gUnknown_08740854:
	.incbin "sound/sa1/direct_sound_samples/08740854.bin"

	mAlignWord
    mAlignData
	.global gUnknown_08740D00
gUnknown_08740D00:
	.incbin "sound/sa1/direct_sound_samples/08740D00.bin"

	mAlignWord
    mAlignData
	.global gUnknown_08741248
gUnknown_08741248:
	.incbin "sound/sa1/direct_sound_samples/08741248.bin"

	mAlignWord
    mAlignData
	.global gUnknown_08741694
gUnknown_08741694:
	.incbin "sound/sa1/direct_sound_samples/08741694.bin"

	mAlignWord
    mAlignData
	.global gUnknown_08741B00
gUnknown_08741B00:
	.incbin "sound/sa1/direct_sound_samples/08741B00.bin"

	mAlignWord
    mAlignData
	.global gUnknown_0874216C
gUnknown_0874216C:
	.incbin "sound/sa1/direct_sound_samples/0874216C.bin"

	mAlignWord
    mAlignData
	.global gUnknown_087424D8
gUnknown_087424D8:
	.incbin "sound/sa1/direct_sound_samples/087424D8.bin"

	mAlignWord
    mAlignData
	.global gUnknown_0874267C
gUnknown_0874267C:
	.incbin "sound/sa1/direct_sound_samples/0874267C.bin"

	mAlignWord
    mAlignData
	.global gUnknown_08742E90
gUnknown_08742E90:
	.incbin "sound/sa1/direct_sound_samples/08742E90.bin"

	mAlignWord
    mAlignData
	.global gUnknown_087432F0
gUnknown_087432F0:
	.incbin "sound/sa1/direct_sound_samples/087432F0.bin"

	mAlignWord
    mAlignData
	.global gUnknown_087436FC
gUnknown_087436FC:
	.incbin "sound/sa1/direct_sound_samples/087436FC.bin"

	mAlignWord
    mAlignData
	.global gUnknown_08743BEC
gUnknown_08743BEC:
	.incbin "sound/sa1/direct_sound_samples/08743BEC.bin"

	mAlignWord
    mAlignData
	.global gUnknown_0874408C
gUnknown_0874408C:
	.incbin "sound/sa1/direct_sound_samples/0874408C.bin"

	mAlignWord
    mAlignData
	.global gUnknown_087444B4
gUnknown_087444B4:
	.incbin "sound/sa1/direct_sound_samples/087444B4.bin"

	mAlignWord
    mAlignData
	.global gUnknown_087449BC
gUnknown_087449BC:
	.incbin "sound/sa1/direct_sound_samples/087449BC.bin"

	mAlignWord
    mAlignData
	.global gUnknown_0874621C
gUnknown_0874621C:
	.incbin "sound/sa1/direct_sound_samples/0874621C.bin"

	mAlignWord
    mAlignData
	.global gUnknown_08746C04
gUnknown_08746C04:
	.incbin "sound/sa1/direct_sound_samples/08746C04.bin"

	mAlignWord
    mAlignData
	.global gUnknown_08747908
gUnknown_08747908:
	.incbin "sound/sa1/direct_sound_samples/08747908.bin"

	mAlignWord
    mAlignData
	.global gUnknown_08747D18
gUnknown_08747D18:
	.incbin "sound/sa1/direct_sound_samples/08747D18.bin"

	mAlignWord
    mAlignData
	.global gUnknown_08748108
gUnknown_08748108:
	.incbin "sound/sa1/direct_sound_samples/08748108.bin"

	mAlignWord
    mAlignData
	.global gUnknown_08748BD8
gUnknown_08748BD8:
	.incbin "sound/sa1/direct_sound_samples/08748BD8.bin"

	mAlignWord
    mAlignData
	.global gUnknown_087493A4
gUnknown_087493A4:
	.incbin "sound/sa1/direct_sound_samples/087493A4.bin"

	mAlignWord
    mAlignData
	.global gUnknown_08749864
gUnknown_08749864:
	.incbin "sound/sa1/direct_sound_samples/08749864.bin"

	mAlignWord
    mAlignData
	.global gUnknown_08749D20
gUnknown_08749D20:
	.incbin "sound/sa1/direct_sound_samples/08749D20.bin"

	mAlignWord
    mAlignData
	.global gUnknown_0874A750
gUnknown_0874A750:
	.incbin "sound/sa1/direct_sound_samples/0874A750.bin"

	mAlignWord
    mAlignData
	.global gUnknown_0874AAF8
gUnknown_0874AAF8:
	.incbin "sound/sa1/direct_sound_samples/0874AAF8.bin"

	mAlignWord
    mAlignData
	.global gUnknown_0874B5D0
gUnknown_0874B5D0:
	.incbin "sound/sa1/direct_sound_samples/0874B5D0.bin"

	mAlignWord
    mAlignData
	.global gUnknown_0874B844
gUnknown_0874B844:
	.incbin "sound/sa1/direct_sound_samples/0874B844.bin"

	mAlignWord
    mAlignData
	.global gUnknown_0874CAFC
gUnknown_0874CAFC:
	.incbin "sound/sa1/direct_sound_samples/0874CAFC.bin"

	mAlignWord
    mAlignData
	.global gUnknown_0874D4D0
gUnknown_0874D4D0:
	.incbin "sound/sa1/direct_sound_samples/0874D4D0.bin"

	mAlignWord
    mAlignData
	.global gUnknown_0874DDCC
gUnknown_0874DDCC:
	.incbin "sound/sa1/direct_sound_samples/0874DDCC.bin"

	mAlignWord
    mAlignData
	.global gUnknown_0874E228
gUnknown_0874E228:
	.incbin "sound/sa1/direct_sound_samples/0874E228.bin"

	mAlignWord
    mAlignData
	.global gUnknown_0874E6D0
gUnknown_0874E6D0:
	.incbin "sound/sa1/direct_sound_samples/0874E6D0.bin"

	mAlignWord
    mAlignData
	.global gUnknown_08753AEC
gUnknown_08753AEC:
	.incbin "sound/sa1/direct_sound_samples/08753AEC.bin"

	mAlignWord
    mAlignData
	.global gUnknown_08758BB4
gUnknown_08758BB4:
	.incbin "sound/sa1/direct_sound_samples/08758BB4.bin"

	mAlignWord
    mAlignData
	.global gUnknown_0875A76C
gUnknown_0875A76C:
	.incbin "sound/sa1/direct_sound_samples/0875A76C.bin"

	mAlignWord
    mAlignData
	.global gUnknown_0875E854
gUnknown_0875E854:
	.incbin "sound/sa1/direct_sound_samples/0875E854.bin"

	mAlignWord
    mAlignData
	.global gUnknown_087634B0
gUnknown_087634B0:
	.incbin "sound/sa1/direct_sound_samples/087634B0.bin"

	mAlignWord
    mAlignData
	.global gUnknown_08763F44
gUnknown_08763F44:
	.incbin "sound/sa1/direct_sound_samples/08763F44.bin"

	mAlignWord
    mAlignData
	.global gUnknown_087644B8
gUnknown_087644B8:
	.incbin "sound/sa1/direct_sound_samples/087644B8.bin"

	mAlignWord
    mAlignData
	.global gUnknown_08764A24
gUnknown_08764A24:
	.incbin "sound/sa1/direct_sound_samples/08764A24.bin"

	mAlignWord
    mAlignData
	.global gUnknown_08764EC8
gUnknown_08764EC8:
	.incbin "sound/sa1/direct_sound_samples/08764EC8.bin"

	mAlignWord
    mAlignData
	.global gUnknown_08765524
gUnknown_08765524:
	.incbin "sound/sa1/direct_sound_samples/08765524.bin"

	mAlignWord
    mAlignData
	.global gUnknown_08765FF0
gUnknown_08765FF0:
	.incbin "sound/sa1/direct_sound_samples/08765FF0.bin"

	mAlignWord
    mAlignData
	.global gUnknown_087665C8
gUnknown_087665C8:
	.incbin "sound/sa1/direct_sound_samples/087665C8.bin"

	mAlignWord
    mAlignData
	.global gUnknown_08766AE4
gUnknown_08766AE4:
	.incbin "sound/sa1/direct_sound_samples/08766AE4.bin"

	mAlignWord
    mAlignData
	.global gUnknown_0876701C
gUnknown_0876701C:
	.incbin "sound/sa1/direct_sound_samples/0876701C.bin"

	mAlignWord
    mAlignData
	.global gUnknown_08767588
gUnknown_08767588:
	.incbin "sound/sa1/direct_sound_samples/08767588.bin"

	mAlignWord
    mAlignData
	.global gUnknown_08767A20
gUnknown_08767A20:
	.incbin "sound/sa1/direct_sound_samples/08767A20.bin"

	mAlignWord
    mAlignData
	.global gUnknown_08768070
gUnknown_08768070:
	.incbin "sound/sa1/direct_sound_samples/08768070.bin"

	mAlignWord
    mAlignData
	.global gUnknown_08768BA0
gUnknown_08768BA0:
	.incbin "sound/sa1/direct_sound_samples/08768BA0.bin"

	mAlignWord
    mAlignData
	.global gUnknown_087692C0
gUnknown_087692C0:
	.incbin "sound/sa1/direct_sound_samples/087692C0.bin"

	mAlignWord
    mAlignData
	.global gUnknown_0876995C
gUnknown_0876995C:
	.incbin "sound/sa1/direct_sound_samples/0876995C.bin"

	mAlignWord
    mAlignData
	.global gUnknown_0876A058
gUnknown_0876A058:
	.incbin "sound/sa1/direct_sound_samples/0876A058.bin"

	mAlignWord
    mAlignData
	.global gUnknown_0876A7E8
gUnknown_0876A7E8:
	.incbin "sound/sa1/direct_sound_samples/0876A7E8.bin"

	mAlignWord
    mAlignData
	.global gUnknown_0876AE6C
gUnknown_0876AE6C:
	.incbin "sound/sa1/direct_sound_samples/0876AE6C.bin"

	mAlignWord
    mAlignData
	.global gUnknown_0876B5CC
gUnknown_0876B5CC:
	.incbin "sound/sa1/direct_sound_samples/0876B5CC.bin"

	mAlignWord
    mAlignData
	.global gUnknown_0876BCBC
gUnknown_0876BCBC:
	.incbin "sound/sa1/direct_sound_samples/0876BCBC.bin"

	mAlignWord
    mAlignData
	.global gUnknown_0876C1C4
gUnknown_0876C1C4:
	.incbin "sound/sa1/direct_sound_samples/0876C1C4.bin"

	mAlignWord
    mAlignData
	.global gUnknown_0876C974
gUnknown_0876C974:
	.incbin "sound/sa1/direct_sound_samples/0876C974.bin"

	mAlignWord
    mAlignData
	.global gUnknown_0876D0E8
gUnknown_0876D0E8:
	.incbin "sound/sa1/direct_sound_samples/0876D0E8.bin"

	mAlignWord
    mAlignData
	.global gUnknown_0876D79C
gUnknown_0876D79C:
	.incbin "sound/sa1/direct_sound_samples/0876D79C.bin"

	mAlignWord
    mAlignData
	.global gUnknown_0876DF8C
gUnknown_0876DF8C:
	.incbin "sound/sa1/direct_sound_samples/0876DF8C.bin"

	mAlignWord
    mAlignData
	.global gUnknown_0876E614
gUnknown_0876E614:
	.incbin "sound/sa1/direct_sound_samples/0876E614.bin"

	mAlignWord
    mAlignData
	.global gUnknown_0876ED88
gUnknown_0876ED88:
	.incbin "sound/sa1/direct_sound_samples/0876ED88.bin"

	mAlignWord
    mAlignData
	.global gUnknown_0876F47C
gUnknown_0876F47C:
	.incbin "sound/sa1/direct_sound_samples/0876F47C.bin"

	mAlignWord
    mAlignData
	.global gUnknown_0876FB20
gUnknown_0876FB20:
	.incbin "sound/sa1/direct_sound_samples/0876FB20.bin"

	mAlignWord
    mAlignData
	.global gUnknown_08771CC4
gUnknown_08771CC4:
	.incbin "sound/sa1/direct_sound_samples/08771CC4.bin"

	mAlignWord
    mAlignData
	.global gUnknown_08773848
gUnknown_08773848:
	.incbin "sound/sa1/direct_sound_samples/08773848.bin"

	mAlignWord
    mAlignData
	.global gUnknown_08775640
gUnknown_08775640:
	.incbin "sound/sa1/direct_sound_samples/08775640.bin"

	mAlignWord
    mAlignData
	.global gUnknown_08775E7C
gUnknown_08775E7C:
	.incbin "sound/sa1/direct_sound_samples/08775E7C.bin"

	mAlignWord
    mAlignData
	.global gUnknown_08778D48
gUnknown_08778D48:
	.incbin "sound/sa1/direct_sound_samples/08778D48.bin"

	mAlignWord
    mAlignData
	.global gUnknown_08779EDC
gUnknown_08779EDC:
	.incbin "sound/sa1/direct_sound_samples/08779EDC.bin"

	mAlignWord
    mAlignData
	.global gUnknown_0877AD00
gUnknown_0877AD00:
	.incbin "sound/sa1/direct_sound_samples/0877AD00.bin"

	mAlignWord
    mAlignData
	.global gUnknown_0877B9A0
gUnknown_0877B9A0:
	.incbin "sound/sa1/direct_sound_samples/0877B9A0.bin"

	mAlignWord
    mAlignData
	.global gUnknown_0877CF24
gUnknown_0877CF24:
	.incbin "sound/sa1/direct_sound_samples/0877CF24.bin"

	mAlignWord
    mAlignData
	.global gUnknown_0877F2A4
gUnknown_0877F2A4:
	.incbin "sound/sa1/direct_sound_samples/0877F2A4.bin"

	mAlignWord
    mAlignData
	.global gUnknown_0878306C
gUnknown_0878306C:
	.incbin "sound/sa1/direct_sound_samples/0878306C.bin"

	mAlignWord
    mAlignData
	.global gUnknown_08789214
gUnknown_08789214:
	.incbin "sound/sa1/direct_sound_samples/08789214.bin"

	mAlignWord
    mAlignData
	.global gUnknown_0878D964
gUnknown_0878D964:
	.incbin "sound/sa1/direct_sound_samples/0878D964.bin"

	mAlignWord
    mAlignData
	.global gUnknown_0878FAAC
gUnknown_0878FAAC:
	.incbin "sound/sa1/direct_sound_samples/0878FAAC.bin"

	mAlignWord
    mAlignData
	.global gUnknown_08797224
gUnknown_08797224:
	.incbin "sound/sa1/direct_sound_samples/08797224.bin"
# 15 "/home/awaszczak/git/sa2/sa1/data/sa1/sound_data.s"
