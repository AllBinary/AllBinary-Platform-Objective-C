// Generated Code Do Not Modify
#include "org/allbinary/game/tick/OptimizedTickableLayerProcessor.h"
#include "org/allbinary/game/layer/AllBinaryGameLayer.h"
#include "org/allbinary/layer/AllBinaryLayer.h"
#include "org/allbinary/layer/AllBinaryLayerManager.h"
#include "org/allbinary/game/tick/OptimizedTickableLayerManager.h"



void OptimizedTickableLayerProcessor_staticInit(void) {
    static bool initialized = false;
    if (initialized) {
        return;
    }
    initialized = true;
}

@implementation OptimizedTickableLayerProcessor


- (instancetype) init {
        self = [super init:((OptimizedTickableLayerManager*) [((OptimizedTickableLayerManager*) [OptimizedTickableLayerManager alloc]) init])];
    return self;
}


// throws Exception
- (void) processAt:(AllBinaryLayerManager*)allBinaryLayerManager :(AllBinaryLayer*)layerInterface :(int32_t)index {
        AllBinaryGameLayer* tickableInterface = ((AllBinaryGameLayer*) layerInterface);
        [tickableInterface processTick:allBinaryLayerManager];
}


- (bool) isProcessorLayer:(AllBinaryLayer*)layerInterface {
        if ([layerInterface implmentsTickableInterface]) {
            return true;
        } else {
            return false;
        }
}

@end

