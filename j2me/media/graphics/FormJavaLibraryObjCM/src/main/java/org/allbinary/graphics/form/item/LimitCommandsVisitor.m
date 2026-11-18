// Generated Code Do Not Modify
#include "org/allbinary/graphics/form/item/LimitCommandsVisitor.h"
#include "javax/microedition/lcdui/Command.h"
#include "org/allbinary/game/commands/GameCommandsFactory.h"
#include "org/allbinary/graphics/displayable/DisplayInfoSingleton.h"
#include "org/allbinary/graphics/form/ScreenInfo.h"
#include "org/allbinary/logic/java/bool/BooleanFactory.h"



void LimitCommandsVisitor_staticInit(void) {
    static bool initialized = false;
    if (initialized) {
        return;
    }
    initialized = true;
}

@implementation LimitCommandsVisitor

- (void) initFields {
    
}


- (instancetype) init {
    self = [super init];
    [self initFields];
        DisplayInfoSingleton* displayInfo = [DisplayInfoSingleton getInstance];
        self->isNotSmallDisplay = ([displayInfo isPortrait] && [displayInfo getLastHeight] > [ScreenInfo getInstance]->SMALL_WIDTH) || (![displayInfo isPortrait] && [displayInfo getLastHeight] > [ScreenInfo getInstance]->SMALL_HEIGHT);
    return self;
}


- (id) visit:(id)anyType {
        Command* command = ((Command*) anyType);
        BooleanFactory* booleanFactory = [BooleanFactory getInstance];
        if (self->isNotSmallDisplay || [command getPriority] == 1 || command == [GameCommandsFactory getInstance]->EXIT_COMMAND || command == [GameCommandsFactory getInstance]->EXIT_WITHOUT_PROGRESS_COMMAND) {
            return booleanFactory->TRUE;
        } else {
            return booleanFactory->FALSE;
        }
}

@end

