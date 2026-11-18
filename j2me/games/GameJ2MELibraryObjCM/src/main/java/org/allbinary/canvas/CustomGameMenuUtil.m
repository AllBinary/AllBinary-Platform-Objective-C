// Generated Code Do Not Modify
#include "org/allbinary/canvas/CustomGameMenuUtil.h"
#include "org/allbinary/AppletUtil.h"
#include "org/allbinary/J2MEUtil.h"
#include "org/allbinary/game/commands/GameCommandsFactory.h"
#include "org/allbinary/graphics/displayable/MyCanvas.h"



void CustomGameMenuUtil_staticInit(void) {
    static bool initialized = false;
    if (initialized) {
        return;
    }
    initialized = true;
}

@implementation CustomGameMenuUtil

- (instancetype) init {
    self = [super init];
    return self;
}


+ (void) add:(MyCanvas*)canvas {
        GameCommandsFactory* gameCommandsFactory = [GameCommandsFactory getInstance];
        if ([AppletUtil isAppletLoader:canvas]) {
        } else if ([J2MEUtil isHTML]) {
        } else {
            [canvas addCommand:gameCommandsFactory->EXIT_COMMAND];
        }
}

@end

