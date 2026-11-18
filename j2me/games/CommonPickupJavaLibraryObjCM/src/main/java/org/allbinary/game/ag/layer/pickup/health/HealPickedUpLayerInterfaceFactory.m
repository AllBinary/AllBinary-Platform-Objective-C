// Generated Code Do Not Modify
#include "org/allbinary/game/ag/layer/pickup/health/HealPickedUpLayerInterfaceFactory.h"
#include "org/allbinary/animation/FeaturedAnimationInterfaceFactoryInterfaceFactory.h"
#include "org/allbinary/game/layer/pickup/CountedPickedUpLayerInterfaceFactory.h"
#include "org/allbinary/game/layer/pickup/IconLayerFactory.h"
#include "org/allbinary/game/layer/pickup/PickedUpLayerInterfaceFactoryInterface.h"
#include "org/allbinary/game/layer/pickup/PickedUpLayerTypeFactory.h"
#include "org/allbinary/layer/AllBinaryLayer.h"
#include "org/allbinary/game/ag/layer/pickup/health/HealLayerCircularStaticPool.h"
#include "org/allbinary/game/ag/layer/pickup/health/HealLayerFactory.h"
#include "org/allbinary/game/ag/layer/pickup/health/HealthResources.h"
#if __has_include("org/allbinary/game/ag/layer/pickup/health/AnimationInterfaceFactoryInterface.h")
#include "org/allbinary/game/ag/layer/pickup/health/AnimationInterfaceFactoryInterface.h"
#endif
#if __has_include("org/allbinary/animation/AnimationInterfaceFactoryInterface.h")
#include "org/allbinary/animation/AnimationInterfaceFactoryInterface.h"
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
#if __has_include("org/allbinary/game/ag/layer/pickup/health/AnimationInterfaceFactoryInterface.h")
#include "org/allbinary/game/ag/layer/pickup/health/AnimationInterfaceFactoryInterface.h"
#endif
#if __has_include("org/allbinary/animation/AnimationInterfaceFactoryInterface.h")
#include "org/allbinary/animation/AnimationInterfaceFactoryInterface.h"
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


static PickedUpLayerInterfaceFactoryInterface* HealPickedUpLayerInterfaceFactory_pickedUpLayerInterfaceFactoryInterface;

void HealPickedUpLayerInterfaceFactory_staticInit(void) {
    static bool initialized = false;
    if (initialized) {
        return;
    }
    initialized = true;
    HealPickedUpLayerInterfaceFactory_pickedUpLayerInterfaceFactoryInterface = (CountedPickedUpLayerInterfaceFactory_staticInit(), CountedPickedUpLayerInterfaceFactory_NULL_COUNTED_PICKUP_LAYER_FACTORY);
}

@implementation HealPickedUpLayerInterfaceFactory

- (void) initFields {
    self->pool = [((HealLayerCircularStaticPool*) [HealLayerCircularStaticPool alloc]) init:[((HealLayerFactory*) [HealLayerFactory alloc]) init] :1];
}


// throws Exception
+ (void) init_ {
        HealPickedUpLayerInterfaceFactory_pickedUpLayerInterfaceFactoryInterface = [((HealPickedUpLayerInterfaceFactory*) [HealPickedUpLayerInterfaceFactory alloc]) init];
}


- (instancetype) init {
        self = [super init:[PickedUpLayerTypeFactory getInstance]->HEAL :[IconLayerFactory getInstance:[[[FeaturedAnimationInterfaceFactoryInterfaceFactory getInstance] get:[HealthResources getInstance]->RESOURCE] getInstance:0] :10 :10] :[[[FeaturedAnimationInterfaceFactoryInterfaceFactory getInstance] get:[HealthResources getInstance]->RESOURCE] getInstance:0]];
        [self initFields];
    return self;
}


- (int32_t) getTotal {
        return 1;
}


+ (PickedUpLayerInterfaceFactoryInterface*) getInstance {
        return (HealPickedUpLayerInterfaceFactory_staticInit(), HealPickedUpLayerInterfaceFactory_pickedUpLayerInterfaceFactoryInterface);
}


// throws Exception
- (void) process:(AllBinaryLayer*)sourceLayerInterface {
        [self->pool visit:sourceLayerInterface];
}

@end

