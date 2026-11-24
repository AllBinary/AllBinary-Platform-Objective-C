// Generated Code Do Not Modify
#include "org/allbinary/media/image/ImageModifierUtil.h"
#include "javax/microedition/lcdui/Image.h"
#include "org/allbinary/graphics/color/BasicColor.h"


static ImageModifierUtil* ImageModifierUtil_instance;

void ImageModifierUtil_staticInit(void) {
    static bool initialized = false;
    if (initialized) {
        return;
    }
    initialized = true;
    ImageModifierUtil_instance = ((ImageModifierUtil*) [((ImageModifierUtil*) [ImageModifierUtil alloc]) init]);
}

@implementation ImageModifierUtil

- (instancetype) init {
    self = [super init];
    return self;
}


+ (ImageModifierUtil*) getInstanceOrCreate {
        return (ImageModifierUtil_staticInit(), ImageModifierUtil_instance);
}


- (void) setColor:(Image*)unusedOriginalImage :(Image*)image :(int32_t)imageIndex :(BasicColor*)basicColor {
}


- (void) changeColor:(Image*)unusedOriginalImage :(Image*)image :(int32_t)imageIndex :(BasicColor*)basicColor {
}


- (void) setAlpha:(Image*)originalImage :(Image*)image :(int32_t)imageIndex :(int32_t)alphaInt {
}


- (Image**) getImageArray:(Image**)originalImageArray {
        return originalImageArray;
}


- (void) handleImage:(Image**)imageArray :(int32_t)index :(Image*)image {
}


- (void) reset {
}

@end

