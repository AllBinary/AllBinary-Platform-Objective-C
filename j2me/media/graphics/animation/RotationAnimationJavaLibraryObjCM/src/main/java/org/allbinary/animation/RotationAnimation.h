#ifndef ORG_ALLBINARY_ANIMATION_ROTATIONANIMATION_H
#define ORG_ALLBINARY_ANIMATION_ROTATIONANIMATION_H
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
// package org.allbinary.animation

#include <math.h>
#include <stdint.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <strings.h>
#include "allbinary_java.h"
#include "ABObject.h"
@class RotationAnimation;
@class Direction;
@class DirectionUtil;
@class StringMaker;
@class Angle;
@class AngleInfo;
@class FrameUtil;
@class CircularIndexUtil;
@class IndexedAnimation;
@class RotationAnimationInterface;
@class AnimationBehavior;
#if __has_include("org/allbinary/direction/DirectionUtil.h")
#include "org/allbinary/direction/DirectionUtil.h"
#endif
#if __has_include("org/allbinary/math/AngleInfo.h")
#include "org/allbinary/math/AngleInfo.h"
#endif
#if __has_include("org/allbinary/math/FrameUtil.h")
#include "org/allbinary/math/FrameUtil.h"
#endif
#if __has_include("org/allbinary/util/CircularIndexUtil.h")
#include "org/allbinary/util/CircularIndexUtil.h"
#endif
#include "org/allbinary/animation/IndexedAnimation.h"
#include "org/allbinary/animation/RotationAnimationInterface.h"

@interface RotationAnimation : IndexedAnimation <RotationAnimationInterface> {
@public
    FrameUtil* frameUtil;
    DirectionUtil* directionUtil;
    AngleInfo* angleInfo;
    CircularIndexUtil* circularIndexUtil;
}
- (instancetype) init:(AngleInfo*)angleInfo :(CircularIndexUtil*)circularIndexUtil :(AnimationBehavior*)animationBehavior;
- (void) initFields;
- (void) nextRotationX;
- (void) previousRotationX;
- (void) nextRotation;
- (void) previousRotation;
- (void) nextRotationZ;
- (void) previousRotationZ;
- (void) setFrame:(int32_t)index;
- (void) setFrameByDirection:(Direction*)direction;
- (void) setFrameToAngle:(Angle*)angle;
- (void) adjustFrameToAngle:(Angle*)angle;
- (void) adjustFrame:(int16_t)angle;
- (int32_t) getFrame;
- (int32_t) getSize;
- (AngleInfo*) getAngleInfoP;
- (const char*) toString;
@end

// Runs the Java static initialization of the class once. Reads of its static fields call it first.
void RotationAnimation_staticInit(void);

#if __has_include("org/allbinary/math/AngleInfo.h")
#include "org/allbinary/math/AngleInfo.h"
#endif

#endif // ORG_ALLBINARY_ANIMATION_ROTATIONANIMATION_H
