// Generated Code Do Not Modify
#include "org/allbinary/graphics/displayable/event/DisplayChangeEventHandler.h"
#include "org/allbinary/logic/util/event/AllBinaryEventObject.h"
#include "org/allbinary/logic/util/event/EventListenerInterface.h"
#include "org/allbinary/graphics/displayable/event/DisplayChangeEventListener.h"
#include "org/allbinary/graphics/displayable/event/DisplayChangeEvent.h"


static DisplayChangeEventHandler* DisplayChangeEventHandler_SINGLETON;

void DisplayChangeEventHandler_staticInit(void) {
    static bool initialized = false;
    if (initialized) {
        return;
    }
    initialized = true;
    DisplayChangeEventHandler_SINGLETON = [((DisplayChangeEventHandler*) [DisplayChangeEventHandler alloc]) init];
}

@implementation DisplayChangeEventHandler


+ (DisplayChangeEventHandler*) getInstance {
        return (DisplayChangeEventHandler_staticInit(), DisplayChangeEventHandler_SINGLETON);
}


- (instancetype) init {
    self = [super init];
    return self;
}


// throws Exception
- (void) process:(AllBinaryEventObject*)eventObject :(EventListenerInterface*)eventListenerInterface {
        DisplayChangeEventListener* displayChangeEventListener = (((DisplayChangeEventListener*) eventListenerInterface));
        [displayChangeEventListener onDisplayChangeEvent:((DisplayChangeEvent*) eventObject)];
}

@end

