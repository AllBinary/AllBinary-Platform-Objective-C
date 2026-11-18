// Generated Code Do Not Modify
#include "org/allbinary/graphics/ScreenCaptureFactory.h"
#include "org/allbinary/graphics/ScreenCaptureNoneFactory.h"
#include "org/allbinary/graphics/ScreenCapture.h"


static ScreenCapture* ScreenCaptureFactory_instance;

void ScreenCaptureFactory_staticInit(void) {
    static bool initialized = false;
    if (initialized) {
        return;
    }
    initialized = true;
    ScreenCaptureFactory_instance = [ScreenCaptureNoneFactory getInstance];
}

@implementation ScreenCaptureFactory

- (instancetype) init {
    self = [super init];
    return self;
}


+ (ScreenCapture*) getInstance {
        return (ScreenCaptureFactory_staticInit(), ScreenCaptureFactory_instance);
}

@end

