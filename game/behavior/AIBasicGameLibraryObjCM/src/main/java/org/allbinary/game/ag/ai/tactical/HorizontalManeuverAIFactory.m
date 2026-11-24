// Generated Code Do Not Modify
#include "org/allbinary/game/ag/ai/tactical/HorizontalManeuverAIFactory.h"
#include "org/allbinary/ai/ArtificialIntelligenceInterface.h"
#include "org/allbinary/game/input/GameInput.h"
#include "org/allbinary/layer/AllBinaryLayer.h"
#include "org/allbinary/util/ABHashtable.h"
#include "org/allbinary/game/ag/ai/tactical/HorizontalManeuverAI.h"



void HorizontalManeuverAIFactory_staticInit(void) {
    static bool initialized = false;
    if (initialized) {
        return;
    }
    initialized = true;
}

@implementation HorizontalManeuverAIFactory

- (instancetype) init {
    self = [super init];
    return self;
}


- (ArtificialIntelligenceInterface*) getInstance:(ABHashtable*)hashtable :(AllBinaryLayer*)ownerLayerInterface :(GameInput*)gameInput {
        return ((HorizontalManeuverAI*) [((HorizontalManeuverAI*) [HorizontalManeuverAI alloc]) init:ownerLayerInterface :gameInput]);
}

@end

