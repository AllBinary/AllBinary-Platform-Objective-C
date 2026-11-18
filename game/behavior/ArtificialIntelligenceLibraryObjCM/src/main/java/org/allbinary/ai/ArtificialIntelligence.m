// Generated Code Do Not Modify
#include "org/allbinary/ai/ArtificialIntelligence.h"
#include "org/allbinary/layer/AllBinaryLayerManager.h"
#include "org/allbinary/ai/ArtificialIntelligenceInterface.h"



static ArtificialIntelligence* ArtificialIntelligence_instance;

void ArtificialIntelligence_staticInit(void) {
    static bool initialized = false;
    if (initialized) {
        return;
    }
    initialized = true;
    ArtificialIntelligence_instance = [((ArtificialIntelligence*) [ArtificialIntelligence alloc]) init];
}

@implementation ArtificialIntelligence


+ (ArtificialIntelligence*) getInstance {
        return (ArtificialIntelligence_staticInit(), ArtificialIntelligence_instance);
}


- (instancetype) init {
    self = [super init];
    return self;
}


// throws Exception
- (void) processAI:(AllBinaryLayerManager*)layerManager {
}


- (int32_t) getId {
        return 1;
}

@end

