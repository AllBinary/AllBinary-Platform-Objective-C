#ifndef ORG_ALLBINARY_PHYSICS_MOVEMENT_CONSTANTVELOCITYNOTIFYVIEWCHANGEMOVEMENT_H
#define ORG_ALLBINARY_PHYSICS_MOVEMENT_CONSTANTVELOCITYNOTIFYVIEWCHANGEMOVEMENT_H
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
@class ConstantVelocityNotifyViewChangeMovement;
@class AllBinaryGameLayer;
@class BasicVelocityProperties;
@class AllBinaryLayer;
@class BasicDecimal;
@class AxisMathVectorUtil;
@class AngleFactory;
@class Movement;
#if __has_include("org/allbinary/game/physics/velocity/BasicVelocityProperties.h")
#include "org/allbinary/game/physics/velocity/BasicVelocityProperties.h"
#endif
#if __has_include("org/allbinary/logic/math/BasicDecimal.h")
#include "org/allbinary/logic/math/BasicDecimal.h"
#endif
#if __has_include("org/allbinary/logic/math/vector/AxisMathVectorUtil.h")
#include "org/allbinary/logic/math/vector/AxisMathVectorUtil.h"
#endif
#include "org/allbinary/physics/movement/Movement.h"

@interface ConstantVelocityNotifyViewChangeMovement : Movement {
@public
    BasicVelocityProperties* basicVelocityProperties;
    BasicDecimal* speedBasicDecimal;
    AxisMathVectorUtil* axisMathVectorUtil;
}
- (instancetype) init;
- (void) initFields;
- (void) init_:(BasicDecimal*)speedBasicDecimal :(int32_t)angle :(int32_t)otherAngle;
- (void) moveOutsideRadius:(AllBinaryLayer*)layer :(int64_t)radius :(int32_t)angle :(int32_t)otherAngle;
- (void) process:(AllBinaryGameLayer*)layer;
- (void) stop;
@end

// Runs the Java static initialization of the class once. Reads of its static fields call it first.
void ConstantVelocityNotifyViewChangeMovement_staticInit(void);


#endif // ORG_ALLBINARY_PHYSICS_MOVEMENT_CONSTANTVELOCITYNOTIFYVIEWCHANGEMOVEMENT_H
