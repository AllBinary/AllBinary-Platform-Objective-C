#ifndef ORG_ALLBINARY_GAME_PHYSICS_VELOCITY_BASICVELOCITYINTERFACE_H
#define ORG_ALLBINARY_GAME_PHYSICS_VELOCITY_BASICVELOCITYINTERFACE_H
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
@class BasicVelocityInterface;
@class Direction;
@class BasicDecimal;
@class Angle;

@protocol BasicVelocityInterface
- (BasicDecimal*) getVelocityXBasicDecimalP;
- (BasicDecimal*) getVelocityYBasicDecimalP;
- (void) zero;
- (void) setVelocityWithBigDecimalAndDirection:(BasicDecimal*)magnitudeBasicDecimal :(Direction*)direction :(Direction*)otherDirection;
- (void) addVelocityWithBigDecimalAndDirection:(BasicDecimal*)magnitudeBasicDecimal :(Direction*)direction :(Direction*)otherDirection;
- (void) setVelocityWithDirection:(int64_t)magnitude :(Direction*)direction :(Direction*)otherDirection;
- (void) addVelocityWithDirection:(int64_t)magnitude :(Direction*)direction :(Direction*)otherDirection;
- (void) setVelocityWithBigDecimal:(BasicDecimal*)magnitudeBasicDecimal :(Angle*)angle :(Angle*)otherAngle;
- (void) addVelocityWithBigDecimal:(BasicDecimal*)magnitudeBasicDecimal :(Angle*)angle :(Angle*)otherAngle;
- (void) setVelocity:(int64_t)magnitude :(Angle*)angle :(Angle*)otherAngle;
- (void) addVelocity:(int64_t)magnitude :(Angle*)angle :(Angle*)otherAngle;
- (void) addVelocityi:(int64_t)magnitude :(int32_t)angle :(int32_t)otherAngle;
@end

// Runs the Java static initialization of the class once. Reads of its static fields call it first.
void BasicVelocityInterface_staticInit(void);

#if __has_include("org/allbinary/logic/math/BasicDecimal.h")
#include "org/allbinary/logic/math/BasicDecimal.h"
#endif

#endif // ORG_ALLBINARY_GAME_PHYSICS_VELOCITY_BASICVELOCITYINTERFACE_H
