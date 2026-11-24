// Generated Code Do Not Modify
#include "org/allbinary/media/image/ImageCreationUtil.h"
#include "javax/microedition/lcdui/Image.h"
#include "org/allbinary/image/GameFeatureImageCacheFactory.h"
#if __has_include("org/allbinary/media/image/ImageCache.h")
#include "org/allbinary/media/image/ImageCache.h"
#endif
#if __has_include("javax/microedition/lcdui/ImageCache.h")
#include "javax/microedition/lcdui/ImageCache.h"
#endif
#if __has_include("org/allbinary/image/ImageCache.h")
#include "org/allbinary/image/ImageCache.h"
#endif
#if __has_include("org/allbinary/media/image/ImageCache.h")
#include "org/allbinary/media/image/ImageCache.h"
#endif
#if __has_include("javax/microedition/lcdui/ImageCache.h")
#include "javax/microedition/lcdui/ImageCache.h"
#endif
#if __has_include("org/allbinary/image/ImageCache.h")
#include "org/allbinary/image/ImageCache.h"
#endif


static ImageCreationUtil* ImageCreationUtil_instance;

void ImageCreationUtil_staticInit(void) {
    static bool initialized = false;
    if (initialized) {
        return;
    }
    initialized = true;
    ImageCreationUtil_instance = ((ImageCreationUtil*) [((ImageCreationUtil*) [ImageCreationUtil alloc]) init]);
}

@implementation ImageCreationUtil


+ (ImageCreationUtil*) getInstance {
        return (ImageCreationUtil_staticInit(), ImageCreationUtil_instance);
}


- (instancetype) init {
    self = [super init];
    return self;
}


// throws Exception
- (Image*) createImageWH:(int32_t)width :(int32_t)height {
        Image* image = [[GameFeatureImageCacheFactory getInstance] get:java_objc_class_name(self) :width :height];
        return image;
}


// throws Exception
- (Image*) createImage:(int32_t)width :(int32_t)height :(float)maxScaleX :(float)maxScaleY {
        Image* image = [[GameFeatureImageCacheFactory getInstance] get:java_objc_class_name(self) :((int32_t) (((float) width) * maxScaleX)) + 1 :((int32_t) (((float) height) * maxScaleY)) + 1];
        return image;
}

@end

