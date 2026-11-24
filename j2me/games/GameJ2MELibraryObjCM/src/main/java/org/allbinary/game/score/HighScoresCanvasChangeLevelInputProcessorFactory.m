// Generated Code Do Not Modify
#include "org/allbinary/game/score/HighScoresCanvasChangeLevelInputProcessorFactory.h"
#include "org/allbinary/game/score/displayable/HighScoresCanvas.h"
#include "org/allbinary/game/score/HighScoresCanvasInputProcessorFactoryInterface.h"
#include "org/allbinary/game/score/HighScoresCanvasLevelChangeInputProcessor.h"
#include "org/allbinary/game/score/HighScoresCanvasInputProcessor.h"



void HighScoresCanvasChangeLevelInputProcessorFactory_staticInit(void) {
    static bool initialized = false;
    if (initialized) {
        return;
    }
    initialized = true;
}

@implementation HighScoresCanvasChangeLevelInputProcessorFactory

- (instancetype) init {
    self = [super init];
    return self;
}


- (HighScoresCanvasInputProcessor*) getInstance:(HighScoresCanvas*)highScoresCanvas {
        return ((HighScoresCanvasLevelChangeInputProcessor*) [((HighScoresCanvasLevelChangeInputProcessor*) [HighScoresCanvasLevelChangeInputProcessor alloc]) init:highScoresCanvas]);
}

@end

