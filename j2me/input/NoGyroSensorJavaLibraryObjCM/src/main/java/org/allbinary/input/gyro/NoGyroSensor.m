// Generated Code Do Not Modify
#include "org/allbinary/input/gyro/NoGyroSensor.h"
#include "org/allbinary/logic/math/Orientation.h"
#include "org/allbinary/input/gyro/AllBinaryOrientationSensor.h"



void NoGyroSensor_staticInit(void) {
    static bool initialized = false;
    if (initialized) {
        return;
    }
    initialized = true;
}

@implementation NoGyroSensor


- (instancetype) init {
    self = [super init];
        [self->logUtil putF:self->commonStrings->START :self :self->commonStrings->CONSTRUCTOR];
    return self;
}


// throws Exception
- (Orientation*) getOrientation {
        return (Orientation_staticInit(), Orientation_NONE);
}


- (void) onSensorChange {
}

@end

