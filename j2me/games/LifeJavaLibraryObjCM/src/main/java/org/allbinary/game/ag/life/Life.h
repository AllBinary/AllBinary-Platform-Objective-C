#ifndef ORG_ALLBINARY_GAME_AG_LIFE_LIFE_H
#define ORG_ALLBINARY_GAME_AG_LIFE_LIFE_H
/*
 *
 * AllBinary Open License Version 1
 * Copyright (c) 2011 AllBinary
 * 
 * By agreeing to this license you and any business entity you represent are
 * legally bound to the AllBinary Open License Version 1 legal agreement.
 * 
 * You may obtain the AllBinary Open License Version 1 legal agreement from
 * AllBinary or the root directory of AllBinary's AllBinary Platform repository.
 * 
 * Created By: Travis Berthelot
 *  
 */
// Generated Code Do Not Modify
// package org.allbinary.game.ag.life

#include <math.h>
#include <stdint.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <strings.h>
#include "allbinary_java.h"
#include "ABObject.h"
@class Life;
@class LifeInterface;
#include "org/allbinary/game/ag/life/LifeInterface.h"

@interface Life : ABObject <LifeInterface> {
@public
    int16_t lives;
    int16_t startLives;
    int16_t maxlives;
}
- (instancetype) init:(int16_t)lives :(int16_t)maxlives;
- (void) initFields;
+ (Life*) createLife;
- (int16_t) get;
- (void) set:(int16_t)lives;
- (void) reset;
- (void) add:(int16_t)lives;
- (bool) isAlive;
- (int16_t) getMaxlives;
- (bool) reachedLimit;
- (void) deaths:(int16_t)lives;
- (int16_t) getStartLives;
- (void) setStartLives:(int16_t)startLives;
@end

extern Life* Life_NO_LIFE;
// Runs the Java static initialization of the class once. Reads of its static fields call it first.
void Life_staticInit(void);


#endif // ORG_ALLBINARY_GAME_AG_LIFE_LIFE_H
