// Generated Code Do Not Modify
#include "org/allbinary/game/ag/ai/ScrollOverAtHalfAI.h"
#include "org/allbinary/game/input/GameInput.h"
#include "org/allbinary/graphics/displayable/DisplayInfoSingleton.h"
#include "org/allbinary/layer/AllBinaryLayer.h"
#include "org/allbinary/layer/AllBinaryLayerManager.h"



void ScrollOverAtHalfAI_staticInit(void) {
    static bool initialized = false;
    if (initialized) {
        return;
    }
    initialized = true;
}

@implementation ScrollOverAtHalfAI


- (instancetype) init:(AllBinaryLayer*)ownerLayerInterface :(GameInput*)gameInput {
        self = [super init:ownerLayerInterface :gameInput];
    return self;
}


// throws Exception
- (void) processAI:(AllBinaryLayerManager*)allBinaryLayerManager {
        AllBinaryLayer* ownerLayerInterface = [self getOwnerLayerInterface];
        int32_t x = [ownerLayerInterface getXP];
        int32_t y = [ownerLayerInterface getYP];
        int32_t halfWidth = [ownerLayerInterface getHalfWidth];
        int32_t halfHeight = [ownerLayerInterface getHalfHeight];
        DisplayInfoSingleton* displayInfo = [DisplayInfoSingleton getInstance];
        if (x > [displayInfo getLastWidth] - halfWidth) {
            [ownerLayerInterface setPosition:halfWidth + 1 :y :[ownerLayerInterface getZP]];
        }
        if (y > [displayInfo getLastHeight] - halfHeight) {
            [ownerLayerInterface setPosition:x :halfHeight + 1 :[ownerLayerInterface getZP]];
        }
        if (x < -halfWidth) {
            [ownerLayerInterface setPosition:[displayInfo getLastWidth] - halfWidth :y :[ownerLayerInterface getZP]];
        }
        if (y < -halfHeight) {
            [ownerLayerInterface setPosition:x :[displayInfo getLastHeight] - halfHeight :[ownerLayerInterface getZP]];
        }
}

@end

