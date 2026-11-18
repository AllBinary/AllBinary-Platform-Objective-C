// Generated Code Do Not Modify
#include "org/allbinary/game/midlet/DemoGameMidlet.h"
#include "org/allbinary/game/displayable/canvas/GameCanvasRunnableInterface.h"
#include "org/allbinary/game/layer/AllBinaryGameLayerManager.h"
#include "org/allbinary/graphics/canvas/transition/progress/ProgressCanvas.h"
#include "org/allbinary/graphics/canvas/transition/progress/ProgressCanvasFactory.h"
#include "org/allbinary/logic/StdUtil.h"
#include "org/allbinary/logic/system/security/licensing/ClientInformationFactory.h"
#include "org/allbinary/thread/PrimaryThreadPool.h"
#include "org/allbinary/game/displayable/canvas/NullGameCanvasRunnable.h"
#include "org/allbinary/util/ABHashtable.h"
#include "org/allbinary/game/midlet/GameMidlet.h"
#include "org/allbinary/game/midlet/DemoRunnable.h"
#include "org/allbinary/game/midlet/CreateGameRunnable.h"
#if __has_include("org/allbinary/game/midlet/ThreadPool.h")
#include "org/allbinary/game/midlet/ThreadPool.h"
#endif
#if __has_include("org/allbinary/game/displayable/canvas/ThreadPool.h")
#include "org/allbinary/game/displayable/canvas/ThreadPool.h"
#endif
#if __has_include("org/allbinary/game/layer/ThreadPool.h")
#include "org/allbinary/game/layer/ThreadPool.h"
#endif
#if __has_include("org/allbinary/graphics/canvas/transition/progress/ThreadPool.h")
#include "org/allbinary/graphics/canvas/transition/progress/ThreadPool.h"
#endif
#if __has_include("org/allbinary/graphics/canvas/transition/progress/ThreadPool.h")
#include "org/allbinary/graphics/canvas/transition/progress/ThreadPool.h"
#endif
#if __has_include("org/allbinary/logic/ThreadPool.h")
#include "org/allbinary/logic/ThreadPool.h"
#endif
#if __has_include("org/allbinary/logic/system/security/licensing/ThreadPool.h")
#include "org/allbinary/logic/system/security/licensing/ThreadPool.h"
#endif
#if __has_include("org/allbinary/thread/ThreadPool.h")
#include "org/allbinary/thread/ThreadPool.h"
#endif
#if __has_include("org/allbinary/game/displayable/canvas/ThreadPool.h")
#include "org/allbinary/game/displayable/canvas/ThreadPool.h"
#endif
#if __has_include("org/allbinary/util/ThreadPool.h")
#include "org/allbinary/util/ThreadPool.h"
#endif
#if __has_include("org/allbinary/game/midlet/ThreadPool.h")
#include "org/allbinary/game/midlet/ThreadPool.h"
#endif
#if __has_include("org/allbinary/game/displayable/canvas/ThreadPool.h")
#include "org/allbinary/game/displayable/canvas/ThreadPool.h"
#endif
#if __has_include("org/allbinary/game/layer/ThreadPool.h")
#include "org/allbinary/game/layer/ThreadPool.h"
#endif
#if __has_include("org/allbinary/graphics/canvas/transition/progress/ThreadPool.h")
#include "org/allbinary/graphics/canvas/transition/progress/ThreadPool.h"
#endif
#if __has_include("org/allbinary/graphics/canvas/transition/progress/ThreadPool.h")
#include "org/allbinary/graphics/canvas/transition/progress/ThreadPool.h"
#endif
#if __has_include("org/allbinary/logic/ThreadPool.h")
#include "org/allbinary/logic/ThreadPool.h"
#endif
#if __has_include("org/allbinary/logic/system/security/licensing/ThreadPool.h")
#include "org/allbinary/logic/system/security/licensing/ThreadPool.h"
#endif
#if __has_include("org/allbinary/thread/ThreadPool.h")
#include "org/allbinary/thread/ThreadPool.h"
#endif
#if __has_include("org/allbinary/game/displayable/canvas/ThreadPool.h")
#include "org/allbinary/game/displayable/canvas/ThreadPool.h"
#endif
#if __has_include("org/allbinary/util/ThreadPool.h")
#include "org/allbinary/util/ThreadPool.h"
#endif



void DemoGameMidlet_staticInit(void) {
    static bool initialized = false;
    if (initialized) {
        return;
    }
    initialized = true;
}

@implementation DemoGameMidlet


- (instancetype) init:(ClientInformationFactory*)clientInformationFactory {
        self = [super init:clientInformationFactory];
    return self;
}


// throws Exception
- (bool) isContinue {
        ABHashtable* hashtable = [self getStartStateHashtable];
        if (hashtable != nil && [hashtable size] > 0) {
            return true;
        } else {
            return false;
        }
}


- (int32_t) getHighestLevel {
        return 1;
}


// throws Exception
- (GameCanvasRunnableInterface*) createDemoGameCanvasRunnableInterface {
        [self->logUtil putF:self->commonStrings->NOT_IMPLEMENTED :self :self->commonStrings->CREATE];
        return (NullGameCanvasRunnable_staticInit(), NullGameCanvasRunnable_NULL_GAME_CANVAS_RUNNABLE);
}


// throws Exception
- (GameCanvasRunnableInterface*) createGameCanvasRunnable:(AllBinaryGameLayerManager*)allBinaryGameLayerManager {
        java_throw(java_exception_new("Exception", self->commonStrings->NOT_IMPLEMENTED));
}


// throws Exception
- (GameCanvasRunnableInterface*) createGameCanvasRunnableInterface {
        return [self createGameCanvasRunnable:[self createGameLayerManager]];
}


- (void) demoSetup {
}


- (void) postDemoSetup {
}


// throws Exception
// synchronized
- (void) setDemo {
        [self->logUtil putF:self->commonStrings->START :self :"setDemo"];
        ProgressCanvas* progressCanvas = [ProgressCanvasFactory getInstance];
        [progressCanvas start];
        [[PrimaryThreadPool getInstance] runTask:[((DemoRunnable*) [DemoRunnable alloc]) init:self]];
}


// throws Exception
// synchronized
- (void) createGame {
        const char* CREATE_GAME = "createGame";
        [self->logUtil putF:self->commonStrings->START :self :CREATE_GAME];
        ProgressCanvas* progressCanvas = [ProgressCanvasFactory getInstance];
        [progressCanvas start];
        ABHashtable* hashtable = [self getStartStateHashtable];
        [self setStartStateHashtable:[StdUtil getInstance]->NULL_TABLE];
        [[PrimaryThreadPool getInstance] runTask:[((CreateGameRunnable*) [CreateGameRunnable alloc]) init:self :hashtable]];
        [self->logUtil putF:self->commonStrings->END :self :CREATE_GAME];
}


- (bool) isReady {
        return true;
}

@end

