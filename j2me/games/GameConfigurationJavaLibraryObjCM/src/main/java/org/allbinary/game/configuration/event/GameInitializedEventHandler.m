// Generated Code Do Not Modify
#include "org/allbinary/game/configuration/event/GameInitializedEventHandler.h"
#include "org/allbinary/logic/util/event/AllBinaryEventObject.h"
#include "org/allbinary/logic/util/event/EventListenerInterface.h"
#include "org/allbinary/game/configuration/event/GameInitializedListenerInterface.h"
#include "org/allbinary/game/configuration/event/GameInitializedEvent.h"


static GameInitializedEventHandler* GameInitializedEventHandler_gameKeyEventHandler;

void GameInitializedEventHandler_staticInit(void) {
    static bool initialized = false;
    if (initialized) {
        return;
    }
    initialized = true;
    GameInitializedEventHandler_gameKeyEventHandler = [((GameInitializedEventHandler*) [GameInitializedEventHandler alloc]) init];
}

@implementation GameInitializedEventHandler


- (instancetype) init {
    self = [super init];
    return self;
}


+ (GameInitializedEventHandler*) getInstance {
        return (GameInitializedEventHandler_staticInit(), GameInitializedEventHandler_gameKeyEventHandler);
}


// throws Exception
- (void) process:(AllBinaryEventObject*)eventObject :(EventListenerInterface*)eventListenerInterface {
        GameInitializedListenerInterface* gameInitializedListenerInterface = (((GameInitializedListenerInterface*) eventListenerInterface));
        [gameInitializedListenerInterface onGameInitialized:((GameInitializedEvent*) eventObject)];
}

@end

