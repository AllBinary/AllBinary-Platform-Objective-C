// Generated Code Do Not Modify
#include "org/allbinary/game/displayable/canvas/GameCanvasRunnable.h"
#include "org/allbinary/graphics/displayable/GameTickDisplayInfoSingleton.h"
#include "org/allbinary/logic/communication/log/LogUtil.h"
#include "org/allbinary/string/CommonStrings.h"
#include "org/allbinary/time/GameTickTimeDelayHelper.h"
#include "org/allbinary/time/GameTickTimeDelayHelperFactory.h"
#include "org/allbinary/game/displayable/canvas/GameRunnable.h"
#include "org/allbinary/game/displayable/canvas/AllBinaryGameCanvas.h"
#if __has_include("org/allbinary/game/displayable/canvas/TimeDelayHelper.h")
#include "org/allbinary/game/displayable/canvas/TimeDelayHelper.h"
#endif
#if __has_include("org/allbinary/graphics/displayable/TimeDelayHelper.h")
#include "org/allbinary/graphics/displayable/TimeDelayHelper.h"
#endif
#if __has_include("org/allbinary/logic/communication/log/TimeDelayHelper.h")
#include "org/allbinary/logic/communication/log/TimeDelayHelper.h"
#endif
#if __has_include("org/allbinary/string/TimeDelayHelper.h")
#include "org/allbinary/string/TimeDelayHelper.h"
#endif
#if __has_include("org/allbinary/time/TimeDelayHelper.h")
#include "org/allbinary/time/TimeDelayHelper.h"
#endif
#if __has_include("org/allbinary/time/TimeDelayHelper.h")
#include "org/allbinary/time/TimeDelayHelper.h"
#endif



void GameCanvasRunnable_staticInit(void) {
    static bool initialized = false;
    if (initialized) {
        return;
    }
    initialized = true;
}

@implementation GameCanvasRunnable

- (void) initFields {
    self->logUtil = [LogUtil getInstance];
    self->gameTickDisplayInfoSingleton = [GameTickDisplayInfoSingleton getInstance];
    
    self->gameTickTimeDelayHelper = [GameTickTimeDelayHelperFactory getInstance];
}


- (instancetype) init:(AllBinaryGameCanvas*)allBinaryGameCanvas {
    self = [super init];
    [self initFields];
        self->allBinaryGameCanvas = allBinaryGameCanvas;
    return self;
}


- (void) run {
        JAVA_TRY {
            [[self->allBinaryGameCanvas getLoopTimeHelperP] setStartTime:[self->gameTickTimeDelayHelper setStartTime]];
            [self->gameTickDisplayInfoSingleton update];
            [self->allBinaryGameCanvas processGame];
        } JAVA_CATCH(Exception, e) {
            CommonStrings* commonStrings = [CommonStrings getInstance];
            [self->logUtil put:commonStrings->EXCEPTION :self :commonStrings->RUN :e];
        } JAVA_END_TRY;
}


// throws Exception
- (void) processLoopSleep {
        [self->allBinaryGameCanvas processLoopSleep];
}

@end

