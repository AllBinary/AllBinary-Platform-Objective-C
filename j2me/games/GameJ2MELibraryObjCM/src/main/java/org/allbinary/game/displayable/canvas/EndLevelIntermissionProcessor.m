// Generated Code Do Not Modify
#include "org/allbinary/game/displayable/canvas/EndLevelIntermissionProcessor.h"
#include "org/allbinary/game/displayable/canvas/AllBinaryGameCanvas.h"



void EndLevelIntermissionProcessor_staticInit(void) {
    static bool initialized = false;
    if (initialized) {
        return;
    }
    initialized = true;
}

@implementation EndLevelIntermissionProcessor

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
        [self->gameCanvas processEndLevelIntermissionGameState];
}

@end

