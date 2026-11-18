// Generated Code Do Not Modify
#include "org/allbinary/layer/event/ScrollMapEvent.h"



void ScrollMapEvent_staticInit(void) {
    static bool initialized = false;
    if (initialized) {
        return;
    }
    initialized = true;
}

@implementation ScrollMapEvent

- (void) initFields {
    self->dx = 0;
    self->dy = 0;
}


- (instancetype) init:(id)anyType {
        self = [super init:anyType];
        [self initFields];
    return self;
}


- (void) setDx:(int32_t)dx {
        self->dx = dx;
}


- (int32_t) getDx {
        return self->dx;
}


- (void) setDy:(int32_t)dy {
        self->dy = dy;
}


- (int32_t) getDy {
        return self->dy;
}


- (void) setDxDy:(int32_t)dx :(int32_t)dy {
        self->dx = dx;
        self->dy = dy;
}

@end

