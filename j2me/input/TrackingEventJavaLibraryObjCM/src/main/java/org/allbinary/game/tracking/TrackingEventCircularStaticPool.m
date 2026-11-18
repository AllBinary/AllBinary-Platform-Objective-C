// Generated Code Do Not Modify
#include "org/allbinary/game/tracking/TrackingEventCircularStaticPool.h"
#include "org/allbinary/layer/AllBinaryLayer.h"
#include "org/allbinary/logic/util/event/AllBinaryEventCircularPool.h"
#include "org/allbinary/game/tracking/TrackingEventFactory.h"
#include "org/allbinary/game/tracking/TrackingEvent.h"


static TrackingEventCircularStaticPool* TrackingEventCircularStaticPool_instance;

void TrackingEventCircularStaticPool_staticInit(void) {
    static bool initialized = false;
    if (initialized) {
        return;
    }
    initialized = true;
    TrackingEventCircularStaticPool_instance = [((TrackingEventCircularStaticPool*) [TrackingEventCircularStaticPool alloc]) init];
}

@implementation TrackingEventCircularStaticPool

- (void) initFields {
    self->EVENT_POOL = [((AllBinaryEventCircularPool*) [AllBinaryEventCircularPool alloc]) init:20];
}

- (instancetype) init {
    self = [super init];
    [self initFields];
    return self;
}


+ (TrackingEventCircularStaticPool*) getInstance {
        return (TrackingEventCircularStaticPool_staticInit(), TrackingEventCircularStaticPool_instance);
}


- (void) init_ {
        [self->EVENT_POOL initAllBinaryEventCircularPool:[((TrackingEventFactory*) [TrackingEventFactory alloc]) init]];
}


// throws Exception
// synchronized
- (TrackingEvent*) getNextInstance:(AllBinaryLayer*)layerInterface {
        TrackingEvent* trackingEvent = ((TrackingEvent*) [self->EVENT_POOL getNextInstance]);
        [trackingEvent setLayerInterfaceForCircularStaticPool:layerInterface];
        return trackingEvent;
}

@end

