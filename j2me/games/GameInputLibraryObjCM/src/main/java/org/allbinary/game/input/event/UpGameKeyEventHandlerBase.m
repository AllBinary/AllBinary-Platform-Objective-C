// Generated Code Do Not Modify
#include "org/allbinary/game/input/event/UpGameKeyEventHandlerBase.h"
#include "org/allbinary/game/input/PlayerGameInput.h"
#include "org/allbinary/logic/string/StringMaker.h"
#include "org/allbinary/logic/util/event/AllBinaryEventObject.h"
#include "org/allbinary/logic/util/event/EventListenerInterface.h"
#include "org/allbinary/logic/util/event/EventStrings.h"
#include "org/allbinary/util/BasicArrayList.h"
#include "org/allbinary/util/BasicArrayListD.h"
#include "org/allbinary/game/input/event/GameKeyEvent.h"
#include "org/allbinary/game/input/event/UpGameKeyEventListenerInterface.h"


static const char* UpGameKeyEventHandlerBase_TOTAL_LISTENERS = " Total PlayerGameInput Listeners: ";
static const char* UpGameKeyEventHandlerBase_LISTENER_LABEL = " PlayerGameInput Listener: ";

void UpGameKeyEventHandlerBase_staticInit(void) {
    static bool initialized = false;
    if (initialized) {
        return;
    }
    initialized = true;
}

@implementation UpGameKeyEventHandlerBase

- (void) initFields {
    self->list = [((BasicArrayListD*) [BasicArrayListD alloc]) init];
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


- (void) removeListenerSingleThreaded:(EventListenerInterface*)eventListenerInterface {
        [self->list remove:eventListenerInterface];
        [super removeListenerSingleThreaded:eventListenerInterface];
}


// synchronized
- (void) removeListener:(EventListenerInterface*)eventListenerInterface {
        [self->list remove:eventListenerInterface];
        [super removeListener:eventListenerInterface];
}


// throws Exception
- (void) fireEvent:(AllBinaryEventObject*)eventObject {
        for (int32_t index = [self->list size]; --index >= 0; ) {
            JAVA_TRY {
                PlayerGameInput* playerGameInput = ((PlayerGameInput*) self->list->objectArray[index]);
                [playerGameInput onUpGameKeyEvent:((GameKeyEvent*) eventObject)];
            } JAVA_CATCH(Exception, e) {
                [self->logUtil put:self->commonStrings->EXCEPTION :self :[EventStrings getInstance]->FIRE_EVENT :e];
            } JAVA_END_TRY;
        }
        [super fireEvent:eventObject];
}


// throws Exception
- (void) process:(AllBinaryEventObject*)eventObject :(EventListenerInterface*)eventListenerInterface {
        UpGameKeyEventListenerInterface* upGameKeyEventListenerInterface = ((UpGameKeyEventListenerInterface*) eventListenerInterface);
        [upGameKeyEventListenerInterface onUpGameKeyEvent:((GameKeyEvent*) eventObject)];
}


- (const char*) toString {
        StringMaker* stringBuffer = [((StringMaker*) [StringMaker alloc]) init];
        int32_t size = [self->list size];
        [stringBuffer append:[super toString]];
        [stringBuffer append:UpGameKeyEventHandlerBase_TOTAL_LISTENERS];
        [stringBuffer appendint:size];
        for (int32_t index = 0; index < size; index++) {
            JAVA_TRY {
                EventListenerInterface* eventListenerInterface = ((EventListenerInterface*) [self->list get:index]);
                [stringBuffer append:UpGameKeyEventHandlerBase_LISTENER_LABEL];
                [stringBuffer append:[eventListenerInterface toString]];
            } JAVA_CATCH(Exception, e) {
                [self->logUtil put:self->commonStrings->EXCEPTION :self :self->commonStrings->TOSTRING :e];
            } JAVA_END_TRY;
        }
        return [stringBuffer toString];
}

@end

