// Generated Code Do Not Modify
#include "org/allbinary/game/displayable/canvas/CommandRunnable.h"
#include "javax/microedition/lcdui/Command.h"
#include "javax/microedition/lcdui/CommandListener.h"
#include "org/allbinary/graphics/displayable/MyCanvas.h"
#include "org/allbinary/logic/communication/log/LogUtil.h"
#include "org/allbinary/string/CommonStrings.h"
#include "org/allbinary/game/displayable/canvas/CommandFormInputProcessor.h"



void CommandRunnable_staticInit(void) {
    static bool initialized = false;
    if (initialized) {
        return;
    }
    initialized = true;
}

@implementation CommandRunnable

- (void) initFields {
    self->logUtil = [LogUtil getInstance];
    self->commonStrings = [CommonStrings getInstance];
    
    
}


- (instancetype) init:(CommandFormInputProcessor*)commandFormInputProcessor :(Command*)command {
    self = [super init];
    [self initFields];
        self->commandFormInputProcessor = commandFormInputProcessor;
        self->command = command;
    return self;
}


- (void) run {
        JAVA_TRY {
            [self->logUtil putF:self->commonStrings->START_RUNNABLE :self :self->commonStrings->RUN];
            MyCanvas* canvas = [self->commandFormInputProcessor getCanvas];
            CommandListener* commandListener = [canvas getCustomCommandListener];
            [((id<CommandListener>) commandListener) commandAction:self->command :canvas];
            [self->logUtil putF:self->commonStrings->END_RUNNABLE :self :self->commonStrings->RUN];
        } JAVA_CATCH(Exception, e) {
            [self->logUtil put:self->commonStrings->EXCEPTION :self :self->commonStrings->RUN :e];
        } JAVA_END_TRY;
}

@end

