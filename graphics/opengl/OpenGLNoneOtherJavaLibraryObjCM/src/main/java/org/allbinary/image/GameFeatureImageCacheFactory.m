// Generated Code Do Not Modify
#include "org/allbinary/image/GameFeatureImageCacheFactory.h"
#include "org/allbinary/image/ImageCacheFactory.h"
#include "org/allbinary/image/ImageCache.h"



void GameFeatureImageCacheFactory_staticInit(void) {
    static bool initialized = false;
    if (initialized) {
        return;
    }
    initialized = true;
}

@implementation GameFeatureImageCacheFactory

- (instancetype) init {
    self = [super init];
    return self;
}


+ (ImageCache*) getInstance {
        return [ImageCacheFactory getInstance];
}


+ (void) initMethod {
        [ImageCacheFactory initMethod];
}


+ (void) releaseAll {
        [[ImageCacheFactory getInstance] releaseAll];
}

@end

