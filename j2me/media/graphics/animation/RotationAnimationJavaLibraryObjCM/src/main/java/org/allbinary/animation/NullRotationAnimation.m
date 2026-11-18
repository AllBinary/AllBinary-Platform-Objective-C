// Generated Code Do Not Modify
#include "org/allbinary/animation/NullRotationAnimation.h"
#include "org/allbinary/math/AngleFactory.h"
#include "org/allbinary/math/AngleInfo.h"
#include "org/allbinary/util/CircularIndexUtil.h"
#include "org/allbinary/animation/RotationAnimation.h"
#include "org/allbinary/animation/AnimationBehavior.h"
#if __has_include("org/allbinary/animation/AngleIncrementInfo.h")
#include "org/allbinary/animation/AngleIncrementInfo.h"
#endif
#if __has_include("org/allbinary/math/AngleIncrementInfo.h")
#include "org/allbinary/math/AngleIncrementInfo.h"
#endif
#if __has_include("org/allbinary/math/AngleIncrementInfo.h")
#include "org/allbinary/math/AngleIncrementInfo.h"
#endif
#if __has_include("org/allbinary/util/AngleIncrementInfo.h")
#include "org/allbinary/util/AngleIncrementInfo.h"
#endif



void NullRotationAnimation_staticInit(void) {
    static bool initialized = false;
    if (initialized) {
        return;
    }
    initialized = true;
}

@implementation NullRotationAnimation


+ (NullRotationAnimation*) createTotalAngle:(AngleInfo*)angleInfo :(int16_t)totalAngle :(AnimationBehavior*)animationBehavior {
        return [((NullRotationAnimation*) [NullRotationAnimation alloc]) init:angleInfo :[CircularIndexUtil createInstance:totalAngle / [[angleInfo getAngleIncrementInfo] getAngleIncrement]] :animationBehavior];
}


+ (NullRotationAnimation*) createQuarter:(AnimationBehavior*)animationBehavior {
        return [((NullRotationAnimation*) [NullRotationAnimation alloc]) init:[AngleInfo getInstance:[AngleFactory getInstance]->QUARTER_TOTAL_ANGLE] :[CircularIndexUtil createInstance:4] :animationBehavior];
}


- (instancetype) init:(AngleInfo*)angleInfo :(CircularIndexUtil*)circularIndexUtil :(AnimationBehavior*)animationBehavior {
        self = [super init:angleInfo :circularIndexUtil :animationBehavior];
    return self;
}


// throws Exception
- (int32_t) getAnimationSize {
        return 0;
}

@end

