// Generated Code Do Not Modify
#include "org/allbinary/animation/AnimationBehavior.h"


static AnimationBehavior* AnimationBehavior_instance;

void AnimationBehavior_staticInit(void) {
    static bool initialized = false;
    if (initialized) {
        return;
    }
    initialized = true;
    AnimationBehavior_instance = ((AnimationBehavior*) [((AnimationBehavior*) [AnimationBehavior alloc]) init]);
}

@implementation AnimationBehavior

- (instancetype) init {
    self = [super init];
    return self;
}


+ (AnimationBehavior*) getInstance {
        return (AnimationBehavior_staticInit(), AnimationBehavior_instance);
}


- (void) reset {
}

@end

