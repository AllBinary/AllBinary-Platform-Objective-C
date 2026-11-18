// Generated Code Do Not Modify
#include "org/allbinary/image/opengles/OpenGLImageUtilBase.h"
#include "org/allbinary/graphics/OpenGLBitmap.h"
#include "org/allbinary/graphics/color/BasicColor.h"



void OpenGLImageUtilBase_staticInit(void) {
    static bool initialized = false;
    if (initialized) {
        return;
    }
    initialized = true;
}

@implementation OpenGLImageUtilBase

- (instancetype) init {
    self = [super init];
    return self;
}


- (OpenGLBitmap*) paint:(OpenGLBitmap*)alphaBitmap :(OpenGLBitmap*)originalBitmap :(int32_t)index {
        java_throw(java_exception_new("RuntimeException", ""));
}


- (OpenGLBitmap*) paint:(OpenGLBitmap*)colorBitmap :(OpenGLBitmap*)originalBitmap :(int32_t)alpha :(BasicColor*)basicColor {
        java_throw(java_exception_new("RuntimeException", ""));
}


// throws IOException
- (OpenGLBitmap*) createImage:(const char*)name {
        java_throw(java_exception_new("RuntimeException", ""));
}


// throws IOException
- (OpenGLBitmap*) createImageFromInputStream:(InputStream*)inputStream {
        java_throw(java_exception_new("RuntimeException", ""));
}

@end

