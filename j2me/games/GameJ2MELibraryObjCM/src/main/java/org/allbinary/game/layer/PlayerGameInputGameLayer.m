// Generated Code Do Not Modify
#include "org/allbinary/game/layer/PlayerGameInputGameLayer.h"
#include "javax/microedition/lcdui/Graphics.h"
#include "org/allbinary/game/input/PlayerGameInput.h"
#include "org/allbinary/graphics/PointFactory.h"
#include "org/allbinary/graphics/Rectangle.h"
#include "org/allbinary/graphics/displayable/CanvasStrings.h"
#include "org/allbinary/layer/AllBinaryLayerManager.h"
#include "org/allbinary/logic/string/StringUtil.h"
#include "org/allbinary/util/BasicArrayListD.h"
#include "org/allbinary/view/StaticViewPosition.h"
#include "org/allbinary/game/layer/AllBinaryGameLayer.h"



void PlayerGameInputGameLayer_staticInit(void) {
    static bool initialized = false;
    if (initialized) {
        return;
    }
    initialized = true;
}

@implementation PlayerGameInputGameLayer

- (void) initFields {
    
}


- (instancetype) init:(int32_t)playerInputId {
        self = [super init:[StringUtil getInstance]->EMPTY_STRING :[((Rectangle*) [Rectangle alloc]) init:[PointFactory getInstance]->ZERO_ZERO :0 :0] :[((StaticViewPosition*) [StaticViewPosition alloc]) init:0 :0 :0]];
        [self initFields];
        self->playerGameInput = [((PlayerGameInput*) [PlayerGameInput alloc]) init:[self getGameKeyEventList] :[((BasicArrayListD*) [BasicArrayListD alloc]) init] :playerInputId];
        CanvasStrings* canvasStrings = [CanvasStrings getInstance];
        [self->logUtil putF:"Danger Danger Danger: Should Not Be Called Except For Testing Input" :self :canvasStrings->PAINT];
    return self;
}


- (PlayerGameInput*) getPlayerGameInput {
        return self->playerGameInput;
}


- (void) initInputProcessors {
}


// throws Exception
- (void) processInput:(AllBinaryLayerManager*)myManager {
}


- (void) paint:(Graphics*)graphics {
}

@end

