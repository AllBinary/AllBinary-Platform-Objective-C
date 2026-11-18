// Generated Code Do Not Modify
#include "org/allbinary/game/midlet/GameMidletEventHandler.h"
#include "org/allbinary/logic/util/event/AllBinaryEventObject.h"
#include "org/allbinary/logic/util/event/EventListenerInterface.h"
#include "org/allbinary/game/midlet/GameMidletEventListener.h"


static GameMidletEventHandler* GameMidletEventHandler_gameKeyEventHandler;

void GameMidletEventHandler_staticInit(void) {
    static bool initialized = false;
    if (initialized) {
        return;
    }
    initialized = true;
    GameMidletEventHandler_gameKeyEventHandler = [((GameMidletEventHandler*) [GameMidletEventHandler alloc]) init];
}

@implementation GameMidletEventHandler


- (instancetype) init {
    self = [super init];
    return self;
}


+ (GameMidletEventHandler*) getInstance {
        return (GameMidletEventHandler_staticInit(), GameMidletEventHandler_gameKeyEventHandler);
}


// throws Exception
- (void) process:(AllBinaryEventObject*)eventObject :(EventListenerInterface*)eventListenerInterface {
        GameMidletEventListener* gameMidletEventListener = ((GameMidletEventListener*) eventListenerInterface);
        [gameMidletEventListener onGameEnd:eventObject];
}

@end

