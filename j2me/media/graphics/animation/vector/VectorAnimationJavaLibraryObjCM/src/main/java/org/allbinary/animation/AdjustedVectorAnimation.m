// Generated Code Do Not Modify
#include "org/allbinary/animation/AdjustedVectorAnimation.h"
#include "javax/microedition/lcdui/Graphics.h"
#include "org/allbinary/graphics/color/BasicColor.h"
#include "org/allbinary/animation/VectorAnimation.h"
#include "org/allbinary/animation/AnimationBehavior.h"



void AdjustedVectorAnimation_staticInit(void) {
    static bool initialized = false;
    if (initialized) {
        return;
    }
    initialized = true;
}

@implementation AdjustedVectorAnimation

- (void) initFields {
    
    
}


- (instancetype) init:(int32_t***)currentPoints :(BasicColor*)basicColor :(int32_t)dx :(int32_t)dy :(AnimationBehavior*)animationBehavior {
        self = [super init:currentPoints :basicColor :animationBehavior];
        [self initFields];
        self->dx = dx;
        self->dy = dy;
    return self;
}


- (void) paintXY:(Graphics*)graphics :(int32_t)x :(int32_t)y {
        [super paintXY:graphics :x + self->dx :y + self->dy];
}

@end

