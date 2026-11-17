// Generated Code Do Not Modify
#include "org/allbinary/logic/communication/log/config/type/LogConfigType.h"



void LogConfigType_staticInit(void) {
    static bool initialized = false;
    if (initialized) {
        return;
    }
    initialized = true;
}

@implementation LogConfigType

- (void) initFields {
    
    
}


- (instancetype) init:(const char*)name :(const char*)description {
    self = [super init];
    [self initFields];
        self->name = name;
        self->description = description;
    return self;
}


- (const char*) getName {
        return self->name;
}


- (const char*) getDescription {
        return self->description;
}


- (void) setName:(const char*)value {
        self->name = value;
}


- (void) setDescription:(const char*)value {
        self->description = value;
}

@end

