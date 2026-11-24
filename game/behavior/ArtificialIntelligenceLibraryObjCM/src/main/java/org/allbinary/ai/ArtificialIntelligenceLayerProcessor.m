// Generated Code Do Not Modify
#include "org/allbinary/ai/ArtificialIntelligenceLayerProcessor.h"
#include "org/allbinary/layer/AllBinaryLayer.h"
#include "org/allbinary/layer/AllBinaryLayerManager.h"
#include "org/allbinary/ai/ArtificialIntelligenceLayerManager.h"
#include "org/allbinary/ai/ArtificialIntelligenceCompositeInterface.h"
#if __has_include("org/allbinary/ai/ArtificialIntelligenceInterface.h")
#include "org/allbinary/ai/ArtificialIntelligenceInterface.h"
#endif
#if __has_include("org/allbinary/layer/ArtificialIntelligenceInterface.h")
#include "org/allbinary/layer/ArtificialIntelligenceInterface.h"
#endif
#if __has_include("org/allbinary/layer/ArtificialIntelligenceInterface.h")
#include "org/allbinary/layer/ArtificialIntelligenceInterface.h"
#endif
#if __has_include("org/allbinary/layer/ArtificialIntelligenceInterface.h")
#include "org/allbinary/layer/ArtificialIntelligenceInterface.h"
#endif



void ArtificialIntelligenceLayerProcessor_staticInit(void) {
    static bool initialized = false;
    if (initialized) {
        return;
    }
    initialized = true;
}

@implementation ArtificialIntelligenceLayerProcessor


- (instancetype) init {
        self = [super init:((ArtificialIntelligenceLayerManager*) [((ArtificialIntelligenceLayerManager*) [ArtificialIntelligenceLayerManager alloc]) init])];
    return self;
}


// throws Exception
- (void) processAt:(AllBinaryLayerManager*)allBinaryLayerManager :(AllBinaryLayer*)layerInterface :(int32_t)index {
        ArtificialIntelligenceCompositeInterface* artificialIntelligenceCompositeInterface = ((ArtificialIntelligenceCompositeInterface*) layerInterface);
        [((id<ArtificialIntelligenceInterface>) [((id<ArtificialIntelligenceCompositeInterface>) artificialIntelligenceCompositeInterface) getArtificialIntelligenceInterface]) processAI:allBinaryLayerManager];
}


// throws Exception
- (bool) isProcessorLayer:(AllBinaryLayer*)layerInterface {
        if ([layerInterface implmentsArtificialIntelligenceCompositeInterface]) {
            return true;
        } else {
            return false;
        }
}

@end

