// Generated Code Do Not Modify
#include "org/allbinary/game/layer/weapon/SimpleWeaponLayer.h"
#include "org/allbinary/animation/Animation.h"
#include "org/allbinary/animation/FeaturedAnimationInterfaceFactoryInterfaceFactory.h"
#include "org/allbinary/animation/NullIndexedAnimationFactory.h"
#include "org/allbinary/game/combat/damage/ExplosionResources.h"
#include "org/allbinary/game/multiplayer/layer/RemoteInfo.h"
#include "org/allbinary/graphics/Rectangle.h"
#include "org/allbinary/physics/movement/Movement.h"
#include "org/allbinary/view/ViewPositionBase.h"
#include "org/allbinary/game/layer/weapon/WeaponLayer.h"
#include "org/allbinary/game/layer/weapon/CollidableWeaponBehavior.h"
#if __has_include("org/allbinary/game/layer/weapon/ProceduralAnimationInterfaceFactoryInterface.h")
#include "org/allbinary/game/layer/weapon/ProceduralAnimationInterfaceFactoryInterface.h"
#endif
#if __has_include("org/allbinary/animation/ProceduralAnimationInterfaceFactoryInterface.h")
#include "org/allbinary/animation/ProceduralAnimationInterfaceFactoryInterface.h"
#endif
#if __has_include("org/allbinary/animation/ProceduralAnimationInterfaceFactoryInterface.h")
#include "org/allbinary/animation/ProceduralAnimationInterfaceFactoryInterface.h"
#endif
#if __has_include("org/allbinary/animation/ProceduralAnimationInterfaceFactoryInterface.h")
#include "org/allbinary/animation/ProceduralAnimationInterfaceFactoryInterface.h"
#endif
#if __has_include("org/allbinary/game/combat/damage/ProceduralAnimationInterfaceFactoryInterface.h")
#include "org/allbinary/game/combat/damage/ProceduralAnimationInterfaceFactoryInterface.h"
#endif
#if __has_include("org/allbinary/game/multiplayer/layer/ProceduralAnimationInterfaceFactoryInterface.h")
#include "org/allbinary/game/multiplayer/layer/ProceduralAnimationInterfaceFactoryInterface.h"
#endif
#if __has_include("org/allbinary/graphics/ProceduralAnimationInterfaceFactoryInterface.h")
#include "org/allbinary/graphics/ProceduralAnimationInterfaceFactoryInterface.h"
#endif
#if __has_include("org/allbinary/physics/movement/ProceduralAnimationInterfaceFactoryInterface.h")
#include "org/allbinary/physics/movement/ProceduralAnimationInterfaceFactoryInterface.h"
#endif
#if __has_include("org/allbinary/view/ProceduralAnimationInterfaceFactoryInterface.h")
#include "org/allbinary/view/ProceduralAnimationInterfaceFactoryInterface.h"
#endif
#if __has_include("org/allbinary/animation/FeaturedAnimationInterfaceFactoryInterfaceFactory.h")
#include "org/allbinary/animation/FeaturedAnimationInterfaceFactoryInterfaceFactory.h"
#endif
#if __has_include("org/allbinary/game/combat/damage/ExplosionResources.h")
#include "org/allbinary/game/combat/damage/ExplosionResources.h"
#endif
#if __has_include("org/allbinary/animation/NullIndexedAnimationFactory.h")
#include "org/allbinary/animation/NullIndexedAnimationFactory.h"
#endif



void SimpleWeaponLayer_staticInit(void) {
    static bool initialized = false;
    if (initialized) {
        return;
    }
    initialized = true;
}

@implementation SimpleWeaponLayer


// throws Exception
+ (Animation*) createDestroyed {
        return [((id<ProceduralAnimationInterfaceFactoryInterface>) [[FeaturedAnimationInterfaceFactoryInterfaceFactory getInstance] getProcedural:[ExplosionResources getInstance]->THIRD_EXPLOSION_RESOURCE]) getInstanceAnimation:[[NullIndexedAnimationFactory getFactoryInstance] getInstance:0]];
}


- (instancetype) init:(const char*)name :(RemoteInfo*)remoteInfo :(int32_t)multiPlayerType :(Movement*)movement :(Animation*)animationInterface :(Animation*)destroyedAnimationInterface :(Rectangle*)rectangle :(ViewPositionBase*)viewPosition {
        self = [super init:name :remoteInfo :multiPlayerType :movement :animationInterface :destroyedAnimationInterface :rectangle :viewPosition];
        [self setCollidableInferface:((CollidableWeaponBehavior*) [((CollidableWeaponBehavior*) [CollidableWeaponBehavior alloc]) init:true])];
    return self;
}

@end

