#ifndef GUARD_CONSTANTS_INTERACTABLES_H
#define GUARD_CONSTANTS_INTERACTABLES_H

// #if (GAME == GAME_SA1)
// #define IA__STAGE_GOAL                 0
// #define IA__SPIKES__NORMAL_UP          1
// #define IA__SPIKES__NORMAL_DOWN        2
// #define IA__SPIKES__NORMAL_LEFT        3
// #define IA__SPIKES__NORMAL_RIGHT       4
// #define IA__SPIKES__HIDING_UP          5
// #define IA__SPIKES__HIDING_DOWN        6
// #define IA__CHECKPOINT                 7
// #define IA__SPRING__UP                 8
// #define IA__SPRING__DOWN               9
// #define IA__SPRING__LEFT               10
// #define IA__SPRING__RIGHT              11
// #define IA__SPRING__BIG_UPLEFT         12
// #define IA__SPRING__BIG_UPRIGHT        13
// #define IA__SPRING__SMALL_UPLEFT       14
// #define IA__SPRING__SMALL_UPRIGHT      15
// #define IA__DECORATION                 16
// #define IA__TOGGLE_PLAYER_LAYER__FRONT 17
// #define IA__TOGGLE_PLAYER_LAYER__BACK  18
// #define IA__GRIND_RAIL__START          19
// #define IA__GRIND_RAIL__END            20
// #define IA__PLATFORM_THIN              21
// #define IA__PLATFORM_THIN__FALLING     22
// #define IA__TRAMPOLINE                 23
// #define IA__PLATFORM_CRUMBLING         24
// #define IA__BOUNCE_BLOCK               25
// #define IA__INCLINE_RAMP               26
// #define IA__WATERFALL                  27
// #define IA__HALFPIPE__START            28
// #define IA__HALFPIPE__END              29
// #define IA__SHRUBBERY                  30
// #define IA__BOOSTER                    31
// #define IA__BOOSTER__SLIGHT_LEFT       32
// #define IA__BOOSTER__SLIGHT_RIGHT      33
// #define IA__IA034                      34
// #define IA__MINILOOP_BASE              35
// #define IA__MINILOOP_START_BOOST       36
// #define IA__MINILOOP_EXIT              37
// #define IA__MINILOOP_ENTRANCE          38
// #define IA__IA039                      39
// #define IA__WATER_BRIDGE               40
// #define IA__TOGGLE__TO_BE_CONTINUED    41
// #define IA__RED_FLAG                   42
// #define IA__IA043                      43
// #define IA__WALL_POLE__LEFT            44
// #define IA__WALL_POLE__RIGHT           45
// #define IA__FORCED_ICE_SLIDE           46
// #define IA__BOOSTER__WALL              47
// #define IA__BUMPER__HEXAGON            48
// #define IA__BUMPER_ROUND__LINEAR       49
// #define IA__BUMPER_ROUND__CIRCULAR     50
// #define IA__BUMPER_TRI__HORIZONTAL     51
// #define IA__BUMPER_TRI__VERTICAL       52
// #define IA__BUMPER_TRI__BIG            53
// #define IA__FLIPPER                    54
// #define IA__PLATFORM_SQUARE            55
// #define IA__FLIPPER__VERTICAL          56
// #define IA__BARREL_OF_DOOM_MINI        57
// #define IA__SEGA_SONIC_LETTER          58
// #define IA__PARTY_BALLOON              59
// #define IA__SHIP_SWING                 60
// #define IA__PLATFORM_SPIKED            61
// #define IA__BOWL                       62
// #define IA__PANEL_GATE__VERTICAL       63
// #define IA__PANEL_GATE__HORIZONTAL     64
// #define IA__MARBLE_TRACK__DIR          65
// #define IA__MARBLE_TRACK__UNK          66
// #define IA__MARBLE_TRACK__ENTRANCE     67
// #define IA__MARBLE_TRACK__EXIT         68
// #define IA__CONVEYOR_BELT              69
// #define IA__TOGGLE__PLAYER_VISIBILITY  70
// #define IA__WALL_BUMPER                71
// #define IA__TELEPORT_ORB               72
// #define IA__FLIPPER_SMALL_BLUE         73
// #define IA__CAROUSEL                   74
// #define IA__HOOK_RAIL                  75
// #define IA__SWINGING_HOOK              76
// #define IA__SECURITY_GATE              77
// #define IA__SWING_ROPE                 78
// #define IA__STEAM_EXHAUST              79
// #define IA__CRANE_CLAW                 80
// #define IA__MOVING_SPRING              81
// #define IA__IRON_BALL                  82
// #define IA__HANG_BAR                   83
// #define IA__SKATING_STONE              84
// #define IA__IA085                      85
// #define IA__RUN_WHEEL                  86
// #define IA__TORCH                      87
// #define IA__LIFT                       88
// #define IA__IA089                      89
// #define IA__TOGGLE__PLAYER_FLOAT       90
// #define IA__FERRIS_WHEEL               91
// #define IA__BOULDER_SPAWNER            92
// #define IA__SPIKED_BARREL              93
// #define IA__AIR_BUBBLES                94
// #define IA__ICE_BLOCK                  95
// #define IA__IA096                      96
// #define IA__IA097                      97
// #define IA__UNDERWATER_LAVA_PLATFORM   98
// #define IA__IA099                      99
// #define IA__BOOSTER_STEEP              100
// #define IA__BOOSTER_STEEP_2            101
// #define IA__SPECIAL_SPRING             102
// #define IA__SPIKED_BARREL__CHAOHUNT    103
// #define IA__SMALL_FALL_BLOCK           104
// #define IA__LAVA                       105
// #define IA__TRACK                      106
// #define IA__IA107                      107
// #define IA__SPRING__HIDING             108
// #define IA__TOGGLE_GRAVITY             109
// #define IA__PIPE_ENTRANCE              110
// #define IA__PIPE_EXIT                  111
// #define IA__TRACK_AIR_CORNER           112
// #define IA__IA113                      113
// #define IA__BREAKABLE_WALL             114
// #define IA__ITEMBOX_CHAOHUNT           115

// #define IA__MP_TOGGLE_PLAYER_LAYER__FRONT 12 // Used in GAME_MODE_MULTI_PLAYER_COLLECT_RINGS
// #define IA__MP_TOGGLE_PLAYER_LAYER__BACK  13 // Used in GAME_MODE_MULTI_PLAYER_COLLECT_RINGS

// #endif

#if (GAME == GAME_SA2)
// NOTE: Keep the format as: IA__<name>__<type> if you add Interactables to this list
//       (or create a new list) that have multiple entries, like the springs and spikes
//       do. This will ensure compatibility with our tools.
#define IA__TOGGLE_PLAYER_LAYER__FOREGROUND 0
#define IA__TOGGLE_PLAYER_LAYER__BACKGROUND 1
#define IA__PLATFORM_A                      2
#define IA__SPRING__UP                      3
#define IA__SPRING__DOWN                    4
#define IA__SPRING__RIGHT                   5
#define IA__SPRING__LEFT                    6
#define IA__SPRING__BIG_UPLEFT              7
#define IA__SPRING__BIG_UPRIGHT             8
#define IA__SPRING__BIG_DOWNRIGHT           9
#define IA__SPRING__BIG_DOWNLEFT            10
#define IA__SPRING__SMALL_UPRIGHT           11
#define IA__SPRING__SMALL_UPLEFT            12
#define IA__COMMON_THIN_PLATFORM            13
#define IA__DECORATION                      14
#define IA__RAMP                            15
#define IA__BOOSTER                         16
#define IA__INCLINE_RAMP                    17
#define IA__BOUNCY_SPRING                   18
#define IA__PLATFORM_CRUMBLING              19
#define IA__ROTATING_HANDLE                 20
#define IA__GAPPED_LOOP__START              21
#define IA__GAPPED_LOOP__END                22
#define IA__SPIKES__NORMAL_UP               23
#define IA__SPIKES__NORMAL_DOWN             24
#define IA__SPIKES__NORMAL_LEFT             25
#define IA__SPIKES__NORMAL_RIGHT            26
#define IA__SPIKES__HIDING_UP               27
#define IA__SPIKES__HIDING_DOWN             28
#define IA__CORK_SCREW__START               29
#define IA__CORK_SCREW__STOP                30
#define IA__BOUNCY_BAR                      31
#define IA__GRIND_RAIL__START_GROUND        32
#define IA__GRIND_RAIL__START_AIR           33
#define IA__GRIND_RAIL__END_GROUND          34
#define IA__GRIND_RAIL__END_FORCED_JUMP     35
#define IA__GRIND_RAIL__END_ALTERNATE       36
#define IA__GRIND_RAIL__END_AIR             37
#define IA__GRIND_RAIL__END_GROUND_LEFT     38
#define IA__GRIND_RAIL__END_AIR_LEFT        39
#define IA__CORKSCREW__START                40
#define IA__CORKSCREW__END                  41
#define IA__GOAL_LEVER                      42
#define IA__CHECKPOINT                      43
#define IA__CEILING_SLOPE__A                44
#define IA__TOGGLE__CHECKPOINT              45
#define IA__TOGGLE__GOAL                    46
#define IA__WINDUP_STICK                    47
#define IA__HOOK_RAIL__UNUSED               48
#define IA__HOOK_RAIL__START                49
#define IA__HOOK_RAIL__END                  50
#define IA__WINDMILL                        51
#define IA__TURNAROUND_BAR                  52
#define IA__CRANE                           53
#define IA__DASH_RING                       54
#define IA__FLOATING_SPRING                 55
#define IA__NOTE_BLOCK__SPHERE              56
#define IA__NOTE_BLOCK__BLOCK               57
#define IA__CHORD                           58
#define IA__KEYBOARD_VERTICAL               59
#define IA__KEYBOARD_HORIZONTAL_LEFT        60
#define IA__KEYBOARD_HORIZONTAL_RIGHT       61
#define IA__GERMAN_FLUTE                    62
#define IA__TRUMPET_ENTRY                   63
#define IA__PIPE_INSTRUMENT_ENTRY           64 // TODO: Name
#define IA__SLOWING_SNOW                    65
#define IA__FUNNEL_SPHERE                   66
#define IA__HALFPIPE__END                   67
#define IA__HALFPIPE__START                 68
#define IA__BIG_SNOWBALL                    69
#define IA__NOTE_BLOCK__2                   70
#define IA__CEILING_SLOPE__B                71 // Same code as IA__CEILING_SLOPE__A
#define IA__PIPE__START                     72
#define IA__PIPE__END                       73
#define IA__LIGHT_BRIDGE                    74
#define IA__ARROW_PLATFORM__LEFT            75
#define IA__ARROW_PLATFORM__RIGHT           76
#define IA__ARROW_PLATFORM__UP              77
#define IA__SPIKE_PLATFORM                  78
#define IA__PLATFORM_B                      79
#define IA__LIGHT_GLOBE                     80
#define IA__PLATFORM_SQUARE                 81
#define IA__PROPELLER                       82
#define IA__SLIDY_ICE                       83
#define IA__SMALL_WINDMILL                  84
#define IA__PROPELLER_SPRING                85
#define IA__WHIRLWIND__A                    86
#define IA__FAN__LEFT                       87
#define IA__FAN__RIGHT                      88
#define IA__FAN__PERIODIC_LEFT              89
#define IA__FAN__PERIODIC_RIGHT             90
#define IA__LAUNCHER__DOWN_LEFT             91
#define IA__LAUNCHER__DOWN_RIGHT            92
#define IA__CANNON                          93
#define IA__POLE                            94
#define IA__IRON_BALL                       95
#define IA__FLYING_HANDLE                   96
#define IA__SPEEDING_PLATFORM               97
#define IA__TOGGLE_GRAVITY__DOWN            98
#define IA__TOGGLE_GRAVITY__UP              99
#define IA__TOGGLE_GRAVITY__TOGGLE          100
#define IA__LAUNCHER__UP_LEFT               101
#define IA__LAUNCHER__UP_RIGHT              102
#define IA__SPECIAL_RING                    103
#define IA__WHIRLWIND__B                    104
#define IA__IA105                           105
#endif

#endif // GUARD_CONSTANTS_INTERACTABLES_H
