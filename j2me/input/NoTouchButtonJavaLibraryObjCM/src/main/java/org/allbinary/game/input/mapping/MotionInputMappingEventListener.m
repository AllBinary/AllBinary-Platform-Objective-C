// Generated Code Do Not Modify
#include "org/allbinary/game/input/mapping/MotionInputMappingEventListener.h"
#include "org/allbinary/game/input/mapping/event/InputMappingEvent.h"
#include "org/allbinary/logic/communication/log/ForcedLogUtil.h"
#include "org/allbinary/logic/util/event/AllBinaryEventObject.h"
#include "org/allbinary/logic/util/event/EventStrings.h"
#if __has_include("org/allbinary/logic/util/event/EventStrings.h")
#include "org/allbinary/logic/util/event/EventStrings.h"
#endif



void MotionInputMappingEventListener_staticInit(void) {
    static bool initialized = false;
    if (initialized) {
        return;
    }
    initialized = true;
}

@implementation MotionInputMappingEventListener

- (instancetype) init {
    self = [super init];
    return self;
}


- (void) onEvent:(AllBinaryEventObject*)eventObject {
        [ForcedLogUtil log:[EventStrings getInstance]->PERFORMANCE_MESSAGE :self];
}


// throws Exception
- (void) onInputMappingEvent:(InputMappingEvent*)inputMappingEvent {
}

@end

