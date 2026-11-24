// Generated Code Do Not Modify
#include "org/allbinary/game/terrain/TerrainEventCircularStaticPool.h"
#include "org/allbinary/logic/util/event/AllBinaryEventCircularPool.h"
#include "org/allbinary/game/terrain/TerrainEventFactory.h"
#include "org/allbinary/game/terrain/TerrainEvent.h"
#include "org/allbinary/game/terrain/BasicTerrainInfo.h"


static TerrainEventCircularStaticPool* TerrainEventCircularStaticPool_instance;

void TerrainEventCircularStaticPool_staticInit(void) {
    static bool initialized = false;
    if (initialized) {
        return;
    }
    initialized = true;
    TerrainEventCircularStaticPool_instance = ((TerrainEventCircularStaticPool*) [((TerrainEventCircularStaticPool*) [TerrainEventCircularStaticPool alloc]) init]);
}

@implementation TerrainEventCircularStaticPool

- (void) initFields {
    self->EVENT_POOL = ((AllBinaryEventCircularPool*) [((AllBinaryEventCircularPool*) [AllBinaryEventCircularPool alloc]) init:20]);
}

- (instancetype) init {
    self = [super init];
    [self initFields];
    return self;
}


+ (TerrainEventCircularStaticPool*) getInstance {
        return (TerrainEventCircularStaticPool_staticInit(), TerrainEventCircularStaticPool_instance);
}


- (void) initMethod {
        [self->EVENT_POOL initAllBinaryEventCircularPool:((TerrainEventFactory*) [((TerrainEventFactory*) [TerrainEventFactory alloc]) init])];
}


// throws Exception
// synchronized
- (TerrainEvent*) getNext:(BasicTerrainInfo*)basicTerrainInfo {
        TerrainEvent* trackingEvent = ((TerrainEvent*) [self->EVENT_POOL getNextInstance]);
        [trackingEvent setBasicTerrainInfoForCircularStaticPool:basicTerrainInfo];
        return trackingEvent;
}

@end

