// Generated Code Do Not Modify
#include "org/allbinary/content/CommandUriAction.h"
#include "javax/microedition/lcdui/Command.h"
#include "org/allbinary/logic/communication/log/LogUtil.h"


static CommandUriAction* CommandUriAction_instance;

void CommandUriAction_staticInit(void) {
    static bool initialized = false;
    if (initialized) {
        return;
    }
    initialized = true;
    CommandUriAction_instance = ((CommandUriAction*) [((CommandUriAction*) [CommandUriAction alloc]) init]);
}

@implementation CommandUriAction

- (void) initFields {
    self->logUtil = [LogUtil getInstance];
}

- (instancetype) init {
    self = [super init];
    [self initFields];
    return self;
}


+ (CommandUriAction*) getInstance {
        return (CommandUriAction_staticInit(), CommandUriAction_instance);
}


- (void) add:(Command*)command :(const char*)url {
}


- (void) process:(Command*)command {
}

@end

