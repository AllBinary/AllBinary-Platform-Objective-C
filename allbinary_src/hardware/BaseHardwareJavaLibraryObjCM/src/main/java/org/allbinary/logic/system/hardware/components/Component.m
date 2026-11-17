// Generated Code Do Not Modify
#include "org/allbinary/logic/system/hardware/components/Component.h"



void Component_staticInit(void) {
    static bool initialized = false;
    if (initialized) {
        return;
    }
    initialized = true;
}

@implementation Component

- (void) initFields {
    
}


- (instancetype) init:(const char*)componentName {
    self = [super init];
    [self initFields];
        self->name = componentName;
    return self;
}


- (const char*) toString {
        return self->name;
}

@end

