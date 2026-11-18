// Generated Code Do Not Modify
#include "org/allbinary/game/configuration/SaveGameForm.h"
#include "javax/microedition/lcdui/CommandListener.h"
#include "javax/microedition/lcdui/TextField.h"
#include "org/allbinary/MIDPUtil.h"
#include "org/allbinary/game/commands/GameCommandsFactory.h"
#include "org/allbinary/graphics/color/BasicColor.h"
#include "org/allbinary/logic/ABSystemWrapper.h"


static CommandForm* SaveGameForm_FORM;

void SaveGameForm_staticInit(void) {
    static bool initialized = false;
    if (initialized) {
        return;
    }
    initialized = true;
    SaveGameForm_FORM = [CommandForm getNullCommandForm];
}

@implementation SaveGameForm

- (void) initFields {
    self->meUtil = [MIDPUtil getInstance];
}


// throws Exception
+ (CommandForm*) createForm:(CommandListener*)commandListener :(const char*)title :(BasicColor*)backgrounBasicColor :(BasicColor*)foregroundBasicColor {
        SaveGameForm_FORM = [((SaveGameForm*) [SaveGameForm alloc]) init:commandListener :title :backgrounBasicColor :foregroundBasicColor];
        return (SaveGameForm_staticInit(), SaveGameForm_FORM);
}


+ (CommandForm*) getInstance {
        return (SaveGameForm_staticInit(), SaveGameForm_FORM);
}


- (instancetype) init:(CommandListener*)commandListener :(const char*)title :(BasicColor*)backgrounBasicColor :(BasicColor*)foregroundBasicColor {
        self = [super init:commandListener :title :backgrounBasicColor :foregroundBasicColor];
        [self initFields];
        [self->logUtil putF:self->commonStrings->START :self :self->commonStrings->CONSTRUCTOR];
        const char* timeString = java_string_of([[ABSystemWrapper getInstance] currentTimeMillis]);
        [self->meUtil appendItem:self :[((TextField*) [TextField alloc]) init:"Name: " :timeString :30 :(TextField_staticInit(), TextField_ANY)]];
        [self initCommands:commandListener];
    return self;
}


- (void) initCommands:(CommandListener*)cmdListener {
        GameCommandsFactory* gameCommandsFactory = [GameCommandsFactory getInstance];
        [self removeAllCommands];
        [self addCommand:gameCommandsFactory->SAVE];
        [self addCommand:gameCommandsFactory->CLOSE_AND_SHOW_GAME_CANVAS];
        [self setCommandListener:cmdListener];
}

@end

