// Generated Code Do Not Modify
#include "org/allbinary/game/layer/special/SpecialLeftGameInputInterfaceProcessor.h"
#include "org/allbinary/game/input/event/GameKeyEvent.h"
#include "org/allbinary/layer/AllBinaryLayerManager.h"
#include "org/allbinary/game/layer/special/SpecialGameInputInterfaceProcessor.h"
#include "org/allbinary/game/layer/special/SpecialGameInputInterface.h"



void SpecialLeftGameInputInterfaceProcessor_staticInit(void) {
    static bool initialized = false;
    if (initialized) {
        return;
    }
    initialized = true;
}

@implementation SpecialLeftGameInputInterfaceProcessor


- (instancetype) init:(SpecialGameInputInterface*)collidableDestroyableDamageableLayer {
        self = [super init:collidableDestroyableDamageableLayer];
    return self;
}


// throws Exception
- (void) processEvent:(AllBinaryLayerManager*)allbinaryLayerManager :(GameKeyEvent*)gameKeyEvent {
        [self->specialGameInputInterface left];
}

@end

