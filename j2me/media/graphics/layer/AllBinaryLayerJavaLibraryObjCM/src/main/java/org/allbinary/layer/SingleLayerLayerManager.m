// Generated Code Do Not Modify
#include "org/allbinary/layer/SingleLayerLayerManager.h"
#include "org/allbinary/layer/LayerManager.h"
#include "org/allbinary/layer/LayerManagerNoDebug.h"



void SingleLayerLayerManager_staticInit(void) {
    static bool initialized = false;
    if (initialized) {
        return;
    }
    initialized = true;
}

@implementation SingleLayerLayerManager


- (instancetype) init {
        self = [super init:[LayerManagerNoDebug getInstance]];
    return self;
}

@end

