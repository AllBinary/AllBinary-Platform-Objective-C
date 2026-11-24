// Generated Code Do Not Modify
#include "org/allbinary/ThreedResources.h"


static ThreedResources* ThreedResources_threedResources;

void ThreedResources_staticInit(void) {
    static bool initialized = false;
    if (initialized) {
        return;
    }
    initialized = true;
    ThreedResources_threedResources = ((ThreedResources*) [((ThreedResources*) [ThreedResources alloc]) init]);
}

@implementation ThreedResources

- (instancetype) init {
    self = [super init];
    return self;
}


+ (ThreedResources*) getThreedResources {
        return (ThreedResources_staticInit(), ThreedResources_threedResources);
}


- (void) add {
}

@end

