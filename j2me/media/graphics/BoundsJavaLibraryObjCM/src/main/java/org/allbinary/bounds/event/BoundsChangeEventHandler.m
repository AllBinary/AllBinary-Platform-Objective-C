// Generated Code Do Not Modify
#include "org/allbinary/bounds/event/BoundsChangeEventHandler.h"
#include "org/allbinary/logic/util/event/AllBinaryEventObject.h"
#include "org/allbinary/logic/util/event/EventListenerInterface.h"
#include "org/allbinary/bounds/event/BoundsChangeEventListener.h"
#include "org/allbinary/bounds/event/BoundsChangeEvent.h"


static BasicEventHandler* BoundsChangeEventHandler_SINGLETON;

void BoundsChangeEventHandler_staticInit(void) {
    static bool initialized = false;
    if (initialized) {
        return;
    }
    initialized = true;
    BoundsChangeEventHandler_SINGLETON = ((BoundsChangeEventHandler*) [((BoundsChangeEventHandler*) [BoundsChangeEventHandler alloc]) init]);
}

@implementation BoundsChangeEventHandler


- (instancetype) init {
    self = [super init];
    return self;
}


+ (BasicEventHandler*) getInstance {
        return (BoundsChangeEventHandler_staticInit(), BoundsChangeEventHandler_SINGLETON);
}


// throws Exception
- (void) process:(AllBinaryEventObject*)eventObject :(EventListenerInterface*)eventListenerInterface {
        BoundsChangeEventListener* boundsChangeEventListener = ((BoundsChangeEventListener*) eventListenerInterface);
        [((id<BoundsChangeEventListener>) boundsChangeEventListener) onBoundsChangeEvent:((BoundsChangeEvent*) eventObject)];
}

@end

