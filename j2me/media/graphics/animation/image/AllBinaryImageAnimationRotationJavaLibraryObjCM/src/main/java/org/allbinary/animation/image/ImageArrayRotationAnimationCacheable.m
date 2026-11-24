// Generated Code Do Not Modify
#include "org/allbinary/animation/image/ImageArrayRotationAnimationCacheable.h"
#include "org/allbinary/animation/AnimationBehavior.h"
#include "org/allbinary/logic/NullUtil.h"
#include "org/allbinary/logic/string/StringUtil.h"
#include "org/allbinary/animation/image/AdjustedImageArrayRotationAnimation.h"
#include "org/allbinary/animation/image/ImageArrayRotationAnimationInfo.h"
#if __has_include("org/allbinary/logic/NullUtil.h")
#include "org/allbinary/logic/NullUtil.h"
#endif
#if __has_include("org/allbinary/logic/string/StringUtil.h")
#include "org/allbinary/logic/string/StringUtil.h"
#endif



void ImageArrayRotationAnimationCacheable_staticInit(void) {
    static bool initialized = false;
    if (initialized) {
        return;
    }
    initialized = true;
}

@implementation ImageArrayRotationAnimationCacheable


- (instancetype) init:(id)anyType :(AnimationBehavior*)animationBehavior {
        self = [super init:[(((ImageArrayRotationAnimationInfo*) anyType)) getImageArray] :[(((ImageArrayRotationAnimationInfo*) anyType)) getAngleInfoP] :[(((ImageArrayRotationAnimationInfo*) anyType)) getTotalAngle] :[(((ImageArrayRotationAnimationInfo*) anyType)) getDx] :[(((ImageArrayRotationAnimationInfo*) anyType)) getDy] :animationBehavior];
    return self;
}


- (id) getKey {
        return [NullUtil getInstance]->NULL_OBJECT;
}


- (const char*) toString {
        return [StringUtil getInstance]->EMPTY_STRING;
}

@end

