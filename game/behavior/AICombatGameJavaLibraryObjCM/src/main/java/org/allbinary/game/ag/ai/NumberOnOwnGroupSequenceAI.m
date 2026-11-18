// Generated Code Do Not Modify
#include "org/allbinary/game/ag/ai/NumberOnOwnGroupSequenceAI.h"
#include "org/allbinary/ai/ArtificialIntelligenceInterface.h"
#include "org/allbinary/game/input/GameInput.h"
#include "org/allbinary/game/layer/identification/GroupLayerManagerListener.h"
#include "org/allbinary/layer/AllBinaryLayer.h"
#include "org/allbinary/layer/AllBinaryLayerManager.h"



void NumberOnOwnGroupSequenceAI_staticInit(void) {
    static bool initialized = false;
    if (initialized) {
        return;
    }
    initialized = true;
}

@implementation NumberOnOwnGroupSequenceAI

- (void) initFields {
    
}


- (instancetype) init:(int32_t*)numberOnSameTeam :(ArtificialIntelligenceInterface**)artificialIntelligenceInterface :(AllBinaryLayer*)ownerLayerInterface :(GameInput*)gameInput {
        self = [super init:artificialIntelligenceInterface :ownerLayerInterface :gameInput];
        [self initFields];
        self->numberOnSameTeam = numberOnSameTeam;
    return self;
}


// throws Exception
- (void) processAI:(AllBinaryLayerManager*)allBinaryLayerManager {
        AllBinaryLayer* layerInterface = [self getOwnerLayerInterface];
        int32_t index = [self getIndex];
        if (java_array_length(self->numberOnSameTeam) > index) {
            int32_t size = [[GroupLayerManagerListener getInstance] getGroupSizeFromInterface:layerInterface];
            if (((int32_t) (self->numberOnSameTeam[index])) > size) {
                [self next];
            }
        }
        [super processAI:allBinaryLayerManager];
}

@end

