#ifndef GUARD_MULTIPLAYER_COMMUNICATION_OUTCOME_H
#define GUARD_MULTIPLAYER_COMMUNICATION_OUTCOME_H

#include "global.h"

#define OUTCOME_CONNECTION_SUCCESS 0
#define OUTCOME_CONNECTION_ERROR   1

// I wonder if this was stubbed and you had to provide your own implementation
extern void LinkCommunicationError(void);

#define LINK_HEARTBEAT()                                                                                                                   \
    ({                                                                                                                                     \
        if (IS_MULTI_PLAYER) {                                                                                                             \
            u32 i;                                                                                                                         \
            for (i = 0; i < MULTI_SIO_PLAYERS_MAX && CONNECTION_REGISTERED(i); i++) {                                                      \
                if (!(gMultiSioStatusFlags & MULTI_SIO_RECV_ID(i))) {                                                                      \
                    if (gMultiplayerMissingHeartbeats[i]++ > 180) {                                                                        \
                        TasksDestroyAll();                                                                                                 \
                        PAUSE_BACKGROUNDS_QUEUE();                                                                                         \
                        gBgSpritesCount = 0;                                                                                               \
                        gVramGraphicsCopyCursor = gVramGraphicsCopyQueueIndex;                                                             \
                        LinkCommunicationError();                                                                                          \
                        return;                                                                                                            \
                    }                                                                                                                      \
                } else {                                                                                                                   \
                    gMultiplayerMissingHeartbeats[i] = 0;                                                                                  \
                }                                                                                                                          \
            }                                                                                                                              \
        }                                                                                                                                  \
    })

void CreateMultipackOutcomeScreen(u8 outcome);

#endif // GUARD_MULTIPLAYER_COMMUNICATION_OUTCOME_H
