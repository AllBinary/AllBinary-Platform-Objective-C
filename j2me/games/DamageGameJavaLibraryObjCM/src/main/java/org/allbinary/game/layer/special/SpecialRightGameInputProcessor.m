// Generated Code Do Not Modify
#include "org/allbinary/game/layer/special/SpecialRightGameInputProcessor.h"
#include "org/allbinary/game/input/event/GameKeyEvent.h"
#include "org/allbinary/layer/AllBinaryLayerManager.h"
#include "org/allbinary/game/layer/special/SpecialGameInputProcessor.h"
#include "org/allbinary/game/layer/special/CollidableDestroyableDamageableLayer.h"



void SpecialRightGameInputProcessor_staticInit(void) {
    static bool initialized = false;
    if (initialized) {
        return;
    }
    initialized = true;
}

@implementation SpecialRightGameInputProcessor


- (instancetype) init:(CollidableDestroyableDamageableLayer*)collidableDestroyableDamageableLayer {
        self = [super init:collidableDestroyableDamageableLayer];
    return self;
}


// throws Exception
- (void) processEvent:(AllBinaryLayerManager*)allbinaryLayerManager :(GameKeyEvent*)gameKeyEvent {
        [self->collidableDestroyableDamageableLayer right];
}

@end

