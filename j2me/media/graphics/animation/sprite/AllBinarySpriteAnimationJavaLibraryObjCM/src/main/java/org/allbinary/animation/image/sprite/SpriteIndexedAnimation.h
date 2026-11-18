#ifndef ORG_ALLBINARY_ANIMATION_IMAGE_SPRITE_SPRITEINDEXEDANIMATION_H
#define ORG_ALLBINARY_ANIMATION_IMAGE_SPRITE_SPRITEINDEXEDANIMATION_H
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
@class SpriteIndexedAnimation;
@class Graphics;
@class Image;
@class Sprite;
@class AnimationBehavior;
@class IndexedAnimation;
@class BasicColor;
@class BasicColorFactory;
@class ColorCompositeInterface;
@class PrimitiveIntUtil;
@class StringMaker;
@class CommonLabels;
#if __has_include("javax/microedition/lcdui/Image.h")
#include "javax/microedition/lcdui/Image.h"
#endif
#if __has_include("javax/microedition/lcdui/game/Sprite.h")
#include "javax/microedition/lcdui/game/Sprite.h"
#endif
#include "org/allbinary/animation/IndexedAnimation.h"
#if __has_include("org/allbinary/graphics/color/BasicColor.h")
#include "org/allbinary/graphics/color/BasicColor.h"
#endif
#include "org/allbinary/graphics/color/ColorCompositeInterface.h"

@interface SpriteIndexedAnimation : IndexedAnimation <ColorCompositeInterface> {
@public
    Sprite* sprite;
    Image* image;
    BasicColor** basicColorArray;
}
- (instancetype) init:(Sprite*)sprite :(Image*)image :(BasicColor**)basicColorArray :(AnimationBehavior*)animationBehavior;
- (void) initFields;
- (int32_t) getAnimationSize;
- (void) setBasicColorP:(BasicColor*)basicColor;
- (BasicColor*) getBasicColorP;
- (void) paintFrame:(Graphics*)graphics :(int32_t)frame :(int32_t)x :(int32_t)y;
- (void) paintXY:(Graphics*)graphics :(int32_t)x :(int32_t)y;
- (void) paint:(Graphics*)graphics;
- (void) nextFrame;
- (void) previousFrame;
- (int32_t) getSize;
- (void) setFrame:(int32_t)frame;
- (int32_t) getFrame;
- (bool) isLastFrame;
- (int32_t) getLastFrame;
- (void) setSequence:(int32_t*)sequence;
- (int32_t*) getSequence;
- (void) close;
- (void) finalize;
@end

// Runs the Java static initialization of the class once. Reads of its static fields call it first.
void SpriteIndexedAnimation_staticInit(void);

#if __has_include("org/allbinary/graphics/color/BasicColor.h")
#include "org/allbinary/graphics/color/BasicColor.h"
#endif

#endif // ORG_ALLBINARY_ANIMATION_IMAGE_SPRITE_SPRITEINDEXEDANIMATION_H
