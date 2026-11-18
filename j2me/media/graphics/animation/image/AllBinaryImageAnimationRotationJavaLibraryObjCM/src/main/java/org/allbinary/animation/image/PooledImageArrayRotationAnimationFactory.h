#ifndef ORG_ALLBINARY_ANIMATION_IMAGE_POOLEDIMAGEARRAYROTATIONANIMATIONFACTORY_H
#define ORG_ALLBINARY_ANIMATION_IMAGE_POOLEDIMAGEARRAYROTATIONANIMATIONFACTORY_H
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
@class PooledImageArrayRotationAnimationFactory;
@class Image;
@class Animation;
@class AnimationBehaviorFactory;
@class AnimationInterfaceFactoryInterface;
@class GameConfigurationCentral;
@class NullUtil;
@class AngleFactory;
@class ScaleProperties;
@class ImageToRotationImageArrayUtil;
@class ImageArrayRotationAnimationInfo;
@class AdjustedImageArrayRotationAnimation;
#if __has_include("org/allbinary/animation/AnimationBehaviorFactory.h")
#include "org/allbinary/animation/AnimationBehaviorFactory.h"
#endif
#include "org/allbinary/animation/AnimationInterfaceFactoryInterface.h"

//TWB - Adjustments should be done in the resource creation and not at the animation level
@interface PooledImageArrayRotationAnimationFactory : ABObject <AnimationInterfaceFactoryInterface> {
@public
    id allBinaryImageRotationAnimationInfo;
    AnimationBehaviorFactory* animationBehaviorFactory;
}
- (instancetype) init:(Image*)image :(int32_t)width :(int32_t)height :(int32_t)dx :(int32_t)dy :(int32_t)angleIncrement :(AnimationBehaviorFactory*)animationBehaviorFactory;
- (void) initFields;
+ (PooledImageArrayRotationAnimationFactory*) createFactory:(Image*)image :(AnimationBehaviorFactory*)animationBehaviorFactory;
+ (PooledImageArrayRotationAnimationFactory*) createDXY:(Image*)image :(int32_t)dx :(int32_t)dy :(AnimationBehaviorFactory*)animationBehaviorFactory;
- (Animation*) getInstance:(int32_t)instanceId;
- (void) setInitialScale:(ScaleProperties*)scaleProperties;
@end

// Runs the Java static initialization of the class once. Reads of its static fields call it first.
void PooledImageArrayRotationAnimationFactory_staticInit(void);

#if __has_include("org/allbinary/animation/Animation.h")
#include "org/allbinary/animation/Animation.h"
#endif

#endif // ORG_ALLBINARY_ANIMATION_IMAGE_POOLEDIMAGEARRAYROTATIONANIMATIONFACTORY_H
