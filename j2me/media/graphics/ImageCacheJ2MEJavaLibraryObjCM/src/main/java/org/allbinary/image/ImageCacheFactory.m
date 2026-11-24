// Generated Code Do Not Modify
#include "org/allbinary/image/ImageCacheFactory.h"
#include "org/allbinary/image/ImageCache.h"


static ImageCache* ImageCacheFactory_IMAGE_CACHE;

void ImageCacheFactory_staticInit(void) {
    static bool initialized = false;
    if (initialized) {
        return;
    }
    initialized = true;
    ImageCacheFactory_IMAGE_CACHE = ((ImageCache*) [((ImageCache*) [ImageCache alloc]) init]);
}

@implementation ImageCacheFactory

- (instancetype) init {
    self = [super init];
    return self;
}


+ (ImageCache*) getInstance {
        return (ImageCacheFactory_staticInit(), ImageCacheFactory_IMAGE_CACHE);
}


+ (void) initMethod {
}

@end

