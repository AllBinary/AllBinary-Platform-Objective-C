#ifndef ORG_ALLBINARY_ANIMATION_IMAGE_SPRITE_SPRITEINDEXEDANIMATIONFACTORY_H
#define ORG_ALLBINARY_ANIMATION_IMAGE_SPRITE_SPRITEINDEXEDANIMATIONFACTORY_H
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
// package org.allbinary.animation.image.sprite

#include <math.h>
#include <stdint.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <strings.h>
#include "allbinary_java.h"
#include "ABObject.h"
@class SpriteIndexedAnimationFactory;
@class Image;
@class Sprite;
@class AndroidUtil;
@class Animation;
@class AnimationBehaviorFactory;
@class ProceduralAnimationInterfaceFactoryInterface;
@class BaseImageAnimationFactory;
@class BasicColor;
@class BasicColorUtil;
@class AnimationFactorySpriteScaleUtil;
@class PrimitiveIntUtil;
@class SpriteIndexedAnimation;
@class AdjustedSpriteIndexedAnimation;
#include "org/allbinary/animation/ProceduralAnimationInterfaceFactoryInterface.h"
#include "org/allbinary/animation/image/BaseImageAnimationFactory.h"
#if __has_include("org/allbinary/graphics/color/BasicColor.h")
#include "org/allbinary/graphics/color/BasicColor.h"
#endif
#if __has_include("org/allbinary/image/sprite/AnimationFactorySpriteScaleUtil.h")
#include "org/allbinary/image/sprite/AnimationFactorySpriteScaleUtil.h"
#endif

@interface SpriteIndexedAnimationFactory : BaseImageAnimationFactory <ProceduralAnimationInterfaceFactoryInterface> {
@public
    AnimationFactorySpriteScaleUtil* animationFactorySpriteScaleUtil;
    BasicColor** basicColorArray;
}
- (instancetype) init:(Image*)image :(BasicColor**)basicColorArray :(int32_t*)sequenceArray :(int32_t)width :(int32_t)height :(int32_t)dx :(int32_t)dy :(AnimationBehaviorFactory*)animationBehaviorFactory;
- (void) initFields;
+ (SpriteIndexedAnimationFactory*) createCWHDXY:(Image*)image :(BasicColor**)basicColorArray :(int32_t)width :(int32_t)height :(int32_t)dx :(int32_t)dy :(AnimationBehaviorFactory*)animationBehaviorFactory;
+ (SpriteIndexedAnimationFactory*) createCWH:(Image*)image :(BasicColor**)basicColorArray :(int32_t)width :(int32_t)height :(AnimationBehaviorFactory*)animationBehaviorFactory;
+ (SpriteIndexedAnimationFactory*) createWH:(Image*)image :(int32_t)width :(int32_t)height :(AnimationBehaviorFactory*)animationBehaviorFactory;
- (void) initHWH;
- (Animation*) getInstance:(int32_t)instanceId;
- (Animation*) getInstanceAnimation:(Animation*)animationInterface;
@end

// Runs the Java static initialization of the class once. Reads of its static fields call it first.
void SpriteIndexedAnimationFactory_staticInit(void);

#if __has_include("org/allbinary/animation/Animation.h")
#include "org/allbinary/animation/Animation.h"
#endif

#endif // ORG_ALLBINARY_ANIMATION_IMAGE_SPRITE_SPRITEINDEXEDANIMATIONFACTORY_H
