// Generated Code Do Not Modify
#include "org/allbinary/game/midlet/LicenseCheckRunnableFactory.h"
#include "org/allbinary/thread/ABRunnable.h"
#include "org/allbinary/thread/NullABRunnable.h"
#include "org/allbinary/game/midlet/SpecialDemoGameMidlet.h"



void LicenseCheckRunnableFactory_staticInit(void) {
    static bool initialized = false;
    if (initialized) {
        return;
    }
    initialized = true;
}

@implementation LicenseCheckRunnableFactory

- (instancetype) init {
    self = [super init];
    return self;
}


- (ABRunnable*) getInstance:(SpecialDemoGameMidlet*)specialDemoGameMidlet {
        return [NullABRunnable getInstance];
}

@end

