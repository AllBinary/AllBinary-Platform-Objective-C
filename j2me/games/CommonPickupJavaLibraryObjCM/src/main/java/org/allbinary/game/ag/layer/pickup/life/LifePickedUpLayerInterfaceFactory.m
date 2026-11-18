// Generated Code Do Not Modify
#include "org/allbinary/game/ag/layer/pickup/life/LifePickedUpLayerInterfaceFactory.h"
#include "org/allbinary/animation/FeaturedAnimationInterfaceFactoryInterfaceFactory.h"
#include "org/allbinary/game/layer/pickup/CountedPickedUpLayerInterfaceFactory.h"
#include "org/allbinary/game/layer/pickup/IconLayerFactory.h"
#include "org/allbinary/game/layer/pickup/PickedUpLayerInterfaceFactoryInterface.h"
#include "org/allbinary/game/layer/pickup/PickedUpLayerTypeFactory.h"
#include "org/allbinary/layer/AllBinaryLayer.h"
#include "org/allbinary/game/ag/layer/pickup/life/LifeLayerCircularStaticPool.h"
#include "org/allbinary/game/ag/layer/pickup/life/LifeLayerFactory.h"
#include "org/allbinary/game/ag/layer/pickup/life/LifeResources.h"
#if __has_include("org/allbinary/game/ag/layer/pickup/life/AnimationInterfaceFactoryInterface.h")
#include "org/allbinary/game/ag/layer/pickup/life/AnimationInterfaceFactoryInterface.h"
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
#if __has_include("org/allbinary/game/ag/layer/pickup/life/AnimationInterfaceFactoryInterface.h")
#include "org/allbinary/game/ag/layer/pickup/life/AnimationInterfaceFactoryInterface.h"
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


static PickedUpLayerInterfaceFactoryInterface* LifePickedUpLayerInterfaceFactory_pickedUpLayerInterfaceFactoryInterface;

void LifePickedUpLayerInterfaceFactory_staticInit(void) {
    static bool initialized = false;
    if (initialized) {
        return;
    }
    initialized = true;
    LifePickedUpLayerInterfaceFactory_pickedUpLayerInterfaceFactoryInterface = (CountedPickedUpLayerInterfaceFactory_staticInit(), CountedPickedUpLayerInterfaceFactory_NULL_COUNTED_PICKUP_LAYER_FACTORY);
}

@implementation LifePickedUpLayerInterfaceFactory

- (void) initFields {
    self->pool = [((LifeLayerCircularStaticPool*) [LifeLayerCircularStaticPool alloc]) init:[((LifeLayerFactory*) [LifeLayerFactory alloc]) init] :1];
}


// throws Exception
+ (void) init_ {
        LifePickedUpLayerInterfaceFactory_pickedUpLayerInterfaceFactoryInterface = [((LifePickedUpLayerInterfaceFactory*) [LifePickedUpLayerInterfaceFactory alloc]) init];
}


- (instancetype) init {
        self = [super init:[PickedUpLayerTypeFactory getInstance]->LIFE :[IconLayerFactory getInstance:[[[FeaturedAnimationInterfaceFactoryInterfaceFactory getInstance] get:[LifeResources getInstance]->RESOURCE] getInstance:0] :10 :10] :[[[FeaturedAnimationInterfaceFactoryInterfaceFactory getInstance] get:[LifeResources getInstance]->RESOURCE] getInstance:0]];
        [self initFields];
    return self;
}


- (int32_t) getTotal {
        return 1;
}


+ (PickedUpLayerInterfaceFactoryInterface*) getInstance {
        return (LifePickedUpLayerInterfaceFactory_staticInit(), LifePickedUpLayerInterfaceFactory_pickedUpLayerInterfaceFactoryInterface);
}


// throws Exception
- (void) process:(AllBinaryLayer*)sourceLayerInterface {
        [self->pool visit:sourceLayerInterface];
}

@end

