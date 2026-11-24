// Generated Code Do Not Modify
#include "org/allbinary/game/commands/GameCommandsFactory.h"
#include "javax/microedition/lcdui/Command.h"
#include "org/allbinary/graphics/displayable/CanvasStrings.h"
#include "org/allbinary/logic/NullUtil.h"
#include "org/allbinary/logic/string/StringUtil.h"
#include "org/allbinary/string/CommonStrings.h"
#if __has_include("org/allbinary/logic/NullUtil.h")
#include "org/allbinary/logic/NullUtil.h"
#endif
#if __has_include("org/allbinary/logic/NullUtil.h")
#include "org/allbinary/logic/NullUtil.h"
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
#if __has_include("org/allbinary/string/CommonStrings.h")
#include "org/allbinary/string/CommonStrings.h"
#endif
#if __has_include("org/allbinary/logic/string/StringUtil.h")
#include "org/allbinary/logic/string/StringUtil.h"
#endif
#if __has_include("org/allbinary/graphics/displayable/CanvasStrings.h")
#include "org/allbinary/graphics/displayable/CanvasStrings.h"
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
#if __has_include("org/allbinary/graphics/displayable/CanvasStrings.h")
#include "org/allbinary/graphics/displayable/CanvasStrings.h"
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
#if __has_include("org/allbinary/string/CommonStrings.h")
#include "org/allbinary/string/CommonStrings.h"
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


static id GameCommandsFactory_instance;

void GameCommandsFactory_staticInit(void) {
    static bool initialized = false;
    if (initialized) {
        return;
    }
    initialized = true;
    GameCommandsFactory_instance = [NullUtil getInstance]->NULL_OBJECT;
}

@implementation GameCommandsFactory

- (void) initFields {
    self->TOGGLE_FULLSCREEN = ((Command*) [((Command*) [Command alloc]) init:"Toggle FullScreen" :[StringUtil getInstance]->EMPTY_STRING :(Command_staticInit(), Command_SCREEN) :1]);
    self->TOGGLE_KEYBOARD = ((Command*) [((Command*) [Command alloc]) init:"Keyboard" :[StringUtil getInstance]->EMPTY_STRING :(Command_staticInit(), Command_SCREEN) :1]);
    self->SET_MENU_DISPLAYABLE = ((Command*) [((Command*) [Command alloc]) init:"Set Menu Displayable" :[StringUtil getInstance]->EMPTY_STRING :(Command_staticInit(), Command_SCREEN) :1]);
    self->APPLICATION_UPDATE = ((Command*) [((Command*) [Command alloc]) init:[CommonStrings getInstance]->UPDATE :[StringUtil getInstance]->EMPTY_STRING :(Command_staticInit(), Command_SCREEN) :1]);
    self->DISPLAY_ABOUT = ((Command*) [((Command*) [Command alloc]) init:[CanvasStrings getInstance]->ABOUT :[StringUtil getInstance]->EMPTY_STRING :(Command_staticInit(), Command_SCREEN) :2]);
    self->OPEN_WEB_URL = ((Command*) [((Command*) [Command alloc]) init:"Open Web URL" :[StringUtil getInstance]->EMPTY_STRING :(Command_staticInit(), Command_SCREEN) :2]);
    self->CLOSE_OPTIONS = ((Command*) [((Command*) [Command alloc]) init:"Back" :[StringUtil getInstance]->EMPTY_STRING :(Command_staticInit(), Command_SCREEN) :1]);
    self->DISPLAY_OPTIONS = ((Command*) [((Command*) [Command alloc]) init:[CanvasStrings getInstance]->OPTIONS :[StringUtil getInstance]->EMPTY_STRING :(Command_staticInit(), Command_SCREEN) :2]);
    self->START_TRACE = ((Command*) [((Command*) [Command alloc]) init:"Start Trace" :[StringUtil getInstance]->EMPTY_STRING :(Command_staticInit(), Command_SCREEN) :1]);
    self->STOP_TRACE = ((Command*) [((Command*) [Command alloc]) init:"Stop Trace" :[StringUtil getInstance]->EMPTY_STRING :(Command_staticInit(), Command_SCREEN) :1]);
    self->DEFAULT_OPTIONS = ((Command*) [((Command*) [Command alloc]) init:"Default" :[StringUtil getInstance]->EMPTY_STRING :(Command_staticInit(), Command_SCREEN) :1]);
    self->SHOW_GAME_CANVAS = ((Command*) [((Command*) [Command alloc]) init:"Back to Game" :[StringUtil getInstance]->EMPTY_STRING :(Command_staticInit(), Command_SCREEN) :1]);
    self->CLOSE_AND_SHOW_GAME_CANVAS = ((Command*) [((Command*) [Command alloc]) init:"Back" :[StringUtil getInstance]->EMPTY_STRING :(Command_staticInit(), Command_SCREEN) :1]);
    self->QUIT_COMMAND = ((Command*) [((Command*) [Command alloc]) init:"Quit" :[StringUtil getInstance]->EMPTY_STRING :(Command_staticInit(), Command_STOP) :1]);
    self->RESTART_COMMAND = ((Command*) [((Command*) [Command alloc]) init:"Restart" :[StringUtil getInstance]->EMPTY_STRING :(Command_staticInit(), Command_SCREEN) :0]);
    self->DISPLAY_SAVE_FORM = ((Command*) [((Command*) [Command alloc]) init:"Save To" :[StringUtil getInstance]->EMPTY_STRING :(Command_staticInit(), Command_SCREEN) :3]);
    self->SAVE = ((Command*) [((Command*) [Command alloc]) init:"Save" :[StringUtil getInstance]->EMPTY_STRING :(Command_staticInit(), Command_SCREEN) :3]);
    self->DISPLAY_LOAD_FORM = ((Command*) [((Command*) [Command alloc]) init:"Load" :[StringUtil getInstance]->EMPTY_STRING :(Command_staticInit(), Command_SCREEN) :3]);
    self->LOAD_FILE = ((Command*) [((Command*) [Command alloc]) init:"Load File" :[StringUtil getInstance]->EMPTY_STRING :(Command_staticInit(), Command_SCREEN) :3]);
    self->DELETE_FILE = ((Command*) [((Command*) [Command alloc]) init:"Delete File" :[StringUtil getInstance]->EMPTY_STRING :(Command_staticInit(), Command_SCREEN) :1]);
    self->EXIT_COMMAND = ((Command*) [((Command*) [Command alloc]) init:"Exit" :[StringUtil getInstance]->EMPTY_STRING :(Command_staticInit(), Command_EXIT) :2]);
    self->EXIT_WITHOUT_PROGRESS_COMMAND = ((Command*) [((Command*) [Command alloc]) init:"Exit Without Progress" :[StringUtil getInstance]->EMPTY_STRING :(Command_staticInit(), Command_EXIT) :2]);
    self->START_COMMAND = ((Command*) [((Command*) [Command alloc]) init:[CommonStrings getInstance]->START :[StringUtil getInstance]->EMPTY_STRING :(Command_staticInit(), Command_SCREEN) :1]);
    self->CONTINUE_COMMAND = ((Command*) [((Command*) [Command alloc]) init:"Continue" :[StringUtil getInstance]->EMPTY_STRING :(Command_staticInit(), Command_SCREEN) :1]);
    self->SELECT_COMMAND = ((Command*) [((Command*) [Command alloc]) init:"Select" :[StringUtil getInstance]->EMPTY_STRING :(Command_staticInit(), Command_SCREEN) :1]);
    self->FEATURE_UPDATE = ((Command*) [((Command*) [Command alloc]) init:"Feature Update" :[StringUtil getInstance]->EMPTY_STRING :(Command_staticInit(), Command_SCREEN) :1]);
    self->BUY_COMMAND = ((Command*) [((Command*) [Command alloc]) init:"BUY" :[StringUtil getInstance]->EMPTY_STRING :(Command_staticInit(), Command_SCREEN) :1]);
}


+ (GameCommandsFactory*) getInstance {
        if ((GameCommandsFactory_staticInit(), GameCommandsFactory_instance) == [NullUtil getInstance]->NULL_OBJECT) {
            GameCommandsFactory_instance = ((GameCommandsFactory*) [((GameCommandsFactory*) [GameCommandsFactory alloc]) init]);
        }
        return ((GameCommandsFactory*) (GameCommandsFactory_staticInit(), GameCommandsFactory_instance));
}


- (instancetype) init {
    self = [super init];
    [self initFields];
    return self;
}

@end

