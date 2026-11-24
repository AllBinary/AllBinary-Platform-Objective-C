// Generated Code Do Not Modify
#include "javax/microedition/lcdui/PlatformImage.h"
#include "org/allbinary/logic/NullUtil.h"
#include "javax/microedition/lcdui/NullImage.h"
#include "javax/microedition/lcdui/Image.h"
#include "javax/microedition/lcdui/Graphics.h"
#if __has_include("org/allbinary/logic/NullUtil.h")
#include "org/allbinary/logic/NullUtil.h"
#endif



void PlatformImage_staticInit(void) {
    static bool initialized = false;
    if (initialized) {
        return;
    }
    initialized = true;
}

@implementation PlatformImage

- (instancetype) init {
    self = [super init];
    return self;
}


- (id) getImage:(id)graphicsSurface2 {
        return (NullImage_staticInit(), NullImage_NULL_IMAGE);
}


- (int32_t) getSurfaceWidth:(id)graphicsSurface2 :(int32_t)width {
        return width;
}


- (int32_t) getSurfaceHeight:(id)graphicsSurface2 :(int32_t)height {
        return height;
}


- (int32_t) getWidth:(Image*)image :(int32_t)width {
        return width;
}


- (int32_t) getHeight:(Image*)image :(int32_t)height {
        return height;
}


- (Graphics*) getGraphics:(id)graphicsSurface :(int32_t)width :(int32_t)height :(Image*)image {
        java_throw(java_exception_new("RuntimeException", ""));
}


- (void) drawImage:(Image*)image :(int32_t)x :(int32_t)y :(int32_t)anchor :(Graphics*)g2 :(id)g {
}


- (void) drawRegion:(Image*)image :(int32_t)x_src :(int32_t)y_src :(int32_t)width :(int32_t)height :(int32_t)transform :(int32_t)x_dst :(int32_t)y_dst :(int32_t)anchor :(Graphics*)g {
}


- (void) getRGB:(int32_t*)argb :(int32_t)offset :(int32_t)scanlength :(int32_t)x :(int32_t)y :(int32_t)width :(int32_t)height :(Image*)image {
}


- (void) setRGB:(int32_t*)argb :(int32_t)offset :(int32_t)scanlength :(int32_t)x :(int32_t)y :(int32_t)width :(int32_t)height :(Image*)image {
}


- (int32_t*) getData:(Image*)image {
        return [NullUtil getInstance]->NULL_INT_ARRAY;
}

@end

