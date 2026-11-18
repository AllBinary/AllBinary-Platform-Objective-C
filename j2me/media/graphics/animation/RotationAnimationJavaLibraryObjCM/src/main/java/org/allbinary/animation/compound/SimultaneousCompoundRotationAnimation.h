#ifndef ORG_ALLBINARY_ANIMATION_COMPOUND_SIMULTANEOUSCOMPOUNDROTATIONANIMATION_H
#define ORG_ALLBINARY_ANIMATION_COMPOUND_SIMULTANEOUSCOMPOUNDROTATIONANIMATION_H
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
// package org.allbinary.animation.compound

#include <math.h>
#include <stdint.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <strings.h>
#include "allbinary_java.h"
#include "ABObject.h"
@class SimultaneousCompoundRotationAnimation;
@class GL;
@class Graphics;
@class AnimationBehavior;
@class RotationAnimation;
@class Direction;
@class PrimitiveIntUtil;
@class Angle;
@class AngleFactory;
@class AngleInfo;
@class CircularIndexUtil;
#include "org/allbinary/animation/RotationAnimation.h"

@interface SimultaneousCompoundRotationAnimation : RotationAnimation {
@public
    RotationAnimation** animationInterfaceArray;
}
- (instancetype) init:(RotationAnimation**)animationInterfaceArray :(AnimationBehavior*)animationBehavior;
- (void) initFields;
- (void) setFrame:(int32_t)frameIndex;
- (int32_t) getFrame;
- (int32_t) getAnimationSize;
- (int32_t) getSize;
- (void) previousFrame;
- (void) nextFrame;
- (void) previousRotation;
- (void) nextRotation;
- (void) setSequence:(int32_t*)sequence;
- (int32_t*) getSequence;
- (void) paintXY:(Graphics*)graphics :(int32_t)x :(int32_t)y;
- (void) paintThreedXYZ:(Graphics*)graphics :(int32_t)x :(int32_t)y :(int32_t)z;
- (void) setFrameByDirection:(Direction*)direction;
- (void) setFrameToAngle:(Angle*)angle;
- (void) adjustFrameToAngle:(Angle*)newAngle;
- (void) adjustFrame:(int16_t)angle;
- (AngleInfo*) getAngleInfoP;
- (RotationAnimation**) getAnimationInterfaceArray;
- (void) setAnimationInterfaceArray:(RotationAnimation**)animationInterfaceArray;
- (void) set:(GL*)gl;
@end

// Runs the Java static initialization of the class once. Reads of its static fields call it first.
void SimultaneousCompoundRotationAnimation_staticInit(void);

#if __has_include("org/allbinary/math/AngleInfo.h")
#include "org/allbinary/math/AngleInfo.h"
#endif

#endif // ORG_ALLBINARY_ANIMATION_COMPOUND_SIMULTANEOUSCOMPOUNDROTATIONANIMATION_H
