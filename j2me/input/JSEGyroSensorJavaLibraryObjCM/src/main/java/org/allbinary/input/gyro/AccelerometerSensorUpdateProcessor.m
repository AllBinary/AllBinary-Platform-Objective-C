// Generated Code Do Not Modify
#include "org/allbinary/input/gyro/AccelerometerSensorUpdateProcessor.h"
#include "org/allbinary/game/configuration/feature/Features.h"
#include "org/allbinary/game/configuration/feature/SensorFeatureFactory.h"
#include "org/allbinary/game/input/motion/action/NoCompleteMotionGestureInputEventListener.h"
#include "org/allbinary/game/input/motion/action/SingleKeyPressGameKeyFromMotionGestureEventListener.h"
#include "org/allbinary/input/accelerometer/AccelerometerSensorFactory.h"
#if __has_include("org/allbinary/game/configuration/feature/Features.h")
#include "org/allbinary/game/configuration/feature/Features.h"
#endif
#if __has_include("org/allbinary/game/configuration/feature/Features.h")
#include "org/allbinary/game/configuration/feature/Features.h"
#endif
#if __has_include("org/allbinary/game/configuration/feature/Features.h")
#include "org/allbinary/game/configuration/feature/Features.h"
#endif
#if __has_include("org/allbinary/input/gyro/AllBinaryOrientationSensor.h")
#include "org/allbinary/input/gyro/AllBinaryOrientationSensor.h"
#endif
#if __has_include("org/allbinary/canvas/AllBinaryOrientationSensor.h")
#include "org/allbinary/canvas/AllBinaryOrientationSensor.h"
#endif
#if __has_include("org/allbinary/game/configuration/feature/AllBinaryOrientationSensor.h")
#include "org/allbinary/game/configuration/feature/AllBinaryOrientationSensor.h"
#endif
#if __has_include("org/allbinary/game/configuration/feature/AllBinaryOrientationSensor.h")
#include "org/allbinary/game/configuration/feature/AllBinaryOrientationSensor.h"
#endif
#if __has_include("org/allbinary/game/input/motion/action/AllBinaryOrientationSensor.h")
#include "org/allbinary/game/input/motion/action/AllBinaryOrientationSensor.h"
#endif
#if __has_include("org/allbinary/game/input/motion/action/AllBinaryOrientationSensor.h")
#include "org/allbinary/game/input/motion/action/AllBinaryOrientationSensor.h"
#endif
#if __has_include("org/allbinary/input/accelerometer/AllBinaryOrientationSensor.h")
#include "org/allbinary/input/accelerometer/AllBinaryOrientationSensor.h"
#endif
#if __has_include("org/allbinary/input/gyro/AllBinaryOrientationSensor.h")
#include "org/allbinary/input/gyro/AllBinaryOrientationSensor.h"
#endif
#if __has_include("org/allbinary/canvas/AllBinaryOrientationSensor.h")
#include "org/allbinary/canvas/AllBinaryOrientationSensor.h"
#endif
#if __has_include("org/allbinary/game/configuration/feature/AllBinaryOrientationSensor.h")
#include "org/allbinary/game/configuration/feature/AllBinaryOrientationSensor.h"
#endif
#if __has_include("org/allbinary/game/configuration/feature/AllBinaryOrientationSensor.h")
#include "org/allbinary/game/configuration/feature/AllBinaryOrientationSensor.h"
#endif
#if __has_include("org/allbinary/game/input/motion/action/AllBinaryOrientationSensor.h")
#include "org/allbinary/game/input/motion/action/AllBinaryOrientationSensor.h"
#endif
#if __has_include("org/allbinary/game/input/motion/action/AllBinaryOrientationSensor.h")
#include "org/allbinary/game/input/motion/action/AllBinaryOrientationSensor.h"
#endif
#if __has_include("org/allbinary/input/accelerometer/AllBinaryOrientationSensor.h")
#include "org/allbinary/input/accelerometer/AllBinaryOrientationSensor.h"
#endif
#if __has_include("org/allbinary/input/gyro/AllBinaryOrientationSensor.h")
#include "org/allbinary/input/gyro/AllBinaryOrientationSensor.h"
#endif
#if __has_include("org/allbinary/canvas/AllBinaryOrientationSensor.h")
#include "org/allbinary/canvas/AllBinaryOrientationSensor.h"
#endif
#if __has_include("org/allbinary/game/configuration/feature/AllBinaryOrientationSensor.h")
#include "org/allbinary/game/configuration/feature/AllBinaryOrientationSensor.h"
#endif
#if __has_include("org/allbinary/game/configuration/feature/AllBinaryOrientationSensor.h")
#include "org/allbinary/game/configuration/feature/AllBinaryOrientationSensor.h"
#endif
#if __has_include("org/allbinary/game/input/motion/action/AllBinaryOrientationSensor.h")
#include "org/allbinary/game/input/motion/action/AllBinaryOrientationSensor.h"
#endif
#if __has_include("org/allbinary/game/input/motion/action/AllBinaryOrientationSensor.h")
#include "org/allbinary/game/input/motion/action/AllBinaryOrientationSensor.h"
#endif
#if __has_include("org/allbinary/input/accelerometer/AllBinaryOrientationSensor.h")
#include "org/allbinary/input/accelerometer/AllBinaryOrientationSensor.h"
#endif



void AccelerometerSensorUpdateProcessor_staticInit(void) {
    static bool initialized = false;
    if (initialized) {
        return;
    }
    initialized = true;
}

@implementation AccelerometerSensorUpdateProcessor

- (instancetype) init {
    self = [super init];
    return self;
}


// throws Exception
- (void) process {
        SensorFeatureFactory* sensorFeatureFactory = [SensorFeatureFactory getInstance];
        if ([[Features getInstance] isFeature:sensorFeatureFactory->ORIENTATION_SENSORS]) {
            [[AccelerometerSensorFactory getInstance] setCompleteMotionGestureInputEventListener:((SingleKeyPressGameKeyFromMotionGestureEventListener*) [((SingleKeyPressGameKeyFromMotionGestureEventListener*) [SingleKeyPressGameKeyFromMotionGestureEventListener alloc]) init])];
        } else if ([[Features getInstance] isFeature:sensorFeatureFactory->SIMULATED_ORIENTATION_SENSORS]) {
            [[AccelerometerSensorFactory getInstance] setCompleteMotionGestureInputEventListener:((SingleKeyPressGameKeyFromMotionGestureEventListener*) [((SingleKeyPressGameKeyFromMotionGestureEventListener*) [SingleKeyPressGameKeyFromMotionGestureEventListener alloc]) init])];
        } else if ([[Features getInstance] isFeature:sensorFeatureFactory->NO_ORIENTATION]) {
            [[AccelerometerSensorFactory getInstance] setCompleteMotionGestureInputEventListener:[NoCompleteMotionGestureInputEventListener getInstance]];
        } else {
            java_throw(java_exception_new("Exception", "Sensor Feature Not Set"));
        }
}

@end

