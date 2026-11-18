#ifndef ORG_ALLBINARY_GAME_PHYSICS_VELOCITY_VELOCITYINTERFACE_H
#define ORG_ALLBINARY_GAME_PHYSICS_VELOCITY_VELOCITYINTERFACE_H
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
@class VelocityInterface;
@class BasicVelocityInterface;
#include "org/allbinary/game/physics/velocity/BasicVelocityInterface.h"

@protocol VelocityInterface <BasicVelocityInterface>
- (int32_t) getMaxForwardVelocity;
- (int32_t) getMaxReverseVelocity;
- (void) limitMaxXYForwardVelocity;
- (void) limitMaxXYReverseVelocity;
- (void) limitXYToForwardAndReverseMaxVelocity;
- (void) limitMaxXYVelocity:(int32_t)maxVelocity;
- (void) setMaxForwardVelocity:(int32_t)maxForwardVelocity;
- (void) setMaxReverseVelocity:(int32_t)maxReverseVelocity;
@end

// Runs the Java static initialization of the class once. Reads of its static fields call it first.
void VelocityInterface_staticInit(void);


#endif // ORG_ALLBINARY_GAME_PHYSICS_VELOCITY_VELOCITYINTERFACE_H
