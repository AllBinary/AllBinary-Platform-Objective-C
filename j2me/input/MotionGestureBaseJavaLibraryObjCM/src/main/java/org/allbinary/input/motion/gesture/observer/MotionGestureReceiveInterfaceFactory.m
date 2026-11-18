// Generated Code Do Not Modify
#include "org/allbinary/input/motion/gesture/observer/MotionGestureReceiveInterfaceFactory.h"
#include "org/allbinary/input/motion/gesture/configuration/MotionGestureConfiguration.h"
#include "org/allbinary/input/motion/gesture/configuration/MotionGestureConfigurationFactory.h"
#include "org/allbinary/input/motion/gesture/observer/ResolveCompleteMotionGestureListener.h"
#include "org/allbinary/input/motion/gesture/observer/NullCompleteMotionGestureReceiver.h"
#include "org/allbinary/input/motion/gesture/observer/CompleteMotionGestureListenerInterface.h"



void MotionGestureReceiveInterfaceFactory_staticInit(void) {
    static bool initialized = false;
    if (initialized) {
        return;
    }
    initialized = true;
}

@implementation MotionGestureReceiveInterfaceFactory

- (instancetype) init {
    self = [super init];
    return self;
}


+ (CompleteMotionGestureListenerInterface*) getInstance {
        MotionGestureConfiguration* configuration = [MotionGestureConfigurationFactory getInstance];
        if (![configuration isExecutingActionsAllowed]) {
            return [((NullCompleteMotionGestureReceiver*) [NullCompleteMotionGestureReceiver alloc]) init];
        } else {
            return [((ResolveCompleteMotionGestureListener*) [ResolveCompleteMotionGestureListener alloc]) init];
        }
}

@end

