// Generated Code Do Not Modify
#include "org/allbinary/platform/graphics/PlatformBitmapBase.h"
#include "javax/microedition/lcdui/Image.h"
#include "javax/microedition/lcdui/NullImage.h"



void PlatformBitmapBase_staticInit(void) {
    static bool initialized = false;
    if (initialized) {
        return;
    }
    initialized = true;
}

@implementation PlatformBitmapBase

- (instancetype) init {
    self = [super init];
    return self;
}


- (Image*) getImage {
        return (NullImage_staticInit(), NullImage_NULL_IMAGE);
}

@end

