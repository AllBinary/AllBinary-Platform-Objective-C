// Generated Code Do Not Modify
#include "org/allbinary/game/ag/ai/ScrollOverAtEndAI.h"
#include "org/allbinary/game/input/GameInput.h"
#include "org/allbinary/graphics/displayable/DisplayInfoSingleton.h"
#include "org/allbinary/layer/AllBinaryLayer.h"
#include "org/allbinary/layer/AllBinaryLayerManager.h"



void ScrollOverAtEndAI_staticInit(void) {
    static bool initialized = false;
    if (initialized) {
        return;
    }
    initialized = true;
}

@implementation ScrollOverAtEndAI


- (instancetype) init:(AllBinaryLayer*)ownerLayerInterface :(GameInput*)gameInput {
        self = [super init:ownerLayerInterface :gameInput];
    return self;
}


// throws Exception
- (void) processAI:(AllBinaryLayerManager*)allBinaryLayerManager {
        AllBinaryLayer* ownerLayerInterface = [self getOwnerLayerInterface];
        int32_t x = [ownerLayerInterface getXP];
        int32_t y = [ownerLayerInterface getYP];
        int32_t width = [ownerLayerInterface getWidth];
        int32_t height = [ownerLayerInterface getHeight];
        DisplayInfoSingleton* displayInfo = [DisplayInfoSingleton getInstance];
        if (x > [displayInfo getLastWidth]) {
            [ownerLayerInterface setPosition:0 :y :[ownerLayerInterface getZP]];
        }
        if (y > [displayInfo getLastHeight]) {
            [ownerLayerInterface setPosition:x :0 :[ownerLayerInterface getZP]];
        }
        if (x < -width) {
            [ownerLayerInterface setPosition:[displayInfo getLastWidth] - width :y :[ownerLayerInterface getZP]];
        }
        if (y < -height) {
            [ownerLayerInterface setPosition:x :[displayInfo getLastHeight] - height :[ownerLayerInterface getZP]];
        }
}

@end

