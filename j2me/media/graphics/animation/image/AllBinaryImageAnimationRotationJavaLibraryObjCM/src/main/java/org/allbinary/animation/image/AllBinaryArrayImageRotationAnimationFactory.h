#ifndef ORG_ALLBINARY_ANIMATION_IMAGE_ALLBINARYARRAYIMAGEROTATIONANIMATIONFACTORY_H
#define ORG_ALLBINARY_ANIMATION_IMAGE_ALLBINARYARRAYIMAGEROTATIONANIMATIONFACTORY_H
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
@class AllBinaryArrayImageRotationAnimationFactory;
@class Image;
@class NullImage;
@class Animation;
@class AnimationBehaviorFactory;
@class GameConfigurationCentral;
@class PrimitiveIntUtil;
@class AngleFactory;
@class AngleInfo;
@class ImageToRotationImageArrayUtil;
@class BaseImageAnimationFactory;
@class ImageArrayRotationAnimation;
@class AdjustedImageArrayRotationAnimation;
#if __has_include("javax/microedition/lcdui/Image.h")
#include "javax/microedition/lcdui/Image.h"
#endif
#include "org/allbinary/animation/image/BaseImageAnimationFactory.h"

@interface AllBinaryArrayImageRotationAnimationFactory : BaseImageAnimationFactory {
@public
    Image** imageArray;
    int32_t angleIncrement;
}
- (instancetype) init:(Image*)image :(int32_t)width :(int32_t)height :(int32_t)angleIncrement :(AnimationBehaviorFactory*)animationBehaviorFactory;
- (void) initFields;
+ (AllBinaryArrayImageRotationAnimationFactory*) createFactory:(Image*)image :(int32_t)dx :(int32_t)dy;
+ (AllBinaryArrayImageRotationAnimationFactory*) createFactoryA:(Image*)image :(int32_t)dx :(int32_t)dy :(int32_t)angleIncrement;
- (void) initMethod;
- (void) initDXY:(int32_t)dx :(int32_t)dy;
- (Animation*) getInstance:(int32_t)instanceId;
- (void) setImageArray:(Image**)imageArray;
- (int32_t) getAngleIncrement;
@end

// Runs the Java static initialization of the class once. Reads of its static fields call it first.
void AllBinaryArrayImageRotationAnimationFactory_staticInit(void);

#if __has_include("org/allbinary/animation/Animation.h")
#include "org/allbinary/animation/Animation.h"
#endif

#endif // ORG_ALLBINARY_ANIMATION_IMAGE_ALLBINARYARRAYIMAGEROTATIONANIMATIONFACTORY_H
