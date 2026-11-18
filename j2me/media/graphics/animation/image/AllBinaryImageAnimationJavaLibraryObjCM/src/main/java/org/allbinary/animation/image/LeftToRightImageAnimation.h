#ifndef ORG_ALLBINARY_ANIMATION_IMAGE_LEFTTORIGHTIMAGEANIMATION_H
#define ORG_ALLBINARY_ANIMATION_IMAGE_LEFTTORIGHTIMAGEANIMATION_H
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
@class LeftToRightImageAnimation;
@class Graphics;
@class Image;
@class Sprite;
@class AnimationBehavior;
@class Anchor;
@class ImageSegmentAnimation;
#include "org/allbinary/animation/image/ImageSegmentAnimation.h"

@interface LeftToRightImageAnimation : ImageSegmentAnimation {
@public
    int32_t currentWidth;
}
- (instancetype) init:(Image*)image :(int32_t*)sequenceArray :(AnimationBehavior*)animationBehavior;
- (void) initFields;
- (void) nextFrame;
- (void) previousFrame;
- (void) setFrame:(int32_t)index;
- (void) update;
- (void) paintXY:(Graphics*)graphics :(int32_t)x :(int32_t)y;
@end

// Runs the Java static initialization of the class once. Reads of its static fields call it first.
void LeftToRightImageAnimation_staticInit(void);


#endif // ORG_ALLBINARY_ANIMATION_IMAGE_LEFTTORIGHTIMAGEANIMATION_H
