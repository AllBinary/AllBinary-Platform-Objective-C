// Generated Code Do Not Modify
#include "org/allbinary/game/ag/ai/DiveAndDirectionalTrackingAIFactory.h"
#include "org/allbinary/ai/ArtificialIntelligenceInterface.h"
#include "org/allbinary/game/ag/ai/tactical/BasicRandomAIFactory.h"
#include "org/allbinary/game/ai/BasicAI.h"
#include "org/allbinary/game/input/GameInput.h"
#include "org/allbinary/layer/AllBinaryLayer.h"
#include "org/allbinary/logic/util/visitor/Visitor.h"
#include "org/allbinary/util/ABHashtable.h"
#include "org/allbinary/game/ag/ai/ThrustAIVisitorFactory.h"
#include "org/allbinary/game/ag/ai/BasicProbabilityAIDataFactory.h"
#include "org/allbinary/game/ag/ai/LastKeyAIVisitorFactory.h"
#include "org/allbinary/game/ag/ai/DiveAndDirectionalTrackingAI.h"



void DiveAndDirectionalTrackingAIFactory_staticInit(void) {
    static bool initialized = false;
    if (initialized) {
        return;
    }
    initialized = true;
}

@implementation DiveAndDirectionalTrackingAIFactory

- (instancetype) init {
    self = [super init];
    return self;
}


// throws Exception
- (ArtificialIntelligenceInterface*) getInstance:(ABHashtable*)hashtable :(AllBinaryLayer*)ownerLayerInterface :(GameInput*)gameInput {
        id visitorCanBeNull = [hashtable get:JAVA_BOX(((id) (BasicAI_staticInit(), BasicAI_AI_VISITOR)))];
        if (visitorCanBeNull == nil) {
            visitorCanBeNull = [ThrustAIVisitorFactory getInstance];
        }
        ABHashtable* hashtable2 = [[((BasicProbabilityAIDataFactory*) [BasicProbabilityAIDataFactory alloc]) init] getInstance];
        [hashtable2 put:JAVA_BOX((BasicAI_staticInit(), BasicAI_AI_VISITOR)) :JAVA_BOX([LastKeyAIVisitorFactory getInstance])];
        ArtificialIntelligenceInterface* artificialIntelligenceInterface = [[((BasicRandomAIFactory*) [BasicRandomAIFactory alloc]) init] getInstance:hashtable2 :ownerLayerInterface :gameInput];
        return [((DiveAndDirectionalTrackingAI*) [DiveAndDirectionalTrackingAI alloc]) init:ownerLayerInterface :artificialIntelligenceInterface :gameInput :((Visitor*) visitorCanBeNull)];
}

@end

