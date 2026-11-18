// Generated Code Do Not Modify
#include "org/allbinary/input/motion/button/TouchButtonResource.h"



void TouchButtonResource_staticInit(void) {
    static bool initialized = false;
    if (initialized) {
        return;
    }
    initialized = true;
}

@implementation TouchButtonResource

- (void) initFields {
    
    
}


- (instancetype) init:(const char*)resource :(const char*)hint {
    self = [super init];
    [self initFields];
        self->RESOURCE = resource;
        self->HINT = hint;
    return self;
}

@end

