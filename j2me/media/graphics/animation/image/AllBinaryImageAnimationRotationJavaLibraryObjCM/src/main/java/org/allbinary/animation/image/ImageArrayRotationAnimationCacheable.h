#ifndef ORG_ALLBINARY_ANIMATION_IMAGE_IMAGEARRAYROTATIONANIMATIONCACHEABLE_H
#define ORG_ALLBINARY_ANIMATION_IMAGE_IMAGEARRAYROTATIONANIMATIONCACHEABLE_H
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
@class ImageArrayRotationAnimationCacheable;
@class AnimationBehavior;
@class NullUtil;
@class StringUtil;
@class CacheableInterface;
@class AdjustedImageArrayRotationAnimation;
@class ImageArrayRotationAnimationInfo;
#include "org/allbinary/logic/util/cache/CacheableInterface.h"
#include "org/allbinary/animation/image/AdjustedImageArrayRotationAnimation.h"

@interface ImageArrayRotationAnimationCacheable : AdjustedImageArrayRotationAnimation <CacheableInterface> {
@public
}
- (instancetype) init:(id)anyType :(AnimationBehavior*)animationBehavior;
- (id) getKey;
- (const char*) toString;
@end

// Runs the Java static initialization of the class once. Reads of its static fields call it first.
void ImageArrayRotationAnimationCacheable_staticInit(void);


#endif // ORG_ALLBINARY_ANIMATION_IMAGE_IMAGEARRAYROTATIONANIMATIONCACHEABLE_H
