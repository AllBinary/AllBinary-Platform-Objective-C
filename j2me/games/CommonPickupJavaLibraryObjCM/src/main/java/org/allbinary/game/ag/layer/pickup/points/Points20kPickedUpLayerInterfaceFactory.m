// Generated Code Do Not Modify
#include "org/allbinary/game/ag/layer/pickup/points/Points20kPickedUpLayerInterfaceFactory.h"
#include "org/allbinary/animation/FeaturedAnimationInterfaceFactoryInterfaceFactory.h"
#include "org/allbinary/game/configuration/GameConfigurationUtil.h"
#include "org/allbinary/game/layer/pickup/CountedPickedUpLayerInterfaceFactory.h"
#include "org/allbinary/game/layer/pickup/IconLayerFactory.h"
#include "org/allbinary/game/layer/pickup/PickedUpLayerInterfaceFactoryInterface.h"
#include "org/allbinary/game/layer/pickup/PickedUpLayerTypeFactory.h"
#include "org/allbinary/layer/AllBinaryLayer.h"
#include "org/allbinary/game/ag/layer/pickup/points/PointsLayerCircularStaticPool.h"
#include "org/allbinary/game/ag/layer/pickup/points/PointsLayerFactory.h"
#include "org/allbinary/game/ag/layer/pickup/points/PointsResources.h"
#if __has_include("org/allbinary/game/configuration/GameConfigurationUtil.h")
#include "org/allbinary/game/configuration/GameConfigurationUtil.h"
#endif
#if __has_include("org/allbinary/game/layer/pickup/PickedUpLayerTypeFactory.h")
#include "org/allbinary/game/layer/pickup/PickedUpLayerTypeFactory.h"
#endif
#if __has_include("org/allbinary/game/ag/layer/pickup/points/AnimationInterfaceFactoryInterface.h")
#include "org/allbinary/game/ag/layer/pickup/points/AnimationInterfaceFactoryInterface.h"
#endif
#if __has_include("org/allbinary/animation/AnimationInterfaceFactoryInterface.h")
#include "org/allbinary/animation/AnimationInterfaceFactoryInterface.h"
#endif
#if __has_include("org/allbinary/game/configuration/AnimationInterfaceFactoryInterface.h")
#include "org/allbinary/game/configuration/AnimationInterfaceFactoryInterface.h"
#endif
#if __has_include("org/allbinary/game/layer/pickup/AnimationInterfaceFactoryInterface.h")
#include "org/allbinary/game/layer/pickup/AnimationInterfaceFactoryInterface.h"
#endif
#if __has_include("org/allbinary/game/layer/pickup/AnimationInterfaceFactoryInterface.h")
#include "org/allbinary/game/layer/pickup/AnimationInterfaceFactoryInterface.h"
#endif
#if __has_include("org/allbinary/game/layer/pickup/AnimationInterfaceFactoryInterface.h")
#include "org/allbinary/game/layer/pickup/AnimationInterfaceFactoryInterface.h"
#endif
#if __has_include("org/allbinary/game/layer/pickup/AnimationInterfaceFactoryInterface.h")
#include "org/allbinary/game/layer/pickup/AnimationInterfaceFactoryInterface.h"
#endif
#if __has_include("org/allbinary/game/layer/pickup/AnimationInterfaceFactoryInterface.h")
#include "org/allbinary/game/layer/pickup/AnimationInterfaceFactoryInterface.h"
#endif
#if __has_include("org/allbinary/game/layer/pickup/AnimationInterfaceFactoryInterface.h")
#include "org/allbinary/game/layer/pickup/AnimationInterfaceFactoryInterface.h"
#endif
#if __has_include("org/allbinary/layer/AnimationInterfaceFactoryInterface.h")
#include "org/allbinary/layer/AnimationInterfaceFactoryInterface.h"
#endif
#if __has_include("org/allbinary/animation/FeaturedAnimationInterfaceFactoryInterfaceFactory.h")
#include "org/allbinary/animation/FeaturedAnimationInterfaceFactoryInterfaceFactory.h"
#endif
#if __has_include("org/allbinary/game/ag/layer/pickup/points/AnimationInterfaceFactoryInterface.h")
#include "org/allbinary/game/ag/layer/pickup/points/AnimationInterfaceFactoryInterface.h"
#endif
#if __has_include("org/allbinary/animation/AnimationInterfaceFactoryInterface.h")
#include "org/allbinary/animation/AnimationInterfaceFactoryInterface.h"
#endif
#if __has_include("org/allbinary/game/configuration/AnimationInterfaceFactoryInterface.h")
#include "org/allbinary/game/configuration/AnimationInterfaceFactoryInterface.h"
#endif
#if __has_include("org/allbinary/game/layer/pickup/AnimationInterfaceFactoryInterface.h")
#include "org/allbinary/game/layer/pickup/AnimationInterfaceFactoryInterface.h"
#endif
#if __has_include("org/allbinary/game/layer/pickup/AnimationInterfaceFactoryInterface.h")
#include "org/allbinary/game/layer/pickup/AnimationInterfaceFactoryInterface.h"
#endif
#if __has_include("org/allbinary/game/layer/pickup/AnimationInterfaceFactoryInterface.h")
#include "org/allbinary/game/layer/pickup/AnimationInterfaceFactoryInterface.h"
#endif
#if __has_include("org/allbinary/game/layer/pickup/AnimationInterfaceFactoryInterface.h")
#include "org/allbinary/game/layer/pickup/AnimationInterfaceFactoryInterface.h"
#endif
#if __has_include("org/allbinary/game/layer/pickup/AnimationInterfaceFactoryInterface.h")
#include "org/allbinary/game/layer/pickup/AnimationInterfaceFactoryInterface.h"
#endif
#if __has_include("org/allbinary/game/layer/pickup/AnimationInterfaceFactoryInterface.h")
#include "org/allbinary/game/layer/pickup/AnimationInterfaceFactoryInterface.h"
#endif
#if __has_include("org/allbinary/layer/AnimationInterfaceFactoryInterface.h")
#include "org/allbinary/layer/AnimationInterfaceFactoryInterface.h"
#endif
#if __has_include("org/allbinary/animation/FeaturedAnimationInterfaceFactoryInterfaceFactory.h")
#include "org/allbinary/animation/FeaturedAnimationInterfaceFactoryInterfaceFactory.h"
#endif


static PickedUpLayerInterfaceFactoryInterface* Points20kPickedUpLayerInterfaceFactory_pickedUpLayerInterfaceFactoryInterface;

void Points20kPickedUpLayerInterfaceFactory_staticInit(void) {
    static bool initialized = false;
    if (initialized) {
        return;
    }
    initialized = true;
    Points20kPickedUpLayerInterfaceFactory_pickedUpLayerInterfaceFactoryInterface = (CountedPickedUpLayerInterfaceFactory_staticInit(), CountedPickedUpLayerInterfaceFactory_NULL_COUNTED_PICKUP_LAYER_FACTORY);
}

@implementation Points20kPickedUpLayerInterfaceFactory

- (void) initFields {
    self->pool = ((PointsLayerCircularStaticPool*) [((PointsLayerCircularStaticPool*) [PointsLayerCircularStaticPool alloc]) init:((PointsLayerFactory*) [((PointsLayerFactory*) [PointsLayerFactory alloc]) init:[[GameConfigurationUtil getInstance] getCompetitionValue] * 20000]) :1]);
}


// throws Exception
+ (void) initMethod {
        Points20kPickedUpLayerInterfaceFactory_pickedUpLayerInterfaceFactoryInterface = ((Points20kPickedUpLayerInterfaceFactory*) [((Points20kPickedUpLayerInterfaceFactory*) [Points20kPickedUpLayerInterfaceFactory alloc]) init]);
}


- (instancetype) init {
        self = [super init:[PickedUpLayerTypeFactory getInstance]->POINTS :[IconLayerFactory getInstance:[((id<AnimationInterfaceFactoryInterface>) [[FeaturedAnimationInterfaceFactoryInterfaceFactory getInstance] get:[PointsResources getInstance]->RESOURCE_2]) getInstance:0] :10 :10] :[((id<AnimationInterfaceFactoryInterface>) [[FeaturedAnimationInterfaceFactoryInterfaceFactory getInstance] get:[PointsResources getInstance]->RESOURCE_2]) getInstance:0]];
        [self initFields];
    return self;
}


- (int32_t) getTotal {
        return 1;
}


+ (PickedUpLayerInterfaceFactoryInterface*) getInstance {
        return (Points20kPickedUpLayerInterfaceFactory_staticInit(), Points20kPickedUpLayerInterfaceFactory_pickedUpLayerInterfaceFactoryInterface);
}


// throws Exception
- (void) process:(AllBinaryLayer*)sourceLayerInterface {
        [self->pool visit:sourceLayerInterface];
}

@end

