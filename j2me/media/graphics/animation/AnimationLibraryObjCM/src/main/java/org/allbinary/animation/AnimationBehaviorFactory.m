// Generated Code Do Not Modify
#include "org/allbinary/animation/AnimationBehaviorFactory.h"
#include "org/allbinary/animation/AnimationBehavior.h"


static AnimationBehaviorFactory* AnimationBehaviorFactory_instance;

void AnimationBehaviorFactory_staticInit(void) {
    static bool initialized = false;
    if (initialized) {
        return;
    }
    initialized = true;
    AnimationBehaviorFactory_instance = ((AnimationBehaviorFactory*) [((AnimationBehaviorFactory*) [AnimationBehaviorFactory alloc]) init]);
}

@implementation AnimationBehaviorFactory

- (instancetype) init {
    self = [super init];
    return self;
}


+ (AnimationBehaviorFactory*) getInstance {
        return (AnimationBehaviorFactory_staticInit(), AnimationBehaviorFactory_instance);
}


- (AnimationBehavior*) getOrCreateInstance {
        return [AnimationBehavior getInstance];
}

@end

