// Generated Code Do Not Modify
#include "org/allbinary/animation/image/ImageArrayRotationAnimationPool.h"
#include "org/allbinary/logic/util/cache/CacheableInterface.h"
#include "org/allbinary/logic/util/cache/CacheableInterfaceFactoryInterface.h"
#include "org/allbinary/logic/util/cache/PoolInterface.h"
#include "org/allbinary/animation/image/ImageArrayRotationAnimationCacheableInterfaceFactory.h"
#include "org/allbinary/animation/image/ImageArrayRotationAnimationInfo.h"
#include "org/allbinary/animation/image/ImageArrayRotationAnimationCacheable.h"


static PoolInterface* ImageArrayRotationAnimationPool_IMAGE_ROTATION_ANIMATION_POOL;

void ImageArrayRotationAnimationPool_staticInit(void) {
    static bool initialized = false;
    if (initialized) {
        return;
    }
    initialized = true;
    ImageArrayRotationAnimationPool_IMAGE_ROTATION_ANIMATION_POOL = ((ImageArrayRotationAnimationPool*) [((ImageArrayRotationAnimationPool*) [ImageArrayRotationAnimationPool alloc]) init:((ImageArrayRotationAnimationCacheableInterfaceFactory*) [((ImageArrayRotationAnimationCacheableInterfaceFactory*) [ImageArrayRotationAnimationCacheableInterfaceFactory alloc]) init])]);
}

@implementation ImageArrayRotationAnimationPool


- (instancetype) init:(CacheableInterfaceFactoryInterface*)cacheableInterfaceFactoryInterface {
        self = [super init:cacheableInterfaceFactoryInterface];
    return self;
}


+ (PoolInterface*) getInstance {
        return (ImageArrayRotationAnimationPool_staticInit(), ImageArrayRotationAnimationPool_IMAGE_ROTATION_ANIMATION_POOL);
}


// throws Exception
- (CacheableInterface*) remove:(id)key {
        CacheableInterface* cacheableInterface = [super remove:key];
        ImageArrayRotationAnimationInfo* allBinaryImageRotationAnimationInfo = ((ImageArrayRotationAnimationInfo*) key);
        ImageArrayRotationAnimationCacheable* imageArrayRotationAnimationCacheable = (((ImageArrayRotationAnimationCacheable*) cacheableInterface));
        [imageArrayRotationAnimationCacheable setImageArray:[allBinaryImageRotationAnimationInfo getImageArray]];
        return cacheableInterface;
}

@end

