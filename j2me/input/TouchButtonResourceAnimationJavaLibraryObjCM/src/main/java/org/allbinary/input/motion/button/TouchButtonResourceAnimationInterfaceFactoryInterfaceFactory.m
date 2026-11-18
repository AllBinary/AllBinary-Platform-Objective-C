// Generated Code Do Not Modify
#include "org/allbinary/input/motion/button/TouchButtonResourceAnimationInterfaceFactoryInterfaceFactory.h"
#include "javax/microedition/lcdui/Image.h"
#include "org/allbinary/animation/AnimationBehaviorFactory.h"
#include "org/allbinary/animation/NullAnimationFactory.h"
#include "org/allbinary/animation/image/sprite/OneRowSpriteIndexedAnimationFactory.h"
#include "org/allbinary/game/configuration/feature/Features.h"
#include "org/allbinary/game/resource/ResourceLoadingLevelFactory.h"
#include "org/allbinary/graphics/canvas/transition/progress/ProgressCanvas.h"
#include "org/allbinary/graphics/canvas/transition/progress/ProgressCanvasFactory.h"
#include "org/allbinary/graphics/opengles/OpenGLFeatureFactory.h"
#include "org/allbinary/image/ImageCache.h"
#include "org/allbinary/image/ImageCacheFactory.h"
#include "org/allbinary/logic/StdUtil.h"
#include "org/allbinary/logic/string/StringMaker.h"
#include "org/allbinary/logic/system/os/OperatingSystemFactory.h"
#include "org/allbinary/media/image/ImageCompleteUtil.h"
#include "org/allbinary/input/motion/button/TouchButtonBlankResource.h"
#include "org/allbinary/input/motion/button/TouchButtonResource.h"
#include "org/allbinary/input/motion/button/TouchButtonGenericActionResource.h"
#include "org/allbinary/input/motion/button/TouchButtonStartResource.h"
#include "org/allbinary/input/motion/button/TouchButtonUpResource.h"
#include "org/allbinary/input/motion/button/TouchButtonDownResource.h"
#include "org/allbinary/input/motion/button/TouchButtonTurnLeftResource.h"
#include "org/allbinary/input/motion/button/TouchButtonTurnRightResource.h"
#include "org/allbinary/input/motion/button/TouchButtonStrafeLeftResource.h"
#include "org/allbinary/input/motion/button/TouchButtonStrafeRightResource.h"
#if __has_include("org/allbinary/input/motion/button/GenericOperatingSystem.h")
#include "org/allbinary/input/motion/button/GenericOperatingSystem.h"
#endif
#if __has_include("javax/microedition/lcdui/GenericOperatingSystem.h")
#include "javax/microedition/lcdui/GenericOperatingSystem.h"
#endif
#if __has_include("org/allbinary/animation/GenericOperatingSystem.h")
#include "org/allbinary/animation/GenericOperatingSystem.h"
#endif
#if __has_include("org/allbinary/animation/GenericOperatingSystem.h")
#include "org/allbinary/animation/GenericOperatingSystem.h"
#endif
#if __has_include("org/allbinary/animation/image/sprite/GenericOperatingSystem.h")
#include "org/allbinary/animation/image/sprite/GenericOperatingSystem.h"
#endif
#if __has_include("org/allbinary/animation/resource/GenericOperatingSystem.h")
#include "org/allbinary/animation/resource/GenericOperatingSystem.h"
#endif
#if __has_include("org/allbinary/game/configuration/feature/GenericOperatingSystem.h")
#include "org/allbinary/game/configuration/feature/GenericOperatingSystem.h"
#endif
#if __has_include("org/allbinary/game/resource/GenericOperatingSystem.h")
#include "org/allbinary/game/resource/GenericOperatingSystem.h"
#endif
#if __has_include("org/allbinary/graphics/canvas/transition/progress/GenericOperatingSystem.h")
#include "org/allbinary/graphics/canvas/transition/progress/GenericOperatingSystem.h"
#endif
#if __has_include("org/allbinary/graphics/canvas/transition/progress/GenericOperatingSystem.h")
#include "org/allbinary/graphics/canvas/transition/progress/GenericOperatingSystem.h"
#endif
#if __has_include("org/allbinary/graphics/opengles/GenericOperatingSystem.h")
#include "org/allbinary/graphics/opengles/GenericOperatingSystem.h"
#endif
#if __has_include("org/allbinary/image/GenericOperatingSystem.h")
#include "org/allbinary/image/GenericOperatingSystem.h"
#endif
#if __has_include("org/allbinary/image/GenericOperatingSystem.h")
#include "org/allbinary/image/GenericOperatingSystem.h"
#endif
#if __has_include("org/allbinary/logic/GenericOperatingSystem.h")
#include "org/allbinary/logic/GenericOperatingSystem.h"
#endif
#if __has_include("org/allbinary/logic/string/GenericOperatingSystem.h")
#include "org/allbinary/logic/string/GenericOperatingSystem.h"
#endif
#if __has_include("org/allbinary/logic/system/os/GenericOperatingSystem.h")
#include "org/allbinary/logic/system/os/GenericOperatingSystem.h"
#endif
#if __has_include("org/allbinary/media/image/GenericOperatingSystem.h")
#include "org/allbinary/media/image/GenericOperatingSystem.h"
#endif
#if __has_include("org/allbinary/input/motion/button/GenericOperatingSystem.h")
#include "org/allbinary/input/motion/button/GenericOperatingSystem.h"
#endif
#if __has_include("javax/microedition/lcdui/GenericOperatingSystem.h")
#include "javax/microedition/lcdui/GenericOperatingSystem.h"
#endif
#if __has_include("org/allbinary/animation/GenericOperatingSystem.h")
#include "org/allbinary/animation/GenericOperatingSystem.h"
#endif
#if __has_include("org/allbinary/animation/GenericOperatingSystem.h")
#include "org/allbinary/animation/GenericOperatingSystem.h"
#endif
#if __has_include("org/allbinary/animation/image/sprite/GenericOperatingSystem.h")
#include "org/allbinary/animation/image/sprite/GenericOperatingSystem.h"
#endif
#if __has_include("org/allbinary/animation/resource/GenericOperatingSystem.h")
#include "org/allbinary/animation/resource/GenericOperatingSystem.h"
#endif
#if __has_include("org/allbinary/game/configuration/feature/GenericOperatingSystem.h")
#include "org/allbinary/game/configuration/feature/GenericOperatingSystem.h"
#endif
#if __has_include("org/allbinary/game/resource/GenericOperatingSystem.h")
#include "org/allbinary/game/resource/GenericOperatingSystem.h"
#endif
#if __has_include("org/allbinary/graphics/canvas/transition/progress/GenericOperatingSystem.h")
#include "org/allbinary/graphics/canvas/transition/progress/GenericOperatingSystem.h"
#endif
#if __has_include("org/allbinary/graphics/canvas/transition/progress/GenericOperatingSystem.h")
#include "org/allbinary/graphics/canvas/transition/progress/GenericOperatingSystem.h"
#endif
#if __has_include("org/allbinary/graphics/opengles/GenericOperatingSystem.h")
#include "org/allbinary/graphics/opengles/GenericOperatingSystem.h"
#endif
#if __has_include("org/allbinary/image/GenericOperatingSystem.h")
#include "org/allbinary/image/GenericOperatingSystem.h"
#endif
#if __has_include("org/allbinary/image/GenericOperatingSystem.h")
#include "org/allbinary/image/GenericOperatingSystem.h"
#endif
#if __has_include("org/allbinary/logic/GenericOperatingSystem.h")
#include "org/allbinary/logic/GenericOperatingSystem.h"
#endif
#if __has_include("org/allbinary/logic/string/GenericOperatingSystem.h")
#include "org/allbinary/logic/string/GenericOperatingSystem.h"
#endif
#if __has_include("org/allbinary/logic/system/os/GenericOperatingSystem.h")
#include "org/allbinary/logic/system/os/GenericOperatingSystem.h"
#endif
#if __has_include("org/allbinary/media/image/GenericOperatingSystem.h")
#include "org/allbinary/media/image/GenericOperatingSystem.h"
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
        return [((TouchButtonResourceAnimationInterfaceFactoryInterfaceFactory*) [TouchButtonResourceAnimationInterfaceFactoryInterfaceFactory alloc]) init:"TouchButton Animations"];
}


- (instancetype) init:(const char*)name {
        self = [super init:name :[[StdUtil getInstance] createHashtable] :[[StdUtil getInstance] createHashtable] :[[StdUtil getInstance] createHashtable]];
    return self;
}


// throws Exception
- (void) init_:(int32_t)level {
        [self initImageCache:[ImageCacheFactory getInstance] :level];
}


// throws Exception
- (void) initImageCache:(ImageCache*)imageCache :(int32_t)level {
        if ([self isInitialized]) {
            return;
        }
        int32_t portion = 140;
        const char* loadingString = [[[[((StringMaker*) [StringMaker alloc]) init] append:[self toString]] append:" Loading: "] toString];
        int32_t index = 0;
        ProgressCanvas* progressCanvas = [ProgressCanvasFactory getInstance];
        [progressCanvas addPortion:portion :loadingString :index++];
        TouchButtonResource* touchButtonBlankResource = [TouchButtonBlankResource getInstance];
        TouchButtonResource* touchButtonGenericActionResource = [TouchButtonGenericActionResource getInstance];
        TouchButtonResource* touchButtonStartResource = [TouchButtonStartResource getInstance];
        TouchButtonResource* touchButtonUpResource = [TouchButtonUpResource getInstance];
        TouchButtonResource* touchButtonDownResource = [TouchButtonDownResource getInstance];
        TouchButtonResource* touchButtonTurnLeftResource = [TouchButtonTurnLeftResource getInstance];
        TouchButtonResource* touchButtonTurnRightResource = [TouchButtonTurnRightResource getInstance];
        TouchButtonResource* touchButtonStrafeLeftResource = [TouchButtonStrafeLeftResource getInstance];
        TouchButtonResource* touchButtonStrafeRightResource = [TouchButtonStrafeRightResource getInstance];
        Image* touchButtonBlankResourceImage = [imageCache getWithKey:touchButtonBlankResource->RESOURCE];
        Image* touchButtonGenericActionResourceImage = [imageCache getWithKey:touchButtonGenericActionResource->RESOURCE];
        Image* touchButtonStartResourceImage = [imageCache getWithKey:touchButtonStartResource->RESOURCE];
        Image* touchButtonUpResourceImage = [imageCache getWithKey:touchButtonUpResource->RESOURCE];
        Image* touchButtonDownResourceImage = [imageCache getWithKey:touchButtonDownResource->RESOURCE];
        Image* touchButtonTurnLeftResourceImage = [imageCache getWithKey:touchButtonTurnLeftResource->RESOURCE];
        Image* touchButtonTurnRightResourceImage = [imageCache getWithKey:touchButtonTurnRightResource->RESOURCE];
        Image* touchButtonStrafeLeftResourceImage = [imageCache getWithKey:touchButtonStrafeLeftResource->RESOURCE];
        Image* touchButtonStrafeRightResourceImage = [imageCache getWithKey:touchButtonStrafeRightResource->RESOURCE];
        NullAnimationFactory* nullAnimationFactory = [NullAnimationFactory getFactoryInstance];
        if ([[[OperatingSystemFactory getInstance] getOperatingSystemInstance] isOverScan]) {
            [imageCache getWithKey:[TouchButtonStartResource getInstance]->HINT];
        }
        [progressCanvas addPortion:portion :loadingString :index++];
        ImageCompleteUtil* imageCompleteUtil = [ImageCompleteUtil getInstance];
        [progressCanvas addPortion:portion :loadingString :index++];
        [imageCompleteUtil waitForImage:touchButtonBlankResourceImage :touchButtonBlankResource->RESOURCE];
        [self add:touchButtonBlankResource->RESOURCE :[OneRowSpriteIndexedAnimationFactory createFactory:touchButtonBlankResourceImage :[AnimationBehaviorFactory getInstance]]];
        [self add:touchButtonBlankResource->HINT :nullAnimationFactory];
        [progressCanvas addPortion:portion :loadingString :index++];
        [imageCompleteUtil waitForImage:touchButtonGenericActionResourceImage :touchButtonGenericActionResource->RESOURCE];
        [self add:touchButtonGenericActionResource->RESOURCE :[OneRowSpriteIndexedAnimationFactory createFactory:touchButtonGenericActionResourceImage :[AnimationBehaviorFactory getInstance]]];
        [self add:touchButtonGenericActionResource->HINT :nullAnimationFactory];
        [progressCanvas addPortion:portion :loadingString :index++];
        [imageCompleteUtil waitForImage:touchButtonStartResourceImage :touchButtonStartResource->RESOURCE];
        [self add:touchButtonStartResource->RESOURCE :[OneRowSpriteIndexedAnimationFactory createFactory:touchButtonStartResourceImage :[AnimationBehaviorFactory getInstance]]];
        [progressCanvas addPortion:portion :loadingString :index++];
        [imageCompleteUtil waitForImage:touchButtonUpResourceImage :touchButtonUpResource->RESOURCE];
        [self add:touchButtonUpResource->RESOURCE :[OneRowSpriteIndexedAnimationFactory createFactory:touchButtonUpResourceImage :[AnimationBehaviorFactory getInstance]]];
        [self add:touchButtonUpResource->HINT :nullAnimationFactory];
        [progressCanvas addPortion:portion :loadingString :index++];
        [imageCompleteUtil waitForImage:touchButtonDownResourceImage :touchButtonDownResource->RESOURCE];
        [self add:touchButtonDownResource->RESOURCE :[OneRowSpriteIndexedAnimationFactory createFactory:touchButtonDownResourceImage :[AnimationBehaviorFactory getInstance]]];
        [self add:touchButtonDownResource->HINT :nullAnimationFactory];
        [progressCanvas addPortion:portion :loadingString :index++];
        [imageCompleteUtil waitForImage:touchButtonTurnLeftResourceImage :touchButtonTurnLeftResource->RESOURCE];
        [self add:touchButtonTurnLeftResource->RESOURCE :[OneRowSpriteIndexedAnimationFactory createFactory:touchButtonTurnLeftResourceImage :[AnimationBehaviorFactory getInstance]]];
        [self add:touchButtonTurnLeftResource->HINT :nullAnimationFactory];
        [progressCanvas addPortion:portion :loadingString :index++];
        [imageCompleteUtil waitForImage:touchButtonTurnRightResourceImage :touchButtonTurnRightResource->RESOURCE];
        [self add:touchButtonTurnRightResource->RESOURCE :[OneRowSpriteIndexedAnimationFactory createFactory:touchButtonTurnRightResourceImage :[AnimationBehaviorFactory getInstance]]];
        [self add:touchButtonTurnRightResource->HINT :nullAnimationFactory];
        [progressCanvas addPortion:portion :loadingString :index++];
        [imageCompleteUtil waitForImage:touchButtonStrafeLeftResourceImage :touchButtonStrafeLeftResource->RESOURCE];
        [self add:touchButtonStrafeLeftResource->RESOURCE :[OneRowSpriteIndexedAnimationFactory createFactory:touchButtonStrafeLeftResourceImage :[AnimationBehaviorFactory getInstance]]];
        [self add:touchButtonStrafeLeftResource->HINT :nullAnimationFactory];
        [progressCanvas addPortion:portion :loadingString :index++];
        [imageCompleteUtil waitForImage:touchButtonStrafeRightResourceImage :touchButtonStrafeRightResource->RESOURCE];
        [self add:touchButtonStrafeRightResource->RESOURCE :[OneRowSpriteIndexedAnimationFactory createFactory:touchButtonStrafeRightResourceImage :[AnimationBehaviorFactory getInstance]]];
        [self add:touchButtonStrafeRightResource->HINT :nullAnimationFactory];
        if ([[[OperatingSystemFactory getInstance] getOperatingSystemInstance] isOverScan]) {
            Image* touchButtonStartHintResource = [imageCache getWithKey:[TouchButtonStartResource getInstance]->HINT];
            [self add:touchButtonStartResource->HINT :[OneRowSpriteIndexedAnimationFactory createFactory:touchButtonStartHintResource :[AnimationBehaviorFactory getInstance]]];
        } else {
            [self add:touchButtonStartResource->HINT :nullAnimationFactory];
        }
        [super init_:level];
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

