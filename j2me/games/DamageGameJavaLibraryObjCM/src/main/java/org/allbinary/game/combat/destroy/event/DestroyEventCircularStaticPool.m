// Generated Code Do Not Modify
#include "org/allbinary/game/combat/destroy/event/DestroyEventCircularStaticPool.h"
#include "org/allbinary/game/displayable/canvas/AllBinaryGameCanvas.h"
#include "org/allbinary/layer/AllBinaryLayer.h"
#include "org/allbinary/logic/util/event/AllBinaryEventCircularPool.h"
#include "org/allbinary/game/combat/destroy/event/DestroyEventFactory.h"
#include "org/allbinary/game/combat/destroy/event/DestroyedEvent.h"


static DestroyEventCircularStaticPool* DestroyEventCircularStaticPool_instance;

void DestroyEventCircularStaticPool_staticInit(void) {
    static bool initialized = false;
    if (initialized) {
        return;
    }
    initialized = true;
    DestroyEventCircularStaticPool_instance = ((DestroyEventCircularStaticPool*) [((DestroyEventCircularStaticPool*) [DestroyEventCircularStaticPool alloc]) init]);
}

@implementation DestroyEventCircularStaticPool

- (void) initFields {
    self->EVENT_POOL = ((AllBinaryEventCircularPool*) [((AllBinaryEventCircularPool*) [AllBinaryEventCircularPool alloc]) init:20]);
}


+ (DestroyEventCircularStaticPool*) getInstance {
        return (DestroyEventCircularStaticPool_staticInit(), DestroyEventCircularStaticPool_instance);
}


- (instancetype) init {
    self = [super init];
    [self initFields];
    return self;
}


- (void) initMethod:(AllBinaryGameCanvas*)combatGameCanvas {
        [self->EVENT_POOL initAllBinaryEventCircularPool:((DestroyEventFactory*) [((DestroyEventFactory*) [DestroyEventFactory alloc]) init:combatGameCanvas])];
}


// throws Exception
- (DestroyedEvent*) getInstanceForLayer:(AllBinaryLayer*)layerInterface {
        DestroyedEvent* destroyedEvent = ((DestroyedEvent*) [self->EVENT_POOL getNextInstance]);
        [destroyedEvent setLayerInterfaceForCircularStaticPool:layerInterface];
        return destroyedEvent;
}

@end

