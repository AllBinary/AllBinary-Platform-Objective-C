// Generated Code Do Not Modify
#include "org/allbinary/game/displayable/canvas/RunnableCanvasSingleThreadStartRunnable.h"
#include "org/allbinary/canvas/RunnableCanvas.h"
#include "org/allbinary/logic/communication/log/LogUtil.h"
#include "org/allbinary/string/CommonStrings.h"
#include "org/allbinary/game/displayable/canvas/GameRunnable.h"



void RunnableCanvasSingleThreadStartRunnable_staticInit(void) {
    static bool initialized = false;
    if (initialized) {
        return;
    }
    initialized = true;
}

@implementation RunnableCanvasSingleThreadStartRunnable

- (void) initFields {
    self->logUtil = [LogUtil getInstance];
    
}


- (instancetype) init:(RunnableCanvas*)demoCanvas {
    self = [super init];
    [self initFields];
        self->runnableCanvas = demoCanvas;
    return self;
}


- (void) run {
        JAVA_TRY {
            [self->runnableCanvas run];
        } JAVA_CATCH(Exception, e) {
            CommonStrings* commonStrings = [CommonStrings getInstance];
            [self->logUtil put:commonStrings->EXCEPTION :self :commonStrings->RUN :e];
        } JAVA_END_TRY;
}


// throws Exception
- (void) processLoopSleep {
        [self->runnableCanvas processLoopSleep];
}

@end

