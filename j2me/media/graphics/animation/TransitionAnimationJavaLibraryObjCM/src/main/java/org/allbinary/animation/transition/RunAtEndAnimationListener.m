// Generated Code Do Not Modify
#include "org/allbinary/animation/transition/RunAtEndAnimationListener.h"
#include "org/allbinary/animation/transition/AnimationListenerInterface.h"



void RunAtEndAnimationListener_staticInit(void) {
    static bool initialized = false;
    if (initialized) {
        return;
    }
    initialized = true;
}

@implementation RunAtEndAnimationListener

- (void) initFields {
    
}


- (instancetype) init:(Runnable*)runnable {
    self = [super init];
    [self initFields];
        self->runnable = runnable;
    return self;
}


- (void) onPlatformAnimationStart {
}


- (void) onPlatformAnimationEnd {
}


- (void) onPlatformAnimationRepeat {
}

@end

