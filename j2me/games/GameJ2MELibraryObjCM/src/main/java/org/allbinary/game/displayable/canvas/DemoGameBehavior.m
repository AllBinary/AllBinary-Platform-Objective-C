// Generated Code Do Not Modify
#include "org/allbinary/game/displayable/canvas/DemoGameBehavior.h"
#include "org/allbinary/game/GameTypeFactory.h"
#include "org/allbinary/graphics/paint/NullPaintable.h"
#include "org/allbinary/logic/communication/log/LogUtil.h"
#include "org/allbinary/logic/system/security/licensing/AbeClientInformationInterface.h"
#include "org/allbinary/string/CommonStrings.h"
#include "org/allbinary/game/displayable/canvas/AllBinaryGameCanvas.h"
#if __has_include("org/allbinary/game/GameTypeFactory.h")
#include "org/allbinary/game/GameTypeFactory.h"
#endif


static DemoGameBehavior* DemoGameBehavior_instance;

void DemoGameBehavior_staticInit(void) {
    static bool initialized = false;
    if (initialized) {
        return;
    }
    initialized = true;
    DemoGameBehavior_instance = ((DemoGameBehavior*) [((DemoGameBehavior*) [DemoGameBehavior alloc]) init]);
}

@implementation DemoGameBehavior

- (void) initFields {
    self->logUtil = [LogUtil getInstance];
}

- (instancetype) init {
    self = [super init];
    [self initFields];
    return self;
}


+ (DemoGameBehavior*) getInstance {
        return (DemoGameBehavior_staticInit(), DemoGameBehavior_instance);
}


// throws Exception
- (void) initMethod {
}


- (void) pause:(AllBinaryGameCanvas*)allBinaryGameCanvas {
}


- (void) unPause:(AllBinaryGameCanvas*)allBinaryGameCanvas {
}


// throws Exception
- (void) updateTouch:(AllBinaryGameCanvas*)allBinaryGameCanvas {
}


// throws Exception
- (void) updateScreenButtonPaintable:(AllBinaryGameCanvas*)allBinaryGameCanvas {
        [allBinaryGameCanvas setTouchPaintableP:[NullPaintable getInstance]];
}


// throws Exception
- (void) setGameState:(AllBinaryGameCanvas*)allBinaryGameCanvas {
}


- (void) removeAllGameKeyInputListeners:(AllBinaryGameCanvas*)allBinaryGameCanvas {
}


// throws Exception
- (void) updateEndGameProcessor:(AllBinaryGameCanvas*)allBinaryGameCanvas {
}


// throws Exception
- (void) buildGame:(AllBinaryGameCanvas*)allBinaryGameCanvas {
}


// throws Exception
- (void) run:(AllBinaryGameCanvas*)allBinaryGameCanvas {
        CommonStrings* commonStrings = [CommonStrings getInstance];
        [self->logUtil putF:[[GameTypeFactory getInstance]->BOT toString] :self :commonStrings->RUN];
}


// throws Exception
- (void) setHighScore:(AbeClientInformationInterface*)abeClientInformation :(AllBinaryGameCanvas*)allBinaryGameCanvas :(const char*)name :(int64_t)score :(bool)autoSubmit :(bool)isLast {
}

@end

