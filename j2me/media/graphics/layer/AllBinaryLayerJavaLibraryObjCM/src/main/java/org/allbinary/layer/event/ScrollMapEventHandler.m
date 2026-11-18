// Generated Code Do Not Modify
#include "org/allbinary/layer/event/ScrollMapEventHandler.h"
#include "org/allbinary/logic/util/event/AllBinaryEventObject.h"
#include "org/allbinary/logic/util/event/EventListenerInterface.h"
#include "org/allbinary/layer/event/ScrollMapEventListenerInterface.h"
#include "org/allbinary/layer/event/ScrollMapEvent.h"


static ScrollMapEventHandler* ScrollMapEventHandler_SINGLETON;

void ScrollMapEventHandler_staticInit(void) {
    static bool initialized = false;
    if (initialized) {
        return;
    }
    initialized = true;
    ScrollMapEventHandler_SINGLETON = [((ScrollMapEventHandler*) [ScrollMapEventHandler alloc]) init];
}

@implementation ScrollMapEventHandler


- (instancetype) init {
    self = [super init];
    return self;
}


+ (ScrollMapEventHandler*) getInstance {
        return (ScrollMapEventHandler_staticInit(), ScrollMapEventHandler_SINGLETON);
}


// throws Exception
- (void) process:(AllBinaryEventObject*)eventObject :(EventListenerInterface*)eventListenerInterface {
        ScrollMapEventListenerInterface* scrollMapEventListenerInterface = (((ScrollMapEventListenerInterface*) eventListenerInterface));
        [scrollMapEventListenerInterface onMoveEvent:((ScrollMapEvent*) eventObject)];
}

@end

