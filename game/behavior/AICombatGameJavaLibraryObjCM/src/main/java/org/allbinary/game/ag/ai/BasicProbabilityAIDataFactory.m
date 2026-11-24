// Generated Code Do Not Modify
#include "org/allbinary/game/ag/ai/BasicProbabilityAIDataFactory.h"
#include "javax/microedition/lcdui/Canvas.h"
#include "org/allbinary/logic/math/SmallIntegerSingletonFactory.h"
#include "org/allbinary/time/NoTimeDelayHelper.h"
#include "org/allbinary/util/ABHashtable.h"
#include "org/allbinary/game/ag/ai/InputProbability.h"



void BasicProbabilityAIDataFactory_staticInit(void) {
    static bool initialized = false;
    if (initialized) {
        return;
    }
    initialized = true;
}

@implementation BasicProbabilityAIDataFactory

- (instancetype) init {
    self = [super init];
    return self;
}


- (ABHashtable*) getInstance {
        int32_t** likelyhoodIntegerArray = ((int32_t**) java_array_new2(sizeof(int32_t), (Canvas_staticInit(), Canvas_KEY_NUM9) + 1, 2));
        SmallIntegerSingletonFactory* smallIntegerSingletonFactory = [SmallIntegerSingletonFactory getInstance];
        likelyhoodIntegerArray[(Canvas_staticInit(), Canvas_UP)][0] = [smallIntegerSingletonFactory getAt:0];
        likelyhoodIntegerArray[(Canvas_staticInit(), Canvas_UP)][1] = [smallIntegerSingletonFactory getAt:10];
        likelyhoodIntegerArray[(Canvas_staticInit(), Canvas_DOWN)][0] = [smallIntegerSingletonFactory getAt:10];
        likelyhoodIntegerArray[(Canvas_staticInit(), Canvas_DOWN)][1] = [smallIntegerSingletonFactory getAt:14];
        likelyhoodIntegerArray[(Canvas_staticInit(), Canvas_LEFT)][0] = [smallIntegerSingletonFactory getAt:14];
        likelyhoodIntegerArray[(Canvas_staticInit(), Canvas_LEFT)][1] = [smallIntegerSingletonFactory getAt:18];
        likelyhoodIntegerArray[(Canvas_staticInit(), Canvas_RIGHT)][0] = [smallIntegerSingletonFactory getAt:18];
        likelyhoodIntegerArray[(Canvas_staticInit(), Canvas_RIGHT)][1] = [smallIntegerSingletonFactory getAt:22];
        likelyhoodIntegerArray[(Canvas_staticInit(), Canvas_KEY_NUM7)][0] = [smallIntegerSingletonFactory getAt:22];
        likelyhoodIntegerArray[(Canvas_staticInit(), Canvas_KEY_NUM7)][1] = [smallIntegerSingletonFactory getAt:26];
        likelyhoodIntegerArray[(Canvas_staticInit(), Canvas_KEY_NUM9)][0] = [smallIntegerSingletonFactory getAt:26];
        likelyhoodIntegerArray[(Canvas_staticInit(), Canvas_KEY_NUM9)][1] = [smallIntegerSingletonFactory getAt:30];
        likelyhoodIntegerArray[(Canvas_staticInit(), Canvas_KEY_NUM1)][0] = [smallIntegerSingletonFactory getAt:30];
        likelyhoodIntegerArray[(Canvas_staticInit(), Canvas_KEY_NUM1)][1] = [smallIntegerSingletonFactory getAt:40];
        int32_t* repeatLikelyhoodIntegerArray = ((int32_t*) java_array_new(sizeof(int32_t), (Canvas_staticInit(), Canvas_KEY_NUM9) + 1));
        repeatLikelyhoodIntegerArray[(Canvas_staticInit(), Canvas_UP)] = [smallIntegerSingletonFactory getAt:0];
        repeatLikelyhoodIntegerArray[(Canvas_staticInit(), Canvas_DOWN)] = [smallIntegerSingletonFactory getAt:0];
        repeatLikelyhoodIntegerArray[(Canvas_staticInit(), Canvas_LEFT)] = [smallIntegerSingletonFactory getAt:0];
        repeatLikelyhoodIntegerArray[(Canvas_staticInit(), Canvas_RIGHT)] = [smallIntegerSingletonFactory getAt:0];
        repeatLikelyhoodIntegerArray[(Canvas_staticInit(), Canvas_KEY_NUM7)] = [smallIntegerSingletonFactory getAt:0];
        repeatLikelyhoodIntegerArray[(Canvas_staticInit(), Canvas_KEY_NUM9)] = [smallIntegerSingletonFactory getAt:0];
        repeatLikelyhoodIntegerArray[(Canvas_staticInit(), Canvas_KEY_NUM1)] = [smallIntegerSingletonFactory getAt:10];
        InputProbability* inputProbability = ((InputProbability*) [((InputProbability*) [InputProbability alloc]) init:likelyhoodIntegerArray :repeatLikelyhoodIntegerArray :42 :(NoTimeDelayHelper_staticInit(), NoTimeDelayHelper_SINGLETON)]);
        return [inputProbability toHashtable];
}

@end

