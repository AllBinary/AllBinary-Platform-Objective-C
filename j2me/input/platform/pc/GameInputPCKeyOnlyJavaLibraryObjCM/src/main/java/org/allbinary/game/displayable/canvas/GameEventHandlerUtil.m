// Generated Code Do Not Modify
#include "org/allbinary/game/displayable/canvas/GameEventHandlerUtil.h"
#include "org/allbinary/game/input/event/DownGameKeyEventHandler.h"
#include "org/allbinary/game/input/event/UpGameKeyEventHandler.h"



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

