// Generated Code Do Not Modify
#include "org/allbinary/animation/image/sprite/AllBinaryAdjustedSpriteRotationAnimation.h"
#include "javax/microedition/lcdui/Graphics.h"
#include "javax/microedition/lcdui/Image.h"
#include "javax/microedition/lcdui/game/Sprite.h"
#include "org/allbinary/animation/AnimationBehavior.h"
#include "org/allbinary/animation/image/sprite/AllBinarySpriteRotationAnimation.h"



void AllBinaryAdjustedSpriteRotationAnimation_staticInit(void) {
    static bool initialized = false;
    if (initialized) {
        return;
    }
    initialized = true;
}

@implementation AllBinaryAdjustedSpriteRotationAnimation

- (void) initFields {
    
    
}


- (instancetype) init:(Sprite*)sprite :(Image*)image :(int32_t)dx :(int32_t)dy :(AnimationBehavior*)animationBehavior {
        self = [super init:sprite :image :animationBehavior];
        [self initFields];
        self->dx = dx;
        self->dy = dy;
    return self;
}


- (void) paintXY:(Graphics*)g :(int32_t)x :(int32_t)y {
        [self->sprite setPosition:x + self->dx :y + self->dy];
        [self paint:g];
}

@end

