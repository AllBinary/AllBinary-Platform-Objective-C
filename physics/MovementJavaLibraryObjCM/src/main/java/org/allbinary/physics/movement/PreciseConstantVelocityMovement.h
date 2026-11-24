#ifndef ORG_ALLBINARY_PHYSICS_MOVEMENT_PRECISECONSTANTVELOCITYMOVEMENT_H
#define ORG_ALLBINARY_PHYSICS_MOVEMENT_PRECISECONSTANTVELOCITYMOVEMENT_H
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
@class PreciseConstantVelocityMovement;
@class AllBinaryGameLayer;
@class BasicVelocityProperties;
@class BasicDecimal;
@class MathUtil;
@class ScaleFactorFactory;
@class BasicConstantVelocityMovement;
#include "org/allbinary/physics/movement/BasicConstantVelocityMovement.h"

@interface PreciseConstantVelocityMovement : BasicConstantVelocityMovement {
@public
    int32_t accumulatedX;
    int32_t accumulatedY;
    int32_t accumulatedZ;
    int32_t factorValue;
}
- (instancetype) init:(BasicDecimal*)basicDecimal :(BasicVelocityProperties*)velocityProperties;
- (void) initFields;
- (void) initMethod:(BasicDecimal*)speedBasicDecimal :(int32_t)angle :(int32_t)otherAngle;
- (void) process:(AllBinaryGameLayer*)layer;
@end

// Runs the Java static initialization of the class once. Reads of its static fields call it first.
void PreciseConstantVelocityMovement_staticInit(void);


#endif // ORG_ALLBINARY_PHYSICS_MOVEMENT_PRECISECONSTANTVELOCITYMOVEMENT_H
