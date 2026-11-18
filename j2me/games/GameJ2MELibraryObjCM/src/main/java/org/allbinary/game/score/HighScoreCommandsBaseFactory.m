// Generated Code Do Not Modify
#include "org/allbinary/game/score/HighScoreCommandsBaseFactory.h"
#include "javax/microedition/lcdui/Command.h"
#include "org/allbinary/logic/communication/log/LogUtil.h"



void HighScoreCommandsBaseFactory_staticInit(void) {
    static bool initialized = false;
    if (initialized) {
        return;
    }
    initialized = true;
}

@implementation HighScoreCommandsBaseFactory

- (void) initFields {
    self->logUtil = [LogUtil getInstance];
    
}


- (instancetype) init:(Command**)HIGH_SCORE_COMMANDS {
    self = [super init];
    [self initFields];
        self->HIGH_SCORE_COMMANDS = HIGH_SCORE_COMMANDS;
    return self;
}


- (bool) isHighScoreCommand:(Command*)command {
        for (int32_t index = java_array_length(self->HIGH_SCORE_COMMANDS) - 1; index >= 0; index--) {
            if (command == self->HIGH_SCORE_COMMANDS[index]) {
                return true;
            }
        }
        return false;
}


// throws Exception
- (int32_t) getIndex:(Command*)command {
        for (int32_t index = java_array_length(self->HIGH_SCORE_COMMANDS) - 1; index >= 0; index--) {
            if (command == self->HIGH_SCORE_COMMANDS[index]) {
                return index;
            }
        }
        java_throw(java_exception_new("Exception", "No Such Command"));
}

@end

