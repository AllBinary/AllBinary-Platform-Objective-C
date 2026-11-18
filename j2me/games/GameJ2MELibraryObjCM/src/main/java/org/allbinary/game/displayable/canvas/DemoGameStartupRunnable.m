// Generated Code Do Not Modify
#include "org/allbinary/game/displayable/canvas/DemoGameStartupRunnable.h"
#include "org/allbinary/logic/communication/log/LogUtil.h"
#include "org/allbinary/string/CommonStrings.h"
#include "org/allbinary/game/displayable/canvas/DemoCanvas.h"




void DemoGameStartupRunnable_staticInit(void) {
    static bool initialized = false;
    if (initialized) {
        return;
    }
    initialized = true;
}

@implementation DemoGameStartupRunnable

- (void) initFields {
    self->logUtil = [LogUtil getInstance];
    
}


- (instancetype) init:(DemoCanvas*)demoCanvas {
    self = [super init];
    [self initFields];
        self->demoCanvas = demoCanvas;
    return self;
}


- (void) run {
        JAVA_TRY {
            [self setRunning:true];
            [self->demoCanvas stopGameDemo];
            [self->demoCanvas create];
            [self->demoCanvas start];
            [self setRunning:false];
        } JAVA_CATCH(Exception, e) {
            [self setRunning:false];
            CommonStrings* commonStrings = [CommonStrings getInstance];
            [self->logUtil put:commonStrings->EXCEPTION :self :commonStrings->RUN :e];
        } JAVA_END_TRY;
}


- (int32_t) getType {
        return DemoGameStartupRunnable_TYPE;
}

@end

