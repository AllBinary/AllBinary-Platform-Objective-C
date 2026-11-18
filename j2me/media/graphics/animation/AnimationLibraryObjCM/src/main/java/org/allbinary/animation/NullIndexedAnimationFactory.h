#ifndef ORG_ALLBINARY_ANIMATION_NULLINDEXEDANIMATIONFACTORY_H
#define ORG_ALLBINARY_ANIMATION_NULLINDEXEDANIMATIONFACTORY_H
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
// package org.allbinary.animation

#include <math.h>
#include <stdint.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <strings.h>
#include "allbinary_java.h"
#include "ABObject.h"
@class NullIndexedAnimationFactory;
@class ScaleProperties;
@class AnimationInterfaceFactoryInterface;
@class ProceduralAnimationInterfaceFactoryInterface;
@class IndexedAnimation;
@class NullIndexedAnimationInner;
@class Animation;
#include "org/allbinary/animation/AnimationInterfaceFactoryInterface.h"
#include "org/allbinary/animation/ProceduralAnimationInterfaceFactoryInterface.h"
#if __has_include("org/allbinary/animation/IndexedAnimation.h")
#include "org/allbinary/animation/IndexedAnimation.h"
#endif
#if __has_include("org/allbinary/animation/Animation.h")
#include "org/allbinary/animation/Animation.h"
#endif

@interface NullIndexedAnimationFactory : ABObject <AnimationInterfaceFactoryInterface, ProceduralAnimationInterfaceFactoryInterface> {
@public
    Animation* NULL_ANIMATION;
}
- (instancetype) init;
- (void) initFields;
+ (NullIndexedAnimationFactory*) getFactoryInstance;
- (Animation*) getInstance:(int32_t)instanceId;
- (Animation*) getInstanceAnimation:(Animation*)animationInterface;
- (void) setInitialScale:(ScaleProperties*)scaleProperties;
@end

extern IndexedAnimation** NullIndexedAnimationFactory_NULL_INDEXED_ANIMATION_ARRAY;
// Runs the Java static initialization of the class once. Reads of its static fields call it first.
void NullIndexedAnimationFactory_staticInit(void);


#endif // ORG_ALLBINARY_ANIMATION_NULLINDEXEDANIMATIONFACTORY_H
