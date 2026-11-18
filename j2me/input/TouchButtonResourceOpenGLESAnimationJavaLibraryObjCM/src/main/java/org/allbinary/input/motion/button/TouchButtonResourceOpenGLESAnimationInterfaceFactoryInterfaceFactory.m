// Generated Code Do Not Modify
#include "org/allbinary/input/motion/button/TouchButtonResourceOpenGLESAnimationInterfaceFactoryInterfaceFactory.h"
#include "org/allbinary/game/configuration/feature/Features.h"
#include "org/allbinary/graphics/opengles/OpenGLFeatureFactory.h"
#include "org/allbinary/image/opengles/OpenGLImageCacheFactory.h"
#include "org/allbinary/input/motion/button/TouchButtonResourceAnimationInterfaceFactoryInterfaceFactory.h"



void TouchButtonResourceOpenGLESAnimationInterfaceFactoryInterfaceFactory_staticInit(void) {
    static bool initialized = false;
    if (initialized) {
        return;
    }
    initialized = true;
}

@implementation TouchButtonResourceOpenGLESAnimationInterfaceFactoryInterfaceFactory


- (instancetype) init {
        self = [super init:"OpenGL TouchButton Animations"];
    return self;
}


// throws Exception
- (void) init_:(int32_t)level {
        [super initImageCache:[OpenGLImageCacheFactory getInstance] :level];
}


- (bool) isFeature {
        if ([[Features getInstance] isDefault:[OpenGLFeatureFactory getInstance]->OPENGL]) {
            return true;
        } else {
            return false;
        }
}

@end

