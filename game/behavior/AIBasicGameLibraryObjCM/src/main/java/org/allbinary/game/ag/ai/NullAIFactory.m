// Generated Code Do Not Modify
#include "org/allbinary/game/ag/ai/NullAIFactory.h"
#include "org/allbinary/ai/ArtificialIntelligenceInterface.h"
#include "org/allbinary/game/input/GameInput.h"
#include "org/allbinary/layer/AllBinaryLayer.h"
#include "org/allbinary/util/ABHashtable.h"
#include "org/allbinary/game/ag/ai/NullAI.h"


static NullAI* NullAIFactory_NULL_AI;

void NullAIFactory_staticInit(void) {
    static bool initialized = false;
    if (initialized) {
        return;
    }
    initialized = true;
    NullAIFactory_NULL_AI = ((NullAI*) [((NullAI*) [NullAI alloc]) init]);
}

@implementation NullAIFactory

- (instancetype) init {
    self = [super init];
    return self;
}


- (ArtificialIntelligenceInterface*) getInstance:(ABHashtable*)hashtable :(AllBinaryLayer*)ownerLayerInterface :(GameInput*)gameInput {
        return (NullAIFactory_staticInit(), NullAIFactory_NULL_AI);
}


+ (ArtificialIntelligenceInterface*) getInstance {
        return (NullAIFactory_staticInit(), NullAIFactory_NULL_AI);
}

@end

