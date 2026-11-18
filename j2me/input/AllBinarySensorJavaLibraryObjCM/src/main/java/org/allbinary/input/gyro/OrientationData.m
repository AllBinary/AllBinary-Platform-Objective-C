// Generated Code Do Not Modify
#include "org/allbinary/input/gyro/OrientationData.h"


static OrientationData* OrientationData_SINGLETON;

void OrientationData_staticInit(void) {
    static bool initialized = false;
    if (initialized) {
        return;
    }
    initialized = true;
    OrientationData_SINGLETON = [((OrientationData*) [OrientationData alloc]) init];
}

@implementation OrientationData

- (void) initFields {
    self->ORIENTATION_SENSOR_INPUT = "Orientation Sensor Input";
    self->ORIENTATION_TYPE = "Orientation Type";
}


- (instancetype) init {
    self = [super init];
    [self initFields];
    return self;
}


+ (OrientationData*) getInstance {
        return (OrientationData_staticInit(), OrientationData_SINGLETON);
}

@end

