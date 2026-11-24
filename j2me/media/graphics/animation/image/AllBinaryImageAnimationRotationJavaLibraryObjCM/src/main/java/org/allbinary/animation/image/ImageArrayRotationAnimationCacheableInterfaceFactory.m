// Generated Code Do Not Modify
#include "org/allbinary/animation/image/ImageArrayRotationAnimationCacheableInterfaceFactory.h"
#include "org/allbinary/animation/AnimationBehavior.h"
#include "org/allbinary/logic/util/cache/CacheableInterface.h"
#include "org/allbinary/animation/image/ImageArrayRotationAnimationCacheable.h"



void ImageArrayRotationAnimationCacheableInterfaceFactory_staticInit(void) {
    static bool initialized = false;
    if (initialized) {
        return;
    }
    initialized = true;
}

@implementation ImageArrayRotationAnimationCacheableInterfaceFactory

- (instancetype) init {
    self = [super init];
    return self;
}


// throws Exception
- (CacheableInterface*) getInstance:(id)key {
        return ((ImageArrayRotationAnimationCacheable*) [((ImageArrayRotationAnimationCacheable*) [ImageArrayRotationAnimationCacheable alloc]) init:key :[AnimationBehavior getInstance]]);
}

@end

