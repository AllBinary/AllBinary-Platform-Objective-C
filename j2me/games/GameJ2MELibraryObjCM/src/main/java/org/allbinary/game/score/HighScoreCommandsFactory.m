// Generated Code Do Not Modify
#include "org/allbinary/game/score/HighScoreCommandsFactory.h"
#include "javax/microedition/lcdui/Command.h"
#include "org/allbinary/game/score/HighScoreCommandsBaseFactory.h"
#include "org/allbinary/game/score/HighScoreCommands.h"


static HighScoreCommandsFactory* HighScoreCommandsFactory_instance;

void HighScoreCommandsFactory_staticInit(void) {
    static bool initialized = false;
    if (initialized) {
        return;
    }
    initialized = true;
    HighScoreCommandsFactory_instance = ((HighScoreCommandsFactory*) [((HighScoreCommandsFactory*) [HighScoreCommandsFactory alloc]) init]);
}

@implementation HighScoreCommandsFactory


+ (HighScoreCommandsFactory*) getInstance {
        return (HighScoreCommandsFactory_staticInit(), HighScoreCommandsFactory_instance);
}


- (instancetype) init {
        self = [super init:((Command**) java_array_from(sizeof(Command*), sizeof((Command*[]){ [HighScoreCommands getInstance]->PERSONAL, [HighScoreCommands getInstance]->WORLD }) / sizeof(Command*), (Command*[]){ [HighScoreCommands getInstance]->PERSONAL, [HighScoreCommands getInstance]->WORLD }))];
    return self;
}

@end

