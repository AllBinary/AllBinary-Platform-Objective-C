// Generated Code Do Not Modify
#include "org/allbinary/graphics/form/item/CommandTextItem.h"
#include "javax/microedition/lcdui/Command.h"
#include "org/allbinary/graphics/color/BasicColor.h"
#include "org/allbinary/graphics/form/item/ABTextItem.h"



void CommandTextItem_staticInit(void) {
    static bool initialized = false;
    if (initialized) {
        return;
    }
    initialized = true;
}

@implementation CommandTextItem

- (void) initFields {
    
}


- (instancetype) init:(Command*)command :(int32_t)layout :(const char*)altText :(BasicColor*)backgroundBasicColor :(BasicColor*)foregroundBasicColor {
        self = [super init:[command getLabel] :layout :altText :backgroundBasicColor :foregroundBasicColor];
        [self initFields];
        self->command = command;
    return self;
}


- (bool) isFocusable {
        return true;
}


- (Command*) getCommand {
        return self->command;
}

@end

