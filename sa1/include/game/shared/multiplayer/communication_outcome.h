#ifndef GUARD_MULTIPLAYER_COMMUNICATION_OUTCOME_H
#define GUARD_MULTIPLAYER_COMMUNICATION_OUTCOME_H

#include "global.h"

#define OUTCOME_CONNECTION_SUCCESS 0
#define OUTCOME_CONNECTION_ERROR   1

void CreateMultipackOutcomeScreen(u8 outcome);

// assumed that this will be implemented somewhere
extern void LinkCommunicationError(void);

// TOOD: MultiSioHeartBeat
#define MultiPakHeartbeat()                                                                                                                \
    ({                                                                                                                                     \
        if (IS_MULTI_PLAYER) {                                                                                                             \
            u32 i;                                                                                                                         \
            for (i = 0; i < MULTI_SIO_PLAYERS_MAX && GetBit(gMultiplayerConnections, i); i++) {                                            \
                if (!(gMultiSioStatusFlags & MULTI_SIO_RECV_ID(i))) {                                                                      \
                    if (gMultiplayerMissingHeartbeats[i]++ > 0xB4) {                                                                       \
                        TasksDestroyAll();                                                                                                 \
                        PAUSE_BACKGROUNDS_QUEUE();                                                                                         \
                        gBgSpritesCount = 0;                                                                                               \
                        PAUSE_GRAPHICS_QUEUE();                                                                                            \
                        LinkCommunicationError();                                                                                          \
                        return;                                                                                                            \
                    }                                                                                                                      \
                } else {                                                                                                                   \
                    gMultiplayerMissingHeartbeats[i] = 0;                                                                                  \
                }                                                                                                                          \
            }                                                                                                                              \
        }                                                                                                                                  \
    })

#endif // GUARD_MULTIPLAYER_COMMUNICATION_OUTCOME_H
