// Generated Code Do Not Modify
#include "org/allbinary/game/input/event/UpKeyEventHandler.h"
#include "org/allbinary/game/input/LocalPlayerInputIdFactory.h"
#include "org/allbinary/logic/util/event/EventListenerInterface.h"
#include "org/allbinary/game/input/event/UpKeyEventHandlerBase.h"


static UpKeyEventHandler* UpKeyEventHandler_instance;
static UpKeyEventHandlerBase** UpKeyEventHandler_instanceArray;

void UpKeyEventHandler_staticInit(void) {
    static bool initialized = false;
    if (initialized) {
        return;
    }
    initialized = true;
    UpKeyEventHandler_instance = [((UpKeyEventHandler*) [UpKeyEventHandler alloc]) init];
    UpKeyEventHandler_instanceArray = ((UpKeyEventHandlerBase**) java_array_from(sizeof(UpKeyEventHandlerBase*), sizeof((UpKeyEventHandlerBase*[]){ [((UpKeyEventHandlerBase*) [UpKeyEventHandlerBase alloc]) init], [((UpKeyEventHandlerBase*) [UpKeyEventHandlerBase alloc]) init], [((UpKeyEventHandlerBase*) [UpKeyEventHandlerBase alloc]) init], [((UpKeyEventHandlerBase*) [UpKeyEventHandlerBase alloc]) init], [((UpKeyEventHandlerBase*) [UpKeyEventHandlerBase alloc]) init], [((UpKeyEventHandlerBase*) [UpKeyEventHandlerBase alloc]) init] }) / sizeof(UpKeyEventHandlerBase*), (UpKeyEventHandlerBase*[]){ [((UpKeyEventHandlerBase*) [UpKeyEventHandlerBase alloc]) init], [((UpKeyEventHandlerBase*) [UpKeyEventHandlerBase alloc]) init], [((UpKeyEventHandlerBase*) [UpKeyEventHandlerBase alloc]) init], [((UpKeyEventHandlerBase*) [UpKeyEventHandlerBase alloc]) init], [((UpKeyEventHandlerBase*) [UpKeyEventHandlerBase alloc]) init], [((UpKeyEventHandlerBase*) [UpKeyEventHandlerBase alloc]) init] }));
}

@implementation UpKeyEventHandler

- (void) initFields {
    self->playerInputIdFactory = [LocalPlayerInputIdFactory getInstance];
}


+ (UpKeyEventHandler*) getInstance {
        return (UpKeyEventHandler_staticInit(), UpKeyEventHandler_instance);
}


- (UpKeyEventHandlerBase*) getInstanceForDevice:(int32_t)deviceId {
        int32_t playerInputId = [self->playerInputIdFactory getPlayerForDevice:deviceId];
        return (UpKeyEventHandler_staticInit(), UpKeyEventHandler_instanceArray)[playerInputId];
}


- (UpKeyEventHandlerBase*) getInstanceForPlayer:(int32_t)playerInputId {
        return (UpKeyEventHandler_staticInit(), UpKeyEventHandler_instanceArray)[playerInputId];
}


- (instancetype) init {
    self = [super init];
    [self initFields];
    return self;
}


- (void) removeAllListeners {
        [super removeAllListeners];
        for (int32_t index = java_array_length((UpKeyEventHandler_staticInit(), UpKeyEventHandler_instanceArray)) - 1; index >= 0; index--) {
            [(UpKeyEventHandler_staticInit(), UpKeyEventHandler_instanceArray)[index] removeAllListeners];
        }
}


- (void) removeListenerSingleThreaded:(EventListenerInterface*)eventListenerInterface {
        [super removeListenerSingleThreaded:eventListenerInterface];
        for (int32_t index = java_array_length((UpKeyEventHandler_staticInit(), UpKeyEventHandler_instanceArray)) - 1; index >= 0; index--) {
            [(UpKeyEventHandler_staticInit(), UpKeyEventHandler_instanceArray)[index] removeListenerSingleThreaded:eventListenerInterface];
        }
}


- (void) removeListener:(EventListenerInterface*)eventListenerInterface {
        [super removeListener:eventListenerInterface];
        for (int32_t index = java_array_length((UpKeyEventHandler_staticInit(), UpKeyEventHandler_instanceArray)) - 1; index >= 0; index--) {
            [(UpKeyEventHandler_staticInit(), UpKeyEventHandler_instanceArray)[index] removeListener:eventListenerInterface];
        }
}

@end

