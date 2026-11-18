// Generated Code Do Not Modify
#include "org/allbinary/animation/image/LeftToRightImageAnimation.h"
#include "javax/microedition/lcdui/Graphics.h"
#include "javax/microedition/lcdui/Image.h"
#include "javax/microedition/lcdui/game/Sprite.h"
#include "org/allbinary/animation/AnimationBehavior.h"
#include "org/allbinary/graphics/Anchor.h"
#include "org/allbinary/animation/image/ImageSegmentAnimation.h"



void LeftToRightImageAnimation_staticInit(void) {
    static bool initialized = false;
    if (initialized) {
        return;
    }
    initialized = true;
}

@implementation LeftToRightImageAnimation

- (void) initFields {
    
    self->anchor = (Anchor_staticInit(), Anchor_TOP_LEFT);
}


- (instancetype) init:(Image*)image :(int32_t*)sequenceArray :(AnimationBehavior*)animationBehavior {
        self = [super init:image :sequenceArray :animationBehavior];
        [self initFields];
        self->currentWidth = 0;
        if ([self getSequence][0] == -1) {
            [self setFrame:[self getSize] - 1];
        }
    return self;
}


- (void) nextFrame {
        if ([self getSequence][0] == -1) {
            [super previousFrame];
        } else {
            [super nextFrame];
        }
        [self update];
}


- (void) previousFrame {
        if ([self getSequence][0] == -1) {
            [super nextFrame];
        } else {
            [super previousFrame];
        }
        [self update];
}


- (void) setFrame:(int32_t)index {
        [super setFrame:index];
        [self update];
}


- (void) update {
        self->currentWidth = [self getDrawWidth] * [self getFrame] / [self getSize];
}


- (void) paintXY:(Graphics*)graphics :(int32_t)x :(int32_t)y {
        [graphics drawRegion:[self getImage] :[self getStartX] :[self getStartY] :self->currentWidth :[self getDrawHeight] :(Sprite_staticInit(), Sprite_TRANS_NONE) :x :y :self->anchor];
}

@end

