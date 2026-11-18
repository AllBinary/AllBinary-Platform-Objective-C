// Generated Code Do Not Modify
#include "org/allbinary/image/opengles/OpenGLESDeviceImageTranslate.h"
#include "javax/microedition/khronos/opengles/GL10.h"
#include "org/allbinary/image/opengles/OpenGLESImageTranslate.h"
#include "org/allbinary/image/opengles/OpenGLESImage.h"



void OpenGLESDeviceImageTranslate_staticInit(void) {
    static bool initialized = false;
    if (initialized) {
        return;
    }
    initialized = true;
}

@implementation OpenGLESDeviceImageTranslate

- (void) initFields {
    self->translateX = 0.0f;
    self->translateY = 0.0f;
    self->translateX2 = 0.0f;
    self->translateY2 = 0.0f;
}

- (instancetype) init {
    self = [super init];
    [self initFields];
    return self;
}


- (void) translate:(GL10*)gl :(OpenGLESImage*)openGLESImage :(float)x :(float)y {
        [openGLESImage->imageProcessor translate:gl :self->translateX + (openGLESImage->openGLESImageProperties->scaleX * x) :self->translateY + (openGLESImage->openGLESImageProperties->scaleY * y)];
}


- (void) translate2:(GL10*)gl :(OpenGLESImage*)openGLESImage {
        [openGLESImage->imageProcessor translate:gl :self->translateX2 :self->translateY2];
}

@end

