// Generated Code Do Not Modify
#include "org/allbinary/animation/RotationAnimation.h"
#include "org/allbinary/direction/Direction.h"
#include "org/allbinary/direction/DirectionUtil.h"
#include "org/allbinary/logic/string/StringMaker.h"
#include "org/allbinary/math/Angle.h"
#include "org/allbinary/math/AngleInfo.h"
#include "org/allbinary/math/FrameUtil.h"
#include "org/allbinary/util/CircularIndexUtil.h"
#include "org/allbinary/animation/IndexedAnimation.h"
#include "org/allbinary/animation/RotationAnimationInterface.h"
#include "org/allbinary/animation/AnimationBehavior.h"
#if __has_include("org/allbinary/animation/AngleIncrementInfo.h")
#include "org/allbinary/animation/AngleIncrementInfo.h"
#endif
#if __has_include("org/allbinary/direction/AngleIncrementInfo.h")
#include "org/allbinary/direction/AngleIncrementInfo.h"
#endif
#if __has_include("org/allbinary/direction/AngleIncrementInfo.h")
#include "org/allbinary/direction/AngleIncrementInfo.h"
#endif
#if __has_include("org/allbinary/logic/string/AngleIncrementInfo.h")
#include "org/allbinary/logic/string/AngleIncrementInfo.h"
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
#if __has_include("org/allbinary/util/AngleIncrementInfo.h")
#include "org/allbinary/util/AngleIncrementInfo.h"
#endif
#if __has_include("org/allbinary/logic/string/StringMaker.h")
#include "org/allbinary/logic/string/StringMaker.h"
#endif
#if __has_include("org/allbinary/logic/string/StringMaker.h")
#include "org/allbinary/logic/string/StringMaker.h"
#endif
#if __has_include("org/allbinary/logic/string/StringMaker.h")
#include "org/allbinary/logic/string/StringMaker.h"
#endif
#if __has_include("org/allbinary/logic/string/StringMaker.h")
#include "org/allbinary/logic/string/StringMaker.h"
#endif
#if __has_include("org/allbinary/logic/string/StringMaker.h")
#include "org/allbinary/logic/string/StringMaker.h"
#endif



void RotationAnimation_staticInit(void) {
    static bool initialized = false;
    if (initialized) {
        return;
    }
    initialized = true;
}

@implementation RotationAnimation

- (void) initFields {
    self->frameUtil = [FrameUtil getInstance];
    self->directionUtil = [DirectionUtil getInstance];
    
    
}


- (instancetype) init:(AngleInfo*)angleInfo :(CircularIndexUtil*)circularIndexUtil :(AnimationBehavior*)animationBehavior {
        self = [super init:animationBehavior];
        [self initFields];
        self->angleInfo = angleInfo;
        self->circularIndexUtil = circularIndexUtil;
    return self;
}


- (void) nextRotationX {
}


- (void) previousRotationX {
}


- (void) nextRotation {
        [self->angleInfo adjustAngle:[self->circularIndexUtil next]];
}


- (void) previousRotation {
        [self->angleInfo adjustAngle:[self->circularIndexUtil previous]];
}


- (void) nextRotationZ {
}


- (void) previousRotationZ {
}


- (void) setFrame:(int32_t)index {
        [self->circularIndexUtil setIndex:index];
        int32_t newFrame = [self->circularIndexUtil getIndex];
        [self->angleInfo adjustAngle:newFrame];
}


- (void) setFrameByDirection:(Direction*)direction {
        Angle* angle = [self->directionUtil getFrameAngle:direction];
        [self adjustFrameToAngle:angle];
}


- (void) setFrameToAngle:(Angle*)angle {
        [self adjustFrameToAngle:angle];
}


- (void) adjustFrameToAngle:(Angle*)angle {
        [self adjustFrame:[angle getValue]];
}


- (void) adjustFrame:(int16_t)angle {
        [self setFrame:[self->frameUtil getFrameForAngle:angle :((int32_t) [[self->angleInfo getAngleIncrementInfo] getAngleIncrement])]];
}


- (int32_t) getFrame {
        return [self->circularIndexUtil getIndex];
}


- (int32_t) getSize {
        return [self->circularIndexUtil getSize];
}


- (AngleInfo*) getAngleInfoP {
        return self->angleInfo;
}


- (const char*) toString {
        return [[[[[[((StringMaker*) [((StringMaker*) [StringMaker alloc]) init]) append:[super toString]] append:"circularIndexUtil: "] append:[self->circularIndexUtil toString]] append:"angleInfo: "] append:[self->angleInfo toString]] toString];
}

@end

