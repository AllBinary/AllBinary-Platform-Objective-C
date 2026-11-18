// Generated Code Do Not Modify
#include "org/allbinary/animation/transition/shake/ShakeAnimationListener.h"
#include "org/allbinary/animation/transition/shake/ShakeEvent.h"



void ShakeAnimationListener_staticInit(void) {
    static bool initialized = false;
    if (initialized) {
        return;
    }
    initialized = true;
}

@implementation ShakeAnimationListener

- (instancetype) init {
    self = [super init];
    return self;
}


- (void) onSmallShakeEvent {
}


- (void) onMediumShakeEvent {
}


- (void) onLargeShakeEvent {
}


- (void) onShakeEvent:(ShakeEvent*)shakeEvent {
}


- (int32_t) getType {
        return 0;
}

@end

