// Generated Code Do Not Modify
#include "org/allbinary/input/gyro/SingleSensorGameUpdateProcessor.h"
#include "org/allbinary/canvas/Processor.h"
#include "org/allbinary/input/gyro/SensorGameUpdateProcessor.h"
#include "org/allbinary/input/gyro/AccelerometerSensorUpdateProcessor.h"
#include "org/allbinary/input/gyro/GyroSensorUpdateProcessor.h"



void SingleSensorGameUpdateProcessor_staticInit(void) {
    static bool initialized = false;
    if (initialized) {
        return;
    }
    initialized = true;
}

@implementation SingleSensorGameUpdateProcessor

- (void) initFields {
    self->accelerometerSensorUpdateProcessor = [((AccelerometerSensorUpdateProcessor*) [AccelerometerSensorUpdateProcessor alloc]) init];
    self->gyroSensorUpdateProcessor = [((GyroSensorUpdateProcessor*) [GyroSensorUpdateProcessor alloc]) init];
}

- (instancetype) init {
    self = [super init];
    [self initFields];
    return self;
}


// throws Exception
- (void) process:(id)anyType {
        [self setNoSensors];
}


// throws Exception
- (void) sendNotifications:(id)anyType {
}

@end

