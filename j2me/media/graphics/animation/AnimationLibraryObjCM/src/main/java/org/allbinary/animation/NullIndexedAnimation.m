// Generated Code Do Not Modify
#include "org/allbinary/animation/NullIndexedAnimation.h"
#include "org/allbinary/animation/IndexedAnimation.h"
#include "org/allbinary/animation/AnimationBehavior.h"



void NullIndexedAnimation_staticInit(void) {
    static bool initialized = false;
    if (initialized) {
        return;
    }
    initialized = true;
}

@implementation NullIndexedAnimation


- (instancetype) init:(AnimationBehavior*)animationBehavior {
        self = [super init:animationBehavior];
    return self;
}


// throws Exception
- (int32_t) getAnimationSize {
        return 0;
}

@end

