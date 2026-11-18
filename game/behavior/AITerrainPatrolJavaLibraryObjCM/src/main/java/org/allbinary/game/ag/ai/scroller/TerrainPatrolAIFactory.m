// Generated Code Do Not Modify
#include "org/allbinary/game/ag/ai/scroller/TerrainPatrolAIFactory.h"
#include "org/allbinary/ai/ArtificialIntelligenceInterface.h"
#include "org/allbinary/game/input/GameInput.h"
#include "org/allbinary/layer/AllBinaryLayer.h"
#include "org/allbinary/logic/math/SmallIntegerSingletonFactory.h"
#include "org/allbinary/util/ABHashtable.h"
#include "org/allbinary/game/ag/ai/scroller/BasePatrolAI.h"
#include "org/allbinary/game/ag/ai/scroller/TerrainPatrolAI.h"



void TerrainPatrolAIFactory_staticInit(void) {
    static bool initialized = false;
    if (initialized) {
        return;
    }
    initialized = true;
}

@implementation TerrainPatrolAIFactory

- (instancetype) init {
    self = [super init];
    return self;
}


// throws Exception
- (ArtificialIntelligenceInterface*) getInstance:(ABHashtable*)hashtable :(AllBinaryLayer*)ownerLayerInterface :(GameInput*)gameInput {
        [hashtable put:JAVA_BOX((BasePatrolAI_staticInit(), BasePatrolAI_MAX_DISTANCE)) :JAVA_BOX([[SmallIntegerSingletonFactory getInstance] getAt:220])];
        return [((TerrainPatrolAI*) [TerrainPatrolAI alloc]) init:hashtable :ownerLayerInterface :gameInput];
}

@end

