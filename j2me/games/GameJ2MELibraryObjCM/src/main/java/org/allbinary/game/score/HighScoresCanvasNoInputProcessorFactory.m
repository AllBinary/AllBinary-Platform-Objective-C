// Generated Code Do Not Modify
#include "org/allbinary/game/score/HighScoresCanvasNoInputProcessorFactory.h"
#include "org/allbinary/game/score/displayable/HighScoresCanvas.h"
#include "org/allbinary/game/score/HighScoresCanvasInputProcessorFactoryInterface.h"
#include "org/allbinary/game/score/HighScoresCanvasInputProcessor.h"



void HighScoresCanvasNoInputProcessorFactory_staticInit(void) {
    static bool initialized = false;
    if (initialized) {
        return;
    }
    initialized = true;
}

@implementation HighScoresCanvasNoInputProcessorFactory

- (instancetype) init {
    self = [super init];
    return self;
}


- (HighScoresCanvasInputProcessor*) getInstance:(HighScoresCanvas*)highScoresCanvas {
        return ((HighScoresCanvasInputProcessor*) [((HighScoresCanvasInputProcessor*) [HighScoresCanvasInputProcessor alloc]) init:highScoresCanvas]);
}

@end

