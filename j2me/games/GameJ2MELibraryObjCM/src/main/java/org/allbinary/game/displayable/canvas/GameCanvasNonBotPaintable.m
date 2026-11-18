// Generated Code Do Not Modify
#include "org/allbinary/game/displayable/canvas/GameCanvasNonBotPaintable.h"
#include "javax/microedition/lcdui/Graphics.h"
#include "org/allbinary/game/displayable/canvas/AllBinaryGameCanvas.h"



void GameCanvasNonBotPaintable_staticInit(void) {
    static bool initialized = false;
    if (initialized) {
        return;
    }
    initialized = true;
}

@implementation GameCanvasNonBotPaintable

- (void) initFields {
    
}


- (instancetype) init:(AllBinaryGameCanvas*)gameCanvas {
    self = [super init];
    [self initFields];
        self->gameCanvas = gameCanvas;
    return self;
}


- (void) paint:(Graphics*)graphics {
        [self->gameCanvas nonBotPaint:graphics];
}

@end

