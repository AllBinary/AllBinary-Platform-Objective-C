// Generated Code Do Not Modify
#include "org/allbinary/graphics/ScreenCaptureNoneFactory.h"
#include "org/allbinary/graphics/ScreenCapture.h"


static ScreenCapture* ScreenCaptureNoneFactory_instance;

void ScreenCaptureNoneFactory_staticInit(void) {
    static bool initialized = false;
    if (initialized) {
        return;
    }
    initialized = true;
    ScreenCaptureNoneFactory_instance = ((ScreenCapture*) [((ScreenCapture*) [ScreenCapture alloc]) init]);
}

@implementation ScreenCaptureNoneFactory

- (instancetype) init {
    self = [super init];
    return self;
}


+ (ScreenCapture*) getInstance {
        return (ScreenCaptureNoneFactory_staticInit(), ScreenCaptureNoneFactory_instance);
}

@end

