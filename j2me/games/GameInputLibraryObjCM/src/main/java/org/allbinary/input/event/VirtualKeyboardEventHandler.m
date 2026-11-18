// Generated Code Do Not Modify
#include "org/allbinary/input/event/VirtualKeyboardEventHandler.h"
#include "org/allbinary/logic/java/bool/BooleanFactory.h"
#include "org/allbinary/logic/util/event/AllBinaryEventObject.h"
#include "org/allbinary/logic/util/event/EventListenerInterface.h"
#include "org/allbinary/input/event/VirtualKeyboardEvent.h"
#include "org/allbinary/input/event/VirtualKeyboardEventListenerInterface.h"


static VirtualKeyboardEventHandler* VirtualKeyboardEventHandler_gameKeyEventHandler;

void VirtualKeyboardEventHandler_staticInit(void) {
    static bool initialized = false;
    if (initialized) {
        return;
    }
    initialized = true;
    VirtualKeyboardEventHandler_gameKeyEventHandler = [((VirtualKeyboardEventHandler*) [VirtualKeyboardEventHandler alloc]) init];
}

@implementation VirtualKeyboardEventHandler

- (void) initFields {
    self->SHOW_EVENT = [((VirtualKeyboardEvent*) [VirtualKeyboardEvent alloc]) init:[BooleanFactory getInstance]->TRUE];
    self->HIDE_EVENT = [((VirtualKeyboardEvent*) [VirtualKeyboardEvent alloc]) init:[BooleanFactory getInstance]->FALSE];
}


- (instancetype) init {
    self = [super init];
    [self initFields];
    return self;
}


+ (VirtualKeyboardEventHandler*) getInstance {
        return (VirtualKeyboardEventHandler_staticInit(), VirtualKeyboardEventHandler_gameKeyEventHandler);
}


// throws Exception
- (void) process:(AllBinaryEventObject*)eventObject :(EventListenerInterface*)eventListenerInterface {
        VirtualKeyboardEventListenerInterface* virtualKeyboardEventListenerInterface = ((VirtualKeyboardEventListenerInterface*) eventListenerInterface);
        [virtualKeyboardEventListenerInterface onVirtualKeyboardEvent:((VirtualKeyboardEvent*) eventObject)];
}


- (void) open {
        JAVA_TRY {
            java_sleep(120);
            [self fireEvent:self->SHOW_EVENT];
        } JAVA_CATCH(Exception, e) {
            [self->logUtil put:self->commonStrings->EXCEPTION :self :"open" :e];
        } JAVA_END_TRY;
}


// throws Exception
- (void) close {
        JAVA_TRY {
            java_sleep(120);
            [self fireEvent:self->HIDE_EVENT];
        } JAVA_CATCH(Exception, e) {
            [self->logUtil put:self->commonStrings->EXCEPTION :self :self->commonStrings->CLOSE :e];
        } JAVA_END_TRY;
}

@end

