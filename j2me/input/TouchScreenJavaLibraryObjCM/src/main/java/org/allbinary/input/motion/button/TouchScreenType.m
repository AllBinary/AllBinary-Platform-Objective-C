// Generated Code Do Not Modify
#include "org/allbinary/input/motion/button/TouchScreenType.h"



void TouchScreenType_staticInit(void) {
    static bool initialized = false;
    if (initialized) {
        return;
    }
    initialized = true;
}

@implementation TouchScreenType

- (void) initFields {
    
}


- (instancetype) init:(const char*)name {
    self = [super init];
    [self initFields];
        self->name = name;
    return self;
}


- (const char*) getName {
        return self->name;
}


- (const char*) toString {
        return [self getName];
}

@end

