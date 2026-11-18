#ifndef ORG_ALLBINARY_ANIMATION_SPECIAL_TITLEANIMATION_H
#define ORG_ALLBINARY_ANIMATION_SPECIAL_TITLEANIMATION_H
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
// package org.allbinary.animation.special

#include <math.h>
#include <stdint.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <strings.h>
#include "allbinary_java.h"
#include "ABObject.h"
@class TitleAnimation;
@class Graphics;
@class AnimationBehavior;
@class IndexedAnimation;
@class IndexedAnimationBehavior;
@class BasicColor;
@class BasicColorFactory;
@class DisplayInfoSingleton;
@class ABSystemWrapper;
@class PrimitiveIntUtil;
@class SpecialAnimation;
#if __has_include("org/allbinary/animation/IndexedAnimation.h")
#include "org/allbinary/animation/IndexedAnimation.h"
#endif
#if __has_include("org/allbinary/graphics/color/BasicColor.h")
#include "org/allbinary/graphics/color/BasicColor.h"
#endif
#if __has_include("org/allbinary/graphics/displayable/DisplayInfoSingleton.h")
#include "org/allbinary/graphics/displayable/DisplayInfoSingleton.h"
#endif
#if __has_include("org/allbinary/logic/ABSystemWrapper.h")
#include "org/allbinary/logic/ABSystemWrapper.h"
#endif
#include "java/lang/Integer.h"
#include "org/allbinary/animation/special/SpecialAnimation.h"

@interface TitleAnimation : SpecialAnimation {
@public
    ABSystemWrapper* systemWrapper;
    float deltaX;
    float deltaY;
    float deltaZ;
    BasicColor** basicColorArray;
    int32_t* dxArray;
    int32_t* dyArray;
    int32_t widthP;
    IndexedAnimation** animationInterfaceArray;
    int32_t sizeP;
    int32_t y;
    int64_t lastFrameStartTime;
    DisplayInfoSingleton* displayInfoSingleton;
    BasicColor* CLEAR_COLOR;
}
- (instancetype) init:(IndexedAnimation**)animationInterfaceArray :(BasicColor**)basicColorArray :(int32_t*)dxArray :(int32_t*)dyArray :(int32_t)y :(int32_t)width :(AnimationBehavior*)animationBehavior;
- (void) initFields;
+ (TitleAnimation*) createAnimation:(IndexedAnimation**)animationInterfaceArray :(BasicColor**)basicColorArray :(int32_t*)dxArray :(int32_t*)dyArray :(int32_t)y :(int32_t)width;
- (void) nextFrame;
- (bool) isComplete;
- (void) setSequence:(int32_t*)sequence;
- (int32_t*) getSequence;
- (int32_t) getSize;
- (int32_t) getFrame;
- (void) setFrame:(int32_t)frame;
- (void) setLastFrame;
- (void) reset;
- (void) previousFrame;
- (void) paintFrameXY:(Graphics*)graphics :(int32_t)frame :(int32_t)x :(int32_t)y;
- (void) paintXY:(Graphics*)graphics :(int32_t)ax :(int32_t)ay;
@end

// Runs the Java static initialization of the class once. Reads of its static fields call it first.
void TitleAnimation_staticInit(void);


#endif // ORG_ALLBINARY_ANIMATION_SPECIAL_TITLEANIMATION_H
