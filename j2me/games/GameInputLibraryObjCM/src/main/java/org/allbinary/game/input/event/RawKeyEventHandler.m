// Generated Code Do Not Modify
#include "org/allbinary/game/input/event/RawKeyEventHandler.h"
#include "org/allbinary/logic/communication/log/LogUtil.h"
#include "org/allbinary/logic/string/StringMaker.h"
#include "org/allbinary/logic/util/event/EventStrings.h"
#include "org/allbinary/string/CommonStrings.h"
#include "org/allbinary/util/BasicArrayList.h"
#include "org/allbinary/util/BasicArrayListD.h"
#include "org/allbinary/game/input/event/RawKeyEventListener.h"
#if __has_include("org/allbinary/logic/util/event/EventStrings.h")
#include "org/allbinary/logic/util/event/EventStrings.h"
#endif


static RawKeyEventHandler* RawKeyEventHandler_instance;
static const char* RawKeyEventHandler_TOTAL_LISTENERS = "Total Listeners: ";
static const char* RawKeyEventHandler_LISTENER_LABEL = " Listener: ";

void RawKeyEventHandler_staticInit(void) {
    static bool initialized = false;
    if (initialized) {
        return;
    }
    initialized = true;
    RawKeyEventHandler_instance = ((RawKeyEventHandler*) [((RawKeyEventHandler*) [RawKeyEventHandler alloc]) init]);
}

@implementation RawKeyEventHandler

- (void) initFields {
    self->logUtil = [LogUtil getInstance];
    
}


+ (RawKeyEventHandler*) getInstance {
        return (RawKeyEventHandler_staticInit(), RawKeyEventHandler_instance);
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
        RawKeyEventListener* eventListenerInterface = nullptr;
        int32_t size = [vector size];
        for (int32_t index = 0; index < size; index++) {
            eventListenerInterface = ((RawKeyEventListener*) [vector get:index]);
            [self addListener:eventListenerInterface];
        }
}


- (void) addListenerSingleThreaded:(RawKeyEventListener*)eventListenerInterface {
        if (![self->eventListenerInterfaceList contains:eventListenerInterface]) {
            [self->eventListenerInterfaceList add:eventListenerInterface];
        }
}


- (void) addListener:(RawKeyEventListener*)eventListenerInterface {
        if (![self->eventListenerInterfaceList contains:eventListenerInterface]) {
            [self->eventListenerInterfaceList add:eventListenerInterface];
        }
}


- (void) removeListenerSingleThreaded:(RawKeyEventListener*)eventListenerInterface {
        [self->eventListenerInterfaceList remove:eventListenerInterface];
}


- (void) removeListener:(RawKeyEventListener*)eventListenerInterface {
        [self->eventListenerInterfaceList remove:eventListenerInterface];
}


// throws Exception
- (void) fireEvent:(int32_t)keyCode :(int32_t)deviceId :(bool)repeated {
        RawKeyEventListener* eventListenerInterface = nullptr;
        int32_t index = 0;
        while (index < [self->eventListenerInterfaceList size]) {
            JAVA_TRY {
                eventListenerInterface = ((RawKeyEventListener*) [self->eventListenerInterfaceList get:index]);
                [self process:keyCode :deviceId :repeated :eventListenerInterface];
            } JAVA_CATCH(Exception, e) {
                CommonStrings* commonStrings = [CommonStrings getInstance];
                [self->logUtil put:commonStrings->EXCEPTION :self :[EventStrings getInstance]->FIRE_EVENT :e];
            } JAVA_END_TRY;
            index++;
        }
}


// throws Exception
- (void) process:(int32_t)keyCode :(int32_t)deviceId :(bool)repeated :(RawKeyEventListener*)eventListenerInterface {
        [((id<RawKeyEventListener>) eventListenerInterface) onEventRaw:keyCode :deviceId :repeated];
}


- (BasicArrayList*) getEventListenerInterfaceListP {
        return self->eventListenerInterfaceList;
}


- (const char*) toString {
        StringMaker* stringBuffer = ((StringMaker*) [((StringMaker*) [StringMaker alloc]) init]);
        [stringBuffer append:RawKeyEventHandler_TOTAL_LISTENERS];
        [stringBuffer appendint:[self->eventListenerInterfaceList size]];
        RawKeyEventListener* eventListenerInterface = nullptr;
        int32_t index = 0;
        while (index < [self->eventListenerInterfaceList size]) {
            JAVA_TRY {
                eventListenerInterface = ((RawKeyEventListener*) [self->eventListenerInterfaceList get:index]);
                [stringBuffer append:RawKeyEventHandler_LISTENER_LABEL];
                [stringBuffer append:[((id<RawKeyEventListener>) eventListenerInterface) toString]];
            } JAVA_CATCH(Exception, e) {
                CommonStrings* commonStrings = [CommonStrings getInstance];
                [self->logUtil put:commonStrings->EXCEPTION :self :commonStrings->TOSTRING :e];
            } JAVA_END_TRY;
            index++;
        }
        return [stringBuffer toString];
}

@end

