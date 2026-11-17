// Generated Code Do Not Modify
#include "org/allbinary/math/Angle.h"



void Angle_staticInit(void) {
    static bool initialized = false;
    if (initialized) {
        return;
    }
    initialized = true;
}

@implementation Angle

- (void) initFields {
    
}


- (instancetype) init:(int16_t)angle {
    self = [super init];
    [self initFields];
        self->value = angle;
    return self;
}


- (int16_t) getValue {
        return self->value;
}

@end

