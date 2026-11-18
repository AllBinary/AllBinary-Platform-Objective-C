// Generated Code Do Not Modify
#include "org/allbinary/animation/image/sprite/AdjustedSpriteIndexedAnimation.h"
#include "javax/microedition/lcdui/Graphics.h"
#include "javax/microedition/lcdui/Image.h"
#include "javax/microedition/lcdui/game/Sprite.h"
#include "org/allbinary/animation/AnimationBehavior.h"
#include "org/allbinary/graphics/color/BasicColor.h"
#include "org/allbinary/animation/image/sprite/SpriteIndexedAnimation.h"



void AdjustedSpriteIndexedAnimation_staticInit(void) {
    static bool initialized = false;
    if (initialized) {
        return;
    }
    initialized = true;
}

@implementation AdjustedSpriteIndexedAnimation

- (void) initFields {
    
    
}


- (instancetype) init:(Sprite*)sprite :(Image*)image :(BasicColor**)basicColorArray :(int32_t)dx :(int32_t)dy :(AnimationBehavior*)animationBehavior {
        self = [super init:sprite :image :basicColorArray :animationBehavior];
        [self initFields];
        self->dx = dx;
        self->dy = dy;
    return self;
}


- (void) paintFrame:(Graphics*)graphics :(int32_t)frame :(int32_t)x :(int32_t)y {
        [self setFrame:frame];
        [self->sprite setPosition:x + self->dx :y + self->dy];
        [super paint:graphics];
}


- (void) paintXY:(Graphics*)g :(int32_t)x :(int32_t)y {
        [self->sprite setPosition:x + self->dx :y + self->dy];
        [super paint:g];
}


- (void) paint:(Graphics*)g {
        [self->sprite setPosition:self->dx :self->dy];
        [super paint:g];
}

@end

