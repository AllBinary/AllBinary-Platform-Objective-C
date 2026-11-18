// Generated Code Do Not Modify
#include "org/allbinary/image/opengles/OpenGLImageCacheFactory.h"
#include "org/allbinary/image/ImageCache.h"


static ImageCache* OpenGLImageCacheFactory_IMAGE_CACHE;

void OpenGLImageCacheFactory_staticInit(void) {
    static bool initialized = false;
    if (initialized) {
        return;
    }
    initialized = true;
    OpenGLImageCacheFactory_IMAGE_CACHE = (ImageCache_staticInit(), ImageCache_NULL_IMAGE_CACHE);
}

@implementation OpenGLImageCacheFactory

- (instancetype) init {
    self = [super init];
    return self;
}


+ (ImageCache*) getInstance {
        return (OpenGLImageCacheFactory_staticInit(), OpenGLImageCacheFactory_IMAGE_CACHE);
}


+ (void) init_ {
        if ((OpenGLImageCacheFactory_staticInit(), OpenGLImageCacheFactory_IMAGE_CACHE) == nil) {
        }
}

@end

