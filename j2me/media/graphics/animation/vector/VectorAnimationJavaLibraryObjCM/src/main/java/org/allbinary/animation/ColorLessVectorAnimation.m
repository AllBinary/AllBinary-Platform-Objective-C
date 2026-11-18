// Generated Code Do Not Modify
#include "org/allbinary/animation/ColorLessVectorAnimation.h"
#include "javax/microedition/lcdui/Graphics.h"
#include "org/allbinary/graphics/color/BasicColorFactory.h"
#include "org/allbinary/animation/VectorAnimation.h"
#include "org/allbinary/animation/AnimationBehavior.h"



void ColorLessVectorAnimation_staticInit(void) {
    static bool initialized = false;
    if (initialized) {
        return;
    }
    initialized = true;
}

@implementation ColorLessVectorAnimation


- (instancetype) init:(int32_t***)currentPoints :(AnimationBehavior*)animationBehavior {
        self = [super init:currentPoints :[BasicColorFactory getInstance]->WHITE :animationBehavior];
    return self;
}


- (void) paintXY:(Graphics*)graphics :(int32_t)x :(int32_t)y {
        [self paintVectors:graphics :x :y];
}

@end

