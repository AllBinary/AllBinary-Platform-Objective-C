#ifndef ORG_ALLBINARY_ANIMATION_INDEXEDANIMATION_H
#define ORG_ALLBINARY_ANIMATION_INDEXEDANIMATION_H
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
@class IndexedAnimation;
@class LogUtil;
@class PrimitiveIntUtil;
@class CommonStrings;
@class Animation;
@class IndexedAnimationInterface;
@class AnimationBehavior;
#if __has_include("org/allbinary/logic/communication/log/LogUtil.h")
#include "org/allbinary/logic/communication/log/LogUtil.h"
#endif
#if __has_include("org/allbinary/string/CommonStrings.h")
#include "org/allbinary/string/CommonStrings.h"
#endif
#include "org/allbinary/animation/Animation.h"
#include "org/allbinary/animation/IndexedAnimationInterface.h"
#if __has_include("org/allbinary/animation/AnimationBehavior.h")
#include "org/allbinary/animation/AnimationBehavior.h"
#endif

@interface IndexedAnimation : Animation <IndexedAnimationInterface> {
@public
    LogUtil* logUtil;
    CommonStrings* commonStrings;
    AnimationBehavior* animationBehaviorP;
}
- (instancetype) init:(AnimationBehavior*)animationBehavior;
- (void) initFields;
- (AnimationBehavior*) getAnimationBehavior;
- (void) reset;
- (void) setFrame:(int32_t)index;
- (int32_t) getFrame;
- (int32_t) getAnimationSize;
- (int32_t) getSize;
- (void) previousFrame;
- (bool) isLastFrame;
- (void) setSequence:(int32_t*)sequence;
- (int32_t*) getSequence;
- (void) setState:(IndexedAnimation*)indexedAnimation;
- (int32_t) getWidth;
- (int32_t) getHeight;
@end

// Runs the Java static initialization of the class once. Reads of its static fields call it first.
void IndexedAnimation_staticInit(void);


#endif // ORG_ALLBINARY_ANIMATION_INDEXEDANIMATION_H
