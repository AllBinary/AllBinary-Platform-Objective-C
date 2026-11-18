// Generated Code Do Not Modify
#include "org/allbinary/graphics/form/FormType.h"



void FormType_staticInit(void) {
    static bool initialized = false;
    if (initialized) {
        return;
    }
    initialized = true;
}

@implementation FormType

- (void) initFields {
    
}


- (instancetype) init:(const char*)name {
    self = [super init];
    [self initFields];
        self->name = name;
    return self;
}


- (const char*) toString {
        return self->name;
}

@end

