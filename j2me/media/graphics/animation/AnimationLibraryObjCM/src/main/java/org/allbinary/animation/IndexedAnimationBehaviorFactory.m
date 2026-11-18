// Generated Code Do Not Modify
#include "org/allbinary/animation/IndexedAnimationBehaviorFactory.h"
#include "org/allbinary/animation/AnimationBehaviorFactory.h"
#include "org/allbinary/animation/IndexedAnimationBehavior.h"
#include "org/allbinary/animation/AnimationBehavior.h"



void IndexedAnimationBehaviorFactory_staticInit(void) {
    static bool initialized = false;
    if (initialized) {
        return;
    }
    initialized = true;
}

@implementation IndexedAnimationBehaviorFactory

- (void) initFields {
    
    
}


- (instancetype) init:(int32_t)loopTotal :(int64_t)frameDelayTime {
    self = [super init];
    [self initFields];
        self->loopTotal = loopTotal;
        self->frameDelayTime = frameDelayTime;
    return self;
}


- (AnimationBehavior*) getOrCreateInstance {
        return [((IndexedAnimationBehavior*) [IndexedAnimationBehavior alloc]) init:self->loopTotal :self->frameDelayTime];
}

@end

