// Generated Code Do Not Modify
#include "org/allbinary/game/input/GameInputProcessor.h"
#include "org/allbinary/game/input/event/GameKeyEvent.h"
#include "org/allbinary/layer/AllBinaryLayerManager.h"


static GameInputProcessor* GameInputProcessor_instance;

void GameInputProcessor_staticInit(void) {
    static bool initialized = false;
    if (initialized) {
        return;
    }
    initialized = true;
    GameInputProcessor_instance = [((GameInputProcessor*) [GameInputProcessor alloc]) init];
}

@implementation GameInputProcessor


+ (GameInputProcessor*) getInstance {
        return (GameInputProcessor_staticInit(), GameInputProcessor_instance);
}


- (instancetype) init {
    self = [super init];
    return self;
}


// throws Exception
- (void) processEvent:(AllBinaryLayerManager*)allbinaryLayerManager :(GameKeyEvent*)gameKeyEvent {
}


// throws Exception
- (void) processReleasedEvent:(AllBinaryLayerManager*)allbinaryLayerManager :(GameKeyEvent*)gameKeyEvent {
}


// throws Exception
- (void) processAnalog:(AllBinaryLayerManager*)allbinaryLayerManager :(GameKeyEvent*)gameKeyEvent :(int32_t)analogValue {
}


// throws Exception
- (void) process:(AllBinaryLayerManager*)allbinaryLayerManager :(int32_t)keyAsInteger {
}


// throws Exception
- (void) processReleased:(AllBinaryLayerManager*)allbinaryLayerManager :(int32_t)keyAsInteger {
}

@end

