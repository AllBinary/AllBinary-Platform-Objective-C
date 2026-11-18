// Generated Code Do Not Modify
#include "org/allbinary/game/ag/ai/scroller/RandomPatrolAIFactory.h"
#include "org/allbinary/ai/ArtificialIntelligenceInterface.h"
#include "org/allbinary/game/input/GameInput.h"
#include "org/allbinary/layer/AllBinaryLayer.h"
#include "org/allbinary/util/ABHashtable.h"
#include "org/allbinary/game/ag/ai/scroller/RandomPatrolAI.h"



void RandomPatrolAIFactory_staticInit(void) {
    static bool initialized = false;
    if (initialized) {
        return;
    }
    initialized = true;
}

@implementation RandomPatrolAIFactory

- (instancetype) init {
    self = [super init];
    return self;
}


// throws Exception
- (ArtificialIntelligenceInterface*) getInstance:(ABHashtable*)hashtable :(AllBinaryLayer*)ownerLayerInterface :(GameInput*)gameInput {
        return [((RandomPatrolAI*) [RandomPatrolAI alloc]) init:hashtable :ownerLayerInterface :gameInput];
}

@end

