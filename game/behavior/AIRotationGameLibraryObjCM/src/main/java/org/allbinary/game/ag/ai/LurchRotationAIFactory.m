// Generated Code Do Not Modify
#include "org/allbinary/game/ag/ai/LurchRotationAIFactory.h"
#include "org/allbinary/ai/ArtificialIntelligenceInterface.h"
#include "org/allbinary/game/input/GameInput.h"
#include "org/allbinary/layer/AllBinaryLayer.h"
#include "org/allbinary/util/ABHashtable.h"
#include "org/allbinary/game/ag/ai/LurchRotationAI.h"



void LurchRotationAIFactory_staticInit(void) {
    static bool initialized = false;
    if (initialized) {
        return;
    }
    initialized = true;
}

@implementation LurchRotationAIFactory

- (instancetype) init {
    self = [super init];
    return self;
}


- (ArtificialIntelligenceInterface*) getInstance:(ABHashtable*)hashtable :(AllBinaryLayer*)ownerLayerInterface :(GameInput*)gameInput {
        return [((LurchRotationAI*) [LurchRotationAI alloc]) init:ownerLayerInterface :gameInput];
}

@end

