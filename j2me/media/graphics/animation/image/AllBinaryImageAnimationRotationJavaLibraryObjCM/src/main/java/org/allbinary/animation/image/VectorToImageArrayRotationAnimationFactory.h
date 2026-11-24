#ifndef ORG_ALLBINARY_ANIMATION_IMAGE_VECTORTOIMAGEARRAYROTATIONANIMATIONFACTORY_H
#define ORG_ALLBINARY_ANIMATION_IMAGE_VECTORTOIMAGEARRAYROTATIONANIMATIONFACTORY_H
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
@class VectorToImageArrayRotationAnimationFactory;
@class Image;
@class NullImage;
@class Animation;
@class AnimationBehaviorFactory;
@class VectorAnimation;
@class GameConfigurationCentral;
@class BasicColor;
@class AnimationFrameToImageUtil;
@class PrimitiveIntUtil;
@class AngleFactory;
@class AngleInfo;
@class ScaleProperties;
@class ImageToRotationImageArrayUtil;
@class VectorInfo;
@class BaseImageAnimationFactory;
@class AdjustedImageArrayRotationAnimation;
#if __has_include("javax/microedition/lcdui/Image.h")
#include "javax/microedition/lcdui/Image.h"
#endif
#include "org/allbinary/animation/image/BaseImageAnimationFactory.h"

@interface VectorToImageArrayRotationAnimationFactory : BaseImageAnimationFactory {
@public
    Image** imageArray;
    int32_t angleIncrement;
}
- (instancetype) init:(VectorInfo*)vectorInfo :(BasicColor*)basicColor :(AnimationBehaviorFactory*)animationBehaviorFactory;
- (void) initFields;
- (void) initMethod;
- (Animation*) getInstance:(int32_t)instanceId;
- (int32_t) getAngleIncrement;
- (void) setInitialScale:(ScaleProperties*)scaleProperties;
@end

// Runs the Java static initialization of the class once. Reads of its static fields call it first.
void VectorToImageArrayRotationAnimationFactory_staticInit(void);

#if __has_include("org/allbinary/animation/Animation.h")
#include "org/allbinary/animation/Animation.h"
#endif

#endif // ORG_ALLBINARY_ANIMATION_IMAGE_VECTORTOIMAGEARRAYROTATIONANIMATIONFACTORY_H
