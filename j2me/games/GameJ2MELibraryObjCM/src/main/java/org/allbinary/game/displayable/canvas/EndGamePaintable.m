// Generated Code Do Not Modify
#include "org/allbinary/game/displayable/canvas/EndGamePaintable.h"
#include "javax/microedition/lcdui/Graphics.h"
#include "org/allbinary/game/displayable/canvas/AllBinaryGameCanvas.h"



void EndGamePaintable_staticInit(void) {
    static bool initialized = false;
    if (initialized) {
        return;
    }
    initialized = true;
}

@implementation EndGamePaintable

- (void) initFields {
    
}


- (instancetype) init:(AllBinaryGameCanvas*)gameCanvas {
    self = [super init];
    [self initFields];
        self->gameCanvas = gameCanvas;
    return self;
}


- (void) paint:(Graphics*)graphics {
        [self->gameCanvas paintGameOver:graphics];
}

@end

