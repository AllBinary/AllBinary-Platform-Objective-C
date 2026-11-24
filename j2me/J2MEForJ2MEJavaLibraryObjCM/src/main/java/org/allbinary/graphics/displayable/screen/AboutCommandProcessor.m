// Generated Code Do Not Modify
#include "org/allbinary/graphics/displayable/screen/AboutCommandProcessor.h"
#include "javax/microedition/lcdui/Canvas.h"
#include "javax/microedition/lcdui/Command.h"
#include "javax/microedition/lcdui/CommandListener.h"


static AboutCommandProcessor* AboutCommandProcessor_instance;

void AboutCommandProcessor_staticInit(void) {
    static bool initialized = false;
    if (initialized) {
        return;
    }
    initialized = true;
    AboutCommandProcessor_instance = ((AboutCommandProcessor*) [((AboutCommandProcessor*) [AboutCommandProcessor alloc]) init]);
}

@implementation AboutCommandProcessor

- (instancetype) init {
    self = [super init];
    return self;
}


+ (AboutCommandProcessor*) getInstance {
        return (AboutCommandProcessor_staticInit(), AboutCommandProcessor_instance);
}


- (void) process:(CommandListener*)midletCommandListener :(Command*)command :(Canvas*)canvas {
        [((id<CommandListener>) midletCommandListener) commandAction:command :canvas];
}

@end

