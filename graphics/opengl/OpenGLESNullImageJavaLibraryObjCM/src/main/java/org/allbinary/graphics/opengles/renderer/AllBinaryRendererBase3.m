// Generated Code Do Not Modify
#include "org/allbinary/graphics/opengles/renderer/AllBinaryRendererBase3.h"
#include "javax/microedition/khronos/opengles/GL10.h"
#include "javax/microedition/lcdui/Image.h"
#include "org/allbinary/image/opengles/OpenGLESImage.h"
#include "org/allbinary/util/BasicArrayList.h"
#include "org/allbinary/util/BasicArrayListD.h"



void AllBinaryRendererBase3_staticInit(void) {
    static bool initialized = false;
    if (initialized) {
        return;
    }
    initialized = true;
}

@implementation AllBinaryRendererBase3

- (void) initFields {
    self->list = ((BasicArrayListD*) [((BasicArrayListD*) [BasicArrayListD alloc]) init]);
}

- (instancetype) init {
    self = [super init];
    [self initFields];
    return self;
}


// throws Exception
- (void) update:(GL10*)gl {
        while ([self->list size] > 0) {
            OpenGLESImage* openGLESImage = ((OpenGLESImage*) [self->list removeAt:0]);
            if (openGLESImage != nil) {
                [openGLESImage set:gl];
            }
        }
}


- (void) add:(Image*)image {
        [self->list add:image];
}

@end

