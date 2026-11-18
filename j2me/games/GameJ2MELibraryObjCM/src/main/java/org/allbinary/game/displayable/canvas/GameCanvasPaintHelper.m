// Generated Code Do Not Modify
#include "org/allbinary/game/displayable/canvas/GameCanvasPaintHelper.h"
#include "javax/microedition/lcdui/Graphics.h"
#include "org/allbinary/game/displayable/canvas/AllBinaryGameCanvas.h"



void GameCanvasPaintHelper_staticInit(void) {
    static bool initialized = false;
    if (initialized) {
        return;
    }
    initialized = true;
}

@implementation GameCanvasPaintHelper

- (void) initFields {
    
}


- (instancetype) init:(AllBinaryGameCanvas*)gameCanvas {
    self = [super init];
    [self initFields];
        self->gameCanvas = gameCanvas;
    return self;
}


- (void) process {
}


- (void) paint:(Graphics*)graphics {
        [self->gameCanvas draw:graphics];
}

@end

