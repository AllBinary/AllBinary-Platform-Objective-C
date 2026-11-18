// Generated Code Do Not Modify
#include "org/allbinary/game/input/analog/AnalogLocationInput.h"
#include "org/allbinary/graphics/CustomGPoint.h"


AnalogLocationInput* AnalogLocationInput_NULL_ANALOG_LOCATION_INPUT;

void AnalogLocationInput_staticInit(void) {
    static bool initialized = false;
    if (initialized) {
        return;
    }
    initialized = true;
    AnalogLocationInput_NULL_ANALOG_LOCATION_INPUT = [((AnalogLocationInput*) [AnalogLocationInput alloc]) init:-1];
}

@implementation AnalogLocationInput

- (void) initFields {
    
    
    self->rz = 0;
    self->rightTrigger = 0;
    self->leftTrigger = 0;
}


- (instancetype) init:(int32_t)playerId {
    self = [super init];
    [self initFields];
        self->playerId = playerId;
        self->customGPoint = [((CustomGPoint*) [CustomGPoint alloc]) init:0 :0 :0];
    return self;
}


- (int32_t) getPlayerId {
        return self->playerId;
}


- (CustomGPoint*) getCustomGPoint {
        return self->customGPoint;
}


- (int32_t) getRz {
        return self->rz;
}


- (void) setRz:(int32_t)rz {
        self->rz = rz;
}


- (int32_t) getRightTrigger {
        return self->rightTrigger;
}


- (void) setRightTrigger:(int32_t)rightTrigger {
        self->rightTrigger = rightTrigger;
}


- (int32_t) getLeftTrigger {
        return self->leftTrigger;
}


- (void) setLeftTrigger:(int32_t)leftTrigger {
        self->leftTrigger = leftTrigger;
}

@end

