// Generated Code Do Not Modify
#include "org/allbinary/emulator/device/TrueTypeFontUtil.h"
#include "javax/microedition/khronos/opengles/GL10.h"
#include "javax/microedition/lcdui/Image.h"
#include "org/allbinary/graphics/color/BasicColor.h"
#include "org/allbinary/image/opengles/OpenGLESImage.h"
#include "org/allbinary/emulator/device/TrueTypeFontUtilBase.h"


static TrueTypeFontUtil* TrueTypeFontUtil_instance;

void TrueTypeFontUtil_staticInit(void) {
    static bool initialized = false;
    if (initialized) {
        return;
    }
    initialized = true;
    TrueTypeFontUtil_instance = ((TrueTypeFontUtil*) [((TrueTypeFontUtil*) [TrueTypeFontUtil alloc]) init]);
}

@implementation TrueTypeFontUtil

- (void) initFields {
    self->fontImage = (OpenGLESImage_staticInit(), OpenGLESImage_NULL_OPENGL_IMAGE);
}


+ (TrueTypeFontUtil*) getInstance {
        return (TrueTypeFontUtil_staticInit(), TrueTypeFontUtil_instance);
}


- (instancetype) init {
        self = [super init:1];
        [self initFields];
    return self;
}


- (int32_t) getAsTextureSize:(int32_t)textureSize {
        java_throw(java_exception_new("RuntimeException", ""));
}


- (int32_t) getCellSize:(int32_t)cellSize {
        java_throw(java_exception_new("RuntimeException", ""));
}


- (Image*) getFontBitmap:(const char*)filename :(int32_t)fontSize :(int32_t)cellSize :(BasicColor*)basicColor {
        java_throw(java_exception_new("RuntimeException", ""));
}


- (void) saveFontAtlasAsFile {
}


- (Image*) getFontBitmapGL:(GL10*)gl :(const char*)filename :(int32_t)cellSize :(BasicColor*)basicColor {
        java_throw(java_exception_new("RuntimeException", ""));
}


- (int32_t*) getFontWidths:(const char*)filename :(int32_t)fontSize {
        java_throw(java_exception_new("RuntimeException", ""));
}

@end

