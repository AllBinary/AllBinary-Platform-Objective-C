// Generated Code Do Not Modify
#include "org/allbinary/input/gyro/OrientationToGameKeyEvent.h"
#include "org/allbinary/game/configuration/feature/Features.h"
#include "org/allbinary/game/configuration/feature/SensorFeatureFactory.h"
#include "org/allbinary/logic/math/Orientation.h"
#include "org/allbinary/input/gyro/AllBinaryOrientationSensor.h"
#include "org/allbinary/input/gyro/NoGyroSensor.h"
#if __has_include("org/allbinary/game/configuration/feature/Features.h")
#include "org/allbinary/game/configuration/feature/Features.h"
#endif
#if __has_include("org/allbinary/game/configuration/feature/SensorFeatureFactory.h")
#include "org/allbinary/game/configuration/feature/SensorFeatureFactory.h"
#endif



void OrientationToGameKeyEvent_staticInit(void) {
    static bool initialized = false;
    if (initialized) {
        return;
    }
    initialized = true;
}

@implementation OrientationToGameKeyEvent

- (void) initFields {
    self->allBinaryGyroSensor = nullptr;
    self->MIN = 15;
}


- (instancetype) init {
    self = [super init];
    [self initFields];
        if ([[Features getInstance] isFeature:[SensorFeatureFactory getInstance]->NO_ORIENTATION]) {
            self->allBinaryGyroSensor = ((NoGyroSensor*) [((NoGyroSensor*) [NoGyroSensor alloc]) init]);
        } else {
            java_throw(java_exception_new("Exception", "Not Such Feature"));
        }
    return self;
}


- (void) setAllBinaryGyroSensor:(AllBinaryOrientationSensor*)allBinaryGyroSensor {
        self->allBinaryGyroSensor = allBinaryGyroSensor;
}


- (AllBinaryOrientationSensor*) getAllBinaryGyroSensor {
        return self->allBinaryGyroSensor;
}


// throws Exception
- (void) process {
}


// throws Exception
- (void) updateGameKeyEvents:(Orientation*)orientation :(int32_t)yaw :(int32_t)pitch :(int32_t)roll {
}

@end

