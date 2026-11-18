#ifndef ORG_ALLBINARY_ANIMATION_IMAGE_IMAGEARRAYBASEROTATIONANIMATION_H
#define ORG_ALLBINARY_ANIMATION_IMAGE_IMAGEARRAYBASEROTATIONANIMATION_H
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
@class ImageArrayBaseRotationAnimation;
@class Graphics;
@class Image;
@class NullImage;
@class DisposalUtil;
@class AnimationBehavior;
@class RotationAnimation;
@class Anchor;
@class PrimitiveIntUtil;
@class AngleInfo;
@class ImageModifierUtil;
@class CircularIndexUtil;
#if __has_include("javax/microedition/lcdui/Image.h")
#include "javax/microedition/lcdui/Image.h"
#endif
#include "org/allbinary/animation/RotationAnimation.h"
#if __has_include("org/allbinary/media/image/ImageModifierUtil.h")
#include "org/allbinary/media/image/ImageModifierUtil.h"
#endif

@interface ImageArrayBaseRotationAnimation : RotationAnimation {
@public
    ImageModifierUtil* imageModifierUtil;
    Image** originalImageArray;
    Image** imageArray;
    Image* currentImage;
    int32_t totalFrames;
    int32_t anchor;
}
- (instancetype) init:(Image**)originalImageArray :(AngleInfo*)angleInfo :(AnimationBehavior*)animationBehavior;
- (void) initFields;
- (int32_t) getAnimationSize;
- (void) setAlpha:(int32_t)alpha;
- (void) nextRotation;
- (void) previousRotation;
- (void) setFrame:(int32_t)index2;
- (void) setSequence:(int32_t*)sequence;
- (int32_t*) getSequence;
- (void) setImageArray:(Image**)imageArray;
- (void) paintXY:(Graphics*)graphics :(int32_t)x :(int32_t)y;
- (void) close;
- (void) finalize;
@end

// Runs the Java static initialization of the class once. Reads of its static fields call it first.
void ImageArrayBaseRotationAnimation_staticInit(void);


#endif // ORG_ALLBINARY_ANIMATION_IMAGE_IMAGEARRAYBASEROTATIONANIMATION_H
