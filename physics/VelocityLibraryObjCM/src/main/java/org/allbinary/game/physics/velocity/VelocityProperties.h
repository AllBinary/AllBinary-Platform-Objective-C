#ifndef ORG_ALLBINARY_GAME_PHYSICS_VELOCITY_VELOCITYPROPERTIES_H
#define ORG_ALLBINARY_GAME_PHYSICS_VELOCITY_VELOCITYPROPERTIES_H
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
@class VelocityProperties;
@class BasicVelocityProperties;
@class VelocityInterface;
#include "org/allbinary/game/physics/velocity/BasicVelocityProperties.h"
#include "org/allbinary/game/physics/velocity/VelocityInterface.h"

@interface VelocityProperties : BasicVelocityProperties <VelocityInterface> {
@public
    int32_t maxForwardVelocity;
    int32_t maxReverseVelocity;
}
- (instancetype) init:(int32_t)maxForwardVelocity :(int32_t)maxReverseVelocity;
- (void) initFields;
- (int32_t) getMaxForwardVelocity;
- (void) setMaxForwardVelocity:(int32_t)maxForwardVelocity;
- (int32_t) getMaxReverseVelocity;
- (void) setMaxReverseVelocity:(int32_t)maxReverseVelocity;
- (void) limitMaxXYForwardVelocity;
- (void) limitMaxXYReverseVelocity;
- (void) limitMaxYForwardVelocity;
- (void) limitMaxYReverseVelocity;
- (void) limitMaxXForwardVelocity;
- (void) limitMaxXReverseVelocity;
- (bool) isOverXYMaxForwardVelocity;
- (bool) isOverXYMaxReverseVelocity;
- (void) limitXYToForwardAndReverseMaxVelocity;
- (void) limitMaxXYVelocity:(int32_t)maxVelocity;
- (void) limitMaxPositiveYVelocity:(int32_t)maxVelocity;
- (void) limitMaxNegativeYVelocity:(int32_t)maxVelocity;
- (void) limitMaxYVelocity:(int32_t)maxVelocity;
- (void) limitMaxXVelocity:(int32_t)maxVelocity;
- (bool) isOverXYMaxVelocity:(int32_t)maxVelocity;
- (void) setVelocityi:(int64_t)magnitude :(int32_t)angle :(int32_t)otherAngle;
- (void) addVelocityi:(int64_t)magnitude :(int32_t)angle :(int32_t)otherAngle;
@end

extern VelocityProperties* VelocityProperties_NULL_VELOCITY_PROPERTIES;
// Runs the Java static initialization of the class once. Reads of its static fields call it first.
void VelocityProperties_staticInit(void);


#endif // ORG_ALLBINARY_GAME_PHYSICS_VELOCITY_VELOCITYPROPERTIES_H
