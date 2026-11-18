// Generated Code Do Not Modify
#include "org/allbinary/game/tracking/GenericTrackingLayerCircularStaticPool.h"


static GenericTrackingLayerCircularStaticPool* GenericTrackingLayerCircularStaticPool_SINGLETON;

void GenericTrackingLayerCircularStaticPool_staticInit(void) {
    static bool initialized = false;
    if (initialized) {
        return;
    }
    initialized = true;
    GenericTrackingLayerCircularStaticPool_SINGLETON = [((GenericTrackingLayerCircularStaticPool*) [GenericTrackingLayerCircularStaticPool alloc]) init];
}

@implementation GenericTrackingLayerCircularStaticPool


- (instancetype) init {
    self = [super init];
    return self;
}


+ (GenericTrackingLayerCircularStaticPool*) getInstance {
        return (GenericTrackingLayerCircularStaticPool_staticInit(), GenericTrackingLayerCircularStaticPool_SINGLETON);
}

@end

