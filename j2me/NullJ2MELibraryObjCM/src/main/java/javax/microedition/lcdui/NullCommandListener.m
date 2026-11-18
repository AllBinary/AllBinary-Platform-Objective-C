// Generated Code Do Not Modify
#include "javax/microedition/lcdui/NullCommandListener.h"
#include "javax/microedition/lcdui/CommandListener.h"
#include "javax/microedition/lcdui/Command.h"
#include "javax/microedition/lcdui/Displayable.h"


NullCommandListener* NullCommandListener_NULL_COMMAND_LISTENER;

void NullCommandListener_staticInit(void) {
    static bool initialized = false;
    if (initialized) {
        return;
    }
    initialized = true;
    NullCommandListener_NULL_COMMAND_LISTENER = [((NullCommandListener*) [NullCommandListener alloc]) init];
}

@implementation NullCommandListener

- (instancetype) init {
    self = [super init];
    return self;
}


- (void) commandAction:(Command*)c :(Displayable*)d {
}

@end

