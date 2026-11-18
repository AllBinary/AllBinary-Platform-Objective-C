#ifndef ORG_ALLBINARY_ANIMATION_IMAGE_BASEIMAGEANIMATIONFACTORY_H
#define ORG_ALLBINARY_ANIMATION_IMAGE_BASEIMAGEANIMATIONFACTORY_H
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
@class BaseImageAnimationFactory;
@class Image;
@class Animation;
@class AnimationBehaviorFactory;
@class AnimationInterfaceFactoryInterface;
@class NullAnimationFactory;
@class AnimationFactoryImageScaleUtil;
@class ForcedLogUtil;
@class StringMaker;
@class ScaleProperties;
@class CommonLabels;
@class CommonSeps;
@class AnimationFactoryInitializationVisitor;
#if __has_include("javax/microedition/lcdui/Image.h")
#include "javax/microedition/lcdui/Image.h"
#endif
#if __has_include("org/allbinary/animation/AnimationBehaviorFactory.h")
#include "org/allbinary/animation/AnimationBehaviorFactory.h"
#endif
#include "org/allbinary/animation/AnimationInterfaceFactoryInterface.h"
#if __has_include("org/allbinary/image/AnimationFactoryImageScaleUtil.h")
#include "org/allbinary/image/AnimationFactoryImageScaleUtil.h"
#endif
// #include "org/allbinary/logic/communication/log/ForcedLogUtil.h"
#if __has_include("org/allbinary/media/ScaleProperties.h")
#include "org/allbinary/media/ScaleProperties.h"
#endif
#if __has_include("org/allbinary/animation/image/AnimationFactoryInitializationVisitor.h")
#include "org/allbinary/animation/image/AnimationFactoryInitializationVisitor.h"
#endif

@interface BaseImageAnimationFactory : ABObject <AnimationInterfaceFactoryInterface> {
@public
    AnimationFactoryImageScaleUtil* animationFactoryImageScaleUtil;
    Image* image;
    AnimationBehaviorFactory* animationBehaviorFactory;
    int32_t* sequenceArray;
    AnimationFactoryInitializationVisitor* animationFactoryInitializationVisitor;
    ScaleProperties* scaleProperties;
}
- (instancetype) init:(Image*)image :(int32_t*)sequenceArray :(int32_t)width :(int32_t)height :(int32_t)dx :(int32_t)dy :(AnimationBehaviorFactory*)animationBehaviorFactory;
- (void) initFields;
+ (BaseImageAnimationFactory*) createFactoryBase:(Image*)image :(int32_t*)sequenceArray :(int32_t)width :(int32_t)height :(AnimationBehaviorFactory*)animationBehaviorFactory;
- (Animation*) getInstance:(int32_t)instanceId;
- (Image*) getImage;
- (int32_t*) getSequenceArray;
- (void) setInitialScale:(ScaleProperties*)scaleProperties;
- (AnimationFactoryInitializationVisitor*) getAnimationFactoryInitializationVisitorP;
- (ScaleProperties*) getScalePropertiesP;
- (const char*) toString;
@end

// Runs the Java static initialization of the class once. Reads of its static fields call it first.
void BaseImageAnimationFactory_staticInit(void);

#if __has_include("javax/microedition/lcdui/Image.h")
#include "javax/microedition/lcdui/Image.h"
#endif
#if __has_include("org/allbinary/animation/Animation.h")
#include "org/allbinary/animation/Animation.h"
#endif
#if __has_include("org/allbinary/media/ScaleProperties.h")
#include "org/allbinary/media/ScaleProperties.h"
#endif

#endif // ORG_ALLBINARY_ANIMATION_IMAGE_BASEIMAGEANIMATIONFACTORY_H
