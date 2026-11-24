#ifndef ORG_ALLBINARY_PHYSICS_MOVEMENT_MOVEMENT_H
#define ORG_ALLBINARY_PHYSICS_MOVEMENT_MOVEMENT_H
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
// package org.allbinary.physics.movement

#include <math.h>
#include <stdint.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <strings.h>
#include "allbinary_java.h"
#include "ABObject.h"
@class Movement;
@class AllBinaryGameLayer;
@class BasicDecimal;
@class MovementInterface;
#include "org/allbinary/physics/movement/MovementInterface.h"

@interface Movement : ABObject <MovementInterface> {
@public
}
- (instancetype) init;
- (void) initMethod:(BasicDecimal*)speedBasicDecimal :(int32_t)angle :(int32_t)otherAngle;
- (void) process:(AllBinaryGameLayer*)layer;
- (void) stop;
@end

// Runs the Java static initialization of the class once. Reads of its static fields call it first.
void Movement_staticInit(void);


#endif // ORG_ALLBINARY_PHYSICS_MOVEMENT_MOVEMENT_H
