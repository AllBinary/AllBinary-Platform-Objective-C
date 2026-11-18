// Generated Code Do Not Modify
#include "org/allbinary/input/gyro/SensorGameUpdateProcessor.h"
#include "org/allbinary/game/input/motion/action/NoCompleteMotionGestureInputEventListener.h"
#include "org/allbinary/input/AllBinarySensor.h"
#include "org/allbinary/input/NoAllBinarySensor.h"
#include "org/allbinary/input/accelerometer/AccelerometerSensorFactory.h"
#include "org/allbinary/input/gyro/GyroSensorFactory.h"
#if __has_include("org/allbinary/input/gyro/AllBinaryOrientationSensor.h")
#include "org/allbinary/input/gyro/AllBinaryOrientationSensor.h"
#endif
#if __has_include("org/allbinary/game/input/motion/action/AllBinaryOrientationSensor.h")
#include "org/allbinary/game/input/motion/action/AllBinaryOrientationSensor.h"
#endif
#if __has_include("org/allbinary/input/AllBinaryOrientationSensor.h")
#include "org/allbinary/input/AllBinaryOrientationSensor.h"
#endif
#if __has_include("org/allbinary/input/AllBinaryOrientationSensor.h")
#include "org/allbinary/input/AllBinaryOrientationSensor.h"
#endif
#if __has_include("org/allbinary/input/accelerometer/AllBinaryOrientationSensor.h")
#include "org/allbinary/input/accelerometer/AllBinaryOrientationSensor.h"
#endif
#if __has_include("org/allbinary/input/gyro/AllBinaryOrientationSensor.h")
#include "org/allbinary/input/gyro/AllBinaryOrientationSensor.h"
#endif
#if __has_include("org/allbinary/game/input/motion/action/AllBinaryOrientationSensor.h")
#include "org/allbinary/game/input/motion/action/AllBinaryOrientationSensor.h"
#endif
#if __has_include("org/allbinary/input/AllBinaryOrientationSensor.h")
#include "org/allbinary/input/AllBinaryOrientationSensor.h"
#endif
#if __has_include("org/allbinary/input/AllBinaryOrientationSensor.h")
#include "org/allbinary/input/AllBinaryOrientationSensor.h"
#endif
#if __has_include("org/allbinary/input/accelerometer/AllBinaryOrientationSensor.h")
#include "org/allbinary/input/accelerometer/AllBinaryOrientationSensor.h"
#endif



void SensorGameUpdateProcessor_staticInit(void) {
    static bool initialized = false;
    if (initialized) {
        return;
    }
    initialized = true;
}

@implementation SensorGameUpdateProcessor

- (void) initFields {
    self->inputSensor = nullptr;
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
        [[GyroSensorFactory getInstance] setCompleteMotionGestureInputEventListener:[NoCompleteMotionGestureInputEventListener getInstance]];
        [[AccelerometerSensorFactory getInstance] setCompleteMotionGestureInputEventListener:[NoCompleteMotionGestureInputEventListener getInstance]];
        [self setInputSensor:[NoAllBinarySensor getInstance]];
}

@end

