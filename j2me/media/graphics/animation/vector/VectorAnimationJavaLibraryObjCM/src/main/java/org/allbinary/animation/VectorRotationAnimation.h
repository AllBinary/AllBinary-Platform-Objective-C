#ifndef ORG_ALLBINARY_ANIMATION_VECTORROTATIONANIMATION_H
#define ORG_ALLBINARY_ANIMATION_VECTORROTATIONANIMATION_H
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
@class VectorRotationAnimation;
@class Direction;
@class BasicColor;
@class Angle;
@class AngleFactory;
@class AngleInfo;
@class VectorBaseRotationAnimation;
@class AnimationBehavior;
#include "org/allbinary/animation/VectorBaseRotationAnimation.h"

@interface VectorRotationAnimation : VectorBaseRotationAnimation {
@public
}
- (instancetype) init:(int32_t***)currentPoints :(BasicColor*)basicColor :(AnimationBehavior*)animationBehavior;
- (void) setFrameByDirection:(Direction*)direction;
- (void) setFrameToAngle:(Angle*)angle;
- (void) setFrame:(int32_t)index;
- (void) adjustFrame:(int16_t)newAngle;
- (void) adjustFrameToAngle:(Angle*)newAngle;
@end

// Runs the Java static initialization of the class once. Reads of its static fields call it first.
void VectorRotationAnimation_staticInit(void);


#endif // ORG_ALLBINARY_ANIMATION_VECTORROTATIONANIMATION_H
