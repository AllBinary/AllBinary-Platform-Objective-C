// Generated Code Do Not Modify
#include "org/allbinary/game/ag/ai/UpDownVectorAIFactory.h"
#include "org/allbinary/ai/ArtificialIntelligenceInterface.h"
#include "org/allbinary/game/input/GameInput.h"
#include "org/allbinary/layer/AllBinaryLayer.h"
#include "org/allbinary/util/ABHashtable.h"
#include "org/allbinary/game/ag/ai/UpDownVectorAI.h"



void UpDownVectorAIFactory_staticInit(void) {
    static bool initialized = false;
    if (initialized) {
        return;
    }
    initialized = true;
}

@implementation UpDownVectorAIFactory

- (instancetype) init {
    self = [super init];
    return self;
}


// throws Exception
- (ArtificialIntelligenceInterface*) getInstance:(ABHashtable*)hashtable :(AllBinaryLayer*)ownerLayerInterface :(GameInput*)gameInput {
        return ((UpDownVectorAI*) [((UpDownVectorAI*) [UpDownVectorAI alloc]) init:ownerLayerInterface :gameInput]);
}

@end

