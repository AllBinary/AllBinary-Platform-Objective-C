// Generated Code Do Not Modify
#include "org/allbinary/media/image/ImageScaleUtil.h"
#include "javax/microedition/lcdui/Image.h"
#include "org/allbinary/image/ImageCache.h"


static ImageScaleUtil* ImageScaleUtil_instance;

void ImageScaleUtil_staticInit(void) {
    static bool initialized = false;
    if (initialized) {
        return;
    }
    initialized = true;
    ImageScaleUtil_instance = ((ImageScaleUtil*) [((ImageScaleUtil*) [ImageScaleUtil alloc]) init]);
}

@implementation ImageScaleUtil


+ (ImageScaleUtil*) getInstance {
        return (ImageScaleUtil_staticInit(), ImageScaleUtil_instance);
}


- (instancetype) init {
    self = [super init];
    return self;
}


// throws Exception
- (Image*) createImage2:(ImageCache*)imageCache :(Image*)originalImage :(float)scaleNominatorX :(float)scaleDenominatorX :(float)scaleNominatorY :(float)scaleDenominatorY :(bool)cached {
        return [self createImage3:imageCache :originalImage :scaleNominatorX :scaleDenominatorX :scaleNominatorY :scaleDenominatorY :cached :true];
}


// throws Exception
- (Image*) createImage3:(ImageCache*)imageCache :(Image*)originalImage :(float)scaleNominatorX :(float)scaleDenominatorX :(float)scaleNominatorY :(float)scaleDenominatorY :(bool)cached :(bool)mutable {
        return originalImage;
}

@end

