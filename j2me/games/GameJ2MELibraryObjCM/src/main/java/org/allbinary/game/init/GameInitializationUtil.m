// Generated Code Do Not Modify
#include "org/allbinary/game/init/GameInitializationUtil.h"
#include "org/allbinary/game/configuration/event/ChangedGameFeatureListener.h"
#include "org/allbinary/game/configuration/event/GameInitializedEvent.h"
#include "org/allbinary/game/configuration/event/GameInitializedEventHandler.h"
#include "org/allbinary/game/configuration/feature/Features.h"
#include "org/allbinary/game/configuration/feature/MainFeatureFactory.h"
#include "org/allbinary/game/resource/ResourceLoadingLevelFactory.h"
#include "org/allbinary/graphics/displayable/MyCanvas.h"
#include "org/allbinary/logic/system/security/licensing/AbeClientInformationInterface.h"
#include "org/allbinary/game/init/GameInitializationInterface.h"
#include "org/allbinary/game/init/BasicBuildGameInitializerFactory.h"
#if __has_include("org/allbinary/game/configuration/event/ChangedGameFeatureListener.h")
#include "org/allbinary/game/configuration/event/ChangedGameFeatureListener.h"
#endif
#if __has_include("org/allbinary/game/configuration/event/GameInitializedEventHandler.h")
#include "org/allbinary/game/configuration/event/GameInitializedEventHandler.h"
#endif
#if __has_include("org/allbinary/game/configuration/event/ChangedGameFeatureListener.h")
#include "org/allbinary/game/configuration/event/ChangedGameFeatureListener.h"
#endif
#if __has_include("org/allbinary/game/configuration/feature/MainFeatureFactory.h")
#include "org/allbinary/game/configuration/feature/MainFeatureFactory.h"
#endif
#if __has_include("org/allbinary/game/configuration/event/GameInitializedEventHandler.h")
#include "org/allbinary/game/configuration/event/GameInitializedEventHandler.h"
#endif
#if __has_include("org/allbinary/game/configuration/event/ChangedGameFeatureListener.h")
#include "org/allbinary/game/configuration/event/ChangedGameFeatureListener.h"
#endif
#if __has_include("org/allbinary/game/configuration/feature/MainFeatureFactory.h")
#include "org/allbinary/game/configuration/feature/MainFeatureFactory.h"
#endif


static GameInitializationUtil* GameInitializationUtil_instance;

void GameInitializationUtil_staticInit(void) {
    static bool initialized = false;
    if (initialized) {
        return;
    }
    initialized = true;
    GameInitializationUtil_instance = ((GameInitializationUtil*) [((GameInitializationUtil*) [GameInitializationUtil alloc]) init]);
}

@implementation GameInitializationUtil

- (void) initFields {
    self->EVENT = ((GameInitializedEvent*) [((GameInitializedEvent*) [GameInitializedEvent alloc]) init:self]);
}

- (instancetype) init {
    self = [super init];
    [self initFields];
    return self;
}


// throws Exception
- (void) initDemo:(AbeClientInformationInterface*)abeClientInformation :(MyCanvas*)canvas :(BasicBuildGameInitializerFactory*)gameInitializationInterfaceFactoryInterface {
        MainFeatureFactory* mainFeatureFactory = [MainFeatureFactory getInstance];
        if ([[ChangedGameFeatureListener getInstance] isChangedFeature:mainFeatureFactory->STATIC]) {
            GameInitializationInterface* gameInitializationInterface = [gameInitializationInterfaceFactoryInterface getInstance];
            Features* features = [Features getInstance];
            if ([features isFeature:mainFeatureFactory->LOAD_ALL]) {
                [self initGame:abeClientInformation :canvas :gameInitializationInterfaceFactoryInterface];
            } else if ([features isFeature:mainFeatureFactory->LOAD_ONDEMAND]) {
                ResourceLoadingLevelFactory* resourceLoadingLevelFactory = [ResourceLoadingLevelFactory getInstance];
                [((id<GameInitializationInterface>) gameInitializationInterface) initMethod:abeClientInformation :[canvas getCustomCommandListener] :[resourceLoadingLevelFactory->LOAD_EARLY getLevel]];
                [self->EVENT setResourceLoadingLevel:resourceLoadingLevelFactory->LOAD_EARLY];
            } else {
                java_throw(java_exception_new("Exception", "No Loading Feature Available"));
            }
            [[GameInitializedEventHandler getInstance] fireEvent:self->EVENT];
        }
}


// throws Exception
- (void) initGame:(AbeClientInformationInterface*)abeClientInformation :(MyCanvas*)canvas :(BasicBuildGameInitializerFactory*)gameInitializationInterfaceFactoryInterface {
        if ([[ChangedGameFeatureListener getInstance] isChangedFeature:[MainFeatureFactory getInstance]->STATIC]) {
            GameInitializationInterface* gameInitializationInterface = [gameInitializationInterfaceFactoryInterface getInstance];
            ResourceLoadingLevelFactory* resourceLoadingLevelFactory = [ResourceLoadingLevelFactory getInstance];
            [((id<GameInitializationInterface>) gameInitializationInterface) initMethod:abeClientInformation :[canvas getCustomCommandListener] :[resourceLoadingLevelFactory->LOAD_ALL getLevel]];
            [self->EVENT setResourceLoadingLevel:resourceLoadingLevelFactory->LOAD_ALL];
            [[GameInitializedEventHandler getInstance] fireEvent:self->EVENT];
            [[ChangedGameFeatureListener getInstance] remove:[MainFeatureFactory getInstance]->STATIC];
        }
}


+ (GameInitializationUtil*) getInstance {
        return (GameInitializationUtil_staticInit(), GameInitializationUtil_instance);
}

@end

