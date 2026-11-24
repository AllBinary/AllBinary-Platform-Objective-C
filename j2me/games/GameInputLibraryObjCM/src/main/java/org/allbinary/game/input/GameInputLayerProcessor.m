// Generated Code Do Not Modify
#include "org/allbinary/game/input/GameInputLayerProcessor.h"
#include "org/allbinary/layer/AllBinaryLayer.h"
#include "org/allbinary/layer/AllBinaryLayerManager.h"
#include "org/allbinary/game/input/GameInputLayerManager.h"
#include "org/allbinary/game/input/GameInputInterface.h"



void GameInputLayerProcessor_staticInit(void) {
    static bool initialized = false;
    if (initialized) {
        return;
    }
    initialized = true;
}

@implementation GameInputLayerProcessor


- (instancetype) init {
        self = [super init:((GameInputLayerManager*) [((GameInputLayerManager*) [GameInputLayerManager alloc]) init])];
    return self;
}


// throws Exception
- (void) processAt:(AllBinaryLayerManager*)allBinaryLayerManager :(AllBinaryLayer*)layerInterface :(int32_t)index {
        GameInputInterface* gameInputInterface = ((GameInputInterface*) layerInterface);
        [((id<GameInputInterface>) gameInputInterface) processInput:allBinaryLayerManager];
}


- (bool) isProcessorLayer:(AllBinaryLayer*)layerInterface {
        if ([layerInterface implmentsGameInputInterface]) {
            return true;
        } else {
            return false;
        }
}

@end

