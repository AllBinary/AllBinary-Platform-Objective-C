#ifndef ORG_ALLBINARY_GAME_HEALTH_HEALTH_H
#define ORG_ALLBINARY_GAME_HEALTH_HEALTH_H
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
// package org.allbinary.game.health

#include <math.h>
#include <stdint.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <strings.h>
#include "allbinary_java.h"
#include "ABObject.h"
@class Health;
@class ForcedLogUtil;
@class StringMaker;
@class CommonSeps;
@class HealthInterface;
@class NullHealthListener;
@class HealthListenerInterface;
#include "org/allbinary/game/health/HealthInterface.h"
#if __has_include("org/allbinary/game/health/HealthListenerInterface.h")
#include "org/allbinary/game/health/HealthListenerInterface.h"
#endif

@interface Health : ABObject <HealthInterface> {
@public
    int32_t health;
    int32_t maxHealth;
    HealthListenerInterface* healthListenerInterface;
}
- (instancetype) init:(int32_t)maxHealth;
- (void) initFields;
- (void) heal:(int32_t)ahealth;
- (void) healMax;
- (bool) isDamaged;
- (void) damage:(int32_t)ahealth;
- (bool) isAlive;
- (int32_t) getMaxHealth;
- (void) setMaxHealth:(int32_t)maxHealth;
- (void) setHealth:(int32_t)health;
- (int32_t) getHealth;
- (void) addListener:(HealthListenerInterface*)healthGraphic;
- (const char*) toString;
@end

extern Health* Health_NULL_HEALTH;
extern const char* Health_NAME;
// Runs the Java static initialization of the class once. Reads of its static fields call it first.
void Health_staticInit(void);


#endif // ORG_ALLBINARY_GAME_HEALTH_HEALTH_H
