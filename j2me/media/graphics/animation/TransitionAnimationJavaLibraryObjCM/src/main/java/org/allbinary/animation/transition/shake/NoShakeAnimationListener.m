// Generated Code Do Not Modify
#include "org/allbinary/animation/transition/shake/NoShakeAnimationListener.h"
#include "org/allbinary/animation/transition/shake/ShakeAnimationListener.h"


ShakeAnimationListener* NoShakeAnimationListener_NO_SHAKE_ANIMATION_LISTENER;

void NoShakeAnimationListener_staticInit(void) {
    static bool initialized = false;
    if (initialized) {
        return;
    }
    initialized = true;
    NoShakeAnimationListener_NO_SHAKE_ANIMATION_LISTENER = ((NoShakeAnimationListener*) [((NoShakeAnimationListener*) [NoShakeAnimationListener alloc]) init]);
}

@implementation NoShakeAnimationListener

- (instancetype) init {
    self = [super init];
    return self;
}

@end

