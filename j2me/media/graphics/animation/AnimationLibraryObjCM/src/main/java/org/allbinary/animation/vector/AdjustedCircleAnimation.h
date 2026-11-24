#ifndef ORG_ALLBINARY_ANIMATION_VECTOR_ADJUSTEDCIRCLEANIMATION_H
#define ORG_ALLBINARY_ANIMATION_VECTOR_ADJUSTEDCIRCLEANIMATION_H
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
// package org.allbinary.animation.vector

#include <math.h>
#include <stdint.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <strings.h>
#include "allbinary_java.h"
#include "ABObject.h"
@class AdjustedCircleAnimation;
@class Graphics;
@class AndroidUtil;
@class BasicColor;
@class CircleAnimation;
#include "org/allbinary/animation/vector/CircleAnimation.h"

@interface AdjustedCircleAnimation : CircleAnimation {
@public
    int32_t xAdjustment;
    int32_t yAdjustment;
}
- (instancetype) init:(int32_t)width :(int32_t)height :(BasicColor*)basicColor;
- (void) initFields;
+ (AdjustedCircleAnimation*) createAnimation:(int32_t)width :(int32_t)height :(int32_t)xAdjustment :(int32_t)yAdjustment :(BasicColor*)basicColor;
+ (AdjustedCircleAnimation*) createW:(int32_t)width :(int32_t)height :(int32_t)innerWidth :(BasicColor*)basicColor;
- (void) initXY:(int32_t)xAdjustment :(int32_t)yAdjustment;
- (void) initMethod:(int32_t)innerWidth;
- (void) paintXY:(Graphics*)graphics :(int32_t)x :(int32_t)y;
@end

// Runs the Java static initialization of the class once. Reads of its static fields call it first.
void AdjustedCircleAnimation_staticInit(void);


#endif // ORG_ALLBINARY_ANIMATION_VECTOR_ADJUSTEDCIRCLEANIMATION_H
