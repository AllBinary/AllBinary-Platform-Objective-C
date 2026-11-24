// Generated Code Do Not Modify
#include "org/allbinary/input/AllBinarySensorManager.h"
#include "org/allbinary/input/accelerometer/AccelerometerSensorFactory.h"
#include "org/allbinary/input/gyro/GyroSensorFactory.h"
#include "org/allbinary/logic/NullUtil.h"
#include "org/allbinary/logic/communication/log/LogUtil.h"
#include "org/allbinary/string/CommonStrings.h"
#include "org/allbinary/util/BasicArrayList.h"
#include "org/allbinary/util/BasicArrayListD.h"
#if __has_include("org/allbinary/logic/NullUtil.h")
#include "org/allbinary/logic/NullUtil.h"
#endif
#if __has_include("org/allbinary/logic/NullUtil.h")
#include "org/allbinary/logic/NullUtil.h"
#endif


static id AllBinarySensorManager_instance;

void AllBinarySensorManager_staticInit(void) {
    static bool initialized = false;
    if (initialized) {
        return;
    }
    initialized = true;
    AllBinarySensorManager_instance = [NullUtil getInstance]->NULL_OBJECT;
}

@implementation AllBinarySensorManager

- (void) initFields {
    self->logUtil = [LogUtil getInstance];
    self->commonStrings = [CommonStrings getInstance];
    self->ORIENTATION_SENSOR_INPUT = "Orientation Sensor Input";
    self->ORIENTATION_TYPE = "Orientation Type";
    self->list = ((BasicArrayListD*) [((BasicArrayListD*) [BasicArrayListD alloc]) init]);
}


+ (AllBinarySensorManager*) getInstance {
        if ((AllBinarySensorManager_staticInit(), AllBinarySensorManager_instance) == [NullUtil getInstance]->NULL_OBJECT) {
            AllBinarySensorManager_instance = ((AllBinarySensorManager*) [((AllBinarySensorManager*) [AllBinarySensorManager alloc]) init]);
        }
        return ((AllBinarySensorManager*) (AllBinarySensorManager_staticInit(), AllBinarySensorManager_instance));
}


- (instancetype) init {
    self = [super init];
    [self initFields];
        JAVA_TRY {
            [GyroSensorFactory initMethod];
            [AccelerometerSensorFactory initMethod];
        } JAVA_CATCH(Exception, e) {
            [self->logUtil put:self->commonStrings->EXCEPTION :self :self->commonStrings->CONSTRUCTOR :e];
        } JAVA_END_TRY;
    return self;
}


- (void) initMethod {
}


- (BasicArrayList*) getSensorNamesList {
        return self->list;
}


- (void) shutdown {
}

@end

