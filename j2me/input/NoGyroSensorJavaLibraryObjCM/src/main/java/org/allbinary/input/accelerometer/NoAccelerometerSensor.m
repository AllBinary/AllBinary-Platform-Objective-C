// Generated Code Do Not Modify
#include "org/allbinary/input/accelerometer/NoAccelerometerSensor.h"
#include "org/allbinary/logic/math/Orientation.h"



void NoAccelerometerSensor_staticInit(void) {
    static bool initialized = false;
    if (initialized) {
        return;
    }
    initialized = true;
}

@implementation NoAccelerometerSensor


- (instancetype) init {
    self = [super init];
    return self;
}


// throws Exception
- (Orientation*) getOrientation {
        return (Orientation_staticInit(), Orientation_NONE);
}


- (void) onSensorChange {
}

@end

