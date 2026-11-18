// Generated Code Do Not Modify
#include "org/allbinary/game/input/mapping/event/NullInputMappingEventListener.h"
#include "org/allbinary/logic/util/event/AllBinaryEventObject.h"
#include "org/allbinary/game/input/mapping/event/InputMappingEventListenerInterface.h"
#include "org/allbinary/game/input/mapping/event/InputMappingEvent.h"


NullInputMappingEventListener* NullInputMappingEventListener_NULL_INPUT_MAPPING_EVENT_LISTENER;

void NullInputMappingEventListener_staticInit(void) {
    static bool initialized = false;
    if (initialized) {
        return;
    }
    initialized = true;
    NullInputMappingEventListener_NULL_INPUT_MAPPING_EVENT_LISTENER = [((NullInputMappingEventListener*) [NullInputMappingEventListener alloc]) init];
}

@implementation NullInputMappingEventListener

- (instancetype) init {
    self = [super init];
    return self;
}


// throws Exception
- (void) onInputMappingEvent:(InputMappingEvent*)inputMappingEvent {
}


- (void) onEvent:(AllBinaryEventObject*)eventObject {
}

@end

