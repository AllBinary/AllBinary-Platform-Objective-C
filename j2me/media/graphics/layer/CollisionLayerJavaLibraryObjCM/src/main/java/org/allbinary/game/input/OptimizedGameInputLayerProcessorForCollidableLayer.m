// Generated Code Do Not Modify
#include "org/allbinary/game/input/OptimizedGameInputLayerProcessorForCollidableLayer.h"
#include "org/allbinary/game/layer/AllBinaryGameLayer.h"
#include "org/allbinary/layer/AllBinaryLayer.h"
#include "org/allbinary/layer/AllBinaryLayerManager.h"
#include "org/allbinary/game/input/OptimizedGameInputLayerManager.h"



void OptimizedGameInputLayerProcessorForCollidableLayer_staticInit(void) {
    static bool initialized = false;
    if (initialized) {
        return;
    }
    initialized = true;
}

@implementation OptimizedGameInputLayerProcessorForCollidableLayer


- (instancetype) init {
        self = [super init:[((OptimizedGameInputLayerManager*) [OptimizedGameInputLayerManager alloc]) init]];
    return self;
}


// throws Exception
- (void) processAt:(AllBinaryLayerManager*)allBinaryLayerManager :(AllBinaryLayer*)layerInterface :(int32_t)index {
        AllBinaryGameLayer* gameInputInterface = ((AllBinaryGameLayer*) layerInterface);
        [gameInputInterface processInput:allBinaryLayerManager];
}


- (bool) isProcessorLayer:(AllBinaryLayer*)layerInterface {
        if ([layerInterface implmentsGameInputInterface]) {
            return true;
        } else {
            return false;
        }
}

@end

