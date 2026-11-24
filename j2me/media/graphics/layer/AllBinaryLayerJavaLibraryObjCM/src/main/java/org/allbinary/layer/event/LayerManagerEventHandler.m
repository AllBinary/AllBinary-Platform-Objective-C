// Generated Code Do Not Modify
#include "org/allbinary/layer/event/LayerManagerEventHandler.h"
#include "org/allbinary/logic/util/event/AllBinaryEventObject.h"
#include "org/allbinary/logic/util/event/EventListenerInterface.h"
#include "org/allbinary/logic/util/event/EventStrings.h"
#include "org/allbinary/util/BasicArrayList.h"
#include "org/allbinary/util/BasicArrayListD.h"
#include "org/allbinary/layer/event/LayerManagerEventListener.h"
#include "org/allbinary/layer/event/LayerManagerEvent.h"
#include "org/allbinary/layer/event/LayerManagerEventListenerInterface.h"
#if __has_include("org/allbinary/logic/util/event/EventStrings.h")
#include "org/allbinary/logic/util/event/EventStrings.h"
#endif
#if __has_include("org/allbinary/logic/util/event/EventStrings.h")
#include "org/allbinary/logic/util/event/EventStrings.h"
#endif
#if __has_include("org/allbinary/logic/util/event/EventStrings.h")
#include "org/allbinary/logic/util/event/EventStrings.h"
#endif


static LayerManagerEventHandler* LayerManagerEventHandler_instance;

void LayerManagerEventHandler_staticInit(void) {
    static bool initialized = false;
    if (initialized) {
        return;
    }
    initialized = true;
    LayerManagerEventHandler_instance = ((LayerManagerEventHandler*) [((LayerManagerEventHandler*) [LayerManagerEventHandler alloc]) init]);
}

@implementation LayerManagerEventHandler

- (void) initFields {
    self->list = ((BasicArrayListD*) [((BasicArrayListD*) [BasicArrayListD alloc]) init]);
    self->CREATE = "Create";
    self->DELETE = "Delete";
}


+ (LayerManagerEventHandler*) getInstance {
        return (LayerManagerEventHandler_staticInit(), LayerManagerEventHandler_instance);
}


- (instancetype) init {
    self = [super init];
    [self initFields];
    return self;
}


- (void) addListener:(LayerManagerEventListener*)layerManagerEventListener {
        if (![self->list contains:layerManagerEventListener]) {
            [self->list add:layerManagerEventListener];
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
                LayerManagerEventListener* layerManagerEventListener = ((LayerManagerEventListener*) self->list->objectArray[index]);
                [layerManagerEventListener onCreateLayerManagerEvent:((LayerManagerEvent*) eventObject)];
            } JAVA_CATCH(Exception, e) {
                [self->logUtil put:self->commonStrings->EXCEPTION :self :[EventStrings getInstance]->FIRE_EVENT :e];
            } JAVA_END_TRY;
        }
        [super fireEvent:eventObject];
}


// throws Exception
// synchronized
- (void) fireDeleteEvent:(AllBinaryEventObject*)eventObject {
        for (int32_t index = [self->list size]; --index >= 0; ) {
            JAVA_TRY {
                LayerManagerEventListener* layerManagerEventListener = ((LayerManagerEventListener*) self->list->objectArray[index]);
                [layerManagerEventListener onDeleteLayerManagerEvent:((LayerManagerEvent*) eventObject)];
            } JAVA_CATCH(Exception, e) {
                [self->logUtil put:self->commonStrings->EXCEPTION :self :[EventStrings getInstance]->FIRE_EVENT :e];
            } JAVA_END_TRY;
        }
        BasicArrayList* eventListenerInterfaceList = self->eventListenerInterfaceList;
        EventListenerInterface* eventListenerInterface = nullptr;
        LayerManagerEventListenerInterface* layerManagerEventListenerInterface = nullptr;
        int32_t listenerIndex = 0;
        while (listenerIndex < [eventListenerInterfaceList size]) {
            JAVA_TRY {
                eventListenerInterface = ((EventListenerInterface*) eventListenerInterfaceList->objectArray[listenerIndex]);
                layerManagerEventListenerInterface = (((LayerManagerEventListenerInterface*) eventListenerInterface));
                [((id<LayerManagerEventListenerInterface>) layerManagerEventListenerInterface) onDeleteLayerManagerEvent:((LayerManagerEvent*) eventObject)];
            } JAVA_CATCH(Exception, e) {
                [self->logUtil put:self->commonStrings->EXCEPTION :self :[EventStrings getInstance]->FIRE_EVENT :e];
            } JAVA_END_TRY;
            listenerIndex++;
        }
}


// throws Exception
- (void) process:(AllBinaryEventObject*)eventObject :(EventListenerInterface*)eventListenerInterface {
        LayerManagerEventListenerInterface* layerManagerEventListenerInterface = (((LayerManagerEventListenerInterface*) eventListenerInterface));
        [((id<LayerManagerEventListenerInterface>) layerManagerEventListenerInterface) onCreateLayerManagerEvent:((LayerManagerEvent*) eventObject)];
}

@end

