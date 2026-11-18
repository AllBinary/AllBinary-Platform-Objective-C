// Generated Code Do Not Modify
#include "org/allbinary/input/AllBinarySensorManager.h"
#include "org/allbinary/logic/NullUtil.h"
#include "org/allbinary/util/BasicArrayList.h"
#include "org/allbinary/util/BasicArrayListD.h"


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
    self->ORIENTATION_SENSOR_INPUT = "Orientation Sensor Input";
    self->ORIENTATION_TYPE = "Orientation Type";
    self->list = [((BasicArrayListD*) [BasicArrayListD alloc]) init];
}


+ (AllBinarySensorManager*) getInstance {
        if ((AllBinarySensorManager_staticInit(), AllBinarySensorManager_instance) == [NullUtil getInstance]->NULL_OBJECT) {
            AllBinarySensorManager_instance = [((AllBinarySensorManager*) [AllBinarySensorManager alloc]) init];
        }
        return ((AllBinarySensorManager*) (AllBinarySensorManager_staticInit(), AllBinarySensorManager_instance));
}


- (instancetype) init {
    self = [super init];
    [self initFields];
    return self;
}


- (void) init_ {
}


- (BasicArrayList*) getSensorNamesList {
        return self->list;
}


- (void) shutdown {
}

@end

