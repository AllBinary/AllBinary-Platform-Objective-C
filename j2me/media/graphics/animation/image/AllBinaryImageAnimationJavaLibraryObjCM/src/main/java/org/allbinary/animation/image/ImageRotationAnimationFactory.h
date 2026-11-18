#ifndef ORG_ALLBINARY_ANIMATION_IMAGE_IMAGEROTATIONANIMATIONFACTORY_H
#define ORG_ALLBINARY_ANIMATION_IMAGE_IMAGEROTATIONANIMATIONFACTORY_H
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
@class ImageRotationAnimationFactory;
@class Image;
@class Animation;
@class AnimationBehaviorFactory;
@class GameConfigurationCentral;
@class PrimitiveIntUtil;
@class AngleFactory;
@class AngleInfo;
@class BaseImageAnimationFactory;
@class ImageBaseRotationAnimation;
@class AdjustedImageBaseRotationAnimation;
// #include "org/allbinary/game/configuration/GameConfigurationCentral.h"
#include "org/allbinary/animation/image/BaseImageAnimationFactory.h"

@interface ImageRotationAnimationFactory : BaseImageAnimationFactory {
@public
    int16_t angleIncrement;
}
- (instancetype) init:(Image*)image :(int32_t)width :(int32_t)height :(int32_t)dx :(int32_t)dy :(int16_t)angleIncrement :(AnimationBehaviorFactory*)animationBehaviorFactory;
- (void) initFields;
- (Animation*) getInstance:(int32_t)instanceId;
- (int16_t) getAngleIncrementP;
@end

// Runs the Java static initialization of the class once. Reads of its static fields call it first.
void ImageRotationAnimationFactory_staticInit(void);

#if __has_include("org/allbinary/animation/Animation.h")
#include "org/allbinary/animation/Animation.h"
#endif

#endif // ORG_ALLBINARY_ANIMATION_IMAGE_IMAGEROTATIONANIMATIONFACTORY_H
