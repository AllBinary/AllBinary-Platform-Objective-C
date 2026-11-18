#ifndef ORG_ALLBINARY_ANIMATION_IMAGE_IMAGEANIMATIONSINGLETONINTERFACEFACTORY_H
#define ORG_ALLBINARY_ANIMATION_IMAGE_IMAGEANIMATIONSINGLETONINTERFACEFACTORY_H
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
@class ImageAnimationSingletonInterfaceFactory;
@class Animation;
@class AnimationBehavior;
@class SingletonAnimationInterfaceFactory;
@class AnimationFrameToImageUtil;
@class ImageAnimation;
#include "org/allbinary/animation/SingletonAnimationInterfaceFactory.h"

@interface ImageAnimationSingletonInterfaceFactory : SingletonAnimationInterfaceFactory {
@public
}
- (instancetype) init:(Animation*)animationInterface :(int32_t)width :(int32_t)height;
@end

// Runs the Java static initialization of the class once. Reads of its static fields call it first.
void ImageAnimationSingletonInterfaceFactory_staticInit(void);


#endif // ORG_ALLBINARY_ANIMATION_IMAGE_IMAGEANIMATIONSINGLETONINTERFACEFACTORY_H
