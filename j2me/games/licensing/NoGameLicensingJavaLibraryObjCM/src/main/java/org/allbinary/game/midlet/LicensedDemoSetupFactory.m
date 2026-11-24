// Generated Code Do Not Modify
#include "org/allbinary/game/midlet/LicensedDemoSetupFactory.h"
#include "org/allbinary/game/midlet/DemoSetup.h"



void LicensedDemoSetupFactory_staticInit(void) {
    static bool initialized = false;
    if (initialized) {
        return;
    }
    initialized = true;
}

@implementation LicensedDemoSetupFactory

- (instancetype) init {
    self = [super init];
    return self;
}


- (DemoSetup*) getInstance {
        return ((DemoSetup*) [((DemoSetup*) [DemoSetup alloc]) init]);
}

@end

