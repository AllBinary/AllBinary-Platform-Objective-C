// Generated Code Do Not Modify
#include "org/allbinary/game/input/event/DownKeyEventHandler.h"
#include "org/allbinary/game/input/LocalPlayerInputIdFactory.h"
#include "org/allbinary/logic/util/event/EventListenerInterface.h"
#include "org/allbinary/game/input/event/DownKeyEventHandlerBase.h"


static DownKeyEventHandler* DownKeyEventHandler_instance;
static DownKeyEventHandlerBase** DownKeyEventHandler_instanceArray;

void DownKeyEventHandler_staticInit(void) {
    static bool initialized = false;
    if (initialized) {
        return;
    }
    initialized = true;
    DownKeyEventHandler_instance = ((DownKeyEventHandler*) [((DownKeyEventHandler*) [DownKeyEventHandler alloc]) init]);
    DownKeyEventHandler_instanceArray = ((DownKeyEventHandlerBase**) java_array_from(sizeof(DownKeyEventHandlerBase*), sizeof((DownKeyEventHandlerBase*[]){ ((DownKeyEventHandlerBase*) [((DownKeyEventHandlerBase*) [DownKeyEventHandlerBase alloc]) init]), ((DownKeyEventHandlerBase*) [((DownKeyEventHandlerBase*) [DownKeyEventHandlerBase alloc]) init]), ((DownKeyEventHandlerBase*) [((DownKeyEventHandlerBase*) [DownKeyEventHandlerBase alloc]) init]), ((DownKeyEventHandlerBase*) [((DownKeyEventHandlerBase*) [DownKeyEventHandlerBase alloc]) init]), ((DownKeyEventHandlerBase*) [((DownKeyEventHandlerBase*) [DownKeyEventHandlerBase alloc]) init]), ((DownKeyEventHandlerBase*) [((DownKeyEventHandlerBase*) [DownKeyEventHandlerBase alloc]) init]) }) / sizeof(DownKeyEventHandlerBase*), (DownKeyEventHandlerBase*[]){ ((DownKeyEventHandlerBase*) [((DownKeyEventHandlerBase*) [DownKeyEventHandlerBase alloc]) init]), ((DownKeyEventHandlerBase*) [((DownKeyEventHandlerBase*) [DownKeyEventHandlerBase alloc]) init]), ((DownKeyEventHandlerBase*) [((DownKeyEventHandlerBase*) [DownKeyEventHandlerBase alloc]) init]), ((DownKeyEventHandlerBase*) [((DownKeyEventHandlerBase*) [DownKeyEventHandlerBase alloc]) init]), ((DownKeyEventHandlerBase*) [((DownKeyEventHandlerBase*) [DownKeyEventHandlerBase alloc]) init]), ((DownKeyEventHandlerBase*) [((DownKeyEventHandlerBase*) [DownKeyEventHandlerBase alloc]) init]) }));
}

@implementation DownKeyEventHandler

- (void) initFields {
    self->playerInputIdFactory = [LocalPlayerInputIdFactory getInstance];
}


+ (DownKeyEventHandler*) getInstance {
        return (DownKeyEventHandler_staticInit(), DownKeyEventHandler_instance);
}


- (DownKeyEventHandlerBase*) getInstanceForDevice:(int32_t)deviceId {
        int32_t playerInputId = [self->playerInputIdFactory getPlayerForDevice:deviceId];
        return (DownKeyEventHandler_staticInit(), DownKeyEventHandler_instanceArray)[playerInputId];
}


- (DownKeyEventHandlerBase*) getInstanceForPlayer:(int32_t)playerInputId {
        return (DownKeyEventHandler_staticInit(), DownKeyEventHandler_instanceArray)[playerInputId];
}


- (instancetype) init {
    self = [super init];
    [self initFields];
    return self;
}


- (void) removeAllListeners {
        [super removeAllListeners];
        for (int32_t index = java_array_length((DownKeyEventHandler_staticInit(), DownKeyEventHandler_instanceArray)) - 1; index >= 0; index--) {
            [(DownKeyEventHandler_staticInit(), DownKeyEventHandler_instanceArray)[index] removeAllListeners];
        }
}


- (void) removeListenerSingleThreaded:(EventListenerInterface*)eventListenerInterface {
        [super removeListenerSingleThreaded:eventListenerInterface];
        for (int32_t index = java_array_length((DownKeyEventHandler_staticInit(), DownKeyEventHandler_instanceArray)) - 1; index >= 0; index--) {
            [(DownKeyEventHandler_staticInit(), DownKeyEventHandler_instanceArray)[index] removeListenerSingleThreaded:eventListenerInterface];
        }
}


// synchronized
- (void) removeListener:(EventListenerInterface*)eventListenerInterface {
        [super removeListener:eventListenerInterface];
        for (int32_t index = java_array_length((DownKeyEventHandler_staticInit(), DownKeyEventHandler_instanceArray)) - 1; index >= 0; index--) {
            [(DownKeyEventHandler_staticInit(), DownKeyEventHandler_instanceArray)[index] removeListener:eventListenerInterface];
        }
}

@end

