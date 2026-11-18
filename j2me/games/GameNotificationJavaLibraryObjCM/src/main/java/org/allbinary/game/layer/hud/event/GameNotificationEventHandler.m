// Generated Code Do Not Modify
#include "org/allbinary/game/layer/hud/event/GameNotificationEventHandler.h"
#include "org/allbinary/logic/util/event/AllBinaryEventObject.h"
#include "org/allbinary/logic/util/event/EventListenerInterface.h"
#include "org/allbinary/logic/util/event/NullEventListener.h"
#include "org/allbinary/util/BasicArrayList.h"
#include "org/allbinary/game/layer/hud/event/GameNotificationListenerInterface.h"
#include "org/allbinary/game/layer/hud/event/GameNotificationEvent.h"


static GameNotificationEventHandler* GameNotificationEventHandler_instance;

void GameNotificationEventHandler_staticInit(void) {
    static bool initialized = false;
    if (initialized) {
        return;
    }
    initialized = true;
    GameNotificationEventHandler_instance = [((GameNotificationEventHandler*) [GameNotificationEventHandler alloc]) init];
}

@implementation GameNotificationEventHandler

- (void) initFields {
    self->enabled = true;
}


- (instancetype) init {
    self = [super init];
    [self initFields];
    return self;
}


// synchronized
- (void) removeAllListeners {
        EventListenerInterface* eventListenerInterface = (NullEventListener_staticInit(), NullEventListener_NULL_EVENT_LISTENER);
        BasicArrayList* list = self->eventListenerInterfaceList;
        if ([list size] > 0) {
            eventListenerInterface = ((EventListenerInterface*) list->objectArray[0]);
        }
        [super removeAllListeners];
        if (eventListenerInterface != (NullEventListener_staticInit(), NullEventListener_NULL_EVENT_LISTENER)) {
            [self addListenerInterface:eventListenerInterface];
        }
}


+ (GameNotificationEventHandler*) getInstance {
        return (GameNotificationEventHandler_staticInit(), GameNotificationEventHandler_instance);
}


// throws Exception
- (void) process:(AllBinaryEventObject*)eventObject :(EventListenerInterface*)eventListenerInterface {
        if (!self->enabled) {
            return;
        }
        GameNotificationListenerInterface* gameNotificationListenerInterface = ((GameNotificationListenerInterface*) eventListenerInterface);
        [gameNotificationListenerInterface onGameNotificationEvent:((GameNotificationEvent*) eventObject)];
}

@end

