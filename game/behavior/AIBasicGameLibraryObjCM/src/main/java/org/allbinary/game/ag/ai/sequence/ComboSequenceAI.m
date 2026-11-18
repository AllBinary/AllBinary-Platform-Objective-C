// Generated Code Do Not Modify
#include "org/allbinary/game/ag/ai/sequence/ComboSequenceAI.h"
#include "org/allbinary/ai/ArtificialIntelligenceInterface.h"
#include "org/allbinary/game/input/GameInput.h"
#include "org/allbinary/layer/AllBinaryLayer.h"
#include "org/allbinary/layer/AllBinaryLayerManager.h"
#include "org/allbinary/game/ag/ai/sequence/SequenceAI.h"



void ComboSequenceAI_staticInit(void) {
    static bool initialized = false;
    if (initialized) {
        return;
    }
    initialized = true;
}

@implementation ComboSequenceAI


- (instancetype) init:(ArtificialIntelligenceInterface**)artificialIntelligenceInterface :(AllBinaryLayer*)ownerLayerInterface :(GameInput*)gameInput {
        self = [super init:artificialIntelligenceInterface :ownerLayerInterface :gameInput];
    return self;
}


// throws Exception
- (void) processAI:(AllBinaryLayerManager*)allBinaryLayerManager {
        ArtificialIntelligenceInterface** artificialIntelligenceInterfaceArray = [self getArtificialIntelligenceInterface];
        int32_t size = java_array_length(artificialIntelligenceInterfaceArray);
        for (int32_t index = 0; index < size; index++) {
            [self setIndex:index];
            [super processAI:allBinaryLayerManager];
        }
}

@end

