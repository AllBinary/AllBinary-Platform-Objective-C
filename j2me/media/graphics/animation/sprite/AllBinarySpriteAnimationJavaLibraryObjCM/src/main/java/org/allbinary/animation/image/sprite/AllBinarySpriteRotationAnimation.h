#ifndef ORG_ALLBINARY_ANIMATION_IMAGE_SPRITE_ALLBINARYSPRITEROTATIONANIMATION_H
#define ORG_ALLBINARY_ANIMATION_IMAGE_SPRITE_ALLBINARYSPRITEROTATIONANIMATION_H
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
@class AllBinarySpriteRotationAnimation;
@class Image;
@class Sprite;
@class AnimationBehavior;
@class Direction;
@class Angle;
@class AngleFactory;
@class AngleInfo;
@class HackRotationSpriteIndexedAnimation;
#include "org/allbinary/animation/image/sprite/HackRotationSpriteIndexedAnimation.h"

@interface AllBinarySpriteRotationAnimation : HackRotationSpriteIndexedAnimation {
@public
}
- (instancetype) init:(Sprite*)sprite :(Image*)image :(AnimationBehavior*)animationBehavior;
- (void) nextRotation;
- (void) previousRotation;
- (void) setFrameByDirection:(Direction*)direction;
- (void) setFrameToAngle:(Angle*)angle;
- (void) setFrame:(int32_t)index;
- (void) adjustFrameToAngle:(Angle*)angle;
- (void) adjustFrame:(int16_t)angle;
@end

// Runs the Java static initialization of the class once. Reads of its static fields call it first.
void AllBinarySpriteRotationAnimation_staticInit(void);


#endif // ORG_ALLBINARY_ANIMATION_IMAGE_SPRITE_ALLBINARYSPRITEROTATIONANIMATION_H
