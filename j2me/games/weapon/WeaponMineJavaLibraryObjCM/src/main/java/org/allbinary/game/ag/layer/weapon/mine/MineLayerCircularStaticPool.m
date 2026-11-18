// Generated Code Do Not Modify
#include "org/allbinary/game/ag/layer/weapon/mine/MineLayerCircularStaticPool.h"
#include "org/allbinary/game/layer/weapon/WeaponLayerCircularPool.h"
#include "org/allbinary/view/ViewPositionFactoryInterface.h"
#include "org/allbinary/game/ag/layer/weapon/mine/MineCountedPickedUpLayerInterfaceFactory.h"
#include "org/allbinary/game/ag/layer/weapon/mine/MineLayerFactory.h"


static WeaponLayerCircularPool* MineLayerCircularStaticPool_WEAPON_LAYER_CIRCULAR_STATIC_POOL;

void MineLayerCircularStaticPool_staticInit(void) {
    static bool initialized = false;
    if (initialized) {
        return;
    }
    initialized = true;
    MineLayerCircularStaticPool_WEAPON_LAYER_CIRCULAR_STATIC_POOL = [((WeaponLayerCircularPool*) [WeaponLayerCircularPool alloc]) init];
}

@implementation MineLayerCircularStaticPool

- (instancetype) init {
    self = [super init];
    return self;
}


// throws Exception
+ (void) init_:(ViewPositionFactoryInterface*)viewPositionFactoryInterface {
        [MineCountedPickedUpLayerInterfaceFactory init_];
        [(MineLayerCircularStaticPool_staticInit(), MineLayerCircularStaticPool_WEAPON_LAYER_CIRCULAR_STATIC_POOL) initAllBinaryLayerCircularPool:[((MineLayerFactory*) [MineLayerFactory alloc]) init:viewPositionFactoryInterface] :20];
}


+ (WeaponLayerCircularPool*) getInstance {
        return (MineLayerCircularStaticPool_staticInit(), MineLayerCircularStaticPool_WEAPON_LAYER_CIRCULAR_STATIC_POOL);
}

@end

