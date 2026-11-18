// Generated Code Do Not Modify
#include "org/allbinary/animation/image/RightToLeftImageAnimation.h"
#include "javax/microedition/lcdui/Graphics.h"
#include "javax/microedition/lcdui/Image.h"
#include "javax/microedition/lcdui/game/Sprite.h"
#include "org/allbinary/animation/AnimationBehavior.h"
#include "org/allbinary/graphics/Anchor.h"
#include "org/allbinary/logic/math/PrimitiveIntUtil.h"
#include "org/allbinary/animation/image/ImageSegmentAnimation.h"



void RightToLeftImageAnimation_staticInit(void) {
    static bool initialized = false;
    if (initialized) {
        return;
    }
    initialized = true;
}

@implementation RightToLeftImageAnimation

- (void) initFields {
    self->startWidth = 0;
    self->currentWidth = 0;
    self->anchor = (Anchor_staticInit(), Anchor_TOP_LEFT);
}


- (instancetype) init:(Image*)image :(AnimationBehavior*)animationBehavior {
        self = [super init:image :[PrimitiveIntUtil getArrayInstance] :animationBehavior];
        [self initFields];
        [self setFrame:[self getSize] - 1];
    return self;
}


- (void) nextFrame {
        [super previousFrame];
        [self update];
}


- (void) previousFrame {
        [super nextFrame];
        [self update];
}


- (void) setFrame:(int32_t)index {
        [super setFrame:index];
        [self update];
}


- (void) update {
        self->startWidth = [self getDrawWidth] * [self getFrame] / [self getSize];
        self->currentWidth = [self getDrawWidth] - self->startWidth;
}


- (void) paintXY:(Graphics*)graphics :(int32_t)x :(int32_t)y {
        [graphics drawRegion:[self getImage] :self->startWidth :[self getStartY] :self->currentWidth :[self getDrawHeight] :(Sprite_staticInit(), Sprite_TRANS_NONE) :x + self->startWidth :y :self->anchor];
}

@end

