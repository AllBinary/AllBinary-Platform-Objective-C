// Generated Code Do Not Modify
#include "org/allbinary/android/input/motion/event/AnalogControllerConfigurationEventHandler.h"
#include "org/allbinary/logic/util/event/AllBinaryEventObject.h"
#include "org/allbinary/logic/util/event/EventListenerInterface.h"
#include "org/allbinary/logic/util/event/EventStrings.h"
#include "org/allbinary/util/BasicArrayList.h"
#include "org/allbinary/util/BasicArrayListD.h"
#include "org/allbinary/android/input/motion/event/AnalogControllerConfigurationEventListenerInterface.h"
#include "org/allbinary/android/input/motion/event/AnalogControllerConfigurationEvent.h"
#if __has_include("org/allbinary/logic/util/event/EventStrings.h")
#include "org/allbinary/logic/util/event/EventStrings.h"
#endif


static AnalogControllerConfigurationEventHandler* AnalogControllerConfigurationEventHandler_instance;

void AnalogControllerConfigurationEventHandler_staticInit(void) {
    static bool initialized = false;
    if (initialized) {
        return;
    }
    initialized = true;
    AnalogControllerConfigurationEventHandler_instance = ((AnalogControllerConfigurationEventHandler*) [((AnalogControllerConfigurationEventHandler*) [AnalogControllerConfigurationEventHandler alloc]) init]);
}

@implementation AnalogControllerConfigurationEventHandler

- (void) initFields {
    self->list = ((BasicArrayListD*) [((BasicArrayListD*) [BasicArrayListD alloc]) init]);
}


+ (AnalogControllerConfigurationEventHandler*) getInstance {
        return (AnalogControllerConfigurationEventHandler_staticInit(), AnalogControllerConfigurationEventHandler_instance);
}


- (instancetype) init {
    self = [super init];
    [self initFields];
    return self;
}


- (void) addListener:(AnalogControllerConfigurationEventListenerInterface*)analogControllerConfigurationEventListenerInterface {
        if (![self->list contains:analogControllerConfigurationEventListenerInterface]) {
            [self->list add:analogControllerConfigurationEventListenerInterface];
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
                AnalogControllerConfigurationEventListenerInterface* playerGameInput = ((AnalogControllerConfigurationEventListenerInterface*) self->list->objectArray[index]);
                [((id<AnalogControllerConfigurationEventListenerInterface>) playerGameInput) onAnalogControllerConfigurationEvent:((AnalogControllerConfigurationEvent*) eventObject)];
            } JAVA_CATCH(Exception, e) {
                [self->logUtil put:self->commonStrings->EXCEPTION :self :[EventStrings getInstance]->FIRE_EVENT :e];
            } JAVA_END_TRY;
        }
        [super fireEvent:eventObject];
}


// throws Exception
- (void) process:(AllBinaryEventObject*)eventObject :(EventListenerInterface*)eventListenerInterface {
        AnalogControllerConfigurationEventListenerInterface* analogControllerConfigurationEventListenerInterface = (((AnalogControllerConfigurationEventListenerInterface*) eventListenerInterface));
        [((id<AnalogControllerConfigurationEventListenerInterface>) analogControllerConfigurationEventListenerInterface) onAnalogControllerConfigurationEvent:((AnalogControllerConfigurationEvent*) eventObject)];
}

@end

