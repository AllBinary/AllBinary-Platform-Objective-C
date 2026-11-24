// Generated Code Do Not Modify
#include "org/allbinary/game/midlet/CreateGameRunnable.h"
#include "org/allbinary/graphics/canvas/transition/progress/ProgressCanvas.h"
#include "org/allbinary/graphics/canvas/transition/progress/ProgressCanvasFactory.h"
#include "org/allbinary/graphics/displayable/command/MyCommandsFactory.h"
#include "org/allbinary/logic/communication/log/LogUtil.h"
#include "org/allbinary/string/CommonStrings.h"
#include "org/allbinary/util/ABHashtable.h"
#include "org/allbinary/game/midlet/DemoGameMidlet.h"
#include "org/allbinary/game/midlet/DemoGameMidletEvent.h"
#include "org/allbinary/game/midlet/DemoGameMidletStateFactory.h"
#include "org/allbinary/game/midlet/DemoGameMidletEventHandler.h"
#if __has_include("org/allbinary/graphics/displayable/command/MyCommandsFactory.h")
#include "org/allbinary/graphics/displayable/command/MyCommandsFactory.h"
#endif
#if __has_include("org/allbinary/game/midlet/GameCanvasRunnableInterface.h")
#include "org/allbinary/game/midlet/GameCanvasRunnableInterface.h"
#endif
#if __has_include("org/allbinary/graphics/canvas/transition/progress/GameCanvasRunnableInterface.h")
#include "org/allbinary/graphics/canvas/transition/progress/GameCanvasRunnableInterface.h"
#endif
#if __has_include("org/allbinary/graphics/canvas/transition/progress/GameCanvasRunnableInterface.h")
#include "org/allbinary/graphics/canvas/transition/progress/GameCanvasRunnableInterface.h"
#endif
#if __has_include("org/allbinary/graphics/displayable/command/GameCanvasRunnableInterface.h")
#include "org/allbinary/graphics/displayable/command/GameCanvasRunnableInterface.h"
#endif
#if __has_include("org/allbinary/logic/communication/log/GameCanvasRunnableInterface.h")
#include "org/allbinary/logic/communication/log/GameCanvasRunnableInterface.h"
#endif
#if __has_include("org/allbinary/string/GameCanvasRunnableInterface.h")
#include "org/allbinary/string/GameCanvasRunnableInterface.h"
#endif
#if __has_include("org/allbinary/util/GameCanvasRunnableInterface.h")
#include "org/allbinary/util/GameCanvasRunnableInterface.h"
#endif



void CreateGameRunnable_staticInit(void) {
    static bool initialized = false;
    if (initialized) {
        return;
    }
    initialized = true;
}

@implementation CreateGameRunnable

- (void) initFields {
    self->logUtil = [LogUtil getInstance];
    self->commonStrings = [CommonStrings getInstance];
    
    
    
}


- (instancetype) init:(DemoGameMidlet*)demoGameMidlet :(ABHashtable*)hashtable {
    self = [super init];
    [self initFields];
        self->demoGameMidlet = demoGameMidlet;
        self->hashtable = hashtable;
        self->startGameMidletEvent = ((DemoGameMidletEvent*) [((DemoGameMidletEvent*) [DemoGameMidletEvent alloc]) init:self :[DemoGameMidletStateFactory getInstance]->START_GAME]);
    return self;
}


- (void) run {
        JAVA_TRY {
            [self->logUtil putF:self->commonStrings->START_RUNNABLE :self :self->commonStrings->RUN];
            ProgressCanvas* progressCanvas = [ProgressCanvasFactory getInstance];
            [self->demoGameMidlet commandAction:[MyCommandsFactory getInstance]->SET_DISPLAYABLE :progressCanvas];
            [self->demoGameMidlet stopGameCanvasRunnableInterface];
            [self->demoGameMidlet setGameCanvasRunnableInterface:[self->demoGameMidlet createGameCanvasRunnableInterface]];
            [((id<GameCanvasRunnableInterface>) [self->demoGameMidlet getGameCanvasRunnableInterface]) setLoadStateHashtable:self->hashtable];
            [self->demoGameMidlet startGameCanvasRunnableInterface];
            [[DemoGameMidletEventHandler getInstance] fireEvent:self->startGameMidletEvent];
            [self->logUtil putF:self->commonStrings->END_RUNNABLE :self :self->commonStrings->RUN];
        } JAVA_CATCH(Exception, e) {
            [self->logUtil put:self->commonStrings->EXCEPTION :self :self->commonStrings->RUN :e];
        } JAVA_END_TRY;
}

@end

