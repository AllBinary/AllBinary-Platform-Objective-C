// Generated Code Do Not Modify
#include "org/allbinary/input/motion/button/TouchButtonResourceAnimationInterfaceFactoryInterfaceFactory.h"
#include "org/allbinary/game/configuration/feature/Features.h"
#include "org/allbinary/game/resource/ResourceLoadingLevelFactory.h"
#include "org/allbinary/graphics/opengles/OpenGLFeatureFactory.h"
#include "org/allbinary/image/ImageCache.h"
#include "org/allbinary/image/ImageCacheFactory.h"
#include "org/allbinary/logic/StdUtil.h"
#if __has_include("org/allbinary/logic/StdUtil.h")
#include "org/allbinary/logic/StdUtil.h"
#endif
#if __has_include("org/allbinary/logic/StdUtil.h")
#include "org/allbinary/logic/StdUtil.h"
#endif
#if __has_include("org/allbinary/logic/StdUtil.h")
#include "org/allbinary/logic/StdUtil.h"
#endif
#if __has_include("org/allbinary/game/configuration/feature/Features.h")
#include "org/allbinary/game/configuration/feature/Features.h"
#endif
#if __has_include("org/allbinary/graphics/opengles/OpenGLFeatureFactory.h")
#include "org/allbinary/graphics/opengles/OpenGLFeatureFactory.h"
#endif



void TouchButtonResourceAnimationInterfaceFactoryInterfaceFactory_staticInit(void) {
    static bool initialized = false;
    if (initialized) {
        return;
    }
    initialized = true;
}

@implementation TouchButtonResourceAnimationInterfaceFactoryInterfaceFactory


+ (TouchButtonResourceAnimationInterfaceFactoryInterfaceFactory*) createFactory {
        return ((TouchButtonResourceAnimationInterfaceFactoryInterfaceFactory*) [((TouchButtonResourceAnimationInterfaceFactoryInterfaceFactory*) [TouchButtonResourceAnimationInterfaceFactoryInterfaceFactory alloc]) init:"TouchButton Animations"]);
}


- (instancetype) init:(const char*)name {
        self = [super init:name :[[StdUtil getInstance] createHashtable] :[[StdUtil getInstance] createHashtable] :[[StdUtil getInstance] createHashtable]];
    return self;
}


// throws Exception
- (void) initMethod:(int32_t)level {
        [self initImageCache:[ImageCacheFactory getInstance] :level];
}


// throws Exception
- (void) initImageCache:(ImageCache*)imageCache :(int32_t)level {
        if ([self isInitialized]) {
            return;
        }
        [super initMethod:level];
}


- (bool) isLoadingLevel:(int32_t)level {
        ResourceLoadingLevelFactory* resourceLoadingLevelFactory = [ResourceLoadingLevelFactory getInstance];
        if (level == [resourceLoadingLevelFactory->LOAD_TOUCH getLevel]) {
            return true;
        } else {
            return [super isLoadingLevel:level];
        }
}


- (bool) isFeature {
        if (![[Features getInstance] isDefault:[OpenGLFeatureFactory getInstance]->OPENGL]) {
            return true;
        } else {
            return false;
        }
}

@end

