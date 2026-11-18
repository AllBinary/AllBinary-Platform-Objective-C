// Generated Code Do Not Modify
#include "org/allbinary/image/opengles/OpenGLImageSpecificFactory.h"
#include "org/allbinary/logic/communication/log/PreLogUtil.h"
#include "org/allbinary/logic/string/StringMaker.h"
#include "org/allbinary/logic/string/StringUtil.h"
#include "org/allbinary/image/opengles/OpenGLImageFactory.h"


static OpenGLImageSpecificFactory* OpenGLImageSpecificFactory_instance;

void OpenGLImageSpecificFactory_staticInit(void) {
    static bool initialized = false;
    if (initialized) {
        return;
    }
    initialized = true;
    OpenGLImageSpecificFactory_instance = [((OpenGLImageSpecificFactory*) [OpenGLImageSpecificFactory alloc]) init];
}

@implementation OpenGLImageSpecificFactory

- (void) initFields {
    self->imageFactory = (OpenGLImageFactory_staticInit(), OpenGLImageFactory_NULL_OPENGL_IMAGE_FACTORY);
    self->updating = false;
}

- (instancetype) init {
    self = [super init];
    [self initFields];
    return self;
}


+ (OpenGLImageSpecificFactory*) getInstance {
        return (OpenGLImageSpecificFactory_staticInit(), OpenGLImageSpecificFactory_instance);
}


- (void) setImageFactory:(OpenGLImageFactory*)imageFactory {
        self->imageFactory = imageFactory;
        [PreLogUtil put:[[[[((StringMaker*) [StringMaker alloc]) init] append:"Selected Image Factory: "] append:[[StringUtil getInstance] toString:self->imageFactory]] toString] :self :"setImageFactory"];
}


- (OpenGLImageFactory*) getImageFactory {
        return self->imageFactory;
}

@end

