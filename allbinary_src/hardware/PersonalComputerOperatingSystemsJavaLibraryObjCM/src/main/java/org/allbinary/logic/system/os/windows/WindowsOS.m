// Generated Code Do Not Modify
#include "org/allbinary/logic/system/os/windows/WindowsOS.h"



void WindowsOS_staticInit(void) {
    static bool initialized = false;
    if (initialized) {
        return;
    }
    initialized = true;
}

@implementation WindowsOS


- (instancetype) init {
    self = [super init];
        self->scalable = true;
    return self;
}


- (bool) isAutoHide {
        return true;
}

@end

