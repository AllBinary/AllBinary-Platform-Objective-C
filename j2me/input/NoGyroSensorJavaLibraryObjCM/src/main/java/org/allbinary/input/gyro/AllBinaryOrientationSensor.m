// Generated Code Do Not Modify
#include "org/allbinary/input/gyro/AllBinaryOrientationSensor.h"
#include "org/allbinary/game/input/CompleteMotionGestureInputEventListenerInterface.h"
#include "org/allbinary/game/input/motion/action/NoCompleteMotionGestureInputEventListener.h"
#include "org/allbinary/logic/math/Orientation.h"


AllBinaryOrientationSensor* AllBinaryOrientationSensor_NULL_ALLBINARY_ORIENTATION_SENSOR;

void AllBinaryOrientationSensor_staticInit(void) {
    static bool initialized = false;
    if (initialized) {
        return;
    }
    initialized = true;
    AllBinaryOrientationSensor_NULL_ALLBINARY_ORIENTATION_SENSOR = [((AllBinaryOrientationSensor*) [AllBinaryOrientationSensor alloc]) init];
}

@implementation AllBinaryOrientationSensor

- (void) initFields {
    self->listener = [NoCompleteMotionGestureInputEventListener getInstance];
}


- (void) setListener:(CompleteMotionGestureInputEventListenerInterface*)completeMotionGestureInputEventListenerInterface {
        self->listener = completeMotionGestureInputEventListenerInterface;
}


- (instancetype) init {
    self = [super init];
    [self initFields];
    return self;
}


// throws Exception
- (Orientation*) getOrientation {
        java_throw(java_exception_new("Exception", self->commonStrings->NOT_IMPLEMENTED));
}

@end

