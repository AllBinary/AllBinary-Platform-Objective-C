// Generated Code Do Not Modify
#include "org/allbinary/game/layer/special/SpecialStrafeRightGameInputProcessor.h"
#include "org/allbinary/game/input/event/GameKeyEvent.h"
#include "org/allbinary/layer/AllBinaryLayerManager.h"
#include "org/allbinary/game/layer/special/SpecialGameInputProcessor.h"
#include "org/allbinary/game/layer/special/CollidableDestroyableDamageableLayer.h"



void SpecialStrafeRightGameInputProcessor_staticInit(void) {
    static bool initialized = false;
    if (initialized) {
        return;
    }
    initialized = true;
}

@implementation SpecialStrafeRightGameInputProcessor


- (instancetype) init:(CollidableDestroyableDamageableLayer*)collidableDestroyableDamageableLayer {
        self = [super init:collidableDestroyableDamageableLayer];
    return self;
}


// throws Exception
- (void) processEvent:(AllBinaryLayerManager*)allbinaryLayerManager :(GameKeyEvent*)gameKeyEvent {
        [self->collidableDestroyableDamageableLayer strafeRight];
}

@end

