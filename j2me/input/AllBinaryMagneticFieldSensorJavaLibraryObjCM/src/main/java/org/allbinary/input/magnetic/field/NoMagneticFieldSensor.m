// Generated Code Do Not Modify
#include "org/allbinary/input/magnetic/field/NoMagneticFieldSensor.h"
#include "org/allbinary/logic/math/Orientation.h"
#include "org/allbinary/input/magnetic/field/AllBinaryMagneticFieldSensor.h"



void NoMagneticFieldSensor_staticInit(void) {
    static bool initialized = false;
    if (initialized) {
        return;
    }
    initialized = true;
}

@implementation NoMagneticFieldSensor

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

