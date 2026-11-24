// Generated Code Do Not Modify
#include "org/allbinary/animation/transition/shake/ShakeAnimationListenerFactory.h"
#include "org/allbinary/animation/transition/shake/NoShakeAnimationListener.h"
#include "org/allbinary/animation/transition/shake/ShakeAnimationListener.h"



void ShakeAnimationListenerFactory_staticInit(void) {
    static bool initialized = false;
    if (initialized) {
        return;
    }
    initialized = true;
}

@implementation ShakeAnimationListenerFactory

- (instancetype) init {
    self = [super init];
    return self;
}


+ (ShakeAnimationListener*) getInstance {
        return ((NoShakeAnimationListener*) [((NoShakeAnimationListener*) [NoShakeAnimationListener alloc]) init]);
}

@end

