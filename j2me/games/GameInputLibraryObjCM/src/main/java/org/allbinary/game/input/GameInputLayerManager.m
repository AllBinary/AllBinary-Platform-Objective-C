// Generated Code Do Not Modify
#include "org/allbinary/game/input/GameInputLayerManager.h"
#include "org/allbinary/layer/LayerManagerNoDebug.h"



void GameInputLayerManager_staticInit(void) {
    static bool initialized = false;
    if (initialized) {
        return;
    }
    initialized = true;
}

@implementation GameInputLayerManager


- (instancetype) init {
        self = [super init:[LayerManagerNoDebug getInstance]];
    return self;
}

@end

