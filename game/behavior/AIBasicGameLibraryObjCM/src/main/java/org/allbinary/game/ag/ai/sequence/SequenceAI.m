// Generated Code Do Not Modify
#include "org/allbinary/game/ag/ai/sequence/SequenceAI.h"
#include "org/allbinary/ai/ArtificialIntelligence.h"
#include "org/allbinary/ai/ArtificialIntelligenceInterface.h"
#include "org/allbinary/ai/ArtificialIntelligenceTransitionInterface.h"
#include "org/allbinary/game/input/GameInput.h"
#include "org/allbinary/layer/AllBinaryLayer.h"
#include "org/allbinary/layer/AllBinaryLayerManager.h"
#include "org/allbinary/logic/string/StringMaker.h"
#include "org/allbinary/logic/string/StringUtil.h"


static const char* SequenceAI_SEQUENCE_AI = "Sequence AI";

void SequenceAI_staticInit(void) {
    static bool initialized = false;
    if (initialized) {
        return;
    }
    initialized = true;
}

@implementation SequenceAI

- (void) initFields {
    self->index = 0;
}


- (instancetype) init:(ArtificialIntelligenceInterface**)artificialIntelligenceInterfaceArray :(AllBinaryLayer*)ownerLayerInterface :(GameInput*)gameInput {
        self = [super init:artificialIntelligenceInterfaceArray :ownerLayerInterface :gameInput];
        [self initFields];
    return self;
}


// throws Exception
- (void) processAI:(AllBinaryLayerManager*)allBinaryLayerManager {
        [[self getArtificialIntelligenceInterface][self->index] processAI:allBinaryLayerManager];
}


- (void) next {
        self->index++;
        ArtificialIntelligenceInterface* artificialIntelligenceInterface = [self getSelectedArtificialIntelligenceInterface];
        if ([artificialIntelligenceInterface getId] == (ArtificialIntelligence_staticInit(), ArtificialIntelligence_AI_ID)) {
            ArtificialIntelligenceTransitionInterface* artificialIntelligenceTransitionInterface = ((ArtificialIntelligenceTransitionInterface*) artificialIntelligenceInterface);
            [artificialIntelligenceTransitionInterface transition];
        }
}


- (int32_t) getIndex {
        return self->index;
}


- (void) setIndex:(int32_t)index {
        self->index = index;
}


- (ArtificialIntelligenceInterface*) getSelectedArtificialIntelligenceInterface {
        return [self getArtificialIntelligenceInterface][self->index];
}


- (const char*) getName {
        return SequenceAI_SEQUENCE_AI;
}


- (const char*) toString {
        StringMaker* stringBuffer = [((StringMaker*) [StringMaker alloc]) init];
        [stringBuffer append:[super toString]];
        [stringBuffer append:" Selected AI: "];
        [stringBuffer append:[[StringUtil getInstance] toString:[self getSelectedArtificialIntelligenceInterface]]];
        return [stringBuffer toString];
}

@end

