// Generated Code Do Not Modify
#include "org/allbinary/game/layer/resources/OnDemandLoader.h"
#include "org/allbinary/animation/resource/BaseResourceAnimationInterfaceFactoryInterfaceFactory.h"
#include "org/allbinary/game/configuration/feature/Features.h"
#include "org/allbinary/game/configuration/feature/MainFeatureFactory.h"
#include "org/allbinary/game/layer/GameLayerPlacementInterfaceBasicArrayListFactoryInterfaceFactory.h"
#include "org/allbinary/game/layer/LayerPlacementInterfaceBasicArrayListFactoryInterface.h"
#include "org/allbinary/game/resource/ResourceLoadingLevelFactory.h"
#include "org/allbinary/image/ImageCache.h"
#include "org/allbinary/logic/communication/log/PreLogUtil.h"
#include "org/allbinary/logic/string/StringMaker.h"
#include "org/allbinary/string/CommonStrings.h"
#include "org/allbinary/game/layer/resources/OnDemandResourcesFactory.h"
#include "org/allbinary/game/layer/resources/OnDemandResources.h"
#if __has_include("org/allbinary/game/configuration/feature/Features.h")
#include "org/allbinary/game/configuration/feature/Features.h"
#endif
#if __has_include("org/allbinary/game/configuration/feature/MainFeatureFactory.h")
#include "org/allbinary/game/configuration/feature/MainFeatureFactory.h"
#endif
#if __has_include("org/allbinary/logic/string/StringMaker.h")
#include "org/allbinary/logic/string/StringMaker.h"
#endif
#if __has_include("org/allbinary/logic/string/StringMaker.h")
#include "org/allbinary/logic/string/StringMaker.h"
#endif



void OnDemandLoader_staticInit(void) {
    static bool initialized = false;
    if (initialized) {
        return;
    }
    initialized = true;
}

@implementation OnDemandLoader

- (void) initFields {
    
    
    
}


- (instancetype) init:(OnDemandResourcesFactory*)onDemandResourcesFactory :(GameLayerPlacementInterfaceBasicArrayListFactoryInterfaceFactory*)gameLayerPlacementInterfaceBasicArrayListFactoryInterfaceFactory :(BaseResourceAnimationInterfaceFactoryInterfaceFactory*)resourceAnimationInterfaceFactoryInterfaceFactory {
    self = [super init];
    [self initFields];
        self->onDemandResourcesFactory = onDemandResourcesFactory;
        self->gameLayerPlacementInterfaceBasicArrayListFactoryInterfaceFactory = gameLayerPlacementInterfaceBasicArrayListFactoryInterfaceFactory;
        self->resourceAnimationInterfaceFactoryInterfaceFactory = resourceAnimationInterfaceFactoryInterfaceFactory;
    return self;
}


// throws Exception
- (void) initMethod:(ImageCache*)imageCache :(int32_t)level :(const char*)loadingString {
        ResourceLoadingLevelFactory* resourceLoadingLevelFactory = [ResourceLoadingLevelFactory getInstance];
        if ([[Features getInstance] isFeature:[MainFeatureFactory getInstance]->LOAD_ALL]) {
            if ([self->resourceAnimationInterfaceFactoryInterfaceFactory isInitialized]) {
                return;
            }
            [self initAll:imageCache :loadingString];
        } else if (level != [resourceLoadingLevelFactory->LOAD_ALL getLevel]) {
            LayerPlacementInterfaceBasicArrayListFactoryInterface* layerPlacementInterfaceBasicArrayListFactoryInterface = [((id<GameLayerPlacementInterfaceBasicArrayListFactoryInterfaceFactory>) self->gameLayerPlacementInterfaceBasicArrayListFactoryInterfaceFactory) getInstance:level];
            [self initLevel:layerPlacementInterfaceBasicArrayListFactoryInterface :imageCache :level :loadingString];
        }
}


// throws Exception
- (void) initAll:(ImageCache*)imageCache :(const char*)loadingString {
        int32_t index = 0;
        int32_t portion = 120;
        OnDemandResources* onDemandResources = nullptr;
        for (int32_t onDemandIndex = [self->onDemandResourcesFactory size]; --onDemandIndex >= 0; ) {
            onDemandResources = [self->onDemandResourcesFactory remove:onDemandIndex];
            if (onDemandResources != (OnDemandResources_staticInit(), OnDemandResources_NULL_ON_DEMAND_RESOURCES)) {
                index = [onDemandResources initAt:imageCache :self->resourceAnimationInterfaceFactoryInterfaceFactory :portion :loadingString :index];
            }
        }
}


// throws Exception
- (void) initLevel:(LayerPlacementInterfaceBasicArrayListFactoryInterface*)layerPlacementInterfaceBasicArrayListFactoryInterface :(ImageCache*)imageCache :(int32_t)level :(const char*)loadingString {
        CommonStrings* commonStrings = [CommonStrings getInstance];
        int32_t portion = 120;
        int32_t index = 0;
        int32_t* onDemandArray = [((id<LayerPlacementInterfaceBasicArrayListFactoryInterface>) layerPlacementInterfaceBasicArrayListFactoryInterface) getOnDemandResources];
        [PreLogUtil put:[[[((StringMaker*) [((StringMaker*) [StringMaker alloc]) init]) append:commonStrings->START] appendint:java_array_length(onDemandArray)] toString] :self :"initLevel"];
        OnDemandResources* onDemandResources = nullptr;
        for (int32_t onDemandIndex = java_array_length(onDemandArray); --onDemandIndex >= 0; ) {
            onDemandResources = [self->onDemandResourcesFactory remove:onDemandArray[onDemandIndex]];
            if (onDemandResources != (OnDemandResources_staticInit(), OnDemandResources_NULL_ON_DEMAND_RESOURCES)) {
                index = [onDemandResources initAt:imageCache :self->resourceAnimationInterfaceFactoryInterfaceFactory :portion :loadingString :index];
            }
        }
}

@end

