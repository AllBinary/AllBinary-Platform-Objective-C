// Generated Code Do Not Modify
#include "org/allbinary/game/input/event/UpGameKeyEventHandler.h"
#include "org/allbinary/game/input/LocalPlayerInputIdFactory.h"
#include "org/allbinary/logic/util/event/EventListenerInterface.h"
#include "org/allbinary/game/input/event/UpGameKeyEventHandlerBase.h"


static UpGameKeyEventHandler* UpGameKeyEventHandler_instance;
static UpGameKeyEventHandlerBase** UpGameKeyEventHandler_instanceArray;

void UpGameKeyEventHandler_staticInit(void) {
    static bool initialized = false;
    if (initialized) {
        return;
    }
    initialized = true;
    UpGameKeyEventHandler_instance = ((UpGameKeyEventHandler*) [((UpGameKeyEventHandler*) [UpGameKeyEventHandler alloc]) init]);
    UpGameKeyEventHandler_instanceArray = ((UpGameKeyEventHandlerBase**) java_array_from(sizeof(UpGameKeyEventHandlerBase*), sizeof((UpGameKeyEventHandlerBase*[]){ ((UpGameKeyEventHandlerBase*) [((UpGameKeyEventHandlerBase*) [UpGameKeyEventHandlerBase alloc]) init]), ((UpGameKeyEventHandlerBase*) [((UpGameKeyEventHandlerBase*) [UpGameKeyEventHandlerBase alloc]) init]), ((UpGameKeyEventHandlerBase*) [((UpGameKeyEventHandlerBase*) [UpGameKeyEventHandlerBase alloc]) init]), ((UpGameKeyEventHandlerBase*) [((UpGameKeyEventHandlerBase*) [UpGameKeyEventHandlerBase alloc]) init]), ((UpGameKeyEventHandlerBase*) [((UpGameKeyEventHandlerBase*) [UpGameKeyEventHandlerBase alloc]) init]), ((UpGameKeyEventHandlerBase*) [((UpGameKeyEventHandlerBase*) [UpGameKeyEventHandlerBase alloc]) init]) }) / sizeof(UpGameKeyEventHandlerBase*), (UpGameKeyEventHandlerBase*[]){ ((UpGameKeyEventHandlerBase*) [((UpGameKeyEventHandlerBase*) [UpGameKeyEventHandlerBase alloc]) init]), ((UpGameKeyEventHandlerBase*) [((UpGameKeyEventHandlerBase*) [UpGameKeyEventHandlerBase alloc]) init]), ((UpGameKeyEventHandlerBase*) [((UpGameKeyEventHandlerBase*) [UpGameKeyEventHandlerBase alloc]) init]), ((UpGameKeyEventHandlerBase*) [((UpGameKeyEventHandlerBase*) [UpGameKeyEventHandlerBase alloc]) init]), ((UpGameKeyEventHandlerBase*) [((UpGameKeyEventHandlerBase*) [UpGameKeyEventHandlerBase alloc]) init]), ((UpGameKeyEventHandlerBase*) [((UpGameKeyEventHandlerBase*) [UpGameKeyEventHandlerBase alloc]) init]) }));
}

@implementation UpGameKeyEventHandler

- (void) initFields {
    self->playerInputIdFactory = [LocalPlayerInputIdFactory getInstance];
}


+ (UpGameKeyEventHandler*) getInstance {
        return (UpGameKeyEventHandler_staticInit(), UpGameKeyEventHandler_instance);
}


- (UpGameKeyEventHandlerBase*) getInstanceForDevice:(int32_t)deviceId {
        int32_t playerInputId = [self->playerInputIdFactory getPlayerForDevice:deviceId];
        return (UpGameKeyEventHandler_staticInit(), UpGameKeyEventHandler_instanceArray)[playerInputId];
}


- (UpGameKeyEventHandlerBase*) getInstanceForPlayer:(int32_t)playerInputId {
        return (UpGameKeyEventHandler_staticInit(), UpGameKeyEventHandler_instanceArray)[playerInputId];
}


- (instancetype) init {
    self = [super init];
    [self initFields];
    return self;
}


- (void) removeAllListeners {
        [super removeAllListeners];
        for (int32_t index = java_array_length((UpGameKeyEventHandler_staticInit(), UpGameKeyEventHandler_instanceArray)) - 1; index >= 0; index--) {
            [(UpGameKeyEventHandler_staticInit(), UpGameKeyEventHandler_instanceArray)[index] removeAllListeners];
        }
}


- (void) removeListenerSingleThreaded:(EventListenerInterface*)eventListenerInterface {
        [super removeListenerSingleThreaded:eventListenerInterface];
        for (int32_t index = java_array_length((UpGameKeyEventHandler_staticInit(), UpGameKeyEventHandler_instanceArray)) - 1; index >= 0; index--) {
            [(UpGameKeyEventHandler_staticInit(), UpGameKeyEventHandler_instanceArray)[index] removeListenerSingleThreaded:eventListenerInterface];
        }
}


- (void) removeListener:(EventListenerInterface*)eventListenerInterface {
        [super removeListener:eventListenerInterface];
        for (int32_t index = java_array_length((UpGameKeyEventHandler_staticInit(), UpGameKeyEventHandler_instanceArray)) - 1; index >= 0; index--) {
            [(UpGameKeyEventHandler_staticInit(), UpGameKeyEventHandler_instanceArray)[index] removeListener:eventListenerInterface];
        }
}

@end

