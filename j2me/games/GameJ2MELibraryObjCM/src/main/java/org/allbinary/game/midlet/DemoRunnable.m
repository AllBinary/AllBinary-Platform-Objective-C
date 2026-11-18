// Generated Code Do Not Modify
#include "org/allbinary/game/midlet/DemoRunnable.h"
#include "org/allbinary/graphics/canvas/transition/progress/ProgressCanvasFactory.h"
#include "org/allbinary/graphics/displayable/command/MyCommandsFactory.h"
#include "org/allbinary/logic/communication/log/LogUtil.h"
#include "org/allbinary/logic/string/StringMaker.h"
#include "org/allbinary/string/CommonLabels.h"
#include "org/allbinary/string/CommonStrings.h"
#include "org/allbinary/game/midlet/DemoGameMidlet.h"
#include "org/allbinary/game/midlet/DemoGameMidletEvent.h"
#include "org/allbinary/game/midlet/DemoGameMidletStateFactory.h"
#include "org/allbinary/game/midlet/DemoGameMidletEventHandler.h"



void DemoRunnable_staticInit(void) {
    static bool initialized = false;
    if (initialized) {
        return;
    }
    initialized = true;
}

@implementation DemoRunnable

- (void) initFields {
    self->logUtil = [LogUtil getInstance];
    self->commonStrings = [CommonStrings getInstance];
    
    
}


- (instancetype) init:(DemoGameMidlet*)demoGameMidlet {
    self = [super init];
    [self initFields];
        self->demoGameMidlet = demoGameMidlet;
        self->startDemoGameMidletEvent = [((DemoGameMidletEvent*) [DemoGameMidletEvent alloc]) init:self->demoGameMidlet :[DemoGameMidletStateFactory getInstance]->START_DEMO];
    return self;
}


- (void) run {
        JAVA_TRY {
            [self->logUtil putF:[[[[((StringMaker*) [StringMaker alloc]) init] append:[CommonLabels getInstance]->START_LABEL] append:"GameCanvasRunnableInterface"] toString] :self :self->commonStrings->RUN];
            [self->demoGameMidlet commandAction:[MyCommandsFactory getInstance]->SET_DISPLAYABLE :[ProgressCanvasFactory getInstance]];
            [self->demoGameMidlet setGameCanvasRunnableInterface:[self->demoGameMidlet createDemoGameCanvasRunnableInterface]];
            [self->demoGameMidlet demoSetup];
            [[DemoGameMidletEventHandler getInstance] fireEvent:self->startDemoGameMidletEvent];
            [self->demoGameMidlet startGameCanvasRunnableInterface];
            [self->demoGameMidlet postDemoSetup];
            [self->logUtil putF:self->commonStrings->END_RUNNABLE :self :self->commonStrings->RUN];
        } JAVA_CATCH(Exception, e) {
            [self->logUtil put:self->commonStrings->EXCEPTION :self :self->commonStrings->RUN :e];
        } JAVA_END_TRY;
}

@end

