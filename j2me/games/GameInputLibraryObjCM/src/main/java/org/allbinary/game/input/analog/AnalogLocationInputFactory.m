// Generated Code Do Not Modify
#include "org/allbinary/game/input/analog/AnalogLocationInputFactory.h"
#include "org/allbinary/util/BasicArrayList.h"
#include "org/allbinary/util/BasicArrayListD.h"
#include "org/allbinary/game/input/analog/AnalogLocationInput.h"


static AnalogLocationInputFactory* AnalogLocationInputFactory_instance;

void AnalogLocationInputFactory_staticInit(void) {
    static bool initialized = false;
    if (initialized) {
        return;
    }
    initialized = true;
    AnalogLocationInputFactory_instance = ((AnalogLocationInputFactory*) [((AnalogLocationInputFactory*) [AnalogLocationInputFactory alloc]) init]);
}

@implementation AnalogLocationInputFactory

- (void) initFields {
    self->list = ((BasicArrayListD*) [((BasicArrayListD*) [BasicArrayListD alloc]) init]);
}


+ (AnalogLocationInputFactory*) getInstance {
        return (AnalogLocationInputFactory_staticInit(), AnalogLocationInputFactory_instance);
}


- (instancetype) init {
    self = [super init];
    [self initFields];
    return self;
}


- (void) addPlayer:(int32_t)playerInputId {
        AnalogLocationInput* analogLocationInput = (AnalogLocationInput_staticInit(), AnalogLocationInput_NULL_ANALOG_LOCATION_INPUT);
        if (playerInputId < [self->list size]) {
            analogLocationInput = ((AnalogLocationInput*) [self->list get:playerInputId]);
        }
        if (analogLocationInput == (AnalogLocationInput_staticInit(), AnalogLocationInput_NULL_ANALOG_LOCATION_INPUT)) {
            analogLocationInput = ((AnalogLocationInput*) [((AnalogLocationInput*) [AnalogLocationInput alloc]) init:playerInputId]);
            [self->list add:analogLocationInput];
        }
}


- (AnalogLocationInput*) getInstanceForPlayer:(int32_t)playerInputId {
        return ((AnalogLocationInput*) [self->list get:playerInputId]);
}


- (BasicArrayList*) getList {
        return self->list;
}

@end

