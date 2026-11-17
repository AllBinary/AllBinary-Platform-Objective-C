// Generated Code Do Not Modify
#include "org/allbinary/math/NamedAngle.h"
#include "org/allbinary/math/Angle.h"



void NamedAngle_staticInit(void) {
    static bool initialized = false;
    if (initialized) {
        return;
    }
    initialized = true;
}

@implementation NamedAngle

- (void) initFields {
    
}


- (instancetype) init:(int16_t)angle :(const char*)name {
        self = [super init:angle];
        [self initFields];
        self->name = name;
    return self;
}

@end

