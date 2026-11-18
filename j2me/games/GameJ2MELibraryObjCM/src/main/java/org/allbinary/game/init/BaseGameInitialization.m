// Generated Code Do Not Modify
#include "org/allbinary/game/init/BaseGameInitialization.h"
#include "javax/microedition/lcdui/CommandListener.h"
#include "org/allbinary/animation/FeaturedAnimationInterfaceFactoryInterfaceFactory.h"
#include "org/allbinary/game/configuration/GameConfigurationCentral.h"
#include "org/allbinary/game/configuration/event/ChangedGameFeatureListener.h"
#include "org/allbinary/game/configuration/feature/InputFeatureFactory.h"
#include "org/allbinary/game/configuration/feature/MainFeatureFactory.h"
#include "org/allbinary/game/input/PlatformInputMappingFactory.h"
#include "org/allbinary/game/input/event/GameKeyEventFactory.h"
#include "org/allbinary/game/resource/FeaturedResourceRelativeRelationshipFactory.h"
#include "org/allbinary/game/resource/ResourceInitialization.h"
#include "org/allbinary/game/resource/ResourceLoadingLevelFactory.h"
#include "org/allbinary/graphics/canvas/transition/progress/ProgressCanvas.h"
#include "org/allbinary/graphics/canvas/transition/progress/ProgressCanvasFactory.h"
#include "org/allbinary/image/GameFeatureImageCacheFactory.h"
#include "org/allbinary/input/motion/CompleteMotionGestureInputToGameMotionGestureInput.h"
#include "org/allbinary/input/motion/button/BasicTouchInputFactory.h"
#include "org/allbinary/input/motion/button/CancelTouchButtonInputFactory.h"
#include "org/allbinary/logic/system/security/licensing/AbeClientInformationInterface.h"
#include "org/allbinary/game/init/GameInitializationInterface.h"
#if __has_include("org/allbinary/game/init/PersistentInputMapping.h")
#include "org/allbinary/game/init/PersistentInputMapping.h"
#endif
#if __has_include("javax/microedition/lcdui/PersistentInputMapping.h")
#include "javax/microedition/lcdui/PersistentInputMapping.h"
#endif
#if __has_include("org/allbinary/animation/PersistentInputMapping.h")
#include "org/allbinary/animation/PersistentInputMapping.h"
#endif
#if __has_include("org/allbinary/game/configuration/PersistentInputMapping.h")
#include "org/allbinary/game/configuration/PersistentInputMapping.h"
#endif
#if __has_include("org/allbinary/game/configuration/event/PersistentInputMapping.h")
#include "org/allbinary/game/configuration/event/PersistentInputMapping.h"
#endif
#if __has_include("org/allbinary/game/configuration/feature/PersistentInputMapping.h")
#include "org/allbinary/game/configuration/feature/PersistentInputMapping.h"
#endif
#if __has_include("org/allbinary/game/configuration/feature/PersistentInputMapping.h")
#include "org/allbinary/game/configuration/feature/PersistentInputMapping.h"
#endif
#if __has_include("org/allbinary/game/input/PersistentInputMapping.h")
#include "org/allbinary/game/input/PersistentInputMapping.h"
#endif
#if __has_include("org/allbinary/game/input/event/PersistentInputMapping.h")
#include "org/allbinary/game/input/event/PersistentInputMapping.h"
#endif
#if __has_include("org/allbinary/game/resource/PersistentInputMapping.h")
#include "org/allbinary/game/resource/PersistentInputMapping.h"
#endif
#if __has_include("org/allbinary/game/resource/PersistentInputMapping.h")
#include "org/allbinary/game/resource/PersistentInputMapping.h"
#endif
#if __has_include("org/allbinary/game/resource/PersistentInputMapping.h")
#include "org/allbinary/game/resource/PersistentInputMapping.h"
#endif
#if __has_include("org/allbinary/graphics/canvas/transition/progress/PersistentInputMapping.h")
#include "org/allbinary/graphics/canvas/transition/progress/PersistentInputMapping.h"
#endif
#if __has_include("org/allbinary/graphics/canvas/transition/progress/PersistentInputMapping.h")
#include "org/allbinary/graphics/canvas/transition/progress/PersistentInputMapping.h"
#endif
#if __has_include("org/allbinary/image/PersistentInputMapping.h")
#include "org/allbinary/image/PersistentInputMapping.h"
#endif
#if __has_include("org/allbinary/input/motion/PersistentInputMapping.h")
#include "org/allbinary/input/motion/PersistentInputMapping.h"
#endif
#if __has_include("org/allbinary/input/motion/button/PersistentInputMapping.h")
#include "org/allbinary/input/motion/button/PersistentInputMapping.h"
#endif
#if __has_include("org/allbinary/input/motion/button/PersistentInputMapping.h")
#include "org/allbinary/input/motion/button/PersistentInputMapping.h"
#endif
#if __has_include("org/allbinary/logic/system/security/licensing/PersistentInputMapping.h")
#include "org/allbinary/logic/system/security/licensing/PersistentInputMapping.h"
#endif
#if __has_include("org/allbinary/game/init/PersistentInputMapping.h")
#include "org/allbinary/game/init/PersistentInputMapping.h"
#endif
#if __has_include("javax/microedition/lcdui/PersistentInputMapping.h")
#include "javax/microedition/lcdui/PersistentInputMapping.h"
#endif
#if __has_include("org/allbinary/animation/PersistentInputMapping.h")
#include "org/allbinary/animation/PersistentInputMapping.h"
#endif
#if __has_include("org/allbinary/game/configuration/PersistentInputMapping.h")
#include "org/allbinary/game/configuration/PersistentInputMapping.h"
#endif
#if __has_include("org/allbinary/game/configuration/event/PersistentInputMapping.h")
#include "org/allbinary/game/configuration/event/PersistentInputMapping.h"
#endif
#if __has_include("org/allbinary/game/configuration/feature/PersistentInputMapping.h")
#include "org/allbinary/game/configuration/feature/PersistentInputMapping.h"
#endif
#if __has_include("org/allbinary/game/configuration/feature/PersistentInputMapping.h")
#include "org/allbinary/game/configuration/feature/PersistentInputMapping.h"
#endif
#if __has_include("org/allbinary/game/input/PersistentInputMapping.h")
#include "org/allbinary/game/input/PersistentInputMapping.h"
#endif
#if __has_include("org/allbinary/game/input/event/PersistentInputMapping.h")
#include "org/allbinary/game/input/event/PersistentInputMapping.h"
#endif
#if __has_include("org/allbinary/game/resource/PersistentInputMapping.h")
#include "org/allbinary/game/resource/PersistentInputMapping.h"
#endif
#if __has_include("org/allbinary/game/resource/PersistentInputMapping.h")
#include "org/allbinary/game/resource/PersistentInputMapping.h"
#endif
#if __has_include("org/allbinary/game/resource/PersistentInputMapping.h")
#include "org/allbinary/game/resource/PersistentInputMapping.h"
#endif
#if __has_include("org/allbinary/graphics/canvas/transition/progress/PersistentInputMapping.h")
#include "org/allbinary/graphics/canvas/transition/progress/PersistentInputMapping.h"
#endif
#if __has_include("org/allbinary/graphics/canvas/transition/progress/PersistentInputMapping.h")
#include "org/allbinary/graphics/canvas/transition/progress/PersistentInputMapping.h"
#endif
#if __has_include("org/allbinary/image/PersistentInputMapping.h")
#include "org/allbinary/image/PersistentInputMapping.h"
#endif
#if __has_include("org/allbinary/input/motion/PersistentInputMapping.h")
#include "org/allbinary/input/motion/PersistentInputMapping.h"
#endif
#if __has_include("org/allbinary/input/motion/button/PersistentInputMapping.h")
#include "org/allbinary/input/motion/button/PersistentInputMapping.h"
#endif
#if __has_include("org/allbinary/input/motion/button/PersistentInputMapping.h")
#include "org/allbinary/input/motion/button/PersistentInputMapping.h"
#endif
#if __has_include("org/allbinary/logic/system/security/licensing/PersistentInputMapping.h")
#include "org/allbinary/logic/system/security/licensing/PersistentInputMapping.h"
#endif
#if __has_include("org/allbinary/game/init/BasicArrayList.h")
#include "org/allbinary/game/init/BasicArrayList.h"
#endif
#if __has_include("javax/microedition/lcdui/BasicArrayList.h")
#include "javax/microedition/lcdui/BasicArrayList.h"
#endif
#if __has_include("org/allbinary/animation/BasicArrayList.h")
#include "org/allbinary/animation/BasicArrayList.h"
#endif
#if __has_include("org/allbinary/game/configuration/BasicArrayList.h")
#include "org/allbinary/game/configuration/BasicArrayList.h"
#endif
#if __has_include("org/allbinary/game/configuration/event/BasicArrayList.h")
#include "org/allbinary/game/configuration/event/BasicArrayList.h"
#endif
#if __has_include("org/allbinary/game/configuration/feature/BasicArrayList.h")
#include "org/allbinary/game/configuration/feature/BasicArrayList.h"
#endif
#if __has_include("org/allbinary/game/configuration/feature/BasicArrayList.h")
#include "org/allbinary/game/configuration/feature/BasicArrayList.h"
#endif
#if __has_include("org/allbinary/game/input/BasicArrayList.h")
#include "org/allbinary/game/input/BasicArrayList.h"
#endif
#if __has_include("org/allbinary/game/input/event/BasicArrayList.h")
#include "org/allbinary/game/input/event/BasicArrayList.h"
#endif
#if __has_include("org/allbinary/game/resource/BasicArrayList.h")
#include "org/allbinary/game/resource/BasicArrayList.h"
#endif
#if __has_include("org/allbinary/game/resource/BasicArrayList.h")
#include "org/allbinary/game/resource/BasicArrayList.h"
#endif
#if __has_include("org/allbinary/game/resource/BasicArrayList.h")
#include "org/allbinary/game/resource/BasicArrayList.h"
#endif
#if __has_include("org/allbinary/graphics/canvas/transition/progress/BasicArrayList.h")
#include "org/allbinary/graphics/canvas/transition/progress/BasicArrayList.h"
#endif
#if __has_include("org/allbinary/graphics/canvas/transition/progress/BasicArrayList.h")
#include "org/allbinary/graphics/canvas/transition/progress/BasicArrayList.h"
#endif
#if __has_include("org/allbinary/image/BasicArrayList.h")
#include "org/allbinary/image/BasicArrayList.h"
#endif
#if __has_include("org/allbinary/input/motion/BasicArrayList.h")
#include "org/allbinary/input/motion/BasicArrayList.h"
#endif
#if __has_include("org/allbinary/input/motion/button/BasicArrayList.h")
#include "org/allbinary/input/motion/button/BasicArrayList.h"
#endif
#if __has_include("org/allbinary/input/motion/button/BasicArrayList.h")
#include "org/allbinary/input/motion/button/BasicArrayList.h"
#endif
#if __has_include("org/allbinary/logic/system/security/licensing/BasicArrayList.h")
#include "org/allbinary/logic/system/security/licensing/BasicArrayList.h"
#endif


BaseGameInitialization* BaseGameInitialization_NULL_BASE_GAME_INITIALIZATION;

void BaseGameInitialization_staticInit(void) {
    static bool initialized = false;
    if (initialized) {
        return;
    }
    initialized = true;
    BaseGameInitialization_NULL_BASE_GAME_INITIALIZATION = [((BaseGameInitialization*) [BaseGameInitialization alloc]) init:((ResourceInitialization**) java_array_new(sizeof(ResourceInitialization*), 0)) :0];
}

@implementation BaseGameInitialization

- (void) initFields {
    
    
    self->initialized = false;
    self->EARLY_RESOURCES = 0;
    self->GAME_RESOURCES = 1;
    self->EARLY_CHANGABLE_RESOURCES = 2;
    self->GAME_CHANGABLE_RESOURCES = 3;
    self->gameInitialized = false;
    self->allLoaded = false;
}


- (instancetype) init:(ResourceInitialization**)resourceInitializationArray :(int32_t)portion {
    self = [super init];
    [self initFields];
        self->resourceInitializationArray = resourceInitializationArray;
        self->portion = portion;
    return self;
}


// throws Exception
- (void) initKey:(int32_t)portion {
}


// throws Exception
- (void) initKeyMapping:(AbeClientInformationInterface*)abeClientInformation :(int32_t)portion {
        if ([[ChangedGameFeatureListener getInstance] isChangedFeature:[InputFeatureFactory getInstance]->INPUT_MAPPING]) {
            [[[PlatformInputMappingFactory getInstance] getPersistentInputMappingInstance] init_:abeClientInformation];
            [[ProgressCanvasFactory getInstance] addNormalPortion:50 :"Game Keys"];
            [[ChangedGameFeatureListener getInstance] remove:[InputFeatureFactory getInstance]->INPUT_MAPPING];
        }
}


// throws Exception
- (void) init_:(AbeClientInformationInterface*)abeClientInformation :(CommandListener*)commandListener :(int32_t)level {
        ResourceLoadingLevelFactory* resourceLoadingLevelFactory = [ResourceLoadingLevelFactory getInstance];
        if (![self isInitialized] && (level == [resourceLoadingLevelFactory->LOAD_ALL getLevel] || level == [resourceLoadingLevelFactory->LOAD_EARLY getLevel])) {
            int32_t localPortion = 40;
            if (level == [resourceLoadingLevelFactory->LOAD_EARLY getLevel]) {
                localPortion = 8;
            }
            [self setInitialized:true];
            [self initKey:[self getPortion]];
            [self initKeyMapping:abeClientInformation :[self getPortion]];
            [[GameKeyEventFactory getInstance] init_];
            ProgressCanvas* progressCanvas = [ProgressCanvasFactory getInstance];
            [progressCanvas addNormalPortion:localPortion :"Game Key Events"];
            [[BasicTouchInputFactory getInstance] init_:[[[PlatformInputMappingFactory getInstance] getPersistentInputMappingInstance] getInputMapping]];
            [CancelTouchButtonInputFactory getInstance];
            [progressCanvas addNormalPortion:localPortion :"Touch Input"];
            [[CompleteMotionGestureInputToGameMotionGestureInput getInstance] init_];
            [progressCanvas addNormalPortion:localPortion :"Motion Input"];
            [GameFeatureImageCacheFactory init_];
            [progressCanvas addNormalPortion:localPortion :"Image Cache"];
            [self->resourceInitializationArray[self->EARLY_RESOURCES] init_];
        }
}


// throws Exception
- (void) resourceInitialization:(int32_t)level {
        ResourceLoadingLevelFactory* resourceLoadingLevelFactory = [ResourceLoadingLevelFactory getInstance];
        if ([self resourceAnimationChange] && level == [resourceLoadingLevelFactory->LOAD_EARLY getLevel]) {
            [self clearResources];
            [self->resourceInitializationArray[self->EARLY_CHANGABLE_RESOURCES] init_];
        }
        if ([self resourceAnimationChange] && level == [resourceLoadingLevelFactory->LOAD_ALL getLevel]) {
            if (self->allLoaded) {
                [self clearResources];
            }
            if ([[[FeaturedAnimationInterfaceFactoryInterfaceFactory getInstance] getList] size] == 0) {
                [self->resourceInitializationArray[self->EARLY_CHANGABLE_RESOURCES] init_];
            }
            [self->resourceInitializationArray[self->GAME_CHANGABLE_RESOURCES] init_];
            self->allLoaded = true;
        }
}


- (bool) resourceAnimationChange {
        ChangedGameFeatureListener* changedGameFeatureListener = [ChangedGameFeatureListener getInstance];
        GameConfigurationCentral* gameConfigurationCentral = [GameConfigurationCentral getInstance];
        if ([changedGameFeatureListener isChangedGameConfiguration:gameConfigurationCentral->SCALE]) {
            return true;
        }
        if ([[ChangedGameFeatureListener getInstance] isChangedFeature:[MainFeatureFactory getInstance]->STATIC]) {
            return true;
        }
        return false;
}


- (void) clearResources {
        self->allLoaded = false;
        [GameFeatureImageCacheFactory releaseAll];
        FeaturedAnimationInterfaceFactoryInterfaceFactory* featuredAnimationInterfaceFactoryInterfaceFactory = [FeaturedAnimationInterfaceFactoryInterfaceFactory getInstance];
        [featuredAnimationInterfaceFactoryInterfaceFactory clear];
        [[FeaturedResourceRelativeRelationshipFactory getInstance] clear];
}


- (void) setGameInitialized:(bool)gameInitialized {
        self->gameInitialized = gameInitialized;
}


- (bool) isGameInitialized {
        return self->gameInitialized;
}


- (int32_t) getPortion {
        return self->portion;
}


- (void) setInitialized:(bool)initialized {
        self->initialized = initialized;
}


- (bool) isInitialized {
        return self->initialized;
}

@end

