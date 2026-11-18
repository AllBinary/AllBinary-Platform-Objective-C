// Generated Code Do Not Modify
#include "org/allbinary/game/tick/TickableLayerManager.h"
#include "org/allbinary/layer/LayerManagerNoDebug.h"



void TickableLayerManager_staticInit(void) {
    static bool initialized = false;
    if (initialized) {
        return;
    }
    initialized = true;
}

@implementation TickableLayerManager


- (instancetype) init {
        self = [super init:[LayerManagerNoDebug getInstance]];
    return self;
}

@end

