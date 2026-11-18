// Generated Code Do Not Modify
#include "org/allbinary/game/collision/layer/CollidableInterfaceLayerManager.h"
#include "org/allbinary/layer/LayerManagerNoDebug.h"



void CollidableInterfaceLayerManager_staticInit(void) {
    static bool initialized = false;
    if (initialized) {
        return;
    }
    initialized = true;
}

@implementation CollidableInterfaceLayerManager


- (instancetype) init {
        self = [super init:[LayerManagerNoDebug getInstance]];
    return self;
}

@end

