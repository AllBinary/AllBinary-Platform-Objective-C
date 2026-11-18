#ifndef ORG_ALLBINARY_ANIMATION_IMAGE_IMAGEANIMATIONFACTORY_H
#define ORG_ALLBINARY_ANIMATION_IMAGE_IMAGEANIMATIONFACTORY_H
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
@class ImageAnimationFactory;
@class Image;
@class Animation;
@class AnimationBehaviorFactory;
@class OpenGLUtil;
@class PrimitiveIntUtil;
@class BaseImageAnimationFactory;
@class ImageAnimation;
@class AdjustedImageAnimation;
#include "org/allbinary/animation/image/BaseImageAnimationFactory.h"

@interface ImageAnimationFactory : BaseImageAnimationFactory {
@public
}
- (instancetype) init:(Image*)image :(int32_t)width :(int32_t)height :(int32_t)dx :(int32_t)dy :(AnimationBehaviorFactory*)animationBehaviorFactory;
+ (ImageAnimationFactory*) createFactory:(Image*)image;
- (Animation*) getInstance:(int32_t)instanceId;
@end

// Runs the Java static initialization of the class once. Reads of its static fields call it first.
void ImageAnimationFactory_staticInit(void);

#if __has_include("org/allbinary/animation/Animation.h")
#include "org/allbinary/animation/Animation.h"
#endif

#endif // ORG_ALLBINARY_ANIMATION_IMAGE_IMAGEANIMATIONFACTORY_H
