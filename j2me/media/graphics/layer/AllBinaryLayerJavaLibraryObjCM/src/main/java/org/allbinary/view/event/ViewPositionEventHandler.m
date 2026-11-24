// Generated Code Do Not Modify
#include "org/allbinary/view/event/ViewPositionEventHandler.h"
#include "org/allbinary/layer/AllBinaryLayer.h"
#include "org/allbinary/logic/util/event/AllBinaryEventObject.h"
#include "org/allbinary/logic/util/event/EventListenerInterface.h"
#include "org/allbinary/logic/util/event/EventStrings.h"
#include "org/allbinary/util/BasicArrayList.h"
#include "org/allbinary/util/BasicArrayListD.h"
#include "org/allbinary/view/event/ViewPositionEvent.h"
#include "org/allbinary/view/event/ViewPositionEventListenerInterface.h"
#if __has_include("org/allbinary/logic/util/event/EventStrings.h")
#include "org/allbinary/logic/util/event/EventStrings.h"
#endif


static ViewPositionEventHandler* ViewPositionEventHandler_SINGLETON;

void ViewPositionEventHandler_staticInit(void) {
    static bool initialized = false;
    if (initialized) {
        return;
    }
    initialized = true;
    ViewPositionEventHandler_SINGLETON = ((ViewPositionEventHandler*) [((ViewPositionEventHandler*) [ViewPositionEventHandler alloc]) init]);
}

@implementation ViewPositionEventHandler

- (void) initFields {
    self->list = ((BasicArrayListD*) [((BasicArrayListD*) [BasicArrayListD alloc]) init]);
}


+ (ViewPositionEventHandler*) getInstance {
        return (ViewPositionEventHandler_staticInit(), ViewPositionEventHandler_SINGLETON);
}


- (instancetype) init {
    self = [super init];
    [self initFields];
    return self;
}


- (void) addListener:(AllBinaryLayer*)layerInterface {
        if (![self->list contains:layerInterface]) {
            [self->list add:layerInterface];
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
                AllBinaryLayer* layerInterface = ((AllBinaryLayer*) self->list->objectArray[index]);
                [layerInterface onChangeEvent:((ViewPositionEvent*) eventObject)];
            } JAVA_CATCH(Exception, e) {
                [self->logUtil put:self->commonStrings->EXCEPTION :self :[EventStrings getInstance]->FIRE_EVENT :e];
            } JAVA_END_TRY;
        }
        [super fireEvent:eventObject];
}


// throws Exception
- (void) process:(AllBinaryEventObject*)eventObject :(EventListenerInterface*)eventListenerInterface {
        ViewPositionEventListenerInterface* viewPositionEventListenerInterface = (((ViewPositionEventListenerInterface*) eventListenerInterface));
        [((id<ViewPositionEventListenerInterface>) viewPositionEventListenerInterface) onChangeEvent:((ViewPositionEvent*) eventObject)];
}

@end

