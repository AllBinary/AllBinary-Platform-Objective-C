// Generated Code Do Not Modify
#include "org/allbinary/animation/image/AdjustedImageBaseRotationAnimation.h"
#include "javax/microedition/lcdui/Graphics.h"
#include "javax/microedition/lcdui/Image.h"
#include "org/allbinary/animation/AnimationBehavior.h"
#include "org/allbinary/math/AngleInfo.h"
#include "org/allbinary/animation/image/ImageBaseRotationAnimation.h"



void AdjustedImageBaseRotationAnimation_staticInit(void) {
    static bool initialized = false;
    if (initialized) {
        return;
    }
    initialized = true;
}

@implementation AdjustedImageBaseRotationAnimation

- (void) initFields {
    self->dx = 0;
    self->dy = 0;
}


- (instancetype) init:(Image*)image :(AngleInfo*)angleInfo :(int16_t)totalAngle :(int32_t)dx :(int32_t)dy :(AnimationBehavior*)animationBehavior {
        self = [super init:image :angleInfo :totalAngle :animationBehavior];
        [self initFields];
        [self initMethod:dx :dy];
    return self;
}


// throws Exception
- (void) initMethod:(int32_t)dx :(int32_t)dy {
        self->dx = dx;
        self->dy = dy;
}


- (void) paintXY:(Graphics*)graphics :(int32_t)x :(int32_t)y {
        [super paintXY:graphics :x + self->dx :y + self->dy];
}

@end

