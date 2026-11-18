#ifndef ORG_ALLBINARY_GAME_PHYSICS_VELOCITY_VELOCITYBEHAVIORBASE_H
#define ORG_ALLBINARY_GAME_PHYSICS_VELOCITY_VELOCITYBEHAVIORBASE_H
/*
 * 
 * AllBinary Open License Version 1 
 * Copyright (c) 2022 AllBinary 
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
// package org.allbinary.game.physics.velocity

#include <math.h>
#include <stdint.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <strings.h>
#include "allbinary_java.h"
#include "ABObject.h"
@class VelocityBehaviorBase;
@class BasicVelocityProperties;

@interface VelocityBehaviorBase : ABObject {
@public
}
- (instancetype) init;
- (void) reduce:(BasicVelocityProperties*)velocityProperties :(int32_t)nominator :(int32_t)denominator;
- (void) reduceX:(BasicVelocityProperties*)velocityProperties :(int32_t)nominator :(int32_t)denominator;
- (void) reduceY:(BasicVelocityProperties*)velocityProperties :(int32_t)nominator :(int32_t)denominator;
@end

// Runs the Java static initialization of the class once. Reads of its static fields call it first.
void VelocityBehaviorBase_staticInit(void);


#endif // ORG_ALLBINARY_GAME_PHYSICS_VELOCITY_VELOCITYBEHAVIORBASE_H
