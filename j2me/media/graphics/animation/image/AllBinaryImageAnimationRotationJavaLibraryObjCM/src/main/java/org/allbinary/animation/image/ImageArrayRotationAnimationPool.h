#ifndef ORG_ALLBINARY_ANIMATION_IMAGE_IMAGEARRAYROTATIONANIMATIONPOOL_H
#define ORG_ALLBINARY_ANIMATION_IMAGE_IMAGEARRAYROTATIONANIMATIONPOOL_H
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
@class ImageArrayRotationAnimationPool;
@class BasicArrayListResetablePool;
@class CacheableInterface;
@class CacheableInterfaceFactoryInterface;
@class PoolInterface;
@class ImageArrayRotationAnimationCacheableInterfaceFactory;
@class ImageArrayRotationAnimationInfo;
@class ImageArrayRotationAnimationCacheable;
#include "org/allbinary/logic/util/cache/BasicArrayListResetablePool.h"
#if __has_include("org/allbinary/logic/util/cache/PoolInterface.h")
#include "org/allbinary/logic/util/cache/PoolInterface.h"
#endif

@interface ImageArrayRotationAnimationPool : BasicArrayListResetablePool {
@public
}
- (instancetype) init:(CacheableInterfaceFactoryInterface*)cacheableInterfaceFactoryInterface;
+ (PoolInterface*) getInstance;
- (CacheableInterface*) remove:(id)key;
@end

// Runs the Java static initialization of the class once. Reads of its static fields call it first.
void ImageArrayRotationAnimationPool_staticInit(void);

#if __has_include("org/allbinary/logic/util/cache/CacheableInterface.h")
#include "org/allbinary/logic/util/cache/CacheableInterface.h"
#endif
#if __has_include("org/allbinary/logic/util/cache/PoolInterface.h")
#include "org/allbinary/logic/util/cache/PoolInterface.h"
#endif

#endif // ORG_ALLBINARY_ANIMATION_IMAGE_IMAGEARRAYROTATIONANIMATIONPOOL_H
