// Generated Code Do Not Modify
#include "org/allbinary/game/input/event/UpKeyEventHandlerBase.h"
#include "org/allbinary/game/input/PlayerGameInput.h"
#include "org/allbinary/logic/string/StringMaker.h"
#include "org/allbinary/logic/util/event/EventListenerInterface.h"
#include "org/allbinary/logic/util/event/EventStrings.h"
#include "org/allbinary/util/BasicArrayList.h"
#include "org/allbinary/util/BasicArrayListD.h"
#include "org/allbinary/game/input/event/UpKeyEventListenerInterface.h"
#if __has_include("org/allbinary/logic/util/event/EventStrings.h")
#include "org/allbinary/logic/util/event/EventStrings.h"
#endif
#if __has_include("org/allbinary/logic/util/event/EventStrings.h")
#include "org/allbinary/logic/util/event/EventStrings.h"
#endif


static const char* UpKeyEventHandlerBase_TOTAL_LISTENERS = " Total PlayerGameInput Listeners: ";
static const char* UpKeyEventHandlerBase_LISTENER_LABEL = " PlayerGameInput Listener: ";

void UpKeyEventHandlerBase_staticInit(void) {
    static bool initialized = false;
    if (initialized) {
        return;
    }
    initialized = true;
}

@implementation UpKeyEventHandlerBase

- (void) initFields {
    self->list = ((BasicArrayListD*) [((BasicArrayListD*) [BasicArrayListD alloc]) init]);
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
- (void) fireEventForInteger:(int32_t)eventObject {
        for (int32_t index = [self->list size]; --index >= 0; ) {
            JAVA_TRY {
                PlayerGameInput* playerGameInput = ((PlayerGameInput*) self->list->objectArray[index]);
                [playerGameInput onUpKeyEvent:eventObject];
            } JAVA_CATCH(Exception, e) {
                [self->logUtil put:self->commonStrings->EXCEPTION :self :[EventStrings getInstance]->FIRE_EVENT :e];
            } JAVA_END_TRY;
        }
        int32_t index = 0;
        EventListenerInterface* eventListenerInterface = nullptr;
        while (index < [self->eventListenerInterfaceList size]) {
            JAVA_TRY {
                eventListenerInterface = ((EventListenerInterface*) [self->eventListenerInterfaceList get:index]);
                [self processForInteger:eventObject :eventListenerInterface];
            } JAVA_CATCH(Exception, e) {
                [self->logUtil put:self->commonStrings->EXCEPTION :self :[EventStrings getInstance]->FIRE_EVENT :e];
            } JAVA_END_TRY;
            index++;
        }
}


// throws Exception
- (void) processForInteger:(int32_t)eventObject :(EventListenerInterface*)eventListenerInterface {
        UpKeyEventListenerInterface* upKeyEventListenerInterface = ((UpKeyEventListenerInterface*) eventListenerInterface);
        [((id<UpKeyEventListenerInterface>) upKeyEventListenerInterface) onUpKeyEvent:eventObject];
}


- (const char*) toString {
        StringMaker* stringBuffer = ((StringMaker*) [((StringMaker*) [StringMaker alloc]) init]);
        [stringBuffer append:[super toString]];
        [stringBuffer append:UpKeyEventHandlerBase_TOTAL_LISTENERS];
        [stringBuffer appendint:[self->list size]];
        for (int32_t index = 0; index < [self->list size]; index++) {
            JAVA_TRY {
                EventListenerInterface* eventListenerInterface = ((EventListenerInterface*) [self->list get:index]);
                [stringBuffer append:UpKeyEventHandlerBase_LISTENER_LABEL];
                [stringBuffer append:[((id<EventListenerInterface>) eventListenerInterface) toString]];
            } JAVA_CATCH(Exception, e) {
                [self->logUtil put:self->commonStrings->EXCEPTION :self :self->commonStrings->TOSTRING :e];
            } JAVA_END_TRY;
        }
        return [stringBuffer toString];
}

@end

