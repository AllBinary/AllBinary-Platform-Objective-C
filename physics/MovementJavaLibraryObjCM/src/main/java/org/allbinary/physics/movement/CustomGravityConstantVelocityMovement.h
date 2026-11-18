#ifndef ORG_ALLBINARY_PHYSICS_MOVEMENT_CUSTOMGRAVITYCONSTANTVELOCITYMOVEMENT_H
#define ORG_ALLBINARY_PHYSICS_MOVEMENT_CUSTOMGRAVITYCONSTANTVELOCITYMOVEMENT_H
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
@class CustomGravityConstantVelocityMovement;
@class AllBinaryGameLayer;
@class GravityUtil;
@class VelocityProperties;
@class BasicDecimal;
@class BasicConstantVelocityMovement;
#if __has_include("org/allbinary/game/physics/acceleration/GravityUtil.h")
#include "org/allbinary/game/physics/acceleration/GravityUtil.h"
#endif
#include "org/allbinary/physics/movement/BasicConstantVelocityMovement.h"

@interface CustomGravityConstantVelocityMovement : BasicConstantVelocityMovement {
@public
    int32_t customGravity;
    GravityUtil* gravityUtil;
}
- (instancetype) init:(BasicDecimal*)speedBasicDecimal :(int32_t)customGravity;
- (void) initFields;
- (void) process:(AllBinaryGameLayer*)layer;
@end

// Runs the Java static initialization of the class once. Reads of its static fields call it first.
void CustomGravityConstantVelocityMovement_staticInit(void);


#endif // ORG_ALLBINARY_PHYSICS_MOVEMENT_CUSTOMGRAVITYCONSTANTVELOCITYMOVEMENT_H
