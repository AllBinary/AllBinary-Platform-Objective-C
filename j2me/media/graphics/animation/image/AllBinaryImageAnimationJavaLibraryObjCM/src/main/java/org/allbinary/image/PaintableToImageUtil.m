// Generated Code Do Not Modify
#include "org/allbinary/image/PaintableToImageUtil.h"
#include "javax/microedition/lcdui/Graphics.h"
#include "javax/microedition/lcdui/Image.h"
#include "org/allbinary/graphics/paint/PaintableInterface.h"
#include "org/allbinary/image/GameFeatureImageCacheFactory.h"
#if __has_include("org/allbinary/image/ImageCache.h")
#include "org/allbinary/image/ImageCache.h"
#endif
#if __has_include("javax/microedition/lcdui/ImageCache.h")
#include "javax/microedition/lcdui/ImageCache.h"
#endif
#if __has_include("javax/microedition/lcdui/ImageCache.h")
#include "javax/microedition/lcdui/ImageCache.h"
#endif
#if __has_include("org/allbinary/graphics/paint/ImageCache.h")
#include "org/allbinary/graphics/paint/ImageCache.h"
#endif


static PaintableToImageUtil* PaintableToImageUtil_instance;

void PaintableToImageUtil_staticInit(void) {
    static bool initialized = false;
    if (initialized) {
        return;
    }
    initialized = true;
    PaintableToImageUtil_instance = [((PaintableToImageUtil*) [PaintableToImageUtil alloc]) init];
}

@implementation PaintableToImageUtil

- (instancetype) init {
    self = [super init];
    return self;
}


// throws Exception
+ (Image*) getImage:(PaintableInterface*)paintableInterface :(int32_t)width :(int32_t)height {
        Image* image = [[GameFeatureImageCacheFactory getInstance] get:java_objc_class_name((PaintableToImageUtil_staticInit(), PaintableToImageUtil_instance)) :width :height];
        Graphics* graphics = [image getGraphics];
        [paintableInterface paint:graphics];
        return image;
}

@end

