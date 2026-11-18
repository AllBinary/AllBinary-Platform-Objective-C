// Generated Code Do Not Modify
#include "org/allbinary/game/physics/acceleration/BasicAccelerationProperties.h"



void BasicAccelerationProperties_staticInit(void) {
    static bool initialized = false;
    if (initialized) {
        return;
    }
    initialized = true;
}

@implementation BasicAccelerationProperties

- (void) initFields {
    self->forward = 0;
    self->reverse = 0;
}


- (instancetype) init:(int32_t)forward :(int32_t)reverse {
    self = [super init];
    [self initFields];
        [self setForward:forward];
        [self setReverse:reverse];
    return self;
}


- (void) setReverse:(int32_t)reverse {
        self->reverse = reverse;
}


- (int32_t) getReverse {
        return self->reverse;
}


- (void) setForward:(int32_t)forward {
        self->forward = forward;
}


- (int32_t) getForward {
        return self->forward;
}

@end

