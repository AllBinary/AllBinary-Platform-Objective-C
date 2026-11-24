// Generated Code Do Not Modify
#include "org/allbinary/game/input/mapping/event/InputMappingEventHandler.h"
#include "org/allbinary/logic/util/event/AllBinaryEventObject.h"
#include "org/allbinary/logic/util/event/EventListenerInterface.h"
#include "org/allbinary/game/input/mapping/event/InputMappingEventListenerInterface.h"
#include "org/allbinary/game/input/mapping/event/InputMappingEvent.h"


static InputMappingEventHandler* InputMappingEventHandler_gameKeyEventHandler;

void InputMappingEventHandler_staticInit(void) {
    static bool initialized = false;
    if (initialized) {
        return;
    }
    initialized = true;
    InputMappingEventHandler_gameKeyEventHandler = ((InputMappingEventHandler*) [((InputMappingEventHandler*) [InputMappingEventHandler alloc]) init]);
}

@implementation InputMappingEventHandler


- (instancetype) init {
    self = [super init];
    return self;
}


+ (InputMappingEventHandler*) getInstance {
        return (InputMappingEventHandler_staticInit(), InputMappingEventHandler_gameKeyEventHandler);
}


// throws Exception
- (void) process:(AllBinaryEventObject*)eventObject :(EventListenerInterface*)eventListenerInterface {
        InputMappingEventListenerInterface* inputMappingEventListenerInterface = ((InputMappingEventListenerInterface*) eventListenerInterface);
        [((id<InputMappingEventListenerInterface>) inputMappingEventListenerInterface) onInputMappingEvent:((InputMappingEvent*) eventObject)];
}

@end

