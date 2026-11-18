// Generated Code Do Not Modify
#include "org/allbinary/game/ag/ai/sequence/NumberLayersSequenceAI.h"
#include "org/allbinary/ai/ArtificialIntelligenceInterface.h"
#include "org/allbinary/game/input/GameInput.h"
#include "org/allbinary/layer/AllBinaryLayer.h"
#include "org/allbinary/layer/AllBinaryLayerManager.h"
#include "org/allbinary/game/ag/ai/sequence/SequenceAI.h"



void NumberLayersSequenceAI_staticInit(void) {
    static bool initialized = false;
    if (initialized) {
        return;
    }
    initialized = true;
}

@implementation NumberLayersSequenceAI

- (void) initFields {
    
}


- (instancetype) init:(int32_t)numberOfEnemiesLeft :(ArtificialIntelligenceInterface**)artificialIntelligenceInterface :(AllBinaryLayer*)ownerLayerInterface :(GameInput*)gameInput {
        self = [super init:artificialIntelligenceInterface :ownerLayerInterface :gameInput];
        [self initFields];
        self->numberOfLayersLeft = numberOfEnemiesLeft;
    return self;
}


// throws Exception
- (void) processAI:(AllBinaryLayerManager*)allBinaryLayerManager {
        if ([self getIndex] == 0) {
            if ([allBinaryLayerManager getSize] < self->numberOfLayersLeft) {
                [self setIndex:1];
            }
        }
        [super processAI:allBinaryLayerManager];
}

@end

