// Generated Code Do Not Modify
#include "org/allbinary/game/ag/ai/HorizontalRotationManeuverAIFactory.h"
#include "org/allbinary/ai/ArtificialIntelligenceInterface.h"
#include "org/allbinary/game/input/GameInput.h"
#include "org/allbinary/layer/AllBinaryLayer.h"
#include "org/allbinary/util/ABHashtable.h"
#include "org/allbinary/game/ag/ai/HorizontaRotationManeuverAI.h"



void HorizontalRotationManeuverAIFactory_staticInit(void) {
    static bool initialized = false;
    if (initialized) {
        return;
    }
    initialized = true;
}

@implementation HorizontalRotationManeuverAIFactory

- (instancetype) init {
    self = [super init];
    return self;
}


- (ArtificialIntelligenceInterface*) getInstance:(ABHashtable*)hashtable :(AllBinaryLayer*)ownerLayerInterface :(GameInput*)gameInput {
        return [((HorizontaRotationManeuverAI*) [HorizontaRotationManeuverAI alloc]) init:ownerLayerInterface :gameInput];
}

@end

