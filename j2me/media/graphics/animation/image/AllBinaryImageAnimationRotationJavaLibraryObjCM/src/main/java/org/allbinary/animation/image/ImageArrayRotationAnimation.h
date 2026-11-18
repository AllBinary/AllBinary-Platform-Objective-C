#ifndef ORG_ALLBINARY_ANIMATION_IMAGE_IMAGEARRAYROTATIONANIMATION_H
#define ORG_ALLBINARY_ANIMATION_IMAGE_IMAGEARRAYROTATIONANIMATION_H
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
// package org.allbinary.animation.image

#include <math.h>
#include <stdint.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <strings.h>
#include "allbinary_java.h"
#include "ABObject.h"
@class ImageArrayRotationAnimation;
@class Image;
@class AnimationBehavior;
@class AngleInfo;
@class ImageArrayBaseRotationAnimation;
@class ImageArrayRotationAnimationInfo;
#include "org/allbinary/animation/image/ImageArrayBaseRotationAnimation.h"

@interface ImageArrayRotationAnimation : ImageArrayBaseRotationAnimation {
@public
    int32_t expectedTotalFrames;
}
- (instancetype) init:(Image**)imageArray :(AngleInfo*)angleInfo :(int32_t)totalAngle :(AnimationBehavior*)animationBehavior;
- (void) initFields;
+ (ImageArrayRotationAnimation*) createAnimation:(id)anyType :(AnimationBehavior*)animationBehavior;
- (void) initImageArray:(Image**)imageArray :(AngleInfo*)angleInfo :(int32_t)totalAngle;
- (void) setImageArray:(Image**)imageArray;
@end

// Runs the Java static initialization of the class once. Reads of its static fields call it first.
void ImageArrayRotationAnimation_staticInit(void);


#endif // ORG_ALLBINARY_ANIMATION_IMAGE_IMAGEARRAYROTATIONANIMATION_H
