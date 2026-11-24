// Generated Code Do Not Modify
#include "org/allbinary/graphics/displayable/command/MyCommandsFactory.h"
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
#if __has_include("org/allbinary/logic/string/StringUtil.h")
#include "org/allbinary/logic/string/StringUtil.h"
#endif
#if __has_include("org/allbinary/logic/string/StringUtil.h")
#include "org/allbinary/logic/string/StringUtil.h"
#endif
#if __has_include("org/allbinary/logic/string/StringUtil.h")
#include "org/allbinary/logic/string/StringUtil.h"
#endif


static MyCommandsFactory* MyCommandsFactory_instance;

void MyCommandsFactory_staticInit(void) {
    static bool initialized = false;
    if (initialized) {
        return;
    }
    initialized = true;
    MyCommandsFactory_instance = ((MyCommandsFactory*) [((MyCommandsFactory*) [MyCommandsFactory alloc]) init]);
}

@implementation MyCommandsFactory

- (void) initFields {
    self->NO_COMMAND = ((Command*) [((Command*) [Command alloc]) init:[StringUtil getInstance]->EMPTY_STRING :[StringUtil getInstance]->EMPTY_STRING :-1 :-1]);
    self->GAUGE_CHANGE = ((Command*) [((Command*) [Command alloc]) init:"GAUGE_CHANGE" :[StringUtil getInstance]->EMPTY_STRING :(Command_staticInit(), Command_ITEM) :1]);
    self->SET_DISPLAYABLE = ((Command*) [((Command*) [Command alloc]) init:"Display" :[StringUtil getInstance]->EMPTY_STRING :(Command_staticInit(), Command_SCREEN) :2]);
    self->PAUSE_COMMAND = ((Command*) [((Command*) [Command alloc]) init:"Pause" :[StringUtil getInstance]->EMPTY_STRING :(Command_staticInit(), Command_SCREEN) :0]);
    self->RESUME_COMMAND = ((Command*) [((Command*) [Command alloc]) init:"Resume" :[StringUtil getInstance]->EMPTY_STRING :(Command_staticInit(), Command_SCREEN) :0]);
}


+ (MyCommandsFactory*) getInstance {
        return (MyCommandsFactory_staticInit(), MyCommandsFactory_instance);
}


- (instancetype) init {
    self = [super init];
    [self initFields];
    return self;
}

@end

