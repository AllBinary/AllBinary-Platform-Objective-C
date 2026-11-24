// Generated Code Do Not Modify
#include "org/allbinary/game/combat/destroy/event/DestroyedEventHandler.h"
#include "org/allbinary/game/layer/special/CollidableDestroyableDamageableLayer.h"
#include "org/allbinary/logic/util/event/AllBinaryEventObject.h"
#include "org/allbinary/logic/util/event/EventListenerInterface.h"
#include "org/allbinary/logic/util/event/EventStrings.h"
#include "org/allbinary/util/BasicArrayList.h"
#include "org/allbinary/util/BasicArrayListD.h"
#include "org/allbinary/game/combat/destroy/event/DestroyedEvent.h"
#include "org/allbinary/game/combat/destroy/event/DestroyedEventListenerInterface.h"
#if __has_include("org/allbinary/logic/util/event/EventStrings.h")
#include "org/allbinary/logic/util/event/EventStrings.h"
#endif


static DestroyedEventHandler* DestroyedEventHandler_instance;

void DestroyedEventHandler_staticInit(void) {
    static bool initialized = false;
    if (initialized) {
        return;
    }
    initialized = true;
    DestroyedEventHandler_instance = ((DestroyedEventHandler*) [((DestroyedEventHandler*) [DestroyedEventHandler alloc]) init]);
}

@implementation DestroyedEventHandler

- (void) initFields {
    self->list = ((BasicArrayListD*) [((BasicArrayListD*) [BasicArrayListD alloc]) init]);
}


// synchronized
+ (DestroyedEventHandler*) getInstance {
        return (DestroyedEventHandler_staticInit(), DestroyedEventHandler_instance);
}


- (instancetype) init {
    self = [super init];
    [self initFields];
    return self;
}


- (void) addListener:(CollidableDestroyableDamageableLayer*)collidableDestroyableDamageableLayer {
        if (![self->list contains:collidableDestroyableDamageableLayer]) {
            [self->list add:collidableDestroyableDamageableLayer];
        }
}


// synchronized
- (void) removeAllListeners {
        [self->list clear];
        [super removeAllListeners];
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
                CollidableDestroyableDamageableLayer* collidableDestroyableDamageableLayer = ((CollidableDestroyableDamageableLayer*) self->list->objectArray[index]);
                [collidableDestroyableDamageableLayer onDestroyed:((DestroyedEvent*) eventObject)];
            } JAVA_CATCH(Exception, e) {
                [self->logUtil put:self->commonStrings->EXCEPTION :self :[EventStrings getInstance]->FIRE_EVENT :e];
            } JAVA_END_TRY;
        }
        [super fireEvent:eventObject];
}


// throws Exception
- (void) process:(AllBinaryEventObject*)eventObject :(EventListenerInterface*)eventListenerInterface {
        DestroyedEventListenerInterface* destroyedEventListenerInterface = ((DestroyedEventListenerInterface*) eventListenerInterface);
        [((id<DestroyedEventListenerInterface>) destroyedEventListenerInterface) onDestroyed:((DestroyedEvent*) eventObject)];
}

@end

