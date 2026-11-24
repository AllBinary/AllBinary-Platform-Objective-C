// Generated Code Do Not Modify
#include "org/allbinary/animation/vector/ARectangleFilledAnimation.h"
#include "javax/microedition/lcdui/Graphics.h"
#include "org/allbinary/graphics/color/BasicColorFactory.h"
#include "org/allbinary/animation/vector/RectangleFilledAnimation.h"
#if __has_include("org/allbinary/graphics/color/BasicColorFactory.h")
#include "org/allbinary/graphics/color/BasicColorFactory.h"
#endif



void ARectangleFilledAnimation_staticInit(void) {
    static bool initialized = false;
    if (initialized) {
        return;
    }
    initialized = true;
}

@implementation ARectangleFilledAnimation

- (void) initFields {
    self->x = 0;
    self->y = 0;
}


- (instancetype) init {
        self = [super init:0 :0 :[BasicColorFactory getInstance]->BLACK];
        [self initFields];
    return self;
}


- (void) nextFrame {
}


- (void) paintXY:(Graphics*)graphics :(int32_t)unusedX :(int32_t)unusedY {
        [super paintXY:graphics :self->x :self->y];
}

@end

