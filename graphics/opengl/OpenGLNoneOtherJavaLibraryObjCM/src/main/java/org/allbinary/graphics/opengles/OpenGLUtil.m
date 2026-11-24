// Generated Code Do Not Modify
#include "org/allbinary/graphics/opengles/OpenGLUtil.h"
#include "javax/microedition/lcdui/Image.h"


static OpenGLUtil* OpenGLUtil_instance;

void OpenGLUtil_staticInit(void) {
    static bool initialized = false;
    if (initialized) {
        return;
    }
    initialized = true;
    OpenGLUtil_instance = ((OpenGLUtil*) [((OpenGLUtil*) [OpenGLUtil alloc]) init]);
}

@implementation OpenGLUtil

- (instancetype) init {
    self = [super init];
    return self;
}


+ (OpenGLUtil*) getInstance {
        return (OpenGLUtil_staticInit(), OpenGLUtil_instance);
}


- (Image*) addImage:(Image*)image {
        return image;
}


- (void) clear {
}


- (void) addRunnable:(Runnable*)runnable {
}

@end

