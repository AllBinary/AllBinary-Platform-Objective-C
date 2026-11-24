// Generated Code Do Not Modify
#include "org/allbinary/graphics/OpenGLBitmapFactory.h"
#include "javax/microedition/lcdui/Image.h"
#include "org/allbinary/logic/NullUtil.h"
#include "org/allbinary/platform/graphics/PlatformBitmapBase.h"
#include "org/allbinary/graphics/OpenGLBitmapConfig.h"
#include "org/allbinary/graphics/OpenGLBitmap.h"
#if __has_include("org/allbinary/logic/NullUtil.h")
#include "org/allbinary/logic/NullUtil.h"
#endif
#if __has_include("org/allbinary/logic/NullUtil.h")
#include "org/allbinary/logic/NullUtil.h"
#endif
#if __has_include("org/allbinary/logic/NullUtil.h")
#include "org/allbinary/logic/NullUtil.h"
#endif
#if __has_include("org/allbinary/logic/NullUtil.h")
#include "org/allbinary/logic/NullUtil.h"
#endif


static OpenGLBitmapFactory* OpenGLBitmapFactory_instance;

void OpenGLBitmapFactory_staticInit(void) {
    static bool initialized = false;
    if (initialized) {
        return;
    }
    initialized = true;
    OpenGLBitmapFactory_instance = ((OpenGLBitmapFactory*) [((OpenGLBitmapFactory*) [OpenGLBitmapFactory alloc]) init]);
}

@implementation OpenGLBitmapFactory

- (void) initFields {
    self->ARGB_8888 = ((OpenGLBitmapConfig*) [((OpenGLBitmapConfig*) [OpenGLBitmapConfig alloc]) init:[NullUtil getInstance]->NULL_OBJECT]);
}

- (instancetype) init {
    self = [super init];
    [self initFields];
    return self;
}


+ (OpenGLBitmapFactory*) getInstance {
        return (OpenGLBitmapFactory_staticInit(), OpenGLBitmapFactory_instance);
}


- (OpenGLBitmap*) createBitmap:(int32_t)width :(int32_t)height :(OpenGLBitmapConfig*)config {
        return ((OpenGLBitmap*) [((OpenGLBitmap*) [OpenGLBitmap alloc]) init:[NullUtil getInstance]->NULL_OBJECT]);
}


// throws IOException
- (OpenGLBitmap*) decodeStream:(InputStream*)inputStream {
        return ((OpenGLBitmap*) [((OpenGLBitmap*) [OpenGLBitmap alloc]) init:[NullUtil getInstance]->NULL_OBJECT]);
}


- (PlatformBitmapBase*) createBitmap:(Image*)image {
        return ((OpenGLBitmap*) [((OpenGLBitmap*) [OpenGLBitmap alloc]) init:[NullUtil getInstance]->NULL_OBJECT]);
}

@end

