// Generated Code Do Not Modify
#include "org/allbinary/time/LicenseStupidTimerFactory.h"
#include "org/allbinary/time/StupidTimer.h"


static StupidTimer* LicenseStupidTimerFactory_instance;

void LicenseStupidTimerFactory_staticInit(void) {
    static bool initialized = false;
    if (initialized) {
        return;
    }
    initialized = true;
    LicenseStupidTimerFactory_instance = [((StupidTimer*) [StupidTimer alloc]) init];
}

@implementation LicenseStupidTimerFactory

- (instancetype) init {
    self = [super init];
    return self;
}


+ (StupidTimer*) getInstance {
        return (LicenseStupidTimerFactory_staticInit(), LicenseStupidTimerFactory_instance);
}

@end

