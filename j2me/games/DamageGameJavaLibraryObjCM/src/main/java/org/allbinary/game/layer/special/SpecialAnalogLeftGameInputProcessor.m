// Generated Code Do Not Modify
#include "org/allbinary/game/layer/special/SpecialAnalogLeftGameInputProcessor.h"
#include "org/allbinary/game/input/event/GameKeyEvent.h"
#include "org/allbinary/layer/AllBinaryLayerManager.h"
#include "org/allbinary/game/layer/special/SpecialGameInputProcessor.h"
#include "org/allbinary/game/layer/special/CollidableDestroyableDamageableLayer.h"



void SpecialAnalogLeftGameInputProcessor_staticInit(void) {
    static bool initialized = false;
    if (initialized) {
        return;
    }
    initialized = true;
}

@implementation SpecialAnalogLeftGameInputProcessor


- (instancetype) init:(CollidableDestroyableDamageableLayer*)collidableDestroyableDamageableLayer {
        self = [super init:collidableDestroyableDamageableLayer];
    return self;
}


// throws Exception
- (void) processAnalog:(AllBinaryLayerManager*)allbinaryLayerManager :(GameKeyEvent*)gameKeyEvent :(int32_t)xAnalogValue {
        [self->collidableDestroyableDamageableLayer leftAnalog:xAnalogValue];
}

@end

