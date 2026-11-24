// Generated Code Do Not Modify
#include "org/allbinary/game/ag/ai/SpinnerAIFactory.h"
#include "javax/microedition/lcdui/Canvas.h"
#include "org/allbinary/ai/ArtificialIntelligenceInterface.h"
#include "org/allbinary/game/input/GameInput.h"
#include "org/allbinary/layer/AllBinaryLayer.h"
#include "org/allbinary/util/ABHashtable.h"
#include "org/allbinary/game/ag/ai/SpinnerAI.h"



void SpinnerAIFactory_staticInit(void) {
    static bool initialized = false;
    if (initialized) {
        return;
    }
    initialized = true;
}

@implementation SpinnerAIFactory

- (instancetype) init {
    self = [super init];
    return self;
}


- (ArtificialIntelligenceInterface*) getInstance:(ABHashtable*)hashtable :(AllBinaryLayer*)ownerLayerInterface :(GameInput*)gameInput {
        int32_t* direction = ((int32_t*) java_array_from(sizeof(int32_t), sizeof((int32_t[]){ (Canvas_staticInit(), Canvas_LEFT) }) / sizeof(int32_t), (int32_t[]){ (Canvas_staticInit(), Canvas_LEFT) }));
        return ((SpinnerAI*) [((SpinnerAI*) [SpinnerAI alloc]) init:direction :ownerLayerInterface :gameInput]);
}

@end

