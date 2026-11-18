// Generated Code Do Not Modify
#include "org/allbinary/logic/io/AbIOSystem.h"


static AbIOSystem* AbIOSystem_instance;

void AbIOSystem_staticInit(void) {
    static bool initialized = false;
    if (initialized) {
        return;
    }
    initialized = true;
    AbIOSystem_instance = [((AbIOSystem*) [AbIOSystem alloc]) init];
}

@implementation AbIOSystem

- (void) initFields {
    self->type = "java.io";
}

- (instancetype) init {
    self = [super init];
    [self initFields];
    return self;
}


+ (AbIOSystem*) getInstance {
        return (AbIOSystem_staticInit(), AbIOSystem_instance);
}


- (const char*) getType {
        return self->type;
}


- (bool) isType:(const char*)type {
        if (strcmp(self->type, type) == 0) {
            return true;
        } else {
            return false;
        }
}

@end

