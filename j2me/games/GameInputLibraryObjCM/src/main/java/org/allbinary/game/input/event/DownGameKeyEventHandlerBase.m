// Generated Code Do Not Modify
#include "org/allbinary/game/input/event/DownGameKeyEventHandlerBase.h"
#include "org/allbinary/game/input/PlayerGameInput.h"
#include "org/allbinary/logic/string/StringMaker.h"
#include "org/allbinary/logic/util/event/AllBinaryEventObject.h"
#include "org/allbinary/logic/util/event/EventListenerInterface.h"
#include "org/allbinary/logic/util/event/EventStrings.h"
#include "org/allbinary/util/BasicArrayList.h"
#include "org/allbinary/util/BasicArrayListD.h"
#include "org/allbinary/game/input/event/GameKeyEvent.h"
#include "org/allbinary/game/input/event/DownGameKeyEventListenerInterface.h"
#if __has_include("org/allbinary/logic/util/event/EventStrings.h")
#include "org/allbinary/logic/util/event/EventStrings.h"
#endif


static const char* DownGameKeyEventHandlerBase_TOTAL_LISTENERS = " Total PlayerGameInput Listeners: ";
static const char* DownGameKeyEventHandlerBase_LISTENER_LABEL = " PlayerGameInput Listener: ";

void DownGameKeyEventHandlerBase_staticInit(void) {
    static bool initialized = false;
    if (initialized) {
        return;
    }
    initialized = true;
}

@implementation DownGameKeyEventHandlerBase

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
- (void) fireEvent:(AllBinaryEventObject*)eventObject {
        for (int32_t index = [self->list size]; --index >= 0; ) {
            JAVA_TRY {
                PlayerGameInput* playerGameInput = ((PlayerGameInput*) self->list->objectArray[index]);
                [playerGameInput onDownGameKeyEvent:((GameKeyEvent*) eventObject)];
            } JAVA_CATCH(Exception, e) {
                [self->logUtil put:self->commonStrings->EXCEPTION :self :[EventStrings getInstance]->FIRE_EVENT :e];
            } JAVA_END_TRY;
        }
        [super fireEvent:eventObject];
}


// throws Exception
- (void) process:(AllBinaryEventObject*)eventObject :(EventListenerInterface*)eventListenerInterface {
        DownGameKeyEventListenerInterface* downGameKeyEventListenerInterface = ((DownGameKeyEventListenerInterface*) eventListenerInterface);
        [((id<DownGameKeyEventListenerInterface>) downGameKeyEventListenerInterface) onDownGameKeyEvent:((GameKeyEvent*) eventObject)];
}


- (const char*) toString {
        StringMaker* stringBuffer = ((StringMaker*) [((StringMaker*) [StringMaker alloc]) init]);
        [stringBuffer append:[super toString]];
        [stringBuffer append:DownGameKeyEventHandlerBase_TOTAL_LISTENERS];
        [stringBuffer appendint:[self->list size]];
        EventListenerInterface* eventListenerInterface = nullptr;
        int32_t size = [self->list size];
        int32_t index = 0;
        while (index < size) {
            JAVA_TRY {
                eventListenerInterface = ((EventListenerInterface*) [self->list get:index]);
                [stringBuffer append:DownGameKeyEventHandlerBase_LISTENER_LABEL];
                [stringBuffer append:[((id<EventListenerInterface>) eventListenerInterface) toString]];
            } JAVA_CATCH(Exception, e) {
                [self->logUtil put:self->commonStrings->EXCEPTION :self :self->commonStrings->TOSTRING :e];
            } JAVA_END_TRY;
            index++;
        }
        return [stringBuffer toString];
}

@end

