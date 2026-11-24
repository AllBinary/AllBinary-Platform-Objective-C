// Generated Code Do Not Modify
#include "org/allbinary/input/gyro/GyroSensorFactory.h"
#include "org/allbinary/input/gyro/AllBinaryOrientationSensor.h"
#include "org/allbinary/input/gyro/NoGyroSensor.h"


static AllBinaryOrientationSensor* GyroSensorFactory_allBinaryGyroSensor;

void GyroSensorFactory_staticInit(void) {
    static bool initialized = false;
    if (initialized) {
        return;
    }
    initialized = true;
    GyroSensorFactory_allBinaryGyroSensor = (AllBinaryOrientationSensor_staticInit(), AllBinaryOrientationSensor_NULL_ALLBINARY_ORIENTATION_SENSOR);
}

@implementation GyroSensorFactory

- (instancetype) init {
    self = [super init];
    return self;
}


// throws Exception
+ (void) initMethod {
        GyroSensorFactory_allBinaryGyroSensor = ((NoGyroSensor*) [((NoGyroSensor*) [NoGyroSensor alloc]) init]);
}


+ (AllBinaryOrientationSensor*) getInstance {
        return (GyroSensorFactory_staticInit(), GyroSensorFactory_allBinaryGyroSensor);
}

@end

