// Generated Code Do Not Modify
#include "org/allbinary/game/multiplayer/layer/MultiplayerBehavior.h"
#include "org/allbinary/logic/string/StringUtil.h"


MultiplayerBehavior* MultiplayerBehavior_NULL_MULTIPLAYER_BEHAVIOR;

void MultiplayerBehavior_staticInit(void) {
    static bool initialized = false;
    if (initialized) {
        return;
    }
    initialized = true;
    MultiplayerBehavior_NULL_MULTIPLAYER_BEHAVIOR = [((MultiplayerBehavior*) [MultiplayerBehavior alloc]) init:[StringUtil getInstance]->EMPTY_STRING];
}

@implementation MultiplayerBehavior


- (instancetype) init:(const char*)username {
    self = [super init];
    return self;
}


- (void) startTick {
}


- (void) endTick {
}


- (int64_t) getApproximateElapsed {
        return 0LL;
}

@end

