// Generated Code Do Not Modify
#include "org/allbinary/input/gyro/GyroSensorFactory.h"
#include "org/allbinary/input/gyro/AllBinaryOrientationSensor.h"
#include "org/allbinary/input/gyro/NoGyroSensor.h"


static AllBinaryOrientationSensor* GyroSensorFactory_allBinaryGyroSensor = nullptr;

void GyroSensorFactory_staticInit(void) {
    static bool initialized = false;
    if (initialized) {
        return;
    }
    initialized = true;
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
        return GyroSensorFactory_allBinaryGyroSensor;
}

@end

