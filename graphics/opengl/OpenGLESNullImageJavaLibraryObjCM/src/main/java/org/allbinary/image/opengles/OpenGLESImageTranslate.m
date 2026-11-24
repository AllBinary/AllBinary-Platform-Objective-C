// Generated Code Do Not Modify
#include "org/allbinary/image/opengles/OpenGLESImageTranslate.h"
#include "javax/microedition/khronos/opengles/GL10.h"
#include "org/allbinary/image/opengles/OpenGLESImage.h"


static OpenGLESImageTranslate* OpenGLESImageTranslate_instance;

void OpenGLESImageTranslate_staticInit(void) {
    static bool initialized = false;
    if (initialized) {
        return;
    }
    initialized = true;
    OpenGLESImageTranslate_instance = ((OpenGLESImageTranslate*) [((OpenGLESImageTranslate*) [OpenGLESImageTranslate alloc]) init]);
}

@implementation OpenGLESImageTranslate

- (instancetype) init {
    self = [super init];
    return self;
}


+ (OpenGLESImageTranslate*) getInstance {
        return (OpenGLESImageTranslate_staticInit(), OpenGLESImageTranslate_instance);
}


- (void) translate:(GL10*)gl :(OpenGLESImage*)openGLESImage :(float)x :(float)y {
        [openGLESImage->imageProcessor translate:gl :x :y];
}


- (void) translate2:(GL10*)gl :(OpenGLESImage*)openGLESImage {
}

@end

