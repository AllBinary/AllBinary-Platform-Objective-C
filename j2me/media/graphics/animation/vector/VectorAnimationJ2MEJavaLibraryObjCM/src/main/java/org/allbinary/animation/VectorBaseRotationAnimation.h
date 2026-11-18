#ifndef ORG_ALLBINARY_ANIMATION_VECTORBASEROTATIONANIMATION_H
#define ORG_ALLBINARY_ANIMATION_VECTORBASEROTATIONANIMATION_H
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
@class VectorBaseRotationAnimation;
@class Graphics;
@class BasicColor;
@class NullUtil;
@class PrimitiveIntUtil;
@class AngleInfo;
@class CircularIndexUtil;
@class RotationAnimation;
@class VectorAnimationInterface;
@class AnimationBehavior;
#include "org/allbinary/animation/RotationAnimation.h"
#include "org/allbinary/animation/VectorAnimationInterface.h"

@interface VectorBaseRotationAnimation : RotationAnimation <VectorAnimationInterface> {
@public
    int32_t*** currentPoints;
}
- (instancetype) init:(AngleInfo*)angleInfo :(int32_t***)currentPoints :(BasicColor*)basicColor :(AnimationBehavior*)animationBehavior;
- (void) initFields;
- (int32_t) getAnimationSize;
- (int32_t) getFrame;
- (void) setFrame:(int32_t)index;
- (void) nextFrame;
- (void) previousFrame;
- (int32_t) getSize;
- (void) setSequence:(int32_t*)sequence;
- (int32_t*) getSequence;
- (void) paintXY:(Graphics*)graphics :(int32_t)x :(int32_t)y;
- (int32_t**) getPoints:(int32_t)frame;
- (void) setPoints:(int32_t***)currentPoints;
- (BasicColor*) getBasicColorP;
- (void) setBasicColorP:(BasicColor*)basicColor;
@end

// Runs the Java static initialization of the class once. Reads of its static fields call it first.
void VectorBaseRotationAnimation_staticInit(void);

#if __has_include("org/allbinary/graphics/color/BasicColor.h")
#include "org/allbinary/graphics/color/BasicColor.h"
#endif

#endif // ORG_ALLBINARY_ANIMATION_VECTORBASEROTATIONANIMATION_H
