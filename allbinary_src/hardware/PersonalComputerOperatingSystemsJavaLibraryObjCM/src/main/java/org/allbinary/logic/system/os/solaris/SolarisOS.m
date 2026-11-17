// Generated Code Do Not Modify
#include "org/allbinary/logic/system/os/solaris/SolarisOS.h"



void SolarisOS_staticInit(void) {
    static bool initialized = false;
    if (initialized) {
        return;
    }
    initialized = true;
}

@implementation SolarisOS


- (instancetype) init {
    self = [super init];
        self->scalable = true;
    return self;
}


- (bool) isAutoHide {
        return true;
}

@end

