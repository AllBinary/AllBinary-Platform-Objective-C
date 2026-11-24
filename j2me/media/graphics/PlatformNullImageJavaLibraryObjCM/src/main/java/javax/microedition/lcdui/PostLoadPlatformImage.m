// Generated Code Do Not Modify
#include "javax/microedition/lcdui/PostLoadPlatformImage.h"
#include "javax/microedition/lcdui/PlatformImage.h"


static PostLoadPlatformImage* PostLoadPlatformImage_instance;

void PostLoadPlatformImage_staticInit(void) {
    static bool initialized = false;
    if (initialized) {
        return;
    }
    initialized = true;
    PostLoadPlatformImage_instance = ((PostLoadPlatformImage*) [((PostLoadPlatformImage*) [PostLoadPlatformImage alloc]) init]);
}

@implementation PostLoadPlatformImage

- (instancetype) init {
    self = [super init];
    return self;
}


+ (PostLoadPlatformImage*) getInstance {
        return (PostLoadPlatformImage_staticInit(), PostLoadPlatformImage_instance);
}

@end

