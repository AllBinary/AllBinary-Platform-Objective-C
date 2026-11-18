#ifndef ORG_ALLBINARY_GAME_PHYSICS_VELOCITY_DRAGVELOCITYBEHAVIOR_H
#define ORG_ALLBINARY_GAME_PHYSICS_VELOCITY_DRAGVELOCITYBEHAVIOR_H
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
// package org.allbinary.game.physics.velocity

#include <math.h>
#include <stdint.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <strings.h>
#include "allbinary_java.h"
#include "ABObject.h"
@class DragVelocityBehavior;
@class BasicDecimal;
@class VelocityBehaviorBase;
@class BasicVelocityProperties;
#include "org/allbinary/game/physics/velocity/VelocityBehaviorBase.h"

@interface DragVelocityBehavior : VelocityBehaviorBase {
@public
}
- (instancetype) init;
- (void) reduce:(BasicVelocityProperties*)velocityProperties :(int32_t)nominator :(int32_t)denominator;
- (void) reduceX:(BasicVelocityProperties*)velocityProperties :(int32_t)nominator :(int32_t)denominator;
- (void) reduceY:(BasicVelocityProperties*)velocityProperties :(int32_t)nominator :(int32_t)denominator;
@end

extern DragVelocityBehavior* DragVelocityBehavior_instance;
// Runs the Java static initialization of the class once. Reads of its static fields call it first.
void DragVelocityBehavior_staticInit(void);


#endif // ORG_ALLBINARY_GAME_PHYSICS_VELOCITY_DRAGVELOCITYBEHAVIOR_H
