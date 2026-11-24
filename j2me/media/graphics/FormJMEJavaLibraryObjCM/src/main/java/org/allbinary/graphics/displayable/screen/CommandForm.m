// Generated Code Do Not Modify
#include "org/allbinary/graphics/displayable/screen/CommandForm.h"
#include "javax/microedition/lcdui/Command.h"
#include "javax/microedition/lcdui/CommandListener.h"
#include "javax/microedition/lcdui/NullCommandListener.h"
#include "org/allbinary/canvas/Processor.h"
#include "org/allbinary/graphics/color/BasicColor.h"
#include "org/allbinary/graphics/color/BasicColorFactory.h"
#include "org/allbinary/logic/NullUtil.h"
#include "org/allbinary/logic/communication/log/LogUtil.h"
#include "org/allbinary/logic/string/StringUtil.h"
#include "org/allbinary/string/CommonStrings.h"
#include "org/allbinary/logic/StdUtil.h"
#include "org/allbinary/util/ABStack.h"
#include "org/allbinary/graphics/displayable/screen/ScreenRepaintProcessorFactory.h"
#if __has_include("org/allbinary/logic/NullUtil.h")
#include "org/allbinary/logic/NullUtil.h"
#endif
#if __has_include("org/allbinary/logic/NullUtil.h")
#include "org/allbinary/logic/NullUtil.h"
#endif
#if __has_include("org/allbinary/logic/string/StringUtil.h")
#include "org/allbinary/logic/string/StringUtil.h"
#endif
#if __has_include("org/allbinary/graphics/color/BasicColorFactory.h")
#include "org/allbinary/graphics/color/BasicColorFactory.h"
#endif
#if __has_include("org/allbinary/graphics/color/BasicColorFactory.h")
#include "org/allbinary/graphics/color/BasicColorFactory.h"
#endif
#if __has_include("org/allbinary/logic/StdUtil.h")
#include "org/allbinary/logic/StdUtil.h"
#endif


static id CommandForm_NULL_COMMAND_FORM;

void CommandForm_staticInit(void) {
    static bool initialized = false;
    if (initialized) {
        return;
    }
    initialized = true;
    CommandForm_NULL_COMMAND_FORM = [NullUtil getInstance]->NULL_OBJECT;
}

@implementation CommandForm

- (void) initFields {
    self->logUtil = [LogUtil getInstance];
    self->commonStrings = [CommonStrings getInstance];
    self->repaintProcessor = [[ScreenRepaintProcessorFactory getInstance] create:self];
    
}


+ (CommandForm*) getNullCommandForm {
        if ((CommandForm_staticInit(), CommandForm_NULL_COMMAND_FORM) == [NullUtil getInstance]->NULL_OBJECT) {
            CommandForm_NULL_COMMAND_FORM = ((CommandForm*) [((CommandForm*) [CommandForm alloc]) init:(NullCommandListener_staticInit(), NullCommandListener_NULL_COMMAND_LISTENER) :[StringUtil getInstance]->EMPTY_STRING :[BasicColorFactory getInstance]->BLACK :[BasicColorFactory getInstance]->WHITE]);
        }
        return ((CommandForm*) (CommandForm_staticInit(), CommandForm_NULL_COMMAND_FORM));
}


- (instancetype) init:(CommandListener*)commandListener :(const char*)formTitle :(BasicColor*)backgrounBasicColor :(BasicColor*)foregroundBasicColor {
        self = [super init:formTitle];
        [self initFields];
        self->commandStack = [[StdUtil getInstance] createStack];
        JAVA_TRY {
            [self->repaintProcessor process];
        } JAVA_CATCH(Exception, e) {
            [self->logUtil put:self->commonStrings->EXCEPTION :self :self->commonStrings->CONSTRUCTOR :e];
        } JAVA_END_TRY;
    return self;
}


- (void) initCommands:(CommandListener*)cmdListener {
}


- (void) open {
        [self->logUtil putF:self->commonStrings->START :self :"open"];
}


// throws Exception
- (void) close {
        [self->logUtil putF:self->commonStrings->START :self :self->commonStrings->CLOSE];
}


// throws Exception
- (void) update {
        [self->repaintProcessor process];
}


- (int32_t) getSourceId {
        return 0;
}


- (void) addCommand:(Command*)command {
        [self->commandStack push:command];
        [super addCommand:command];
}


- (void) removeAllCommands {
        int32_t size = [self->commandStack size];
        for (int32_t index = 0; index < size; index++) {
            [super removeCommand:((Command*) [self->commandStack pop])];
        }
}

@end

