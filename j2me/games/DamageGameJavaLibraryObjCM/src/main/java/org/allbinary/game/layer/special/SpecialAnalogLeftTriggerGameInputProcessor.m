// Generated Code Do Not Modify
#include "org/allbinary/game/layer/special/SpecialAnalogLeftTriggerGameInputProcessor.h"
#include "org/allbinary/game/input/event/GameKeyEvent.h"
#include "org/allbinary/layer/AllBinaryLayerManager.h"
#include "org/allbinary/game/layer/special/SpecialGameInputProcessor.h"
#include "org/allbinary/game/layer/special/CollidableDestroyableDamageableLayer.h"



void SpecialAnalogLeftTriggerGameInputProcessor_staticInit(void) {
    static bool initialized = false;
    if (initialized) {
        return;
    }
    initialized = true;
}

@implementation SpecialAnalogLeftTriggerGameInputProcessor


- (instancetype) init:(CollidableDestroyableDamageableLayer*)collidableDestroyableDamageableLayer {
        self = [super init:collidableDestroyableDamageableLayer];
    return self;
}


// throws Exception
- (void) processAnalog:(AllBinaryLayerManager*)allbinaryLayerManager :(GameKeyEvent*)gameKeyEvent :(int32_t)yAnalogValue {
        [self->collidableDestroyableDamageableLayer leftTrigger:allbinaryLayerManager :gameKeyEvent :yAnalogValue];
}

@end

