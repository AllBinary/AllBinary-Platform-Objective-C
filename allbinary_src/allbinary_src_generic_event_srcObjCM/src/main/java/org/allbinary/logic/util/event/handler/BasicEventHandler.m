// Generated Code Do Not Modify
#include "org/allbinary/logic/util/event/handler/BasicEventHandler.h"
#include "org/allbinary/logic/communication/log/LogUtil.h"
#include "org/allbinary/logic/string/StringMaker.h"
#include "org/allbinary/logic/string/StringUtil.h"
#include "org/allbinary/logic/util/event/AllBinaryEventObject.h"
#include "org/allbinary/logic/util/event/EventListenerInterface.h"
#include "org/allbinary/logic/util/event/EventStrings.h"
#include "org/allbinary/string/CommonStrings.h"
#include "org/allbinary/util/BasicArrayList.h"
#include "org/allbinary/util/BasicArrayListD.h"
#include "org/allbinary/logic/util/event/handler/BasicEventHandlerInterface.h"
#if __has_include("org/allbinary/logic/string/StringUtil.h")
#include "org/allbinary/logic/string/StringUtil.h"
#endif
#if __has_include("org/allbinary/logic/util/event/EventStrings.h")
#include "org/allbinary/logic/util/event/EventStrings.h"
#endif


const char* BasicEventHandler_PERFORMANCE_MESSAGE = "Use Custom onEvent Methods for needed optimization";

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
    
}


- (instancetype) init {
    self = [super init];
    [self initFields];
        self->eventListenerInterfaceList = ((BasicArrayListD*) [((BasicArrayListD*) [BasicArrayListD alloc]) init]);
    return self;
}


- (const char*) toString {
        StringMaker* stringBuffer = ((StringMaker*) [((StringMaker*) [StringMaker alloc]) init]);
        const char* LISTENER = " Listener: ";
        [stringBuffer append:"Total Listeners: "];
        [stringBuffer appendint:[self->eventListenerInterfaceList size]];
        EventListenerInterface* eventListenerInterface = nullptr;
        int32_t index = 0;
        while (index < [self->eventListenerInterfaceList size]) {
            JAVA_TRY {
                eventListenerInterface = ((EventListenerInterface*) self->eventListenerInterfaceList->objectArray[index]);
                [stringBuffer append:LISTENER];
                [stringBuffer append:[[StringUtil getInstance] toString:eventListenerInterface]];
            } JAVA_CATCH(Exception, e) {
                CommonStrings* commonStrings = [CommonStrings getInstance];
                [self->logUtil put:commonStrings->EXCEPTION :self :commonStrings->TOSTRING :e];
            } JAVA_END_TRY;
            index++;
        }
        return [stringBuffer toString];
}


// synchronized
- (void) removeAllListeners {
        self->eventListenerInterfaceList = ((BasicArrayListD*) [((BasicArrayListD*) [BasicArrayListD alloc]) init]);
}


- (void) addListenerSingleThreaded:(EventListenerInterface*)eventListenerInterface {
        if (![self->eventListenerInterfaceList contains:eventListenerInterface]) {
            [self->eventListenerInterfaceList add:eventListenerInterface];
        }
}


// synchronized
- (void) addListenerInterface:(EventListenerInterface*)eventListenerInterface {
        if (![self->eventListenerInterfaceList contains:eventListenerInterface]) {
            [self->eventListenerInterfaceList add:eventListenerInterface];
        }
}


- (void) removeListenerSingleThreaded:(EventListenerInterface*)eventListenerInterface {
        [self->eventListenerInterfaceList remove:eventListenerInterface];
}


// synchronized
- (void) removeListener:(EventListenerInterface*)eventListenerInterface {
        [self->eventListenerInterfaceList remove:eventListenerInterface];
}


// throws Exception
// synchronized
- (void) fireEvent:(AllBinaryEventObject*)eventObject {
        int32_t index = 0;
        EventListenerInterface* eventListenerInterface = nullptr;
        while (index < [self->eventListenerInterfaceList size]) {
            JAVA_TRY {
                eventListenerInterface = ((EventListenerInterface*) self->eventListenerInterfaceList->objectArray[index]);
                [self process:eventObject :eventListenerInterface];
            } JAVA_CATCH(Exception, e) {
                CommonStrings* commonStrings = [CommonStrings getInstance];
                [self->logUtil put:commonStrings->EXCEPTION :self :[EventStrings getInstance]->FIRE_EVENT :e];
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

@end

