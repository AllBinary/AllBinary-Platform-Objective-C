#ifndef ORG_ALLBINARY_ANIMATION_IMAGE_IMAGESEGMENTANIMATION_H
#define ORG_ALLBINARY_ANIMATION_IMAGE_IMAGESEGMENTANIMATION_H
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
@class ImageSegmentAnimation;
@class Graphics;
@class Image;
@class AnimationBehavior;
@class CircularIndexUtil;
@class ImageAnimation;
#if __has_include("org/allbinary/util/CircularIndexUtil.h")
#include "org/allbinary/util/CircularIndexUtil.h"
#endif
#include "org/allbinary/animation/image/ImageAnimation.h"

@interface ImageSegmentAnimation : ImageAnimation {
@public
    int32_t startX;
    int32_t startY;
    int32_t drawWidth;
    int32_t drawHeight;
    CircularIndexUtil* circularIndexUtil;
    int32_t* sequenceArray;
}
- (instancetype) init:(Image*)image :(int32_t*)sequenceArray :(AnimationBehavior*)animationBehavior;
- (void) initFields;
- (void) nextFrame;
- (void) previousFrame;
- (void) setFrame:(int32_t)index;
- (int32_t) getFrame;
- (int32_t) getSize;
- (void) setSequence:(int32_t*)sequenceArray;
- (int32_t*) getSequence;
- (void) paintXY:(Graphics*)graphics :(int32_t)x :(int32_t)y;
- (int32_t) getStartX;
- (void) setStartX:(int32_t)startX;
- (int32_t) getStartY;
- (void) setStartY:(int32_t)startY;
- (int32_t) getDrawWidth;
- (void) setDrawWidth:(int32_t)drawWidth;
- (int32_t) getDrawHeight;
- (void) setDrawHeight:(int32_t)drawHeight;
@end

// Runs the Java static initialization of the class once. Reads of its static fields call it first.
void ImageSegmentAnimation_staticInit(void);


#endif // ORG_ALLBINARY_ANIMATION_IMAGE_IMAGESEGMENTANIMATION_H
