// Generated Code Do Not Modify
#include "org/allbinary/image/ImageFactory.h"
#include "javax/microedition/lcdui/Image.h"
#include "org/allbinary/MIDPUtil.h"
#if __has_include("org/allbinary/MIDPUtil.h")
#include "org/allbinary/MIDPUtil.h"
#endif
#if __has_include("org/allbinary/MIDPUtil.h")
#include "org/allbinary/MIDPUtil.h"
#endif
#if __has_include("org/allbinary/MIDPUtil.h")
#include "org/allbinary/MIDPUtil.h"
#endif


static ImageFactory* ImageFactory_instance;

void ImageFactory_staticInit(void) {
    static bool initialized = false;
    if (initialized) {
        return;
    }
    initialized = true;
    ImageFactory_instance = ((ImageFactory*) [((ImageFactory*) [ImageFactory alloc]) init]);
}

@implementation ImageFactory

- (instancetype) init {
    self = [super init];
    return self;
}


+ (ImageFactory*) getInstance {
        return (ImageFactory_staticInit(), ImageFactory_instance);
}


// throws Exception
- (Image*) createImageUrl:(const char*)url {
        return [Image createImage:url];
}


// throws Exception
- (Image*) createImage:(const char*)caller :(int32_t)width :(int32_t)height {
        return [[MIDPUtil getInstance] createImageWH:width :height];
}


// throws Exception
- (Image*) createImageFromInputStream:(id)key :(InputStream*)inputStream {
        Image* image = [[MIDPUtil getInstance] createImageFromInputStream:inputStream];
        return image;
}


// throws Exception
- (Image*) createImageFromInputStream:(InputStream*)inputStream {
        return [[MIDPUtil getInstance] createImageFromInputStream:inputStream];
}

@end

