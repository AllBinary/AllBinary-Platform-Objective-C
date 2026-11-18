// Generated Code Do Not Modify
#include "org/allbinary/game/displayable/canvas/GameProcessor.h"
#include "org/allbinary/game/displayable/canvas/AllBinaryGameCanvas.h"



void GameProcessor_staticInit(void) {
    static bool initialized = false;
    if (initialized) {
        return;
    }
    initialized = true;
}

@implementation GameProcessor

- (void) initFields {
    
}


- (instancetype) init:(AllBinaryGameCanvas*)gameCanvas {
    self = [super init];
    [self initFields];
        self->gameCanvas = gameCanvas;
    return self;
}


// throws Exception
- (void) process {
        [self->gameCanvas processPlayingGame];
}

@end

