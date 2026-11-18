// Generated Code Do Not Modify
#include "javax/microedition/lcdui/PreLoadPlatformImage.h"
#include "javax/microedition/lcdui/PlatformImage.h"


static PreLoadPlatformImage* PreLoadPlatformImage_instance;

void PreLoadPlatformImage_staticInit(void) {
    static bool initialized = false;
    if (initialized) {
        return;
    }
    initialized = true;
    PreLoadPlatformImage_instance = [((PreLoadPlatformImage*) [PreLoadPlatformImage alloc]) init];
}

@implementation PreLoadPlatformImage

- (instancetype) init {
    self = [super init];
    return self;
}


+ (PreLoadPlatformImage*) getInstance {
        return (PreLoadPlatformImage_staticInit(), PreLoadPlatformImage_instance);
}

@end

