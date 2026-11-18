// Generated Code Do Not Modify
#include "org/allbinary/game/tick/TickableLayerProcessor.h"
#include "org/allbinary/layer/AllBinaryLayer.h"
#include "org/allbinary/layer/AllBinaryLayerManager.h"
#include "org/allbinary/game/tick/TickableLayerManager.h"
#include "org/allbinary/game/tick/TickableInterface.h"



void TickableLayerProcessor_staticInit(void) {
    static bool initialized = false;
    if (initialized) {
        return;
    }
    initialized = true;
}

@implementation TickableLayerProcessor


- (instancetype) init {
        self = [super init:[((TickableLayerManager*) [TickableLayerManager alloc]) init]];
    return self;
}


// throws Exception
- (void) processAt:(AllBinaryLayerManager*)allBinaryLayerManager :(AllBinaryLayer*)layerInterface :(int32_t)index {
        TickableInterface* tickableInterface = ((TickableInterface*) layerInterface);
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

