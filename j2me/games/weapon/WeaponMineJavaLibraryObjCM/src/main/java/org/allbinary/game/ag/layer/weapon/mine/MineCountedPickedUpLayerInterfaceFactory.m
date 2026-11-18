// Generated Code Do Not Modify
#include "org/allbinary/game/ag/layer/weapon/mine/MineCountedPickedUpLayerInterfaceFactory.h"
#include "org/allbinary/animation/FeaturedAnimationInterfaceFactoryInterfaceFactory.h"
#include "org/allbinary/game/combat/weapon/WeaponProperties.h"
#include "org/allbinary/game/layer/pickup/IconLayerFactory.h"
#include "org/allbinary/game/layer/pickup/PickedUpLayerInterfaceFactoryInterface.h"
#include "org/allbinary/game/layer/pickup/PickedUpLayerTypeFactory.h"
#include "org/allbinary/game/layer/weapon/WeaponLayerCircularPool.h"
#include "org/allbinary/game/score/ScoreableInterface.h"
#include "org/allbinary/layer/AllBinaryLayer.h"
#include "org/allbinary/logic/math/SmallIntegerSingletonFactory.h"
#include "org/allbinary/util/ABHashtable.h"
#include "org/allbinary/game/ag/layer/weapon/mine/MineLayerCircularStaticPool.h"
#include "org/allbinary/game/ag/layer/weapon/mine/MineWeaponResources.h"
#if __has_include("org/allbinary/game/ag/layer/weapon/mine/AnimationInterfaceFactoryInterface.h")
#include "org/allbinary/game/ag/layer/weapon/mine/AnimationInterfaceFactoryInterface.h"
#endif
#if __has_include("org/allbinary/animation/AnimationInterfaceFactoryInterface.h")
#include "org/allbinary/animation/AnimationInterfaceFactoryInterface.h"
#endif
#if __has_include("org/allbinary/game/combat/weapon/AnimationInterfaceFactoryInterface.h")
#include "org/allbinary/game/combat/weapon/AnimationInterfaceFactoryInterface.h"
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
#if __has_include("org/allbinary/game/layer/weapon/AnimationInterfaceFactoryInterface.h")
#include "org/allbinary/game/layer/weapon/AnimationInterfaceFactoryInterface.h"
#endif
#if __has_include("org/allbinary/game/score/AnimationInterfaceFactoryInterface.h")
#include "org/allbinary/game/score/AnimationInterfaceFactoryInterface.h"
#endif
#if __has_include("org/allbinary/layer/AnimationInterfaceFactoryInterface.h")
#include "org/allbinary/layer/AnimationInterfaceFactoryInterface.h"
#endif
#if __has_include("org/allbinary/logic/math/AnimationInterfaceFactoryInterface.h")
#include "org/allbinary/logic/math/AnimationInterfaceFactoryInterface.h"
#endif
#if __has_include("org/allbinary/util/AnimationInterfaceFactoryInterface.h")
#include "org/allbinary/util/AnimationInterfaceFactoryInterface.h"
#endif
#if __has_include("org/allbinary/game/ag/layer/weapon/mine/AnimationInterfaceFactoryInterface.h")
#include "org/allbinary/game/ag/layer/weapon/mine/AnimationInterfaceFactoryInterface.h"
#endif
#if __has_include("org/allbinary/animation/AnimationInterfaceFactoryInterface.h")
#include "org/allbinary/animation/AnimationInterfaceFactoryInterface.h"
#endif
#if __has_include("org/allbinary/game/combat/weapon/AnimationInterfaceFactoryInterface.h")
#include "org/allbinary/game/combat/weapon/AnimationInterfaceFactoryInterface.h"
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
#if __has_include("org/allbinary/game/layer/weapon/AnimationInterfaceFactoryInterface.h")
#include "org/allbinary/game/layer/weapon/AnimationInterfaceFactoryInterface.h"
#endif
#if __has_include("org/allbinary/game/score/AnimationInterfaceFactoryInterface.h")
#include "org/allbinary/game/score/AnimationInterfaceFactoryInterface.h"
#endif
#if __has_include("org/allbinary/layer/AnimationInterfaceFactoryInterface.h")
#include "org/allbinary/layer/AnimationInterfaceFactoryInterface.h"
#endif
#if __has_include("org/allbinary/logic/math/AnimationInterfaceFactoryInterface.h")
#include "org/allbinary/logic/math/AnimationInterfaceFactoryInterface.h"
#endif
#if __has_include("org/allbinary/util/AnimationInterfaceFactoryInterface.h")
#include "org/allbinary/util/AnimationInterfaceFactoryInterface.h"
#endif


static PickedUpLayerInterfaceFactoryInterface* MineCountedPickedUpLayerInterfaceFactory_pickedUpLayerInterfaceFactoryInterface;

void MineCountedPickedUpLayerInterfaceFactory_staticInit(void) {
    static bool initialized = false;
    if (initialized) {
        return;
    }
    initialized = true;
    MineCountedPickedUpLayerInterfaceFactory_pickedUpLayerInterfaceFactoryInterface = (CountedPickedUpLayerInterfaceFactory_staticInit(), CountedPickedUpLayerInterfaceFactory_NULL_COUNTED_PICKUP_LAYER_FACTORY);
}

@implementation MineCountedPickedUpLayerInterfaceFactory

- (void) initFields {
    self->weaponLayerCircularStaticPool = [MineLayerCircularStaticPool getInstance];
    self->weaponProperties = [((WeaponProperties*) [WeaponProperties alloc]) init:-1LL :-1LL :0 :8000 :((int16_t) 10)];
    self->smallIntegerSingletonFactory = [SmallIntegerSingletonFactory getInstance];
}


// throws Exception
+ (void) init_ {
        MineCountedPickedUpLayerInterfaceFactory_pickedUpLayerInterfaceFactoryInterface = [((MineCountedPickedUpLayerInterfaceFactory*) [MineCountedPickedUpLayerInterfaceFactory alloc]) init];
}


- (instancetype) init {
        self = [super init:[PickedUpLayerTypeFactory getInstance]->MINE :[IconLayerFactory getInstance:[[[FeaturedAnimationInterfaceFactoryInterfaceFactory getInstance] get:[MineWeaponResources getInstance]->DROP_ICON_RESOURCE] getInstance:0] :10 :10] :[[[FeaturedAnimationInterfaceFactoryInterfaceFactory getInstance] get:[MineWeaponResources getInstance]->DROP_RESOURCE] getInstance:0]];
        [self initFields];
    return self;
}


+ (PickedUpLayerInterfaceFactoryInterface*) getInstance {
        return (MineCountedPickedUpLayerInterfaceFactory_staticInit(), MineCountedPickedUpLayerInterfaceFactory_pickedUpLayerInterfaceFactoryInterface);
}


- (int32_t) getTotal {
        return 3;
}


// throws Exception
- (AllBinaryLayer*) getNextInstance:(ABHashtable*)hashtable :(int32_t)x :(int32_t)y :(int32_t)z {
        AllBinaryLayer* sourceLayerInterface = ((AllBinaryLayer*) [hashtable get:JAVA_BOX(((id) [self->smallIntegerSingletonFactory getAt:0]))]);
        int32_t angle = ((int32_t) [hashtable get:JAVA_BOX(((id) [self->smallIntegerSingletonFactory getAt:1]))]);
        ScoreableInterface* scoreableInterface = ((ScoreableInterface*) sourceLayerInterface);
        return [self->weaponLayerCircularStaticPool getInstanceWeaponLayer:sourceLayerInterface :x :y :z :((int32_t) ((int32_t) (angle))) :0 :self->weaponProperties :scoreableInterface];
}

@end

