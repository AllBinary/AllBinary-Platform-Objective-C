// Generated Code Do Not Modify
#include "org/allbinary/game/GameAdState.h"
#include "org/allbinary/business/advertisement/AdConfiguration.h"
#include "org/allbinary/input/event/VirtualKeyboardEvent.h"
#include "org/allbinary/input/event/VirtualKeyboardEventHandler.h"
#include "org/allbinary/logic/util/event/AllBinaryEventObject.h"



void GameAdState_staticInit(void) {
    static bool initialized = false;
    if (initialized) {
        return;
    }
    initialized = true;
}

@implementation GameAdState


- (instancetype) init:(AdConfiguration*)adConfiguration {
        self = [super init:adConfiguration];
        [[VirtualKeyboardEventHandler getInstance] addListenerInterface:self];
    return self;
}


// throws Exception
- (void) onVirtualKeyboardEvent:(VirtualKeyboardEvent*)virtualKeyboardEvent {
}


- (void) onEvent:(AllBinaryEventObject*)eventObject {
        [super onEvent:eventObject];
}

@end

