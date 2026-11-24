#ifndef ORG_ALLBINARY_ANIMATION_IMAGE_ADJUSTEDIMAGEANIMATION_H
#define ORG_ALLBINARY_ANIMATION_IMAGE_ADJUSTEDIMAGEANIMATION_H
/*
 * 
 * AllBinary Open License Version 1 
 * Copyright (c) 2022 AllBinary 
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
// package org.allbinary.animation.image

#include <math.h>
#include <stdint.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <strings.h>
#include "allbinary_java.h"
#include "ABObject.h"
@class AdjustedImageAnimation;
@class Graphics;
@class Image;
@class AnimationBehavior;
@class ImageAnimation;
#include "org/allbinary/animation/image/ImageAnimation.h"

@interface AdjustedImageAnimation : ImageAnimation {
@public
    int32_t dx;
    int32_t dy;
}
- (instancetype) init:(Image*)image :(int32_t)dx :(int32_t)dy :(AnimationBehavior*)animationBehavior;
- (void) initFields;
- (void) initMethod:(int32_t)dx :(int32_t)dy;
- (void) paintXY:(Graphics*)graphics :(int32_t)x :(int32_t)y;
- (void) setDx:(int32_t)dx;
- (int32_t) getDx;
- (void) setDy:(int32_t)dy;
- (int32_t) getDy;
@end

// Runs the Java static initialization of the class once. Reads of its static fields call it first.
void AdjustedImageAnimation_staticInit(void);


#endif // ORG_ALLBINARY_ANIMATION_IMAGE_ADJUSTEDIMAGEANIMATION_H
