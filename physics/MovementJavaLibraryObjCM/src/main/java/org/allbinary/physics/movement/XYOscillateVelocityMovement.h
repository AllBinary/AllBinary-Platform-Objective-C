#ifndef ORG_ALLBINARY_PHYSICS_MOVEMENT_XYOSCILLATEVELOCITYMOVEMENT_H
#define ORG_ALLBINARY_PHYSICS_MOVEMENT_XYOSCILLATEVELOCITYMOVEMENT_H
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
@class XYOscillateVelocityMovement;
@class AllBinaryGameLayer;
@class VelocityProperties;
@class BasicDecimal;
@class BasicConstantVelocityMovement;
#include "org/allbinary/physics/movement/BasicConstantVelocityMovement.h"

@interface XYOscillateVelocityMovement : BasicConstantVelocityMovement {
@public
    int32_t oscillateMin;
    int32_t oscillateMax;
    int32_t oscillate;
    bool oscillatePositive;
}
- (instancetype) init:(BasicDecimal*)speedBasicDecimal :(int32_t)oscillateMin :(int32_t)oscillateMax;
- (void) initFields;
- (void) process:(AllBinaryGameLayer*)layer;
@end

// Runs the Java static initialization of the class once. Reads of its static fields call it first.
void XYOscillateVelocityMovement_staticInit(void);


#endif // ORG_ALLBINARY_PHYSICS_MOVEMENT_XYOSCILLATEVELOCITYMOVEMENT_H
