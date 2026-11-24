// Generated Code Do Not Modify
#include "org/allbinary/logic/util/event/NullEventListener.h"
#include "org/allbinary/logic/util/event/EventListenerInterface.h"
#include "org/allbinary/logic/util/event/AllBinaryEventObject.h"


NullEventListener* NullEventListener_NULL_EVENT_LISTENER;

void NullEventListener_staticInit(void) {
    static bool initialized = false;
    if (initialized) {
        return;
    }
    initialized = true;
    NullEventListener_NULL_EVENT_LISTENER = ((NullEventListener*) [((NullEventListener*) [NullEventListener alloc]) init]);
}

@implementation NullEventListener

- (instancetype) init {
    self = [super init];
    return self;
}


- (void) onEvent:(AllBinaryEventObject*)eventObject {
}

@end

