// Generated Code Do Not Modify
#include "org/allbinary/game/input/mapping/MotionInputMappingEventListener.h"
#include "org/allbinary/game/input/mapping/event/InputMappingEvent.h"
#include "org/allbinary/game/input/motion/action/GameKeyCompleteMotionGestureInputEventFactory.h"
#include "org/allbinary/input/motion/button/BasicTouchInputFactory.h"
#include "org/allbinary/logic/communication/log/ForcedLogUtil.h"
#include "org/allbinary/logic/util/event/AllBinaryEventObject.h"
#include "org/allbinary/logic/util/event/EventStrings.h"



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
        [[GameKeyCompleteMotionGestureInputEventFactory getInstance] updateAll];
        [[BasicTouchInputFactory getInstance] updateAll:[inputMappingEvent getInputToGameKeyMapping]];
}

@end

