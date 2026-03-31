#ifndef GUARD_SA1_CHAO_H
#define GUARD_SA1_CHAO_H

typedef struct Chao {
    Sprite s;
    s32 qWorldX;
    s32 qWorldY;
    s16 qDistanceToPlayer;
    s16 qSpeedX;
    s16 qSpeedY;
    u16 angle;
    u8 id;
    u8 playerIdA;
    u8 playerIdB;
} Chao;

#endif // GUARD_SA1_CHAO_H