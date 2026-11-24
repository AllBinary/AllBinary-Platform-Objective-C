// Generated Code Do Not Modify
#include "org/allbinary/game/score/HighScoreCommands.h"
#include "javax/microedition/lcdui/Command.h"
#include "org/allbinary/logic/string/StringUtil.h"
#if __has_include("org/allbinary/logic/string/StringUtil.h")
#include "org/allbinary/logic/string/StringUtil.h"
#endif
#if __has_include("org/allbinary/logic/string/StringUtil.h")
#include "org/allbinary/logic/string/StringUtil.h"
#endif
#if __has_include("org/allbinary/logic/string/StringUtil.h")
#include "org/allbinary/logic/string/StringUtil.h"
#endif


static HighScoreCommands* HighScoreCommands_instance;

void HighScoreCommands_staticInit(void) {
    static bool initialized = false;
    if (initialized) {
        return;
    }
    initialized = true;
    HighScoreCommands_instance = ((HighScoreCommands*) [((HighScoreCommands*) [HighScoreCommands alloc]) init]);
}

@implementation HighScoreCommands

- (void) initFields {
    self->DISPLAY = ((Command*) [((Command*) [Command alloc]) init:"Scores" :[StringUtil getInstance]->EMPTY_STRING :(Command_staticInit(), Command_SCREEN) :1]);
    self->PERSONAL = ((Command*) [((Command*) [Command alloc]) init:"Personal" :[StringUtil getInstance]->EMPTY_STRING :(Command_staticInit(), Command_SCREEN) :1]);
    self->WORLD = ((Command*) [((Command*) [Command alloc]) init:"World" :[StringUtil getInstance]->EMPTY_STRING :(Command_staticInit(), Command_SCREEN) :1]);
}

- (instancetype) init {
    self = [super init];
    [self initFields];
    return self;
}


+ (HighScoreCommands*) getInstance {
        return (HighScoreCommands_staticInit(), HighScoreCommands_instance);
}

@end

