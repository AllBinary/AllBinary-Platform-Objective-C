// Generated Code Do Not Modify
#include "org/allbinary/game/input/event/PressGameKeyEventHandler.h"
#include "org/allbinary/game/input/PlayerGameInput.h"
#include "org/allbinary/logic/util/event/AllBinaryEventObject.h"
#include "org/allbinary/logic/util/event/EventListenerInterface.h"
#include "org/allbinary/logic/util/event/EventStrings.h"
#include "org/allbinary/util/BasicArrayList.h"
#include "org/allbinary/util/BasicArrayListD.h"
#include "org/allbinary/game/input/event/GameKeyEvent.h"
#include "org/allbinary/game/input/event/PressGameKeyEventListenerInterface.h"
#if __has_include("org/allbinary/logic/util/event/EventStrings.h")
#include "org/allbinary/logic/util/event/EventStrings.h"
#endif


static PressGameKeyEventHandler* PressGameKeyEventHandler_instance;

void PressGameKeyEventHandler_staticInit(void) {
    static bool initialized = false;
    if (initialized) {
        return;
    }
    initialized = true;
    PressGameKeyEventHandler_instance = ((PressGameKeyEventHandler*) [((PressGameKeyEventHandler*) [PressGameKeyEventHandler alloc]) init]);
}

@implementation PressGameKeyEventHandler

- (void) initFields {
    self->list = ((BasicArrayListD*) [((BasicArrayListD*) [BasicArrayListD alloc]) init]);
}


+ (PressGameKeyEventHandler*) getInstance {
        return (PressGameKeyEventHandler_staticInit(), PressGameKeyEventHandler_instance);
}


- (instancetype) init {
    self = [super init];
    [self initFields];
    return self;
}


- (void) addListener:(PlayerGameInput*)playerGameInput {
        if (![self->list contains:playerGameInput]) {
            [self->list add:playerGameInput];
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
                PlayerGameInput* playerGameInput = ((PlayerGameInput*) self->list->objectArray[index]);
                [playerGameInput onPressGameKeyEvent:((GameKeyEvent*) eventObject)];
            } JAVA_CATCH(Exception, e) {
                [self->logUtil put:self->commonStrings->EXCEPTION :self :[EventStrings getInstance]->FIRE_EVENT :e];
            } JAVA_END_TRY;
        }
        [super fireEvent:eventObject];
}


// throws Exception
- (void) process:(AllBinaryEventObject*)eventObject :(EventListenerInterface*)eventListenerInterface {
        PressGameKeyEventListenerInterface* pressGameKeyEventListenerInterface = (((PressGameKeyEventListenerInterface*) eventListenerInterface));
        [((id<PressGameKeyEventListenerInterface>) pressGameKeyEventListenerInterface) onPressGameKeyEvent:((GameKeyEvent*) eventObject)];
}

@end

