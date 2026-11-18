#ifndef ORG_ALLBINARY_ANIMATION_IMAGE_IMAGEARRAYSINGLETONANIMATIONINTERFACEFACTORY_H
#define ORG_ALLBINARY_ANIMATION_IMAGE_IMAGEARRAYSINGLETONANIMATIONINTERFACEFACTORY_H
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
@class ImageArraySingletonAnimationInterfaceFactory;
@class Image;
@class Animation;
@class AnimationBehavior;
@class IndexedAnimation;
@class SingletonAnimationInterfaceFactory;
@class IndexedAnimationToImageArrayUtil;
@class ImageArrayAnimation;
// #include "org/allbinary/animation/Animation.h"
// #include "org/allbinary/animation/IndexedAnimation.h"
#include "org/allbinary/animation/SingletonAnimationInterfaceFactory.h"
// #include "org/allbinary/image/IndexedAnimationToImageArrayUtil.h"

@interface ImageArraySingletonAnimationInterfaceFactory : SingletonAnimationInterfaceFactory {
@public
}
- (instancetype) init:(Image**)imageArray;
@end

// Runs the Java static initialization of the class once. Reads of its static fields call it first.
void ImageArraySingletonAnimationInterfaceFactory_staticInit(void);


#endif // ORG_ALLBINARY_ANIMATION_IMAGE_IMAGEARRAYSINGLETONANIMATIONINTERFACEFACTORY_H
