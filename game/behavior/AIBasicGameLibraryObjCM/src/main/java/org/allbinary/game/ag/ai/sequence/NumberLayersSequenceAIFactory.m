// Generated Code Do Not Modify
#include "org/allbinary/game/ag/ai/sequence/NumberLayersSequenceAIFactory.h"
#include "org/allbinary/ai/ArtificialIntelligenceInterface.h"
#include "org/allbinary/game/input/GameInput.h"
#include "org/allbinary/layer/AllBinaryLayer.h"
#include "org/allbinary/game/ag/ai/sequence/NumberLayersSequenceAI.h"



void NumberLayersSequenceAIFactory_staticInit(void) {
    static bool initialized = false;
    if (initialized) {
        return;
    }
    initialized = true;
}

@implementation NumberLayersSequenceAIFactory

- (instancetype) init {
    self = [super init];
    return self;
}


- (ArtificialIntelligenceInterface*) getInstance:(int32_t)numberOfEnemiesLeft :(ArtificialIntelligenceInterface**)artificialIntelligenceInterface :(AllBinaryLayer*)ownerLayerInterface :(GameInput*)gameInput {
        return [((NumberLayersSequenceAI*) [NumberLayersSequenceAI alloc]) init:numberOfEnemiesLeft :artificialIntelligenceInterface :ownerLayerInterface :gameInput];
}

@end

