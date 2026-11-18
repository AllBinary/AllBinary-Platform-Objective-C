// Generated Code Do Not Modify
#include "org/allbinary/game/layer/special/SpecialDownGameInputInterfaceProcessor.h"
#include "org/allbinary/game/input/event/GameKeyEvent.h"
#include "org/allbinary/layer/AllBinaryLayerManager.h"
#include "org/allbinary/game/layer/special/SpecialGameInputInterfaceProcessor.h"
#include "org/allbinary/game/layer/special/SpecialGameInputInterface.h"



void SpecialDownGameInputInterfaceProcessor_staticInit(void) {
    static bool initialized = false;
    if (initialized) {
        return;
    }
    initialized = true;
}

@implementation SpecialDownGameInputInterfaceProcessor


- (instancetype) init:(SpecialGameInputInterface*)collidableDestroyableDamageableLayer {
        self = [super init:collidableDestroyableDamageableLayer];
    return self;
}


// throws Exception
- (void) processEvent:(AllBinaryLayerManager*)allbinaryLayerManager :(GameKeyEvent*)gameKeyEvent {
        [self->specialGameInputInterface down];
}

@end

