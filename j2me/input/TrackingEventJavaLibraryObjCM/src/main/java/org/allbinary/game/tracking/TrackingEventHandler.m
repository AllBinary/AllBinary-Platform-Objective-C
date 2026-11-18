// Generated Code Do Not Modify
#include "org/allbinary/game/tracking/TrackingEventHandler.h"
#include "org/allbinary/logic/util/event/AllBinaryEventObject.h"
#include "org/allbinary/logic/util/event/EventListenerInterface.h"
#include "org/allbinary/game/tracking/TrackingEventListenerInterface.h"
#include "org/allbinary/game/tracking/TrackingEvent.h"


static TrackingEventHandler* TrackingEventHandler_instance;

void TrackingEventHandler_staticInit(void) {
    static bool initialized = false;
    if (initialized) {
        return;
    }
    initialized = true;
    TrackingEventHandler_instance = [((TrackingEventHandler*) [TrackingEventHandler alloc]) init];
}

@implementation TrackingEventHandler


+ (TrackingEventHandler*) getInstance {
        return (TrackingEventHandler_staticInit(), TrackingEventHandler_instance);
}


- (instancetype) init {
    self = [super init];
    return self;
}


// throws Exception
- (void) process:(AllBinaryEventObject*)eventObject :(EventListenerInterface*)eventListenerInterface {
        TrackingEventListenerInterface* trackingEventListenerInterface = ((TrackingEventListenerInterface*) eventListenerInterface);
        [trackingEventListenerInterface onMovement:((TrackingEvent*) eventObject)];
}

@end

