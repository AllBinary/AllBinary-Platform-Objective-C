// Generated Code Do Not Modify
#include "org/allbinary/platform/graphics/PlatformBitmapBase.h"
#include "javax/microedition/lcdui/Image.h"
#include "javax/microedition/lcdui/NullImage.h"
#include "org/allbinary/graphics/color/BasicColor.h"
#include "org/allbinary/graphics/color/BasicColorFactory.h"


PlatformBitmapBase* PlatformBitmapBase_NULL_PLATFORM_BITMAP_BASE;

void PlatformBitmapBase_staticInit(void) {
    static bool initialized = false;
    if (initialized) {
        return;
    }
    initialized = true;
    PlatformBitmapBase_NULL_PLATFORM_BITMAP_BASE = [((PlatformBitmapBase*) [PlatformBitmapBase alloc]) init];
}

@implementation PlatformBitmapBase

- (void) initFields {
    self->alpha = 255;
    self->basicColor = [BasicColorFactory getInstance]->NULL_COLOR;
}

- (instancetype) init {
    self = [super init];
    [self initFields];
    return self;
}


- (int32_t) getWidth {
        return 0;
}


- (int32_t) getHeight {
        return 0;
}


- (Image*) getImage {
        return (NullImage_staticInit(), NullImage_NULL_IMAGE);
}

@end

