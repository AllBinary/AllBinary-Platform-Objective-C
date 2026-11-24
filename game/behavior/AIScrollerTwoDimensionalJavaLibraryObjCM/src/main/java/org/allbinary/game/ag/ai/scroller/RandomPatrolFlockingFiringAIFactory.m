// Generated Code Do Not Modify
#include "org/allbinary/game/ag/ai/scroller/RandomPatrolFlockingFiringAIFactory.h"
#include "org/allbinary/ai/ArtificialIntelligenceInterface.h"
#include "org/allbinary/game/ag/ai/ArrayAI.h"
#include "org/allbinary/game/input/GameInput.h"
#include "org/allbinary/layer/AllBinaryLayer.h"
#include "org/allbinary/util/ABHashtable.h"
#include "org/allbinary/game/ag/ai/scroller/RandomPatrolAI.h"
#include "org/allbinary/game/ag/ai/scroller/TimedFireAI.h"



void RandomPatrolFlockingFiringAIFactory_staticInit(void) {
    static bool initialized = false;
    if (initialized) {
        return;
    }
    initialized = true;
}

@implementation RandomPatrolFlockingFiringAIFactory

- (instancetype) init {
    self = [super init];
    return self;
}


// throws Exception
- (ArtificialIntelligenceInterface*) getInstance:(ABHashtable*)hashtable :(AllBinaryLayer*)ownerLayerInterface :(GameInput*)gameInput {
        ArtificialIntelligenceInterface** artificialIntelligenceInterface = ((ArtificialIntelligenceInterface**) java_array_new(sizeof(ArtificialIntelligenceInterface*), 2));
        artificialIntelligenceInterface[0] = ((RandomPatrolAI*) [((RandomPatrolAI*) [RandomPatrolAI alloc]) init:hashtable :ownerLayerInterface :gameInput]);
        artificialIntelligenceInterface[1] = ((TimedFireAI*) [((TimedFireAI*) [TimedFireAI alloc]) init:1800 :ownerLayerInterface :gameInput]);
        return ((ArrayAI*) [((ArrayAI*) [ArrayAI alloc]) init:artificialIntelligenceInterface :ownerLayerInterface :gameInput]);
}

@end

