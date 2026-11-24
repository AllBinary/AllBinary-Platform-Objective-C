// Generated Code Do Not Modify
#include "org/allbinary/animation/NullIndexedAnimationInner.h"
#include "javax/microedition/lcdui/Graphics.h"
#include "org/allbinary/animation/NullIndexedAnimation.h"
#include "org/allbinary/animation/IndexedAnimationBehavior.h"



void NullIndexedAnimationInner_staticInit(void) {
    static bool initialized = false;
    if (initialized) {
        return;
    }
    initialized = true;
}

@implementation NullIndexedAnimationInner


- (instancetype) init {
        self = [super init:((IndexedAnimationBehavior*) [((IndexedAnimationBehavior*) [IndexedAnimationBehavior alloc]) init:1 :250])];
    return self;
}


- (void) paintXY:(Graphics*)graphics :(int32_t)x :(int32_t)y {
}

@end

