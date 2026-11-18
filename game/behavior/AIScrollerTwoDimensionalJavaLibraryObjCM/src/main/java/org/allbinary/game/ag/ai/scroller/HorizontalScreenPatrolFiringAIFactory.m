// Generated Code Do Not Modify
#include "org/allbinary/game/ag/ai/scroller/HorizontalScreenPatrolFiringAIFactory.h"
#include "org/allbinary/ai/ArtificialIntelligenceInterface.h"
#include "org/allbinary/game/input/GameInput.h"
#include "org/allbinary/layer/AllBinaryLayer.h"
#include "org/allbinary/util/ABHashtable.h"
#include "org/allbinary/game/ag/ai/scroller/HorizontalScreenPatrolAI.h"



void HorizontalScreenPatrolFiringAIFactory_staticInit(void) {
    static bool initialized = false;
    if (initialized) {
        return;
    }
    initialized = true;
}

@implementation HorizontalScreenPatrolFiringAIFactory

- (instancetype) init {
    self = [super init];
    return self;
}


// throws Exception
- (ArtificialIntelligenceInterface*) getInstance:(ABHashtable*)hashtable :(AllBinaryLayer*)ownerLayerInterface :(GameInput*)gameInput {
        return [((HorizontalScreenPatrolAI*) [HorizontalScreenPatrolAI alloc]) init:hashtable :ownerLayerInterface :gameInput];
}

@end

