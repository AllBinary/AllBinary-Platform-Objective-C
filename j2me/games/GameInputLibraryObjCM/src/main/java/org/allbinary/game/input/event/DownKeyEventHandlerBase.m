// Generated Code Do Not Modify
#include "org/allbinary/game/input/event/DownKeyEventHandlerBase.h"
#include "org/allbinary/game/input/PlayerGameInput.h"
#include "org/allbinary/logic/string/StringMaker.h"
#include "org/allbinary/logic/util/event/EventListenerInterface.h"
#include "org/allbinary/logic/util/event/EventStrings.h"
#include "org/allbinary/util/BasicArrayList.h"
#include "org/allbinary/util/BasicArrayListD.h"
#include "org/allbinary/game/input/event/GameKeyEvent.h"
#include "org/allbinary/game/input/event/DownKeyEventListenerInterface.h"
#if __has_include("org/allbinary/logic/util/event/EventStrings.h")
#include "org/allbinary/logic/util/event/EventStrings.h"
#endif
#if __has_include("org/allbinary/logic/util/event/EventStrings.h")
#include "org/allbinary/logic/util/event/EventStrings.h"
#endif
#if __has_include("org/allbinary/logic/util/event/EventStrings.h")
#include "org/allbinary/logic/util/event/EventStrings.h"
#endif
#if __has_include("org/allbinary/logic/util/event/EventStrings.h")
#include "org/allbinary/logic/util/event/EventStrings.h"
#endif


static const char* DownKeyEventHandlerBase_TOTAL_LISTENERS = " Total PlayerGameInput Listeners: ";
static const char* DownKeyEventHandlerBase_LISTENER_LABEL = " PlayerGameInput Listener: ";

void DownKeyEventHandlerBase_staticInit(void) {
    static bool initialized = false;
    if (initialized) {
        return;
    }
    initialized = true;
}

@implementation DownKeyEventHandlerBase

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
- (void) fireEventI:(int32_t)eventObject {
        for (int32_t index = [self->list size]; --index >= 0; ) {
            JAVA_TRY {
                PlayerGameInput* playerGameInput = ((PlayerGameInput*) self->list->objectArray[index]);
                [playerGameInput onDownKey:eventObject];
            } JAVA_CATCH(Exception, e) {
                [self->logUtil put:self->commonStrings->EXCEPTION :self :[EventStrings getInstance]->FIRE_EVENT :e];
            } JAVA_END_TRY;
        }
        int32_t index = 0;
        EventListenerInterface* eventListenerInterface = nullptr;
        while (index < [self->eventListenerInterfaceList size]) {
            JAVA_TRY {
                eventListenerInterface = ((EventListenerInterface*) [self->eventListenerInterfaceList get:index]);
                [self processI:eventObject :eventListenerInterface];
            } JAVA_CATCH(Exception, e) {
                [self->logUtil put:self->commonStrings->EXCEPTION :self :[EventStrings getInstance]->FIRE_EVENT :e];
            } JAVA_END_TRY;
            index++;
        }
}


// throws Exception
- (void) fireEventForGameKeyEvent:(GameKeyEvent*)eventObject {
        int32_t size = [self->list size];
        for (int32_t index = size; --index >= 0; ) {
            JAVA_TRY {
                PlayerGameInput* playerGameInput = ((PlayerGameInput*) self->list->objectArray[index]);
                [playerGameInput onDownKeyEvent:eventObject];
            } JAVA_CATCH(Exception, e) {
                [self->logUtil put:self->commonStrings->EXCEPTION :self :[EventStrings getInstance]->FIRE_EVENT :e];
            } JAVA_END_TRY;
        }
        int32_t index = 0;
        EventListenerInterface* eventListenerInterface = nullptr;
        while (index < [self->eventListenerInterfaceList size]) {
            JAVA_TRY {
                eventListenerInterface = ((EventListenerInterface*) [self->eventListenerInterfaceList get:index]);
                [self processEvent:eventObject :eventListenerInterface];
            } JAVA_CATCH(Exception, e) {
                [self->logUtil put:self->commonStrings->EXCEPTION :self :[EventStrings getInstance]->FIRE_EVENT :e];
            } JAVA_END_TRY;
            index++;
        }
}


// throws Exception
- (void) processI:(int32_t)eventObject :(EventListenerInterface*)eventListenerInterface {
        DownKeyEventListenerInterface* downKeyEventListenerInterface = ((DownKeyEventListenerInterface*) eventListenerInterface);
        [((id<DownKeyEventListenerInterface>) downKeyEventListenerInterface) onDownKey:eventObject];
}


// throws Exception
- (void) processEvent:(GameKeyEvent*)eventObject :(EventListenerInterface*)eventListenerInterface {
        DownKeyEventListenerInterface* downKeyEventListenerInterface = ((DownKeyEventListenerInterface*) eventListenerInterface);
        [((id<DownKeyEventListenerInterface>) downKeyEventListenerInterface) onDownKeyEvent:eventObject];
}


- (const char*) toString {
        StringMaker* stringBuffer = ((StringMaker*) [((StringMaker*) [StringMaker alloc]) init]);
        [stringBuffer append:[super toString]];
        [stringBuffer append:DownKeyEventHandlerBase_TOTAL_LISTENERS];
        [stringBuffer appendint:[self->list size]];
        EventListenerInterface* eventListenerInterface = nullptr;
        for (int32_t index = 0; index < [self->list size]; index++) {
            JAVA_TRY {
                eventListenerInterface = ((EventListenerInterface*) [self->list get:index]);
                [stringBuffer append:DownKeyEventHandlerBase_LISTENER_LABEL];
                [stringBuffer append:[((id<EventListenerInterface>) eventListenerInterface) toString]];
            } JAVA_CATCH(Exception, e) {
                [self->logUtil put:self->commonStrings->EXCEPTION :self :self->commonStrings->TOSTRING :e];
            } JAVA_END_TRY;
        }
        return [stringBuffer toString];
}

@end

