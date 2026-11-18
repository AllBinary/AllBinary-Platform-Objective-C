// Generated Code Do Not Modify
#include "org/allbinary/J2MEUtil.h"



void J2MEUtil_staticInit(void) {
    static bool initialized = false;
    if (initialized) {
        return;
    }
    initialized = true;
}

@implementation J2MEUtil


- (instancetype) init {
    self = [super init];
    return self;
}


+ (bool) isJ2ME {
        return false;
}


+ (bool) isJ2SE {
        return true;
}


+ (bool) isHTML {
        return false;
}

@end

