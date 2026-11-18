#ifndef ORG_ALLBINARY_ANIMATION_IMAGE_SPRITE_IMAGECAPTIONINDEXEDANIMATIONFACTORY_H
#define ORG_ALLBINARY_ANIMATION_IMAGE_SPRITE_IMAGECAPTIONINDEXEDANIMATIONFACTORY_H
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
@class ImageCaptionIndexedAnimationFactory;
@class Image;
@class Sprite;
@class Player;
@class Animation;
@class AnimationBehaviorFactory;
@class AnimationInterfaceFactoryInterface;
@class IndexedAnimation;
@class CaptionIndexedAnimation;
@class ImageAnimation;
@class BasicColorUtil;
@class AnimationFactoryImageScaleUtil;
@class AnimationFactorySpriteScaleUtil;
@class ForcedLogUtil;
@class ScaleProperties;
@class Sound;
@class SpriteIndexedAnimation;
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
#if __has_include("org/allbinary/image/sprite/AnimationFactorySpriteScaleUtil.h")
#include "org/allbinary/image/sprite/AnimationFactorySpriteScaleUtil.h"
#endif
#if __has_include("org/allbinary/media/ScaleProperties.h")
#include "org/allbinary/media/ScaleProperties.h"
#endif
#if __has_include("org/allbinary/media/audio/Sound.h")
#include "org/allbinary/media/audio/Sound.h"
#endif

@interface ImageCaptionIndexedAnimationFactory : ABObject <AnimationInterfaceFactoryInterface> {
@public
    AnimationFactoryImageScaleUtil* animationFactoryImageScaleUtil;
    AnimationFactorySpriteScaleUtil* animationFactorySpriteScaleUtil;
    Image* captionImage;
    Image* spriteMovieImage;
    int32_t frameWidth;
    int32_t frameHeight;
    int32_t captionDx;
    int32_t captionDy;
    int32_t dx;
    int32_t dy;
    int32_t time;
    Sound* soundInterface;
    ScaleProperties* scaleProperties;
    AnimationBehaviorFactory* animationBehaviorFactory;
}
- (instancetype) init:(Image*)captionImage :(Image*)spriteMovieImage :(Sound*)soundInterface :(int32_t)frameWidth :(int32_t)frameHeight :(int32_t)captionDx :(int32_t)captionDy :(int32_t)dx :(int32_t)dy :(int32_t)time :(AnimationBehaviorFactory*)animationBehaviorFactory;
- (void) initFields;
- (Animation*) getInstance:(int32_t)instanceId;
- (void) setInitialScale:(ScaleProperties*)scaleProperties;
@end

// Runs the Java static initialization of the class once. Reads of its static fields call it first.
void ImageCaptionIndexedAnimationFactory_staticInit(void);

#if __has_include("org/allbinary/animation/Animation.h")
#include "org/allbinary/animation/Animation.h"
#endif

#endif // ORG_ALLBINARY_ANIMATION_IMAGE_SPRITE_IMAGECAPTIONINDEXEDANIMATIONFACTORY_H
