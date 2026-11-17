// Generated Code Do Not Modify
#include "org/allbinary/logic/system/os/NoOperatingSystem.h"
#include "org/allbinary/logic/system/os/GenericOperatingSystem.h"


GenericOperatingSystem* NoOperatingSystem_NO_OPERATING_SYSTEM;

void NoOperatingSystem_staticInit(void) {
    static bool initialized = false;
    if (initialized) {
        return;
    }
    initialized = true;
    NoOperatingSystem_NO_OPERATING_SYSTEM = [((GenericOperatingSystem*) [GenericOperatingSystem alloc]) init];
}

@implementation NoOperatingSystem


- (instancetype) init {
    self = [super init];
    return self;
}

@end

