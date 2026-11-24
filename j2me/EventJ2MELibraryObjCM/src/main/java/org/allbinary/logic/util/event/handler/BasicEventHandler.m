// Generated Code Do Not Modify
#include "org/allbinary/logic/util/event/handler/BasicEventHandler.h"
#include "org/allbinary/logic/communication/log/LogUtil.h"
#include "org/allbinary/logic/string/StringMaker.h"
#include "org/allbinary/logic/util/event/AllBinaryEventObject.h"
#include "org/allbinary/logic/util/event/EventListenerInterface.h"
#include "org/allbinary/logic/util/event/EventStrings.h"
#include "org/allbinary/string/CommonStrings.h"
#include "org/allbinary/util/BasicArrayList.h"
#include "org/allbinary/util/BasicArrayListD.h"
#include "org/allbinary/logic/util/event/handler/BasicEventHandlerInterface.h"



void BasicEventHandler_staticInit(void) {
    static bool initialized = false;
    if (initialized) {
        return;
    }
    initialized = true;
}

@implementation BasicEventHandler

- (void) initFields {
    self->logUtil = [LogUtil getInstance];
    self->commonStrings = [CommonStrings getInstance];
    self->eventStrings = [EventStrings getInstance];
    
}


- (instancetype) init {
    self = [super init];
    [self initFields];
        self->eventListenerInterfaceList = ((BasicArrayListD*) [((BasicArrayListD*) [BasicArrayListD alloc]) init]);
    return self;
}


- (void) removeAllListeners {
        self->eventListenerInterfaceList = ((BasicArrayListD*) [((BasicArrayListD*) [BasicArrayListD alloc]) init]);
}


- (void) addListeners:(BasicArrayList*)vector {
        EventListenerInterface* eventListenerInterface = nullptr;
        int32_t size = [vector size];
        for (int32_t index = 0; index < size; index++) {
            eventListenerInterface = ((EventListenerInterface*) [vector get:index]);
            [self addListenerInterface:eventListenerInterface];
        }
}


- (void) removeListeners:(BasicArrayList*)vector {
        EventListenerInterface* eventListenerInterface = nullptr;
        int32_t size = [vector size];
        for (int32_t index = 0; index < size; index++) {
            eventListenerInterface = ((EventListenerInterface*) [vector get:index]);
            [self removeListener:eventListenerInterface];
        }
}


- (void) addListenerSingleThreaded:(EventListenerInterface*)eventListenerInterface {
        if (![self->eventListenerInterfaceList contains:eventListenerInterface]) {
            [self->eventListenerInterfaceList add:eventListenerInterface];
        }
}


- (void) addListenerInterface:(EventListenerInterface*)eventListenerInterface {
        if (![self->eventListenerInterfaceList contains:eventListenerInterface]) {
            [self->eventListenerInterfaceList add:eventListenerInterface];
        }
}


- (void) removeListenerSingleThreaded:(EventListenerInterface*)eventListenerInterface {
        [self->eventListenerInterfaceList remove:eventListenerInterface];
}


- (void) removeListener:(EventListenerInterface*)eventListenerInterface {
        [self->eventListenerInterfaceList remove:eventListenerInterface];
}


// throws Exception
- (void) fireEvent:(AllBinaryEventObject*)eventObject {
        EventListenerInterface* eventListenerInterface = nullptr;
        int32_t index = 0;
        while (index < [self->eventListenerInterfaceList size]) {
            JAVA_TRY {
                eventListenerInterface = ((EventListenerInterface*) [self->eventListenerInterfaceList get:index]);
                [self process:eventObject :eventListenerInterface];
            } JAVA_CATCH(Exception, e) {
                [self->logUtil put:self->commonStrings->EXCEPTION :self :self->eventStrings->FIRE_EVENT :e];
            } JAVA_END_TRY;
            index++;
        }
}


// throws Exception
- (void) process:(AllBinaryEventObject*)eventObject :(EventListenerInterface*)eventListenerInterface {
        [((id<EventListenerInterface>) eventListenerInterface) onEvent:eventObject];
}


- (BasicArrayList*) getEventListenerInterfaceListP {
        return self->eventListenerInterfaceList;
}


- (const char*) toString {
        StringMaker* stringBuffer = ((StringMaker*) [((StringMaker*) [StringMaker alloc]) init]);
        [stringBuffer append:self->eventStrings->TOTAL_LISTENERS];
        [stringBuffer appendint:[self->eventListenerInterfaceList size]];
        EventListenerInterface* eventListenerInterface = nullptr;
        int32_t index = 0;
        while (index < [self->eventListenerInterfaceList size]) {
            JAVA_TRY {
                eventListenerInterface = ((EventListenerInterface*) [self->eventListenerInterfaceList get:index]);
                [stringBuffer append:self->eventStrings->LISTENER_LABEL];
                [stringBuffer append:[((id<EventListenerInterface>) eventListenerInterface) toString]];
            } JAVA_CATCH(Exception, e) {
                [self->logUtil put:self->commonStrings->EXCEPTION :self :self->commonStrings->TOSTRING :e];
            } JAVA_END_TRY;
            index++;
        }
        return [stringBuffer toString];
}

@end

