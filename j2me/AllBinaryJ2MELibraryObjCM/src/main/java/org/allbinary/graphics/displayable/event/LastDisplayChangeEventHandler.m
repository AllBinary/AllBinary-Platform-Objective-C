// Generated Code Do Not Modify
#include "org/allbinary/graphics/displayable/event/LastDisplayChangeEventHandler.h"
#include "org/allbinary/logic/util/event/AllBinaryEventObject.h"
#include "org/allbinary/logic/util/event/EventListenerInterface.h"
#include "org/allbinary/graphics/displayable/event/DisplayChangeEventListener.h"
#include "org/allbinary/graphics/displayable/event/DisplayChangeEvent.h"


static LastDisplayChangeEventHandler* LastDisplayChangeEventHandler_SINGLETON;

void LastDisplayChangeEventHandler_staticInit(void) {
    static bool initialized = false;
    if (initialized) {
        return;
    }
    initialized = true;
    LastDisplayChangeEventHandler_SINGLETON = ((LastDisplayChangeEventHandler*) [((LastDisplayChangeEventHandler*) [LastDisplayChangeEventHandler alloc]) init]);
}

@implementation LastDisplayChangeEventHandler


+ (LastDisplayChangeEventHandler*) getInstance {
        return (LastDisplayChangeEventHandler_staticInit(), LastDisplayChangeEventHandler_SINGLETON);
}


- (instancetype) init {
    self = [super init];
    return self;
}


// throws Exception
- (void) process:(AllBinaryEventObject*)eventObject :(EventListenerInterface*)eventListenerInterface {
        DisplayChangeEventListener* displayChangeEventListener = (((DisplayChangeEventListener*) eventListenerInterface));
        [((id<DisplayChangeEventListener>) displayChangeEventListener) onDisplayChangeEvent:((DisplayChangeEvent*) eventObject)];
}

@end

