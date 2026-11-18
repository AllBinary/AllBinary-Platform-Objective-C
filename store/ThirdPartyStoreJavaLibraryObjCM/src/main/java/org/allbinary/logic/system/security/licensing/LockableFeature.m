// Generated Code Do Not Modify
#include "org/allbinary/logic/system/security/licensing/LockableFeature.h"



void LockableFeature_staticInit(void) {
    static bool initialized = false;
    if (initialized) {
        return;
    }
    initialized = true;
}

@implementation LockableFeature

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

