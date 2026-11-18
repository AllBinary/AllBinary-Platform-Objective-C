// Generated Code Do Not Modify
#include "org/allbinary/graphics/OpenGLBitmap.h"



void OpenGLBitmap_staticInit(void) {
    static bool initialized = false;
    if (initialized) {
        return;
    }
    initialized = true;
}

@implementation OpenGLBitmap

- (void) initFields {
    
}


- (instancetype) init:(id)bitmap {
    self = [super init];
    [self initFields];
        self->bitmap = bitmap;
    return self;
}


- (void) getPixels:(int32_t*)pixels :(int32_t)offset :(int32_t)stride :(int32_t)x :(int32_t)y :(int32_t)width :(int32_t)height {
}


- (void) setPixels:(int32_t*)pixels :(int32_t)offset :(int32_t)stride :(int32_t)x :(int32_t)y :(int32_t)width :(int32_t)height {
}


- (void) recycle {
}

@end

