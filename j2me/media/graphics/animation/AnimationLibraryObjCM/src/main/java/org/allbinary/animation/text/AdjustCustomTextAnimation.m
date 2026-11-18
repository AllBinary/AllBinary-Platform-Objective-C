// Generated Code Do Not Modify
#include "org/allbinary/animation/text/AdjustCustomTextAnimation.h"
#include "javax/microedition/lcdui/Graphics.h"
#include "org/allbinary/animation/AnimationBehavior.h"
#include "org/allbinary/animation/text/CustomTextAnimation.h"



void AdjustCustomTextAnimation_staticInit(void) {
    static bool initialized = false;
    if (initialized) {
        return;
    }
    initialized = true;
}

@implementation AdjustCustomTextAnimation

- (void) initFields {
    
    
}


- (instancetype) init:(const char*)text :(int32_t)fontSize :(int32_t)dx :(int32_t)dy :(AnimationBehavior*)animationBehavior {
        self = [super init:text :fontSize :animationBehavior];
        [self initFields];
        self->dx = dx;
        self->dy = dy;
    return self;
}


- (int32_t) getDx {
        return self->dx;
}


- (void) setDx:(int32_t)dx {
        self->dx = dx;
}


- (int32_t) getDy {
        return self->dy;
}


- (void) setDy:(int32_t)dy {
        self->dy = dy;
}


- (void) paintXY:(Graphics*)graphics :(int32_t)x :(int32_t)y {
        [super paintXY:graphics :x + self->dx :y + self->dy];
}

@end

