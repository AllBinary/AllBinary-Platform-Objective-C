// Generated Code Do Not Modify
#include "org/allbinary/game/layer/resources/OnDemandResourcesFactory.h"
#include "org/allbinary/game/layer/resources/OnDemandResources.h"



void OnDemandResourcesFactory_staticInit(void) {
    static bool initialized = false;
    if (initialized) {
        return;
    }
    initialized = true;
}

@implementation OnDemandResourcesFactory

- (instancetype) init {
    self = [super init];
    return self;
}


- (int32_t) size {
        return 0;
}


- (OnDemandResources*) remove:(int32_t)layerId {
        return (OnDemandResources_staticInit(), OnDemandResources_NULL_ON_DEMAND_RESOURCES);
}

@end

