// Generated Code Do Not Modify
#include "org/allbinary/input/gyro/SensorGameUpdateProcessor.h"
#include "org/allbinary/input/AllBinarySensor.h"
#include "org/allbinary/input/NoAllBinarySensor.h"



void SensorGameUpdateProcessor_staticInit(void) {
    static bool initialized = false;
    if (initialized) {
        return;
    }
    initialized = true;
}

@implementation SensorGameUpdateProcessor

- (void) initFields {
    self->inputSensor = [NoAllBinarySensor getInstance];
}

- (instancetype) init {
    self = [super init];
    [self initFields];
    return self;
}


- (void) setInputSensor:(AllBinarySensor*)inputSensor {
        self->inputSensor = inputSensor;
}


- (AllBinarySensor*) getInputSensor {
        return self->inputSensor;
}


// throws Exception
- (void) process:(id)anyType {
}


// throws Exception
- (void) sendNotifications:(id)anyType {
}


- (bool) isAnySensor {
        if (self->inputSensor == [NoAllBinarySensor getInstance]) {
            return false;
        } else {
            return true;
        }
}


- (void) setNoSensors {
        [self setInputSensor:[NoAllBinarySensor getInstance]];
}

@end

