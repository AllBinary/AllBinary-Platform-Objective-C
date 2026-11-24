// Generated Code Do Not Modify
#include "org/allbinary/game/layer/resources/OnDemandResources.h"
#include "org/allbinary/animation/resource/BaseResourceAnimationInterfaceFactoryInterfaceFactory.h"
#include "org/allbinary/image/ImageCache.h"
#include "org/allbinary/logic/communication/log/LogUtil.h"


OnDemandResources* OnDemandResources_NULL_ON_DEMAND_RESOURCES;

void OnDemandResources_staticInit(void) {
    static bool initialized = false;
    if (initialized) {
        return;
    }
    initialized = true;
    OnDemandResources_NULL_ON_DEMAND_RESOURCES = ((OnDemandResources*) [((OnDemandResources*) [OnDemandResources alloc]) init]);
}

@implementation OnDemandResources

- (void) initFields {
    self->logUtil = [LogUtil getInstance];
}


- (instancetype) init {
    self = [super init];
    [self initFields];
    return self;
}


// throws Exception
- (void) waitFor {
}


// throws Exception
- (void) initMethod {
}


// throws Exception
- (int32_t) initAt:(ImageCache*)imageCache :(BaseResourceAnimationInterfaceFactoryInterfaceFactory*)resourceAnimationInterfaceFactoryInterfaceFactory :(int32_t)portion :(const char*)loadingString :(int32_t)index {
        return 0;
}

@end

