#ifndef ORG_ALLBINARY_ANIMATION_IMAGE_IMAGEARRAYSPECIALANIMATION_H
#define ORG_ALLBINARY_ANIMATION_IMAGE_IMAGEARRAYSPECIALANIMATION_H
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
@class ImageArraySpecialAnimation;
@class Graphics;
@class Image;
@class AnimationBehavior;
@class SpecialAnimationInterface;
@class DisplayInfoSingleton;
@class GameTickTimeDelayHelperFactory;
@class TimeDelayHelper;
@class ImageArrayAnimation;
#include "org/allbinary/animation/special/SpecialAnimationInterface.h"
#if __has_include("org/allbinary/time/TimeDelayHelper.h")
#include "org/allbinary/time/TimeDelayHelper.h"
#endif
#include "org/allbinary/animation/image/ImageArrayAnimation.h"

@interface ImageArraySpecialAnimation : ImageArrayAnimation <SpecialAnimationInterface> {
@public
    TimeDelayHelper* timeDelayHelper;
    int32_t loopCount;
    int32_t loopCountTotal;
}
- (instancetype) init:(Image**)imageArray :(AnimationBehavior*)animationBehavior;
- (void) initFields;
- (int32_t) getLoopCount;
- (void) setLastFrame;
- (void) reset;
- (void) nextFrame;
- (bool) isComplete;
- (void) paintXY:(Graphics*)graphics :(int32_t)x :(int32_t)y;
@end

// Runs the Java static initialization of the class once. Reads of its static fields call it first.
void ImageArraySpecialAnimation_staticInit(void);


#endif // ORG_ALLBINARY_ANIMATION_IMAGE_IMAGEARRAYSPECIALANIMATION_H
