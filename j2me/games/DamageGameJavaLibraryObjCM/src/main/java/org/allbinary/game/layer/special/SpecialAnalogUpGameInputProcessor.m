// Generated Code Do Not Modify
#include "org/allbinary/game/layer/special/SpecialAnalogUpGameInputProcessor.h"
#include "org/allbinary/game/input/event/GameKeyEvent.h"
#include "org/allbinary/layer/AllBinaryLayerManager.h"
#include "org/allbinary/game/layer/special/SpecialGameInputProcessor.h"
#include "org/allbinary/game/layer/special/CollidableDestroyableDamageableLayer.h"



void SpecialAnalogUpGameInputProcessor_staticInit(void) {
    static bool initialized = false;
    if (initialized) {
        return;
    }
    initialized = true;
}

@implementation SpecialAnalogUpGameInputProcessor


- (instancetype) init:(CollidableDestroyableDamageableLayer*)collidableDestroyableDamageableLayer {
        self = [super init:collidableDestroyableDamageableLayer];
    return self;
}


// throws Exception
- (void) processAnalog:(AllBinaryLayerManager*)allbinaryLayerManager :(GameKeyEvent*)gameKeyEvent :(int32_t)yAnalogValue {
        [self->collidableDestroyableDamageableLayer upAnalog:yAnalogValue];
}

@end

