// Generated Code Do Not Modify
#include "org/allbinary/animation/AnimationEventHandler.h"


static AnimationEventHandler* AnimationEventHandler_eventHandler;

void AnimationEventHandler_staticInit(void) {
    static bool initialized = false;
    if (initialized) {
        return;
    }
    initialized = true;
    AnimationEventHandler_eventHandler = ((AnimationEventHandler*) [((AnimationEventHandler*) [AnimationEventHandler alloc]) init]);
}

@implementation AnimationEventHandler


- (instancetype) init {
    self = [super init];
    return self;
}


// synchronized
+ (AnimationEventHandler*) getInstance {
        return (AnimationEventHandler_staticInit(), AnimationEventHandler_eventHandler);
}

@end

