// Generated Code Do Not Modify
#include "org/allbinary/media/image/ImageToRotationImageArrayUtil.h"
#include "javax/microedition/lcdui/Image.h"
#include "org/allbinary/media/image/ImageRotationUtil.h"


static ImageToRotationImageArrayUtil* ImageToRotationImageArrayUtil_instance;

void ImageToRotationImageArrayUtil_staticInit(void) {
    static bool initialized = false;
    if (initialized) {
        return;
    }
    initialized = true;
    ImageToRotationImageArrayUtil_instance = [((ImageToRotationImageArrayUtil*) [ImageToRotationImageArrayUtil alloc]) init];
}

@implementation ImageToRotationImageArrayUtil


+ (ImageToRotationImageArrayUtil*) getInstance {
        return (ImageToRotationImageArrayUtil_staticInit(), ImageToRotationImageArrayUtil_instance);
}


- (instancetype) init {
    self = [super init];
    return self;
}


// throws Exception
- (Image**) generate:(Image*)image :(int32_t)angleIncrement :(int32_t)totalAngle {
        ImageRotationUtil* imageRotationUtil = [ImageRotationUtil getInstance];
        int32_t totalFrames = totalAngle / angleIncrement;
        Image** imageArray = ((Image**) java_array_new(sizeof(Image*), totalFrames));
        imageArray[0] = image;
        for (int32_t index = 1; index < totalFrames; index++) {
            imageArray[index] = [imageRotationUtil createRotatedImage:image :index * angleIncrement];
        }
        return imageArray;
}

@end

