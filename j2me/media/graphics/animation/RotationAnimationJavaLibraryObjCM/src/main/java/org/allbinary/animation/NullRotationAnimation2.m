// Generated Code Do Not Modify
#include "org/allbinary/animation/NullRotationAnimation2.h"
#include "javax/microedition/lcdui/Graphics.h"
#include "org/allbinary/math/AngleFactory.h"
#include "org/allbinary/math/AngleInfo.h"
#include "org/allbinary/util/CircularIndexUtil.h"
#include "org/allbinary/animation/NullRotationAnimation.h"
#include "org/allbinary/animation/IndexedAnimationBehavior.h"



void NullRotationAnimation2_staticInit(void) {
    static bool initialized = false;
    if (initialized) {
        return;
    }
    initialized = true;
}

@implementation NullRotationAnimation2


- (instancetype) init {
        self = [super init:[AngleInfo getInstance:[AngleFactory getInstance]->QUARTER_TOTAL_ANGLE] :[CircularIndexUtil createInstance:4] :[((IndexedAnimationBehavior*) [IndexedAnimationBehavior alloc]) init:1 :250]];
    return self;
}


- (void) paintXY:(Graphics*)graphics :(int32_t)x :(int32_t)y {
}

@end

