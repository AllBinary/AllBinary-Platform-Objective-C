// Generated Code Do Not Modify
#include "org/allbinary/media/image/ImageCompleteUtil.h"
#include "javax/microedition/lcdui/Image.h"


static ImageCompleteUtil* ImageCompleteUtil_instance;

void ImageCompleteUtil_staticInit(void) {
    static bool initialized = false;
    if (initialized) {
        return;
    }
    initialized = true;
    ImageCompleteUtil_instance = ((ImageCompleteUtil*) [((ImageCompleteUtil*) [ImageCompleteUtil alloc]) init]);
}

@implementation ImageCompleteUtil

- (instancetype) init {
    self = [super init];
    return self;
}


+ (ImageCompleteUtil*) getInstance {
        return (ImageCompleteUtil_staticInit(), ImageCompleteUtil_instance);
}


// throws Exception
- (void) waitForImage:(Image*)image :(const char*)name {
}

@end

