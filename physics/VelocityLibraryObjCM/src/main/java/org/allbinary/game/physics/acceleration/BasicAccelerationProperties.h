#ifndef ORG_ALLBINARY_GAME_PHYSICS_ACCELERATION_BASICACCELERATIONPROPERTIES_H
#define ORG_ALLBINARY_GAME_PHYSICS_ACCELERATION_BASICACCELERATIONPROPERTIES_H
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
// package org.allbinary.game.physics.acceleration

#include <math.h>
#include <stdint.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <strings.h>
#include "allbinary_java.h"
#include "ABObject.h"
@class BasicAccelerationProperties;

@interface BasicAccelerationProperties : ABObject {
@public
    int32_t forward;
    int32_t reverse;
}
- (instancetype) init:(int32_t)forward :(int32_t)reverse;
- (void) initFields;
- (void) setReverse:(int32_t)reverse;
- (int32_t) getReverse;
- (void) setForward:(int32_t)forward;
- (int32_t) getForward;
@end

// Runs the Java static initialization of the class once. Reads of its static fields call it first.
void BasicAccelerationProperties_staticInit(void);


#endif // ORG_ALLBINARY_GAME_PHYSICS_ACCELERATION_BASICACCELERATIONPROPERTIES_H
