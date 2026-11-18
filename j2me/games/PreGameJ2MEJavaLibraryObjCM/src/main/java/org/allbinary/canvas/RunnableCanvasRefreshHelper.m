// Generated Code Do Not Modify
#include "org/allbinary/canvas/RunnableCanvasRefreshHelper.h"
#include "org/allbinary/graphics/displayable/MyCanvas.h"
#include "org/allbinary/canvas/Processor.h"



void RunnableCanvasRefreshHelper_staticInit(void) {
    static bool initialized = false;
    if (initialized) {
        return;
    }
    initialized = true;
}

@implementation RunnableCanvasRefreshHelper

- (void) initFields {
    
}


- (instancetype) init:(MyCanvas*)runnableCanvas {
    self = [super init];
    [self initFields];
        self->runnableCanvas = runnableCanvas;
    return self;
}


- (void) process {
        [self->runnableCanvas repaint];
}

@end

