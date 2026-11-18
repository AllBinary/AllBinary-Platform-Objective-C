// Generated Code Do Not Modify
#include "org/allbinary/game/tick/OptimizedTickableLayerManager.h"
#include "org/allbinary/layer/LayerManagerNoDebug.h"



void OptimizedTickableLayerManager_staticInit(void) {
    static bool initialized = false;
    if (initialized) {
        return;
    }
    initialized = true;
}

@implementation OptimizedTickableLayerManager


- (instancetype) init {
        self = [super init:[LayerManagerNoDebug getInstance]];
    return self;
}

@end

