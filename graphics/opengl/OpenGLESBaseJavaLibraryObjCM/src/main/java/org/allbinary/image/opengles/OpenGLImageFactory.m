// Generated Code Do Not Modify
#include "org/allbinary/image/opengles/OpenGLImageFactory.h"
#include "javax/microedition/lcdui/Image.h"
#include "org/allbinary/platform/graphics/PlatformBitmapBaseFactory.h"
#include "org/allbinary/platform/opengles/PlatformTextureBaseFactory.h"


OpenGLImageFactory* OpenGLImageFactory_NULL_OPENGL_IMAGE_FACTORY;

void OpenGLImageFactory_staticInit(void) {
    static bool initialized = false;
    if (initialized) {
        return;
    }
    initialized = true;
    OpenGLImageFactory_NULL_OPENGL_IMAGE_FACTORY = ((OpenGLImageFactory*) [((OpenGLImageFactory*) [OpenGLImageFactory alloc]) init]);
}

@implementation OpenGLImageFactory

- (instancetype) init {
    self = [super init];
    return self;
}


- (Image*) getInstance:(Image*)image :(PlatformBitmapBaseFactory*)bitmapFactory :(PlatformTextureBaseFactory*)textureFactory {
        java_throw(java_exception_new("RuntimeException", ""));
}

@end

