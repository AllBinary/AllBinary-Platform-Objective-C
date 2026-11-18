// Generated Code Do Not Modify
#include "org/allbinary/game/collision/OptimizedAllBinaryCollisionLayerManager.h"
#include "org/allbinary/layer/LayerManagerNoDebug.h"



void OptimizedAllBinaryCollisionLayerManager_staticInit(void) {
    static bool initialized = false;
    if (initialized) {
        return;
    }
    initialized = true;
}

@implementation OptimizedAllBinaryCollisionLayerManager


- (instancetype) init {
        self = [super init:[LayerManagerNoDebug getInstance]];
    return self;
}

@end

