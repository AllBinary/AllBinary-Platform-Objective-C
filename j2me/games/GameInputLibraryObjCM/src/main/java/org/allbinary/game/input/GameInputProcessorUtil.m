// Generated Code Do Not Modify
#include "org/allbinary/game/input/GameInputProcessorUtil.h"
#include "org/allbinary/game/input/GameInputProcessor.h"
#include "org/allbinary/game/input/InputFactory.h"



void GameInputProcessorUtil_staticInit(void) {
    static bool initialized = false;
    if (initialized) {
        return;
    }
    initialized = true;
}

@implementation GameInputProcessorUtil

- (instancetype) init {
    self = [super init];
    return self;
}


+ (void) initMethod:(GameInputProcessor**)inputProcessorArray {
        GameInputProcessor* noInputProcessor = [GameInputProcessor getInstance];
        int32_t total = [InputFactory getInstance]->MAX;
        for (int32_t index = 0; index < total; index++) {
            GameInputProcessor* inputProcessorCanBeNull = inputProcessorArray[index];
            if (inputProcessorCanBeNull == nil) {
                inputProcessorArray[index] = noInputProcessor;
            }
        }
}

@end

