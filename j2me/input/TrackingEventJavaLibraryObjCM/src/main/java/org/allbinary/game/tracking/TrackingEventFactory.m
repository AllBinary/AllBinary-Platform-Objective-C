// Generated Code Do Not Modify
#include "org/allbinary/game/tracking/TrackingEventFactory.h"
#include "org/allbinary/logic/util/event/AllBinaryEventObject.h"
#include "org/allbinary/game/tracking/TrackingEvent.h"
#include "org/allbinary/game/tracking/TrackingEventHandler.h"



void TrackingEventFactory_staticInit(void) {
    static bool initialized = false;
    if (initialized) {
        return;
    }
    initialized = true;
}

@implementation TrackingEventFactory


- (instancetype) init {
    self = [super init];
    return self;
}


- (AllBinaryEventObject*) getInstance {
        return [((TrackingEvent*) [TrackingEvent alloc]) init:[TrackingEventHandler getInstance]];
}

@end

