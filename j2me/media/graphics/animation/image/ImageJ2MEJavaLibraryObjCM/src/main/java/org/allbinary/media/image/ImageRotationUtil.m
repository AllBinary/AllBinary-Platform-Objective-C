// Generated Code Do Not Modify
#include "org/allbinary/media/image/ImageRotationUtil.h"
#include "javax/microedition/lcdui/Image.h"
#include "org/allbinary/graphics/Anchor.h"


static ImageRotationUtil* ImageRotationUtil_instance;

void ImageRotationUtil_staticInit(void) {
    static bool initialized = false;
    if (initialized) {
        return;
    }
    initialized = true;
    ImageRotationUtil_instance = ((ImageRotationUtil*) [((ImageRotationUtil*) [ImageRotationUtil alloc]) init]);
}

@implementation ImageRotationUtil

- (void) initFields {
    self->anchor = (Anchor_staticInit(), Anchor_TOP_LEFT);
}


+ (ImageRotationUtil*) getInstance {
        return (ImageRotationUtil_staticInit(), ImageRotationUtil_instance);
}


- (instancetype) init {
    self = [super init];
    [self initFields];
    return self;
}


// throws Exception
- (Image*) createRotatedImage:(Image*)originalImage :(int32_t)rotationInDegrees {
        return originalImage;
}

@end

