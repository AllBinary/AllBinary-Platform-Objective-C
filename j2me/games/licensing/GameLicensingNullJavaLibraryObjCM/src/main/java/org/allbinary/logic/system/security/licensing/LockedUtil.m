// Generated Code Do Not Modify
#include "org/allbinary/logic/system/security/licensing/LockedUtil.h"
#include "org/allbinary/logic/system/security/licensing/LockedUtilInterface.h"
#include "org/allbinary/logic/system/security/licensing/LockableFeature.h"


static LockedUtil* LockedUtil_instance;

void LockedUtil_staticInit(void) {
    static bool initialized = false;
    if (initialized) {
        return;
    }
    initialized = true;
    LockedUtil_instance = [((LockedUtil*) [LockedUtil alloc]) init];
}

@implementation LockedUtil

- (instancetype) init {
    self = [super init];
    return self;
}


+ (LockedUtil*) getInstance {
        return (LockedUtil_staticInit(), LockedUtil_instance);
}


- (bool) isLocked {
        return true;
}


- (bool) isLockedFeature:(LockableFeature*)lockableFeatrue {
        return true;
}

@end

