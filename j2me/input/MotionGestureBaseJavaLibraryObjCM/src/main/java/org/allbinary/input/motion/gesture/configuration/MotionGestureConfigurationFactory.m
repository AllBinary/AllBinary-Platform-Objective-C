// Generated Code Do Not Modify
#include "org/allbinary/input/motion/gesture/configuration/MotionGestureConfigurationFactory.h"
#include "org/allbinary/input/motion/gesture/configuration/MotionGestureConfiguration.h"


static MotionGestureConfiguration* MotionGestureConfigurationFactory_config;

void MotionGestureConfigurationFactory_staticInit(void) {
    static bool initialized = false;
    if (initialized) {
        return;
    }
    initialized = true;
    MotionGestureConfigurationFactory_config = ((MotionGestureConfiguration*) [((MotionGestureConfiguration*) [MotionGestureConfiguration alloc]) init]);
}

@implementation MotionGestureConfigurationFactory


- (instancetype) init {
    self = [super init];
    return self;
}


+ (MotionGestureConfiguration*) getInstance {
        return (MotionGestureConfigurationFactory_staticInit(), MotionGestureConfigurationFactory_config);
}

@end

