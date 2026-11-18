// Generated Code Do Not Modify
#include "org/allbinary/animation/IndexedAnimationBehavior.h"
#include "org/allbinary/animation/AnimationBehavior.h"



void IndexedAnimationBehavior_staticInit(void) {
    static bool initialized = false;
    if (initialized) {
        return;
    }
    initialized = true;
}

@implementation IndexedAnimationBehavior

- (void) initFields {
    
    
    self->elapsedTime = 0;
    self->loopIndex = 0;
}


- (instancetype) init:(int32_t)loopTotal :(int64_t)frameDelayTime {
    self = [super init];
    [self initFields];
        self->loopTotal = loopTotal;
        self->frameDelayTime = frameDelayTime;
    return self;
}


- (void) reset {
        self->loopIndex = 0;
}

@end

