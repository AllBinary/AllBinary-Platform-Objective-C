// Generated Code Do Not Modify
#include "org/allbinary/animation/VectorRotationAnimation.h"
#include "org/allbinary/direction/Direction.h"
#include "org/allbinary/graphics/color/BasicColor.h"
#include "org/allbinary/math/Angle.h"
#include "org/allbinary/math/AngleFactory.h"
#include "org/allbinary/math/AngleInfo.h"
#include "org/allbinary/animation/VectorBaseRotationAnimation.h"
#include "org/allbinary/animation/AnimationBehavior.h"
#if __has_include("org/allbinary/math/AngleFactory.h")
#include "org/allbinary/math/AngleFactory.h"
#endif
#if __has_include("org/allbinary/animation/AngleIncrementInfo.h")
#include "org/allbinary/animation/AngleIncrementInfo.h"
#endif
#if __has_include("org/allbinary/direction/AngleIncrementInfo.h")
#include "org/allbinary/direction/AngleIncrementInfo.h"
#endif
#if __has_include("org/allbinary/graphics/color/AngleIncrementInfo.h")
#include "org/allbinary/graphics/color/AngleIncrementInfo.h"
#endif
#if __has_include("org/allbinary/math/AngleIncrementInfo.h")
#include "org/allbinary/math/AngleIncrementInfo.h"
#endif
#if __has_include("org/allbinary/math/AngleIncrementInfo.h")
#include "org/allbinary/math/AngleIncrementInfo.h"
#endif
#if __has_include("org/allbinary/math/AngleIncrementInfo.h")
#include "org/allbinary/math/AngleIncrementInfo.h"
#endif



void VectorRotationAnimation_staticInit(void) {
    static bool initialized = false;
    if (initialized) {
        return;
    }
    initialized = true;
}

@implementation VectorRotationAnimation


- (instancetype) init:(int32_t***)currentPoints :(BasicColor*)basicColor :(AnimationBehavior*)animationBehavior {
        self = [super init:[AngleInfo getInstance:((int16_t) (((int32_t) [AngleFactory getInstance]->TOTAL_ANGLE) / java_array_length(currentPoints)))] :currentPoints :basicColor :animationBehavior];
        [self->angleInfo adjustAngle:[self getFrame]];
    return self;
}


- (void) setFrameByDirection:(Direction*)direction {
        Angle* angle = [self->directionUtil getFrameAngle:direction];
        [self adjustFrameToAngle:angle];
}


- (void) setFrameToAngle:(Angle*)angle {
        [self adjustFrameToAngle:angle];
}


- (void) setFrame:(int32_t)index {
        [super setFrame:index];
        [self->angleInfo adjustAngle:[self getFrame]];
}


- (void) adjustFrame:(int16_t)newAngle {
        [self setFrame:[self->frameUtil getFrameForAngle:newAngle :((int32_t) [[self->angleInfo getAngleIncrementInfo] getAngleIncrement])]];
}


- (void) adjustFrameToAngle:(Angle*)newAngle {
        [self adjustFrame:[newAngle getValue]];
}

@end

