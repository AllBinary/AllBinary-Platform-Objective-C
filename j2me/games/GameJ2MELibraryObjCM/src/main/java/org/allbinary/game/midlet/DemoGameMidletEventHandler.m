// Generated Code Do Not Modify
#include "org/allbinary/game/midlet/DemoGameMidletEventHandler.h"
#include "org/allbinary/logic/util/event/AllBinaryEventObject.h"
#include "org/allbinary/logic/util/event/EventListenerInterface.h"
#include "org/allbinary/game/midlet/DemoGameMidletEventListener.h"
#include "org/allbinary/game/midlet/DemoGameMidletEvent.h"


static DemoGameMidletEventHandler* DemoGameMidletEventHandler_gameKeyEventHandler;

void DemoGameMidletEventHandler_staticInit(void) {
    static bool initialized = false;
    if (initialized) {
        return;
    }
    initialized = true;
    DemoGameMidletEventHandler_gameKeyEventHandler = ((DemoGameMidletEventHandler*) [((DemoGameMidletEventHandler*) [DemoGameMidletEventHandler alloc]) init]);
}

@implementation DemoGameMidletEventHandler


- (instancetype) init {
    self = [super init];
    return self;
}


+ (DemoGameMidletEventHandler*) getInstance {
        return (DemoGameMidletEventHandler_staticInit(), DemoGameMidletEventHandler_gameKeyEventHandler);
}


// throws Exception
- (void) process:(AllBinaryEventObject*)eventObject :(EventListenerInterface*)eventListenerInterface {
        DemoGameMidletEventListener* demoGameMidletEventListener = ((DemoGameMidletEventListener*) eventListenerInterface);
        [((id<DemoGameMidletEventListener>) demoGameMidletEventListener) onDemoGameMidletEvent:((DemoGameMidletEvent*) eventObject)];
}

@end

