// Generated Code Do Not Modify
#include "org/allbinary/audio/AudioContentTypeData.h"



void AudioContentTypeData_staticInit(void) {
    static bool initialized = false;
    if (initialized) {
        return;
    }
    initialized = true;
}

@implementation AudioContentTypeData

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

@end

