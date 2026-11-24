// Generated Code Do Not Modify
#include "org/allbinary/game/configuration/event/GameFeatureEventHandler.h"
#include "org/allbinary/logic/util/event/AllBinaryEventObject.h"
#include "org/allbinary/logic/util/event/EventListenerInterface.h"
#include "org/allbinary/game/configuration/event/GameFeatureListenerInterface.h"
#include "org/allbinary/game/configuration/event/GameFeatureEvent.h"


static GameFeatureEventHandler* GameFeatureEventHandler_gameKeyEventHandler;

void GameFeatureEventHandler_staticInit(void) {
    static bool initialized = false;
    if (initialized) {
        return;
    }
    initialized = true;
    GameFeatureEventHandler_gameKeyEventHandler = ((GameFeatureEventHandler*) [((GameFeatureEventHandler*) [GameFeatureEventHandler alloc]) init]);
}

@implementation GameFeatureEventHandler


- (instancetype) init {
    self = [super init];
    return self;
}


+ (GameFeatureEventHandler*) getInstance {
        return (GameFeatureEventHandler_staticInit(), GameFeatureEventHandler_gameKeyEventHandler);
}


// throws Exception
- (void) process:(AllBinaryEventObject*)eventObject :(EventListenerInterface*)eventListenerInterface {
        GameFeatureListenerInterface* gameFeatureListenerInterface = (((GameFeatureListenerInterface*) eventListenerInterface));
        [((id<GameFeatureListenerInterface>) gameFeatureListenerInterface) onGameFeatureChange:((GameFeatureEvent*) eventObject)];
}

@end

