#ifndef ORG_ALLBINARY_ANIMATION_IMAGE_IMAGEARRAYANIMATION_H
#define ORG_ALLBINARY_ANIMATION_IMAGE_IMAGEARRAYANIMATION_H
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
@class ImageArrayAnimation;
@class Graphics;
@class Image;
@class NullImage;
@class AnimationBehavior;
@class IndexedAnimation;
@class Anchor;
@class PrimitiveIntUtil;
@class CircularIndexUtil;
#if __has_include("javax/microedition/lcdui/Image.h")
#include "javax/microedition/lcdui/Image.h"
#endif
#include "org/allbinary/animation/IndexedAnimation.h"
#if __has_include("org/allbinary/util/CircularIndexUtil.h")
#include "org/allbinary/util/CircularIndexUtil.h"
#endif

@interface ImageArrayAnimation : IndexedAnimation {
@public
    Image** imageArray;
    int32_t totalFrames;
    CircularIndexUtil* circularIndexUtil;
    int32_t anchor;
}
- (instancetype) init:(Image**)imageArray :(AnimationBehavior*)animationBehavior;
- (void) initFields;
- (int32_t) getAnimationSize;
- (void) nextFrame;
- (void) previousFrame;
- (void) setFrame:(int32_t)index;
- (int32_t) getFrame;
- (int32_t) getSize;
- (void) setSequence:(int32_t*)sequence;
- (int32_t*) getSequence;
- (Image*) getImage:(int32_t)index;
- (Image**) getImageArray;
- (void) setImageArray:(Image**)imageArray;
- (void) paintXY:(Graphics*)graphics :(int32_t)x :(int32_t)y;
@end

// Runs the Java static initialization of the class once. Reads of its static fields call it first.
void ImageArrayAnimation_staticInit(void);

#if __has_include("javax/microedition/lcdui/Image.h")
#include "javax/microedition/lcdui/Image.h"
#endif

#endif // ORG_ALLBINARY_ANIMATION_IMAGE_IMAGEARRAYANIMATION_H
