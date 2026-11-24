// Generated Code Do Not Modify
#include "org/allbinary/game/ag/ai/ArrayAI.h"
#include "org/allbinary/ai/ArtificialIntelligenceInterface.h"
#include "org/allbinary/game/input/GameInput.h"
#include "org/allbinary/layer/AllBinaryLayer.h"
#include "org/allbinary/layer/AllBinaryLayerManager.h"
#if __has_include("org/allbinary/ai/ArtificialIntelligenceInterface.h")
#include "org/allbinary/ai/ArtificialIntelligenceInterface.h"
#endif



void ArrayAI_staticInit(void) {
    static bool initialized = false;
    if (initialized) {
        return;
    }
    initialized = true;
}

@implementation ArrayAI

- (void) initFields {
    
}


- (instancetype) init:(ArtificialIntelligenceInterface**)artificialIntelligenceInterface :(AllBinaryLayer*)ownerLayerInterface :(GameInput*)gameInput {
        self = [super init:ownerLayerInterface :gameInput];
        [self initFields];
        self->artificialIntelligenceInterfaceArray = artificialIntelligenceInterface;
    return self;
}


// throws Exception
- (void) processAI:(AllBinaryLayerManager*)allBinaryLayerManager {
        int32_t size = java_array_length(self->artificialIntelligenceInterfaceArray);
        for (int32_t index = 0; index < size; index++) {
            [((id<ArtificialIntelligenceInterface>) self->artificialIntelligenceInterfaceArray[index]) processAI:allBinaryLayerManager];
        }
}


- (ArtificialIntelligenceInterface**) getArtificialIntelligenceInterface {
        return self->artificialIntelligenceInterfaceArray;
}

@end

