// Generated Code Do Not Modify
#include "org/allbinary/game/input/event/GameKeyEventHandler.h"
#include "org/allbinary/logic/communication/log/LogUtil.h"
#include "org/allbinary/logic/util/event/EventListenerInterface.h"
#include "org/allbinary/string/CommonStrings.h"
#include "org/allbinary/game/input/event/PressGameKeyEventHandler.h"
#include "org/allbinary/game/input/event/UpGameKeyEventHandler.h"
#include "org/allbinary/game/input/event/DownGameKeyEventHandler.h"
#if __has_include("org/allbinary/game/input/event/UpGameKeyEventHandlerBase.h")
#include "org/allbinary/game/input/event/UpGameKeyEventHandlerBase.h"
#endif
#if __has_include("org/allbinary/logic/communication/log/UpGameKeyEventHandlerBase.h")
#include "org/allbinary/logic/communication/log/UpGameKeyEventHandlerBase.h"
#endif
#if __has_include("org/allbinary/logic/util/event/UpGameKeyEventHandlerBase.h")
#include "org/allbinary/logic/util/event/UpGameKeyEventHandlerBase.h"
#endif
#if __has_include("org/allbinary/string/UpGameKeyEventHandlerBase.h")
#include "org/allbinary/string/UpGameKeyEventHandlerBase.h"
#endif
#if __has_include("org/allbinary/game/input/event/DownGameKeyEventHandlerBase.h")
#include "org/allbinary/game/input/event/DownGameKeyEventHandlerBase.h"
#endif
#if __has_include("org/allbinary/logic/communication/log/DownGameKeyEventHandlerBase.h")
#include "org/allbinary/logic/communication/log/DownGameKeyEventHandlerBase.h"
#endif
#if __has_include("org/allbinary/logic/util/event/DownGameKeyEventHandlerBase.h")
#include "org/allbinary/logic/util/event/DownGameKeyEventHandlerBase.h"
#endif
#if __has_include("org/allbinary/string/DownGameKeyEventHandlerBase.h")
#include "org/allbinary/string/DownGameKeyEventHandlerBase.h"
#endif


static GameKeyEventHandler* GameKeyEventHandler_instance;

void GameKeyEventHandler_staticInit(void) {
    static bool initialized = false;
    if (initialized) {
        return;
    }
    initialized = true;
    GameKeyEventHandler_instance = ((GameKeyEventHandler*) [((GameKeyEventHandler*) [GameKeyEventHandler alloc]) init]);
}

@implementation GameKeyEventHandler

- (void) initFields {
    self->logUtil = [LogUtil getInstance];
    self->commonStrings = [CommonStrings getInstance];
    self->pressGameKeyEventHandler = [PressGameKeyEventHandler getInstance];
    self->upGameKeyEventHandler = [UpGameKeyEventHandler getInstance];
    self->downGameKeyEventHandler = [DownGameKeyEventHandler getInstance];
}

- (instancetype) init {
    self = [super init];
    [self initFields];
    return self;
}


+ (GameKeyEventHandler*) getInstance {
        return (GameKeyEventHandler_staticInit(), GameKeyEventHandler_instance);
}


// synchronized
- (void) removeAllListeners {
        [self->pressGameKeyEventHandler removeAllListeners];
        [self->upGameKeyEventHandler removeAllListeners];
        [self->downGameKeyEventHandler removeAllListeners];
}


- (void) addListenerForPlayer:(EventListenerInterface*)eventListenerInterface :(int32_t)playerInputId {
        [self->logUtil putF:[((id<EventListenerInterface>) eventListenerInterface) toString] :self :self->commonStrings->ADD_LISTENER];
        [self->pressGameKeyEventHandler addListenerSingleThreaded:eventListenerInterface];
        [[self->upGameKeyEventHandler getInstanceForPlayer:playerInputId] addListenerSingleThreaded:eventListenerInterface];
        [[self->downGameKeyEventHandler getInstanceForPlayer:playerInputId] addListenerSingleThreaded:eventListenerInterface];
}


- (void) addListener:(EventListenerInterface*)eventListenerInterface {
        [self->logUtil putF:[((id<EventListenerInterface>) eventListenerInterface) toString] :self :self->commonStrings->ADD_LISTENER];
        [self->pressGameKeyEventHandler addListenerSingleThreaded:eventListenerInterface];
        [self->upGameKeyEventHandler addListenerSingleThreaded:eventListenerInterface];
        [self->downGameKeyEventHandler addListenerSingleThreaded:eventListenerInterface];
}


- (void) removeListener:(EventListenerInterface*)eventListenerInterface {
        [self->logUtil putF:[((id<EventListenerInterface>) eventListenerInterface) toString] :self :self->commonStrings->REMOVE_LISTENER];
        [self->pressGameKeyEventHandler removeListenerSingleThreaded:eventListenerInterface];
        [self->upGameKeyEventHandler removeListenerSingleThreaded:eventListenerInterface];
        [self->downGameKeyEventHandler removeListenerSingleThreaded:eventListenerInterface];
}

@end

