// Generated Code Do Not Modify
#include "org/allbinary/input/accelerometer/AccelerometerSensorFactory.h"
#include "org/allbinary/game/configuration/feature/Features.h"
#include "org/allbinary/game/configuration/feature/SensorFeatureFactory.h"
#include "org/allbinary/input/gyro/AllBinaryOrientationSensor.h"
#include "org/allbinary/input/accelerometer/NoAccelerometerSensor.h"


static AllBinaryOrientationSensor* AccelerometerSensorFactory_allBinaryAccelerometerSensor;

void AccelerometerSensorFactory_staticInit(void) {
    static bool initialized = false;
    if (initialized) {
        return;
    }
    initialized = true;
    AccelerometerSensorFactory_allBinaryAccelerometerSensor = (AllBinaryOrientationSensor_staticInit(), AllBinaryOrientationSensor_NULL_ALLBINARY_ORIENTATION_SENSOR);
}

@implementation AccelerometerSensorFactory

- (instancetype) init {
    self = [super init];
    return self;
}


// throws Exception
+ (void) initMethod {
        Features* features = [Features getInstance];
        SensorFeatureFactory* sensorFeatureFactory = [SensorFeatureFactory getInstance];
        if ([features isFeature:sensorFeatureFactory->ORIENTATION_SENSORS]) {
            java_throw(java_exception_new("Exception", "No Orientation Sensors"));
        } else if ([features isFeature:sensorFeatureFactory->SIMULATED_ORIENTATION_SENSORS]) {
            java_throw(java_exception_new("Exception", "No Simulation Sensors"));
        } else if ([features isFeature:sensorFeatureFactory->NO_ORIENTATION]) {
            AccelerometerSensorFactory_allBinaryAccelerometerSensor = ((NoAccelerometerSensor*) [((NoAccelerometerSensor*) [NoAccelerometerSensor alloc]) init]);
        } else {
            java_throw(java_exception_new("Exception", "Not Such SensorFeature"));
        }
}


+ (AllBinaryOrientationSensor*) getInstance {
        return (AccelerometerSensorFactory_staticInit(), AccelerometerSensorFactory_allBinaryAccelerometerSensor);
}

@end

