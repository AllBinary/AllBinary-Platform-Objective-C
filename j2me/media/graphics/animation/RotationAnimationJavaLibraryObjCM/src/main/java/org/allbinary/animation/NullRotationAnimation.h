#ifndef ORG_ALLBINARY_ANIMATION_NULLROTATIONANIMATION_H
#define ORG_ALLBINARY_ANIMATION_NULLROTATIONANIMATION_H
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
@class NullRotationAnimation;
@class AngleFactory;
@class AngleInfo;
@class CircularIndexUtil;
@class RotationAnimation;
@class AnimationBehavior;
#include "org/allbinary/animation/RotationAnimation.h"

@interface NullRotationAnimation : RotationAnimation {
@public
}
- (instancetype) init:(AngleInfo*)angleInfo :(CircularIndexUtil*)circularIndexUtil :(AnimationBehavior*)animationBehavior;
+ (NullRotationAnimation*) createTotalAngle:(AngleInfo*)angleInfo :(int16_t)totalAngle :(AnimationBehavior*)animationBehavior;
+ (NullRotationAnimation*) createQuarter:(AnimationBehavior*)animationBehavior;
- (int32_t) getAnimationSize;
@end

// Runs the Java static initialization of the class once. Reads of its static fields call it first.
void NullRotationAnimation_staticInit(void);


#endif // ORG_ALLBINARY_ANIMATION_NULLROTATIONANIMATION_H
