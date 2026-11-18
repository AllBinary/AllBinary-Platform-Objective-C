#ifndef ORG_ALLBINARY_ANIMATION_IMAGE_SPRITE_ALLBINARYADJUSTEDSPRITEROTATIONANIMATION_H
#define ORG_ALLBINARY_ANIMATION_IMAGE_SPRITE_ALLBINARYADJUSTEDSPRITEROTATIONANIMATION_H
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
@class AllBinaryAdjustedSpriteRotationAnimation;
@class Graphics;
@class Image;
@class Sprite;
@class AnimationBehavior;
@class AllBinarySpriteRotationAnimation;
#include "org/allbinary/animation/image/sprite/AllBinarySpriteRotationAnimation.h"

@interface AllBinaryAdjustedSpriteRotationAnimation : AllBinarySpriteRotationAnimation {
@public
    int32_t dx;
    int32_t dy;
}
- (instancetype) init:(Sprite*)sprite :(Image*)image :(int32_t)dx :(int32_t)dy :(AnimationBehavior*)animationBehavior;
- (void) initFields;
- (void) paintXY:(Graphics*)g :(int32_t)x :(int32_t)y;
@end

// Runs the Java static initialization of the class once. Reads of its static fields call it first.
void AllBinaryAdjustedSpriteRotationAnimation_staticInit(void);


#endif // ORG_ALLBINARY_ANIMATION_IMAGE_SPRITE_ALLBINARYADJUSTEDSPRITEROTATIONANIMATION_H
