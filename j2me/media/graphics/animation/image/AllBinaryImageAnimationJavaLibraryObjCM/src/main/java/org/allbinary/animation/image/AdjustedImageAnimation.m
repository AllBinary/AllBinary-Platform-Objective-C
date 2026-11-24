// Generated Code Do Not Modify
#include "org/allbinary/animation/image/AdjustedImageAnimation.h"
#include "javax/microedition/lcdui/Graphics.h"
#include "javax/microedition/lcdui/Image.h"
#include "org/allbinary/animation/AnimationBehavior.h"
#include "org/allbinary/animation/image/ImageAnimation.h"



void AdjustedImageAnimation_staticInit(void) {
    static bool initialized = false;
    if (initialized) {
        return;
    }
    initialized = true;
}

@implementation AdjustedImageAnimation

- (void) initFields {
    self->dx = 0;
    self->dy = 0;
}


- (instancetype) init:(Image*)image :(int32_t)dx :(int32_t)dy :(AnimationBehavior*)animationBehavior {
        self = [super init:image :animationBehavior];
        [self initFields];
        [self initMethod:dx :dy];
    return self;
}


// throws Exception
- (void) initMethod:(int32_t)dx :(int32_t)dy {
        [self setDx:dx];
        [self setDy:dy];
}


- (void) paintXY:(Graphics*)graphics :(int32_t)x :(int32_t)y {
        [super paintXY:graphics :x + self->dx :y + self->dy];
}


- (void) setDx:(int32_t)dx {
        self->dx = dx;
}


- (int32_t) getDx {
        return self->dx;
}


- (void) setDy:(int32_t)dy {
        self->dy = dy;
}


- (int32_t) getDy {
        return self->dy;
}

@end

