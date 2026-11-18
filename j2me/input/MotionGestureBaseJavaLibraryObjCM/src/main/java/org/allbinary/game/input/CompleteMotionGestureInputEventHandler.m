// Generated Code Do Not Modify
#include "org/allbinary/game/input/CompleteMotionGestureInputEventHandler.h"
#include "org/allbinary/logic/util/event/AllBinaryEventObject.h"
#include "org/allbinary/logic/util/event/EventListenerInterface.h"
#include "org/allbinary/logic/util/event/EventStrings.h"
#include "org/allbinary/util/BasicArrayList.h"
#include "org/allbinary/util/BasicArrayListD.h"
#include "org/allbinary/game/input/CompleteMotionGestureInputEventListener.h"
#include "org/allbinary/game/input/CompleteMotionGestureInputEvent.h"
#include "org/allbinary/game/input/CompleteMotionGestureInputEventListenerInterface.h"


static CompleteMotionGestureInputEventHandler* CompleteMotionGestureInputEventHandler_SINGLETON;

void CompleteMotionGestureInputEventHandler_staticInit(void) {
    static bool initialized = false;
    if (initialized) {
        return;
    }
    initialized = true;
    CompleteMotionGestureInputEventHandler_SINGLETON = [((CompleteMotionGestureInputEventHandler*) [CompleteMotionGestureInputEventHandler alloc]) init];
}

@implementation CompleteMotionGestureInputEventHandler

- (void) initFields {
    self->list = [((BasicArrayListD*) [BasicArrayListD alloc]) init];
}


+ (CompleteMotionGestureInputEventHandler*) getInstance {
        return (CompleteMotionGestureInputEventHandler_staticInit(), CompleteMotionGestureInputEventHandler_SINGLETON);
}


- (instancetype) init {
    self = [super init];
    [self initFields];
    return self;
}


- (void) addListener:(CompleteMotionGestureInputEventListener*)completeMotionGestureInputEventListener {
        if (![self->list contains:completeMotionGestureInputEventListener]) {
            [self->list add:completeMotionGestureInputEventListener];
        }
}


- (void) removeAllListeners {
        [self->list clear];
        [super removeAllListeners];
}


- (void) removeListener:(EventListenerInterface*)eventListenerInterface {
        [self->list remove:eventListenerInterface];
        [super removeListener:eventListenerInterface];
}


// throws Exception
- (void) fireEvent:(AllBinaryEventObject*)eventObject {
        for (int32_t index = [self->list size]; --index >= 0; ) {
            JAVA_TRY {
                CompleteMotionGestureInputEventListener* completeMotionGestureInputEventListener = ((CompleteMotionGestureInputEventListener*) self->list->objectArray[index]);
                [completeMotionGestureInputEventListener onCompleteMotionGestureInputEvent:((CompleteMotionGestureInputEvent*) eventObject)];
            } JAVA_CATCH(Exception, e) {
                [self->logUtil put:self->commonStrings->EXCEPTION :self :[EventStrings getInstance]->FIRE_EVENT :e];
            } JAVA_END_TRY;
        }
        [super fireEvent:eventObject];
}


// throws Exception
- (void) process:(AllBinaryEventObject*)eventObject :(EventListenerInterface*)eventListenerInterface {
        CompleteMotionGestureInputEventListenerInterface* completeMotionGestureInputEventListenerInterface = ((CompleteMotionGestureInputEventListenerInterface*) eventListenerInterface);
        [completeMotionGestureInputEventListenerInterface onCompleteMotionGestureInputEvent:((CompleteMotionGestureInputEvent*) eventObject)];
}

@end

