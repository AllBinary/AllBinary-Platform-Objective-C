// Generated Code Do Not Modify
#include "org/allbinary/game/configuration/InGameOptionsForm.h"
#include "javax/microedition/lcdui/Choice.h"
#include "javax/microedition/lcdui/Command.h"
#include "javax/microedition/lcdui/CommandListener.h"
#include "org/allbinary/game/commands/GameCommandsFactory.h"
#include "org/allbinary/game/configuration/feature/GameFeatureFormUtil.h"
#include "org/allbinary/game/configuration/feature/InGameFeatureChoiceGroups.h"
#include "org/allbinary/graphics/color/BasicColor.h"
#include "org/allbinary/logic/string/StringUtil.h"


Command* InGameOptionsForm_DISPLAY;
Command* InGameOptionsForm_SAVE;
Command* InGameOptionsForm_DEFAULT;

void InGameOptionsForm_staticInit(void) {
    static bool initialized = false;
    if (initialized) {
        return;
    }
    initialized = true;
    InGameOptionsForm_DISPLAY = [((Command*) [Command alloc]) init:"Options In Game" :[StringUtil getInstance]->EMPTY_STRING :(Command_staticInit(), Command_SCREEN) :1];
    InGameOptionsForm_SAVE = [((Command*) [Command alloc]) init:"Save" :[StringUtil getInstance]->EMPTY_STRING :(Command_staticInit(), Command_SCREEN) :1];
    InGameOptionsForm_DEFAULT = [((Command*) [Command alloc]) init:"Default" :[StringUtil getInstance]->EMPTY_STRING :(Command_staticInit(), Command_SCREEN) :1];
}

@implementation InGameOptionsForm


- (instancetype) init:(CommandListener*)commandListener :(const char*)title :(BasicColor*)backgrounBasicColor :(BasicColor*)foregroundBasicColor {
        self = [super init:commandListener :title :backgrounBasicColor :foregroundBasicColor];
        [self->logUtil putF:self->commonStrings->START :self :self->commonStrings->CONSTRUCTOR];
        GameFeatureFormUtil* gameFeatureFormUtil = [GameFeatureFormUtil getInstance];
        [gameFeatureFormUtil addChoiceGroup:self :[[InGameFeatureChoiceGroups getExclusiveInstance] get] :(Choice_staticInit(), Choice_EXCLUSIVE)];
        [gameFeatureFormUtil addChoiceGroup:self :[[InGameFeatureChoiceGroups getMultipleInstance] get] :(Choice_staticInit(), Choice_MULTIPLE)];
        [self initCommands:commandListener];
    return self;
}


- (void) initCommands:(CommandListener*)cmdListener {
        [self removeAllCommands];
        [self addCommand:[GameCommandsFactory getInstance]->CLOSE_AND_SHOW_GAME_CANVAS];
        [self addCommand:(InGameOptionsForm_staticInit(), InGameOptionsForm_DEFAULT)];
        [self setCommandListener:cmdListener];
}

@end

