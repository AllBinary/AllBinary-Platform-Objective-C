// Generated Code Do Not Modify
#include "org/allbinary/game/layer/special/AnalogInputBuilder.h"
#include "javax/microedition/lcdui/Canvas.h"
#include "org/allbinary/game/input/GameInputProcessor.h"
#include "org/allbinary/game/layer/special/SpecialUpGameInputProcessor.h"
#include "org/allbinary/game/layer/special/SpecialDownGameInputProcessor.h"
#include "org/allbinary/game/layer/special/SpecialRightGameInputProcessor.h"
#include "org/allbinary/game/layer/special/SpecialLeftGameInputProcessor.h"
#include "org/allbinary/game/layer/special/Special1GameInputProcessor.h"
#include "org/allbinary/game/layer/special/Special3GameInputProcessor.h"
#include "org/allbinary/game/layer/special/CollidableDestroyableDamageableLayer.h"
#include "org/allbinary/game/layer/special/SpecialAnalogUpGameInputProcessor.h"
#include "org/allbinary/game/layer/special/SpecialAnalogDownGameInputProcessor.h"
#include "org/allbinary/game/layer/special/SpecialAnalogRightGameInputProcessor.h"
#include "org/allbinary/game/layer/special/SpecialAnalogLeftGameInputProcessor.h"
#include "org/allbinary/game/layer/special/SpecialAnalogLeftTriggerGameInputProcessor.h"
#include "org/allbinary/game/layer/special/SpecialAnalogRightTriggerGameInputProcessor.h"


static AnalogInputBuilder* AnalogInputBuilder_instance;

void AnalogInputBuilder_staticInit(void) {
    static bool initialized = false;
    if (initialized) {
        return;
    }
    initialized = true;
    AnalogInputBuilder_instance = ((AnalogInputBuilder*) [((AnalogInputBuilder*) [AnalogInputBuilder alloc]) init]);
}

@implementation AnalogInputBuilder

- (instancetype) init {
    self = [super init];
    return self;
}


+ (AnalogInputBuilder*) getInstance {
        return (AnalogInputBuilder_staticInit(), AnalogInputBuilder_instance);
}


- (void) disable:(GameInputProcessor**)inputProcessorArray :(CollidableDestroyableDamageableLayer*)collidableDestroyableDamageableLayer {
        inputProcessorArray[(Canvas_staticInit(), Canvas_UP)] = ((SpecialUpGameInputProcessor*) [((SpecialUpGameInputProcessor*) [SpecialUpGameInputProcessor alloc]) init:collidableDestroyableDamageableLayer]);
        inputProcessorArray[(Canvas_staticInit(), Canvas_DOWN)] = ((SpecialDownGameInputProcessor*) [((SpecialDownGameInputProcessor*) [SpecialDownGameInputProcessor alloc]) init:collidableDestroyableDamageableLayer]);
        inputProcessorArray[(Canvas_staticInit(), Canvas_RIGHT)] = ((SpecialRightGameInputProcessor*) [((SpecialRightGameInputProcessor*) [SpecialRightGameInputProcessor alloc]) init:collidableDestroyableDamageableLayer]);
        inputProcessorArray[(Canvas_staticInit(), Canvas_LEFT)] = ((SpecialLeftGameInputProcessor*) [((SpecialLeftGameInputProcessor*) [SpecialLeftGameInputProcessor alloc]) init:collidableDestroyableDamageableLayer]);
        inputProcessorArray[(Canvas_staticInit(), Canvas_KEY_NUM0)] = ((Special1GameInputProcessor*) [((Special1GameInputProcessor*) [Special1GameInputProcessor alloc]) init:collidableDestroyableDamageableLayer]);
        inputProcessorArray[(Canvas_staticInit(), Canvas_KEY_NUM5)] = ((Special3GameInputProcessor*) [((Special3GameInputProcessor*) [Special3GameInputProcessor alloc]) init:collidableDestroyableDamageableLayer]);
}


- (void) enable:(GameInputProcessor**)inputProcessorArray :(CollidableDestroyableDamageableLayer*)collidableDestroyableDamageableLayer {
        inputProcessorArray[(Canvas_staticInit(), Canvas_UP)] = ((SpecialAnalogUpGameInputProcessor*) [((SpecialAnalogUpGameInputProcessor*) [SpecialAnalogUpGameInputProcessor alloc]) init:collidableDestroyableDamageableLayer]);
        inputProcessorArray[(Canvas_staticInit(), Canvas_DOWN)] = ((SpecialAnalogDownGameInputProcessor*) [((SpecialAnalogDownGameInputProcessor*) [SpecialAnalogDownGameInputProcessor alloc]) init:collidableDestroyableDamageableLayer]);
        inputProcessorArray[(Canvas_staticInit(), Canvas_RIGHT)] = ((SpecialAnalogRightGameInputProcessor*) [((SpecialAnalogRightGameInputProcessor*) [SpecialAnalogRightGameInputProcessor alloc]) init:collidableDestroyableDamageableLayer]);
        inputProcessorArray[(Canvas_staticInit(), Canvas_LEFT)] = ((SpecialAnalogLeftGameInputProcessor*) [((SpecialAnalogLeftGameInputProcessor*) [SpecialAnalogLeftGameInputProcessor alloc]) init:collidableDestroyableDamageableLayer]);
        inputProcessorArray[(Canvas_staticInit(), Canvas_KEY_NUM0)] = ((SpecialAnalogLeftTriggerGameInputProcessor*) [((SpecialAnalogLeftTriggerGameInputProcessor*) [SpecialAnalogLeftTriggerGameInputProcessor alloc]) init:collidableDestroyableDamageableLayer]);
        inputProcessorArray[(Canvas_staticInit(), Canvas_KEY_NUM5)] = ((SpecialAnalogRightTriggerGameInputProcessor*) [((SpecialAnalogRightTriggerGameInputProcessor*) [SpecialAnalogRightTriggerGameInputProcessor alloc]) init:collidableDestroyableDamageableLayer]);
}

@end

