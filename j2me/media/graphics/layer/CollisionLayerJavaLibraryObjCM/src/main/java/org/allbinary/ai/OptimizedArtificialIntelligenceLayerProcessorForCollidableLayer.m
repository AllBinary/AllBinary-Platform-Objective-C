// Generated Code Do Not Modify
#include "org/allbinary/ai/OptimizedArtificialIntelligenceLayerProcessorForCollidableLayer.h"
#include "org/allbinary/game/layer/CollidableCompositeLayer.h"
#include "org/allbinary/layer/AllBinaryLayer.h"
#include "org/allbinary/layer/AllBinaryLayerManager.h"
#include "org/allbinary/ai/OptimizedArtificialIntelligenceLayerManager.h"
#if __has_include("org/allbinary/ai/ArtificialIntelligenceInterface.h")
#include "org/allbinary/ai/ArtificialIntelligenceInterface.h"
#endif
#if __has_include("org/allbinary/game/layer/ArtificialIntelligenceInterface.h")
#include "org/allbinary/game/layer/ArtificialIntelligenceInterface.h"
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



void OptimizedArtificialIntelligenceLayerProcessorForCollidableLayer_staticInit(void) {
    static bool initialized = false;
    if (initialized) {
        return;
    }
    initialized = true;
}

@implementation OptimizedArtificialIntelligenceLayerProcessorForCollidableLayer


- (instancetype) init {
        self = [super init:[((OptimizedArtificialIntelligenceLayerManager*) [OptimizedArtificialIntelligenceLayerManager alloc]) init]];
    return self;
}


// throws Exception
- (void) processAt:(AllBinaryLayerManager*)allBinaryLayerManager :(AllBinaryLayer*)layerInterface :(int32_t)index {
        CollidableCompositeLayer* artificialIntelligenceCompositeInterface = ((CollidableCompositeLayer*) layerInterface);
        [[artificialIntelligenceCompositeInterface getArtificialIntelligenceInterface] processAI:allBinaryLayerManager];
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

