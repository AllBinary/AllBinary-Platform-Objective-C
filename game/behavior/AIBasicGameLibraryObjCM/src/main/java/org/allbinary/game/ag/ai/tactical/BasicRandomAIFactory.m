// Generated Code Do Not Modify
#include "org/allbinary/game/ag/ai/tactical/BasicRandomAIFactory.h"
#include "org/allbinary/ai/ArtificialIntelligenceInterface.h"
#include "org/allbinary/game/ai/BasicAI.h"
#include "org/allbinary/game/ag/ai/InputProbability.h"
#include "org/allbinary/game/input/GameInput.h"
#include "org/allbinary/layer/AllBinaryLayer.h"
#include "org/allbinary/logic/util/visitor/Visitor.h"
#include "org/allbinary/util/ABHashtable.h"
#include "org/allbinary/game/ag/ai/tactical/BasicRandomAI.h"



void BasicRandomAIFactory_staticInit(void) {
    static bool initialized = false;
    if (initialized) {
        return;
    }
    initialized = true;
}

@implementation BasicRandomAIFactory

- (instancetype) init {
    self = [super init];
    return self;
}


// throws Exception
- (ArtificialIntelligenceInterface*) getInstance:(ABHashtable*)hashtable :(AllBinaryLayer*)ownerLayerInterface :(GameInput*)gameInput {
        Visitor* visitor = ((Visitor*) [hashtable get:JAVA_BOX(((id) (BasicAI_staticInit(), BasicAI_AI_VISITOR)))]);
        if (visitor == nil) {
            java_throw(java_exception_new("Exception", "No Visitor Provided"));
        }
        InputProbability* inputProbability = ((InputProbability*) [hashtable get:JAVA_BOX(((id) (InputProbability_staticInit(), InputProbability_INPUT_PROBABILITY)))]);
        return [((BasicRandomAI*) [BasicRandomAI alloc]) init:ownerLayerInterface :gameInput :inputProbability :visitor];
}

@end

