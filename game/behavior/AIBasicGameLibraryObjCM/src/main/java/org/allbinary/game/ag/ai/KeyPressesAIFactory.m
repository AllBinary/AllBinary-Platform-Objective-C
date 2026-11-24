// Generated Code Do Not Modify
#include "org/allbinary/game/ag/ai/KeyPressesAIFactory.h"
#include "org/allbinary/ai/ArtificialIntelligenceInterface.h"
#include "org/allbinary/game/configuration/feature/InputFeatureFactory.h"
#include "org/allbinary/game/input/GameInput.h"
#include "org/allbinary/layer/AllBinaryLayer.h"
#include "org/allbinary/util/ABHashtable.h"
#include "org/allbinary/game/ag/ai/MultiKeyPressesAI.h"
#include "org/allbinary/game/ag/ai/KeyPressesAI.h"
#if __has_include("org/allbinary/game/configuration/feature/InputFeatureFactory.h")
#include "org/allbinary/game/configuration/feature/InputFeatureFactory.h"
#endif



void KeyPressesAIFactory_staticInit(void) {
    static bool initialized = false;
    if (initialized) {
        return;
    }
    initialized = true;
}

@implementation KeyPressesAIFactory

- (instancetype) init {
    self = [super init];
    return self;
}


// throws Exception
- (ArtificialIntelligenceInterface*) getInstance:(ABHashtable*)hashtable :(AllBinaryLayer*)ownerLayerInterface :(GameInput*)gameInput {
        bool isSingleKeyProcessing = [[InputFeatureFactory getInstance] isSingleKeyProcessing];
        if (isSingleKeyProcessing) {
            return ((KeyPressesAI*) [((KeyPressesAI*) [KeyPressesAI alloc]) init:hashtable :ownerLayerInterface :gameInput]);
        } else {
            return ((MultiKeyPressesAI*) [((MultiKeyPressesAI*) [MultiKeyPressesAI alloc]) init:hashtable :ownerLayerInterface :gameInput]);
        }
}

@end

