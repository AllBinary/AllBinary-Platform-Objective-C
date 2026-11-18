// Generated Code Do Not Modify
#include "org/allbinary/game/ag/ai/scroller/TimedFireAI.h"
#include "javax/microedition/lcdui/Canvas.h"
#include "org/allbinary/game/input/GameInput.h"
#include "org/allbinary/layer/AllBinaryLayer.h"
#include "org/allbinary/layer/AllBinaryLayerManager.h"
#include "org/allbinary/logic/math/SmallIntegerSingletonFactory.h"
#include "org/allbinary/time/GameTickTimeDelayHelperFactory.h"
#include "org/allbinary/time/TimeDelayHelper.h"
#include "org/allbinary/game/ag/ai/scroller/TimeFiredInterface.h"
#if __has_include("org/allbinary/game/ag/ai/scroller/GameTickTimeDelayHelper.h")
#include "org/allbinary/game/ag/ai/scroller/GameTickTimeDelayHelper.h"
#endif
#if __has_include("javax/microedition/lcdui/GameTickTimeDelayHelper.h")
#include "javax/microedition/lcdui/GameTickTimeDelayHelper.h"
#endif
#if __has_include("org/allbinary/game/ai/GameTickTimeDelayHelper.h")
#include "org/allbinary/game/ai/GameTickTimeDelayHelper.h"
#endif
#if __has_include("org/allbinary/game/input/GameTickTimeDelayHelper.h")
#include "org/allbinary/game/input/GameTickTimeDelayHelper.h"
#endif
#if __has_include("org/allbinary/layer/GameTickTimeDelayHelper.h")
#include "org/allbinary/layer/GameTickTimeDelayHelper.h"
#endif
#if __has_include("org/allbinary/layer/GameTickTimeDelayHelper.h")
#include "org/allbinary/layer/GameTickTimeDelayHelper.h"
#endif
#if __has_include("org/allbinary/logic/math/GameTickTimeDelayHelper.h")
#include "org/allbinary/logic/math/GameTickTimeDelayHelper.h"
#endif
#if __has_include("org/allbinary/time/GameTickTimeDelayHelper.h")
#include "org/allbinary/time/GameTickTimeDelayHelper.h"
#endif
#if __has_include("org/allbinary/time/GameTickTimeDelayHelper.h")
#include "org/allbinary/time/GameTickTimeDelayHelper.h"
#endif


int32_t TimedFireAI_TIME;

void TimedFireAI_staticInit(void) {
    static bool initialized = false;
    if (initialized) {
        return;
    }
    initialized = true;
    TimedFireAI_TIME = [[SmallIntegerSingletonFactory getInstance] getAt:1];
}

@implementation TimedFireAI

- (void) initFields {
    self->maxFireDelayTimeHelper = [((TimeDelayHelper*) [TimeDelayHelper alloc]) init:0];
    
}


- (instancetype) init:(int32_t)delay :(AllBinaryLayer*)ownerLayerInterface :(GameInput*)gameInput {
        self = [super init:ownerLayerInterface :gameInput];
        [self initFields];
        self->delay = delay;
    return self;
}


// throws Exception
- (void) processAI:(AllBinaryLayerManager*)allBinaryLayerManager {
        TimeFiredInterface* timeFiredInterface = ((TimeFiredInterface*) [self getOwnerLayerInterface]);
        if ([self->maxFireDelayTimeHelper isTime:[GameTickTimeDelayHelperFactory getInstance]->startTime] && [timeFiredInterface getLastFireTime] + self->maxFireDelayTimeHelper->delay < [self->maxFireDelayTimeHelper getStartTime]) {
            [super processKeyAI:(Canvas_staticInit(), Canvas_KEY_NUM1)];
            self->maxFireDelayTimeHelper->delay = self->delay;
        }
}

@end

