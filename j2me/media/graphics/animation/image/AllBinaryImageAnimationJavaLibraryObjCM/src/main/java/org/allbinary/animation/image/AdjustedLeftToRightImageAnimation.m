// Generated Code Do Not Modify
#include "org/allbinary/animation/image/AdjustedLeftToRightImageAnimation.h"
#include "javax/microedition/lcdui/Graphics.h"
#include "javax/microedition/lcdui/Image.h"
#include "org/allbinary/animation/AnimationBehavior.h"
#include "org/allbinary/animation/image/LeftToRightImageAnimation.h"



void AdjustedLeftToRightImageAnimation_staticInit(void) {
    static bool initialized = false;
    if (initialized) {
        return;
    }
    initialized = true;
}

@implementation AdjustedLeftToRightImageAnimation

- (void) initFields {
    self->dx = 0;
    self->dy = 0;
}


- (instancetype) init:(Image*)image :(int32_t*)sequenceArray :(int32_t)dx :(int32_t)dy :(AnimationBehavior*)animationBehavior {
        self = [super init:image :sequenceArray :animationBehavior];
        [self initFields];
        [self init_:dx :dy];
    return self;
}


// throws Exception
- (void) init_:(int32_t)dx :(int32_t)dy {
        self->dx = dx;
        self->dy = dy;
}


- (void) paintXY:(Graphics*)graphics :(int32_t)x :(int32_t)y {
        [super paintXY:graphics :x + self->dx :y + self->dy];
}

@end

