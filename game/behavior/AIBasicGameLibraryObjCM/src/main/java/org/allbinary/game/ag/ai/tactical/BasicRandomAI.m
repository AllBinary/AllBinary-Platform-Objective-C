// Generated Code Do Not Modify
#include "org/allbinary/game/ag/ai/tactical/BasicRandomAI.h"
#include "javax/microedition/lcdui/Canvas.h"
#include "org/allbinary/game/ag/ai/InputProbability.h"
#include "org/allbinary/game/input/GameInput.h"
#include "org/allbinary/game/rand/MyRandomFactory.h"
#include "org/allbinary/layer/AllBinaryLayer.h"
#include "org/allbinary/layer/AllBinaryLayerManager.h"
#include "org/allbinary/logic/util/visitor/Visitor.h"
#include "org/allbinary/time/GameTickTimeDelayHelperFactory.h"
#if __has_include("org/allbinary/game/ag/ai/tactical/TimeDelayHelper.h")
#include "org/allbinary/game/ag/ai/tactical/TimeDelayHelper.h"
#endif
#if __has_include("javax/microedition/lcdui/TimeDelayHelper.h")
#include "javax/microedition/lcdui/TimeDelayHelper.h"
#endif
#if __has_include("org/allbinary/game/ai/TimeDelayHelper.h")
#include "org/allbinary/game/ai/TimeDelayHelper.h"
#endif
#if __has_include("org/allbinary/game/ag/ai/TimeDelayHelper.h")
#include "org/allbinary/game/ag/ai/TimeDelayHelper.h"
#endif
#if __has_include("org/allbinary/game/input/TimeDelayHelper.h")
#include "org/allbinary/game/input/TimeDelayHelper.h"
#endif
#if __has_include("org/allbinary/game/rand/TimeDelayHelper.h")
#include "org/allbinary/game/rand/TimeDelayHelper.h"
#endif
#if __has_include("org/allbinary/layer/TimeDelayHelper.h")
#include "org/allbinary/layer/TimeDelayHelper.h"
#endif
#if __has_include("org/allbinary/layer/TimeDelayHelper.h")
#include "org/allbinary/layer/TimeDelayHelper.h"
#endif
#if __has_include("org/allbinary/logic/util/visitor/TimeDelayHelper.h")
#include "org/allbinary/logic/util/visitor/TimeDelayHelper.h"
#endif
#if __has_include("org/allbinary/time/TimeDelayHelper.h")
#include "org/allbinary/time/TimeDelayHelper.h"
#endif
#if __has_include("org/allbinary/game/ag/ai/tactical/GameTickTimeDelayHelper.h")
#include "org/allbinary/game/ag/ai/tactical/GameTickTimeDelayHelper.h"
#endif
#if __has_include("javax/microedition/lcdui/GameTickTimeDelayHelper.h")
#include "javax/microedition/lcdui/GameTickTimeDelayHelper.h"
#endif
#if __has_include("org/allbinary/game/ai/GameTickTimeDelayHelper.h")
#include "org/allbinary/game/ai/GameTickTimeDelayHelper.h"
#endif
#if __has_include("org/allbinary/game/ag/ai/GameTickTimeDelayHelper.h")
#include "org/allbinary/game/ag/ai/GameTickTimeDelayHelper.h"
#endif
#if __has_include("org/allbinary/game/input/GameTickTimeDelayHelper.h")
#include "org/allbinary/game/input/GameTickTimeDelayHelper.h"
#endif
#if __has_include("org/allbinary/game/rand/GameTickTimeDelayHelper.h")
#include "org/allbinary/game/rand/GameTickTimeDelayHelper.h"
#endif
#if __has_include("org/allbinary/layer/GameTickTimeDelayHelper.h")
#include "org/allbinary/layer/GameTickTimeDelayHelper.h"
#endif
#if __has_include("org/allbinary/layer/GameTickTimeDelayHelper.h")
#include "org/allbinary/layer/GameTickTimeDelayHelper.h"
#endif
#if __has_include("org/allbinary/logic/util/visitor/GameTickTimeDelayHelper.h")
#include "org/allbinary/logic/util/visitor/GameTickTimeDelayHelper.h"
#endif
#if __has_include("org/allbinary/time/GameTickTimeDelayHelper.h")
#include "org/allbinary/time/GameTickTimeDelayHelper.h"
#endif



void BasicRandomAI_staticInit(void) {
    static bool initialized = false;
    if (initialized) {
        return;
    }
    initialized = true;
}

@implementation BasicRandomAI

- (void) initFields {
    self->i_random = 0;
    
    
    self->keyArray = ((int32_t*) java_array_from(sizeof(int32_t), sizeof((int32_t[]){ (Canvas_staticInit(), Canvas_UP), (Canvas_staticInit(), Canvas_DOWN), (Canvas_staticInit(), Canvas_LEFT), (Canvas_staticInit(), Canvas_RIGHT), (Canvas_staticInit(), Canvas_KEY_NUM1), (Canvas_staticInit(), Canvas_KEY_NUM7), (Canvas_staticInit(), Canvas_KEY_NUM9) }) / sizeof(int32_t), (int32_t[]){ (Canvas_staticInit(), Canvas_UP), (Canvas_staticInit(), Canvas_DOWN), (Canvas_staticInit(), Canvas_LEFT), (Canvas_staticInit(), Canvas_RIGHT), (Canvas_staticInit(), Canvas_KEY_NUM1), (Canvas_staticInit(), Canvas_KEY_NUM7), (Canvas_staticInit(), Canvas_KEY_NUM9) }));
    self->myRandomFactory = [MyRandomFactory getInstance];
}


- (instancetype) init:(AllBinaryLayer*)ownerLayerInterface :(GameInput*)gameInput :(InputProbability*)inputProbability :(Visitor*)visitor {
        self = [super init:ownerLayerInterface :gameInput];
        [self initFields];
        self->inputProbability = inputProbability;
        self->visitor = visitor;
    return self;
}


// throws Exception
- (void) processAI:(AllBinaryLayerManager*)allBinaryLayerManager {
        if ([[self->inputProbability getTimeDelayHelper] isTime:[GameTickTimeDelayHelperFactory getInstance]->startTime]) {
            self->i_random = [self->myRandomFactory getAbsoluteNextInt:[self->inputProbability getMax]];
            bool repeat = false;
            int32_t* repeatLikelyhoodIntegerArray = [self->inputProbability getRepeatLikelyhoodIntegerArray];
            if ([self getLastKey] != -1 && ((int32_t) (repeatLikelyhoodIntegerArray[[self getLastKey]])) >= self->i_random) {
                repeat = true;
            }
            if (!repeat) {
                int32_t** likelyhoodIntegerArray = [self->inputProbability getLikelyhoodIntegerArray];
                self->i_random = [self->myRandomFactory getAbsoluteNextInt:[self->inputProbability getMax]];
                int32_t size = java_array_length(self->keyArray);
                int32_t* likelyhoodIntegerKeyArray = nullptr;
                for (int32_t index = 0; index < size; index++) {
                    int32_t key = self->keyArray[index];
                    likelyhoodIntegerKeyArray = likelyhoodIntegerArray[key];
                    if (java_array_length(likelyhoodIntegerArray) >= key && likelyhoodIntegerKeyArray[0] != nil) {
                        if (self->i_random >= ((int32_t) (likelyhoodIntegerKeyArray[0])) && self->i_random < ((int32_t) (likelyhoodIntegerKeyArray[1]))) {
                            [self setLastKey:key];
                            break;
                        }
                    }
                }
            }
            [self->visitor visit:self];
        }
}

@end

