#ifndef ORG_ALLBINARY_ANIMATION_ADJUSTEDVECTORANIMATION_H
#define ORG_ALLBINARY_ANIMATION_ADJUSTEDVECTORANIMATION_H
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
@class AdjustedVectorAnimation;
@class Graphics;
@class BasicColor;
@class VectorAnimation;
@class AnimationBehavior;
#include "org/allbinary/animation/VectorAnimation.h"

@interface AdjustedVectorAnimation : VectorAnimation {
@public
    int32_t dx;
    int32_t dy;
}
- (instancetype) init:(int32_t***)currentPoints :(BasicColor*)basicColor :(int32_t)dx :(int32_t)dy :(AnimationBehavior*)animationBehavior;
- (void) initFields;
- (void) paintXY:(Graphics*)graphics :(int32_t)x :(int32_t)y;
@end

// Runs the Java static initialization of the class once. Reads of its static fields call it first.
void AdjustedVectorAnimation_staticInit(void);


#endif // ORG_ALLBINARY_ANIMATION_ADJUSTEDVECTORANIMATION_H
