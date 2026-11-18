// Generated Code Do Not Modify
#include "org/allbinary/animation/image/AdjustedRightToLeftImageAnimation.h"
#include "javax/microedition/lcdui/Graphics.h"
#include "javax/microedition/lcdui/Image.h"
#include "org/allbinary/animation/AnimationBehavior.h"
#include "org/allbinary/animation/image/RightToLeftImageAnimation.h"



void AdjustedRightToLeftImageAnimation_staticInit(void) {
    static bool initialized = false;
    if (initialized) {
        return;
    }
    initialized = true;
}

@implementation AdjustedRightToLeftImageAnimation

- (void) initFields {
    self->dx = 0;
    self->dy = 0;
}


- (instancetype) init:(Image*)image :(int32_t)dx :(int32_t)dy :(AnimationBehavior*)animationBehavior {
        self = [super init:image :animationBehavior];
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

