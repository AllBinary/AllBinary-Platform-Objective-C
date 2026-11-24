// Generated Code Do Not Modify
#include "org/allbinary/android/AndroidInfoFactory.h"


static AndroidInfoFactory* AndroidInfoFactory_instance;

void AndroidInfoFactory_staticInit(void) {
    static bool initialized = false;
    if (initialized) {
        return;
    }
    initialized = true;
    AndroidInfoFactory_instance = ((AndroidInfoFactory*) [((AndroidInfoFactory*) [AndroidInfoFactory alloc]) init]);
}

@implementation AndroidInfoFactory

- (void) initFields {
    self->version = 8;
}

- (instancetype) init {
    self = [super init];
    [self initFields];
    return self;
}


+ (AndroidInfoFactory*) getInstance {
        return (AndroidInfoFactory_staticInit(), AndroidInfoFactory_instance);
}


- (int32_t) getVersion {
        return self->version;
}

@end

