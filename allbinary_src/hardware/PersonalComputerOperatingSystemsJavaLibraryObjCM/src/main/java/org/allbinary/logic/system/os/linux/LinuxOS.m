// Generated Code Do Not Modify
#include "org/allbinary/logic/system/os/linux/LinuxOS.h"



void LinuxOS_staticInit(void) {
    static bool initialized = false;
    if (initialized) {
        return;
    }
    initialized = true;
}

@implementation LinuxOS


- (instancetype) init {
    self = [super init];
        self->scalable = true;
    return self;
}


- (bool) isAutoHide {
        return true;
}

@end

