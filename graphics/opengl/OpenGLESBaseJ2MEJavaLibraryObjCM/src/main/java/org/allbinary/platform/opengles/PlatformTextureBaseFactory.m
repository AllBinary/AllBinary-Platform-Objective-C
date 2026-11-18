// Generated Code Do Not Modify
#include "org/allbinary/platform/opengles/PlatformTextureBaseFactory.h"
#include "javax/microedition/khronos/opengles/GL10.h"
#include "javax/microedition/lcdui/Image.h"
#include "org/allbinary/string/CommonStrings.h"


PlatformTextureBaseFactory* PlatformTextureBaseFactory_NULL_PLATFORM_TEXTURE_BASE_FACTORY;

void PlatformTextureBaseFactory_staticInit(void) {
    static bool initialized = false;
    if (initialized) {
        return;
    }
    initialized = true;
    PlatformTextureBaseFactory_NULL_PLATFORM_TEXTURE_BASE_FACTORY = [((PlatformTextureBaseFactory*) [PlatformTextureBaseFactory alloc]) init];
}

@implementation PlatformTextureBaseFactory

- (void) initFields {
    self->commonStrings = [CommonStrings getInstance];
}

- (instancetype) init {
    self = [super init];
    [self initFields];
    return self;
}


- (void) load_:(GL10*)gl :(int32_t)target :(int32_t)level :(Image*)image :(int32_t)border :(bool)flip {
}

@end

