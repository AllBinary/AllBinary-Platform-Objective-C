#ifndef ORG_ALLBINARY_ANIMATION_IMAGE_SPRITE_HACKROTATIONSPRITEINDEXEDANIMATION_H
#define ORG_ALLBINARY_ANIMATION_IMAGE_SPRITE_HACKROTATIONSPRITEINDEXEDANIMATION_H
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
@class HackRotationSpriteIndexedAnimation;
@class Graphics;
@class Image;
@class Sprite;
@class AnimationBehavior;
@class RotationAnimation;
@class PrimitiveIntUtil;
@class AngleInfo;
@class CircularIndexUtil;
#if __has_include("javax/microedition/lcdui/Image.h")
#include "javax/microedition/lcdui/Image.h"
#endif
#if __has_include("javax/microedition/lcdui/game/Sprite.h")
#include "javax/microedition/lcdui/game/Sprite.h"
#endif
#include "org/allbinary/animation/RotationAnimation.h"

@interface HackRotationSpriteIndexedAnimation : RotationAnimation {
@public
    Sprite* sprite;
    Image* image;
}
- (instancetype) init:(Sprite*)sprite :(Image*)image :(AngleInfo*)angleInfo :(AnimationBehavior*)animationBehavior;
- (void) initFields;
- (int32_t) getAnimationSize;
- (void) paintFrame:(Graphics*)g :(int32_t)frame :(int32_t)x :(int32_t)y;
- (void) paintXY:(Graphics*)g :(int32_t)x :(int32_t)y;
- (void) paint:(Graphics*)g;
- (void) nextRotation;
- (void) previousRotation;
- (int32_t) getSize;
- (void) setFrame:(int32_t)frame;
- (int32_t) getFrame;
- (void) setSequence:(int32_t*)sequence;
- (int32_t*) getSequence;
@end

// Runs the Java static initialization of the class once. Reads of its static fields call it first.
void HackRotationSpriteIndexedAnimation_staticInit(void);


#endif // ORG_ALLBINARY_ANIMATION_IMAGE_SPRITE_HACKROTATIONSPRITEINDEXEDANIMATION_H
