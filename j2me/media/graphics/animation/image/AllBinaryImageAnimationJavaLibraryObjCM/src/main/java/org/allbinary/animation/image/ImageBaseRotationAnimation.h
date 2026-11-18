#ifndef ORG_ALLBINARY_ANIMATION_IMAGE_IMAGEBASEROTATIONANIMATION_H
#define ORG_ALLBINARY_ANIMATION_IMAGE_IMAGEBASEROTATIONANIMATION_H
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
@class ImageBaseRotationAnimation;
@class Graphics;
@class Image;
@class DisposalUtil;
@class AnimationBehavior;
@class RotationAnimation;
@class Anchor;
@class PrimitiveIntUtil;
@class AngleInfo;
@class CircularIndexUtil;
#if __has_include("javax/microedition/lcdui/Image.h")
#include "javax/microedition/lcdui/Image.h"
#endif
#include "org/allbinary/animation/RotationAnimation.h"

@interface ImageBaseRotationAnimation : RotationAnimation {
@public
    Image* image;
    int32_t anchor;
}
- (instancetype) init:(Image*)image :(AngleInfo*)angleInfo :(int16_t)totalAngle :(AnimationBehavior*)animationBehavior;
- (void) initFields;
- (int32_t) getAnimationSize;
- (void) setSequence:(int32_t*)sequence;
- (int32_t*) getSequence;
- (void) paintXY:(Graphics*)graphics :(int32_t)x :(int32_t)y;
- (Image*) getImage;
- (int32_t) getWidth;
- (int32_t) getHeight;
- (void) close;
- (void) finalize;
@end

// Runs the Java static initialization of the class once. Reads of its static fields call it first.
void ImageBaseRotationAnimation_staticInit(void);

#if __has_include("javax/microedition/lcdui/Image.h")
#include "javax/microedition/lcdui/Image.h"
#endif

#endif // ORG_ALLBINARY_ANIMATION_IMAGE_IMAGEBASEROTATIONANIMATION_H
