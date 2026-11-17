// Generated Code Do Not Modify
#include "org/allbinary/logic/util/event/EventStrings.h"


static EventStrings* EventStrings_instance;

void EventStrings_staticInit(void) {
    static bool initialized = false;
    if (initialized) {
        return;
    }
    initialized = true;
    EventStrings_instance = [((EventStrings*) [EventStrings alloc]) init];
}

@implementation EventStrings

- (void) initFields {
    self->PERFORMANCE_MESSAGE = "Use Custom onEvent Methods for needed optimization";
    self->TOTAL_LISTENERS = "Total Listeners: ";
    self->LISTENER_LABEL = " Listener: ";
    self->FIRE_EVENT = "fireEvent";
}

- (instancetype) init {
    self = [super init];
    [self initFields];
    return self;
}


+ (EventStrings*) getInstance {
        return (EventStrings_staticInit(), EventStrings_instance);
}

@end

