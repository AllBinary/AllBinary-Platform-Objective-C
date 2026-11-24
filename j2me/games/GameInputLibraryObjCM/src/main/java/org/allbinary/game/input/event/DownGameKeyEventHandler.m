// Generated Code Do Not Modify
#include "org/allbinary/game/input/event/DownGameKeyEventHandler.h"
#include "org/allbinary/game/input/LocalPlayerInputIdFactory.h"
#include "org/allbinary/logic/util/event/EventListenerInterface.h"
#include "org/allbinary/game/input/event/DownGameKeyEventHandlerBase.h"


static DownGameKeyEventHandler* DownGameKeyEventHandler_instance;
static DownGameKeyEventHandlerBase** DownGameKeyEventHandler_instanceArray;

void DownGameKeyEventHandler_staticInit(void) {
    static bool initialized = false;
    if (initialized) {
        return;
    }
    initialized = true;
    DownGameKeyEventHandler_instance = ((DownGameKeyEventHandler*) [((DownGameKeyEventHandler*) [DownGameKeyEventHandler alloc]) init]);
    DownGameKeyEventHandler_instanceArray = ((DownGameKeyEventHandlerBase**) java_array_from(sizeof(DownGameKeyEventHandlerBase*), sizeof((DownGameKeyEventHandlerBase*[]){ ((DownGameKeyEventHandlerBase*) [((DownGameKeyEventHandlerBase*) [DownGameKeyEventHandlerBase alloc]) init]), ((DownGameKeyEventHandlerBase*) [((DownGameKeyEventHandlerBase*) [DownGameKeyEventHandlerBase alloc]) init]), ((DownGameKeyEventHandlerBase*) [((DownGameKeyEventHandlerBase*) [DownGameKeyEventHandlerBase alloc]) init]), ((DownGameKeyEventHandlerBase*) [((DownGameKeyEventHandlerBase*) [DownGameKeyEventHandlerBase alloc]) init]), ((DownGameKeyEventHandlerBase*) [((DownGameKeyEventHandlerBase*) [DownGameKeyEventHandlerBase alloc]) init]), ((DownGameKeyEventHandlerBase*) [((DownGameKeyEventHandlerBase*) [DownGameKeyEventHandlerBase alloc]) init]) }) / sizeof(DownGameKeyEventHandlerBase*), (DownGameKeyEventHandlerBase*[]){ ((DownGameKeyEventHandlerBase*) [((DownGameKeyEventHandlerBase*) [DownGameKeyEventHandlerBase alloc]) init]), ((DownGameKeyEventHandlerBase*) [((DownGameKeyEventHandlerBase*) [DownGameKeyEventHandlerBase alloc]) init]), ((DownGameKeyEventHandlerBase*) [((DownGameKeyEventHandlerBase*) [DownGameKeyEventHandlerBase alloc]) init]), ((DownGameKeyEventHandlerBase*) [((DownGameKeyEventHandlerBase*) [DownGameKeyEventHandlerBase alloc]) init]), ((DownGameKeyEventHandlerBase*) [((DownGameKeyEventHandlerBase*) [DownGameKeyEventHandlerBase alloc]) init]), ((DownGameKeyEventHandlerBase*) [((DownGameKeyEventHandlerBase*) [DownGameKeyEventHandlerBase alloc]) init]) }));
}

@implementation DownGameKeyEventHandler

- (void) initFields {
    self->playerInputIdFactory = [LocalPlayerInputIdFactory getInstance];
}


+ (DownGameKeyEventHandler*) getInstance {
        return (DownGameKeyEventHandler_staticInit(), DownGameKeyEventHandler_instance);
}


- (DownGameKeyEventHandlerBase*) getInstanceForDevice:(int32_t)deviceId {
        int32_t playerInputId = [self->playerInputIdFactory getPlayerForDevice:deviceId];
        return (DownGameKeyEventHandler_staticInit(), DownGameKeyEventHandler_instanceArray)[playerInputId];
}


- (DownGameKeyEventHandlerBase*) getInstanceForPlayer:(int32_t)playerInputId {
        return (DownGameKeyEventHandler_staticInit(), DownGameKeyEventHandler_instanceArray)[playerInputId];
}


- (instancetype) init {
    self = [super init];
    [self initFields];
    return self;
}


- (void) removeAllListeners {
        [super removeAllListeners];
        for (int32_t index = java_array_length((DownGameKeyEventHandler_staticInit(), DownGameKeyEventHandler_instanceArray)) - 1; index >= 0; index--) {
            [(DownGameKeyEventHandler_staticInit(), DownGameKeyEventHandler_instanceArray)[index] removeAllListeners];
        }
}


- (void) removeListenerSingleThreaded:(EventListenerInterface*)eventListenerInterface {
        [super removeListenerSingleThreaded:eventListenerInterface];
        for (int32_t index = java_array_length((DownGameKeyEventHandler_staticInit(), DownGameKeyEventHandler_instanceArray)) - 1; index >= 0; index--) {
            [(DownGameKeyEventHandler_staticInit(), DownGameKeyEventHandler_instanceArray)[index] removeListenerSingleThreaded:eventListenerInterface];
        }
}


// synchronized
- (void) removeListener:(EventListenerInterface*)eventListenerInterface {
        [super removeListener:eventListenerInterface];
        for (int32_t index = java_array_length((DownGameKeyEventHandler_staticInit(), DownGameKeyEventHandler_instanceArray)) - 1; index >= 0; index--) {
            [(DownGameKeyEventHandler_staticInit(), DownGameKeyEventHandler_instanceArray)[index] removeListener:eventListenerInterface];
        }
}

@end

