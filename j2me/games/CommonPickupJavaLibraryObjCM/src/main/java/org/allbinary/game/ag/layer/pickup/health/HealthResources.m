// Generated Code Do Not Modify
#include "org/allbinary/game/ag/layer/pickup/health/HealthResources.h"


static HealthResources* HealthResources_SINGLETON;

void HealthResources_staticInit(void) {
    static bool initialized = false;
    if (initialized) {
        return;
    }
    initialized = true;
    HealthResources_SINGLETON = ((HealthResources*) [((HealthResources*) [HealthResources alloc]) init]);
}

@implementation HealthResources

- (void) initFields {
    self->RESOURCE = "health_drop_20_by_20.png";
}


- (instancetype) init {
    self = [super init];
    [self initFields];
    return self;
}


+ (HealthResources*) getInstance {
        return (HealthResources_staticInit(), HealthResources_SINGLETON);
}

@end

