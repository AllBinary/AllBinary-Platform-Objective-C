#ifndef ORG_ALLBINARY_ANIMATION_VECTORANIMATION_H
#define ORG_ALLBINARY_ANIMATION_VECTORANIMATION_H
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
@class VectorAnimation;
@class Graphics;
@class NullImage;
@class BasicColor;
@class NullUtil;
@class PrimitiveIntUtil;
@class CircularIndexUtil;
@class IndexedAnimation;
@class VectorAnimationInterface;
@class AnimationBehavior;
// #include "javax/microedition/lcdui/NullImage.h"
#if __has_include("org/allbinary/util/CircularIndexUtil.h")
#include "org/allbinary/util/CircularIndexUtil.h"
#endif
#include "org/allbinary/animation/IndexedAnimation.h"
#include "org/allbinary/animation/VectorAnimationInterface.h"

@interface VectorAnimation : IndexedAnimation <VectorAnimationInterface> {
@public
    int32_t*** currentPoints;
    CircularIndexUtil* circularIndexUtil;
}
- (instancetype) init:(int32_t***)currentPoints :(BasicColor*)basicColor :(AnimationBehavior*)animationBehavior;
- (void) initFields;
+ (VectorAnimation*) createVectorAnimation:(int32_t**)currentPoints2 :(BasicColor*)basicColor :(AnimationBehavior*)animationBehavior;
- (void) setBasicColorP:(BasicColor*)basicColor;
- (void) changeBasicColor:(BasicColor*)basicColor;
- (void) setAlpha:(int32_t)alpha;
- (void) setScale:(float)scaleX :(float)scaleY;
- (void) setMaxScale:(float)maxScaleX :(float)maxScaleY;
- (void) updateModifiers;
- (int32_t) getAnimationSize;
- (int32_t) getSize;
- (void) setSequence:(int32_t*)sequence;
- (int32_t*) getSequence;
- (void) nextFrame;
- (void) previousFrame;
- (void) paintVectors:(Graphics*)graphics :(int32_t)x :(int32_t)y;
- (void) paintXY:(Graphics*)graphics :(int32_t)x :(int32_t)y;
- (int32_t) getFrame;
- (void) setFrame:(int32_t)index;
- (int32_t**) getPoints:(int32_t)frame;
- (void) setPoints:(int32_t***)currentPoints;
- (BasicColor*) getBasicColorP;
@end

// Runs the Java static initialization of the class once. Reads of its static fields call it first.
void VectorAnimation_staticInit(void);

#if __has_include("org/allbinary/graphics/color/BasicColor.h")
#include "org/allbinary/graphics/color/BasicColor.h"
#endif

#endif // ORG_ALLBINARY_ANIMATION_VECTORANIMATION_H
