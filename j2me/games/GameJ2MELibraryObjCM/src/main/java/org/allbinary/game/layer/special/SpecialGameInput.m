// Generated Code Do Not Modify
#include "org/allbinary/game/layer/special/SpecialGameInput.h"
#include "javax/microedition/lcdui/Graphics.h"
#include "org/allbinary/game/input/event/GameKeyEvent.h"
#include "org/allbinary/layer/AllBinaryLayerManager.h"
#include "org/allbinary/game/layer/special/SpecialGameInputInterface.h"



void SpecialGameInput_staticInit(void) {
    static bool initialized = false;
    if (initialized) {
        return;
    }
    initialized = true;
}

@implementation SpecialGameInput

- (instancetype) init {
    self = [super init];
    return self;
}


// throws Exception
- (void) up {
}


// throws Exception
- (void) down {
}


// throws Exception
- (void) right {
}


// throws Exception
- (void) left {
}


// throws Exception
- (void) strafeLeft {
}


// throws Exception
- (void) strafeRight {
}


// throws Exception
- (void) fire:(AllBinaryLayerManager*)layerManager :(GameKeyEvent*)gameKeyEvent {
}


// throws Exception
- (void) special1:(AllBinaryLayerManager*)layerManager :(GameKeyEvent*)gameKeyEvent {
}


// throws Exception
- (void) special2:(AllBinaryLayerManager*)layerManager :(GameKeyEvent*)gameKeyEvent {
}


// throws Exception
- (void) special3:(AllBinaryLayerManager*)layerManager :(GameKeyEvent*)gameKeyEvent {
}


// throws Exception
- (void) special4:(AllBinaryLayerManager*)layerManager :(GameKeyEvent*)gameKeyEvent {
}


// throws Exception
- (void) special5:(AllBinaryLayerManager*)layerManager :(GameKeyEvent*)gameKeyEvent {
}


- (void) paint:(Graphics*)graphics {
}


- (void) paintThreed:(Graphics*)graphics {
}

@end

