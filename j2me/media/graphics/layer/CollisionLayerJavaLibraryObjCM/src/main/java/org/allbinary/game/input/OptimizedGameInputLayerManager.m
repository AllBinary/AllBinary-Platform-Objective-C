// Generated Code Do Not Modify
#include "org/allbinary/game/input/OptimizedGameInputLayerManager.h"
#include "org/allbinary/layer/LayerManagerNoDebug.h"



void OptimizedGameInputLayerManager_staticInit(void) {
    static bool initialized = false;
    if (initialized) {
        return;
    }
    initialized = true;
}

@implementation OptimizedGameInputLayerManager


- (instancetype) init {
        self = [super init:[LayerManagerNoDebug getInstance]];
    return self;
}

@end

