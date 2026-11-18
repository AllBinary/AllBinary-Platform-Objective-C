// Generated Code Do Not Modify
#include "org/allbinary/image/opengles/OpenGLESImage.h"
#include "javax/microedition/khronos/opengles/GL.h"
#include "javax/microedition/khronos/opengles/GL10.h"
#include "javax/microedition/lcdui/Image.h"
#include "javax/microedition/lcdui/NullImage.h"
#include "org/allbinary/platform/graphics/PlatformBitmapBase.h"
#include "org/allbinary/platform/graphics/PlatformBitmapBaseFactory.h"
#include "org/allbinary/platform/opengles/PlatformTextureBaseFactory.h"
#include "org/allbinary/string/CommonStrings.h"
#include "org/allbinary/util/BasicArrayList.h"
#include "org/allbinary/util/BasicArrayListD.h"
#include "org/allbinary/image/opengles/OpenGLSurfaceChangedInterface.h"
#include "org/allbinary/image/opengles/OpenGLESImageProperties.h"


OpenGLESImage* OpenGLESImage_NULL_OPENGL_IMAGE;
BasicArrayList* OpenGLESImage_texture2dList;


void OpenGLESImage_staticInit(void) {
    static bool initialized = false;
    if (initialized) {
        return;
    }
    initialized = true;
    OpenGLESImage_NULL_OPENGL_IMAGE = [((OpenGLESImage*) [OpenGLESImage alloc]) init:(NullImage_staticInit(), NullImage_NULL_IMAGE) :(PlatformBitmapBaseFactory_staticInit(), PlatformBitmapBaseFactory_NULL_PLATFORM_BITMAP_BASE_FACTORY) :(PlatformTextureBaseFactory_staticInit(), PlatformTextureBaseFactory_NULL_PLATFORM_TEXTURE_BASE_FACTORY)];
    OpenGLESImage_texture2dList = [((BasicArrayListD*) [BasicArrayListD alloc]) init];
}

@implementation OpenGLESImage

- (void) initFields {
    self->commonStrings = [CommonStrings getInstance];
    
    
    self->openGLESImageProperties = [((OpenGLESImageProperties*) [OpenGLESImageProperties alloc]) init];
}


- (instancetype) init:(Image*)image :(PlatformBitmapBaseFactory*)bitmapFactory :(PlatformTextureBaseFactory*)textureFactory {
    self = [super init];
    [self initFields];
        self->openGLBitmap = [bitmapFactory createBitmap:image];
        self->textureFactory = textureFactory;
    return self;
}


// throws Exception
- (void) set:(GL*)gl {
        java_throw(java_exception_new("Exception", self->commonStrings->NOT_IMPLEMENTED));
}


- (bool) initTexture:(GL10*)gl {
        return false;
}


- (void) drawRegion:(GL10*)gl :(int32_t)viewHeight :(float)x_src :(float)y_src :(float)width :(float)height :(int32_t)x :(int32_t)y :(int32_t)z {
}


- (void) draw:(GL10*)gl :(int32_t)x :(int32_t)y :(int32_t)z {
}


- (int32_t) getType {
        return OpenGLESImage_TYPE;
}

@end

