#ifndef ORG_ALLBINARY_ANIMATION_SPECIAL_SPECIALANIMATION_H
#define ORG_ALLBINARY_ANIMATION_SPECIAL_SPECIALANIMATION_H
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
@class SpecialAnimation;
@class AnimationBehavior;
@class IndexedAnimation;
@class IndexedAnimationBehavior;
@class SpecialAnimationInterface;
#include "org/allbinary/animation/IndexedAnimation.h"
#include "org/allbinary/animation/special/SpecialAnimationInterface.h"

@interface SpecialAnimation : IndexedAnimation <SpecialAnimationInterface> {
@public
}
- (instancetype) init:(AnimationBehavior*)animationBehavior;
+ (SpecialAnimation*) getInstance;
- (void) nextFrame;
- (void) setLastFrame;
- (bool) isComplete;
- (void) open;
- (void) close;
- (void) process;
@end

// Runs the Java static initialization of the class once. Reads of its static fields call it first.
void SpecialAnimation_staticInit(void);


#endif // ORG_ALLBINARY_ANIMATION_SPECIAL_SPECIALANIMATION_H
