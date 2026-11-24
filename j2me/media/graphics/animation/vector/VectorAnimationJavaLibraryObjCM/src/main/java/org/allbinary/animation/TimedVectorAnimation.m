// Generated Code Do Not Modify
#include "org/allbinary/animation/TimedVectorAnimation.h"
#include "org/allbinary/graphics/color/BasicColor.h"
#include "org/allbinary/time/GameTickTimeDelayHelperFactory.h"
#include "org/allbinary/time/TimeDelayHelper.h"
#include "org/allbinary/animation/VectorAnimation.h"
#include "org/allbinary/animation/AnimationBehavior.h"
#if __has_include("org/allbinary/animation/GameTickTimeDelayHelper.h")
#include "org/allbinary/animation/GameTickTimeDelayHelper.h"
#endif
#if __has_include("org/allbinary/graphics/color/GameTickTimeDelayHelper.h")
#include "org/allbinary/graphics/color/GameTickTimeDelayHelper.h"
#endif
#if __has_include("org/allbinary/time/GameTickTimeDelayHelper.h")
#include "org/allbinary/time/GameTickTimeDelayHelper.h"
#endif
#if __has_include("org/allbinary/time/GameTickTimeDelayHelper.h")
#include "org/allbinary/time/GameTickTimeDelayHelper.h"
#endif



void TimedVectorAnimation_staticInit(void) {
    static bool initialized = false;
    if (initialized) {
        return;
    }
    initialized = true;
}

@implementation TimedVectorAnimation

- (void) initFields {
    self->timeElapsedHelper = ((TimeDelayHelper*) [((TimeDelayHelper*) [TimeDelayHelper alloc]) init:200]);
}


- (instancetype) init:(int32_t***)currentPoints :(BasicColor*)basicColor :(AnimationBehavior*)animationBehavior {
        self = [super init:currentPoints :basicColor :animationBehavior];
        [self initFields];
    return self;
}


- (void) nextFrame {
        if ([self->timeElapsedHelper isTime:[GameTickTimeDelayHelperFactory getInstance]->startTime]) {
            [super nextFrame];
        }
}

@end

