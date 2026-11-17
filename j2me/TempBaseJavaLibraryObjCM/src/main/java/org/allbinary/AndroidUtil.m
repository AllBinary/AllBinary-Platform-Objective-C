// Generated Code Do Not Modify
#include "org/allbinary/AndroidUtil.h"



void AndroidUtil_staticInit(void) {
    static bool initialized = false;
    if (initialized) {
        return;
    }
    initialized = true;
}

@implementation AndroidUtil


- (instancetype) init {
    self = [super init];
    return self;
}


+ (bool) isMemoryRestrictive {
        return false;
}


+ (bool) isAndroid {
        return false;
}

@end

