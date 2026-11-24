// Generated Code Do Not Modify
#include "org/allbinary/platform/graphics/PlatformBitmapBaseFactory.h"
#include "javax/microedition/lcdui/Image.h"
#include "org/allbinary/platform/graphics/PlatformBitmapBase.h"


PlatformBitmapBaseFactory* PlatformBitmapBaseFactory_NULL_PLATFORM_BITMAP_BASE_FACTORY;

void PlatformBitmapBaseFactory_staticInit(void) {
    static bool initialized = false;
    if (initialized) {
        return;
    }
    initialized = true;
    PlatformBitmapBaseFactory_NULL_PLATFORM_BITMAP_BASE_FACTORY = ((PlatformBitmapBaseFactory*) [((PlatformBitmapBaseFactory*) [PlatformBitmapBaseFactory alloc]) init]);
}

@implementation PlatformBitmapBaseFactory

- (instancetype) init {
    self = [super init];
    return self;
}


- (PlatformBitmapBase*) createBitmap:(Image*)image {
        return (PlatformBitmapBase_staticInit(), PlatformBitmapBase_NULL_PLATFORM_BITMAP_BASE);
}

@end

