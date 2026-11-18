#ifndef ORG_ALLBINARY_ANIMATION_IMAGE_IMAGEARRAYANIMATIONFACTORY_H
#define ORG_ALLBINARY_ANIMATION_IMAGE_IMAGEARRAYANIMATIONFACTORY_H
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
@class ImageArrayAnimationFactory;
@class Image;
@class Animation;
@class AnimationBehavior;
@class AnimationBehaviorFactory;
@class AnimationInterfaceFactoryInterface;
@class ForcedLogUtil;
@class ScaleProperties;
@class ImageArrayAnimation;
@class AdjustedImageArrayAnimation;
#if __has_include("javax/microedition/lcdui/Image.h")
#include "javax/microedition/lcdui/Image.h"
#endif
#if __has_include("org/allbinary/animation/AnimationBehaviorFactory.h")
#include "org/allbinary/animation/AnimationBehaviorFactory.h"
#endif
#include "org/allbinary/animation/AnimationInterfaceFactoryInterface.h"
// #include "org/allbinary/logic/communication/log/ForcedLogUtil.h"

@interface ImageArrayAnimationFactory : ABObject <AnimationInterfaceFactoryInterface> {
@public
    int32_t dx;
    int32_t dy;
    Image** imageArray;
    AnimationBehaviorFactory* animationBehaviorFactory;
}
- (instancetype) init:(Image**)imageArray :(int32_t)dx :(int32_t)dy :(AnimationBehaviorFactory*)animationBehaviorFactory;
- (void) initFields;
- (Animation*) getInstance:(int32_t)instanceId;
- (void) setInitialScale:(ScaleProperties*)scaleProperties;
@end

// Runs the Java static initialization of the class once. Reads of its static fields call it first.
void ImageArrayAnimationFactory_staticInit(void);

#if __has_include("org/allbinary/animation/Animation.h")
#include "org/allbinary/animation/Animation.h"
#endif

#endif // ORG_ALLBINARY_ANIMATION_IMAGE_IMAGEARRAYANIMATIONFACTORY_H
