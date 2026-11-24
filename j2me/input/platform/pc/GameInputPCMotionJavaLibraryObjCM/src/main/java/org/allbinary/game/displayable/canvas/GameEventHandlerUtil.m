// Generated Code Do Not Modify
#include "org/allbinary/game/displayable/canvas/GameEventHandlerUtil.h"
#include "org/allbinary/game/input/event/DownGameKeyEventHandler.h"
#include "org/allbinary/game/input/event/UpGameKeyEventHandler.h"
#if __has_include("org/allbinary/game/input/event/UpGameKeyEventHandler.h")
#include "org/allbinary/game/input/event/UpGameKeyEventHandler.h"
#endif
#if __has_include("org/allbinary/game/input/event/DownGameKeyEventHandler.h")
#include "org/allbinary/game/input/event/DownGameKeyEventHandler.h"
#endif



void GameEventHandlerUtil_staticInit(void) {
    static bool initialized = false;
    if (initialized) {
        return;
    }
    initialized = true;
}

@implementation GameEventHandlerUtil

- (instancetype) init {
    self = [super init];
    return self;
}


+ (void) removeAllListeners {
        [[UpGameKeyEventHandler getInstance] removeAllListeners];
        [[DownGameKeyEventHandler getInstance] removeAllListeners];
}

@end

