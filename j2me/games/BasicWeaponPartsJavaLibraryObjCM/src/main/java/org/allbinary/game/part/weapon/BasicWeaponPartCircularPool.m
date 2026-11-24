// Generated Code Do Not Modify
#include "org/allbinary/game/part/weapon/BasicWeaponPartCircularPool.h"
#include "org/allbinary/game/combat/weapon/WeaponProperties.h"
#include "org/allbinary/game/score/ScoreableInterface.h"
#include "org/allbinary/graphics/RelativeRelationship.h"
#include "org/allbinary/layer/AllBinaryLayer.h"
#include "org/allbinary/game/part/weapon/BasicWeaponPart.h"
#include "org/allbinary/game/part/weapon/BasicWeaponPartFactoryInterface.h"


BasicWeaponPartCircularPool* BasicWeaponPartCircularPool_NULL_BASIC_WEAPON_PART_CIRCULAR_POOL;

void BasicWeaponPartCircularPool_staticInit(void) {
    static bool initialized = false;
    if (initialized) {
        return;
    }
    initialized = true;
    BasicWeaponPartCircularPool_NULL_BASIC_WEAPON_PART_CIRCULAR_POOL = ((BasicWeaponPartCircularPool*) [((BasicWeaponPartCircularPool*) [BasicWeaponPartCircularPool alloc]) init]);
}

@implementation BasicWeaponPartCircularPool

- (void) initFields {
    self->basicWeaponPart = (BasicWeaponPart_staticInit(), BasicWeaponPart_NULL_BASIC_WEAPON_PART);
}

- (instancetype) init {
    self = [super init];
    [self initFields];
    return self;
}


// throws Exception
- (void) initMethod:(BasicWeaponPartFactoryInterface*)basicWeaponPartFactoryInterface {
        self->basicWeaponPart = [((id<BasicWeaponPartFactoryInterface>) basicWeaponPartFactoryInterface) getInstance];
}


// throws Exception
// synchronized
- (BasicWeaponPart*) getInstance:(AllBinaryLayer*)sourceLayerInterface :(WeaponProperties*)weaponProperties :(ScoreableInterface*)scoreableInterface :(RelativeRelationship*)relativeRelationship {
        [self->basicWeaponPart initMethod:sourceLayerInterface :weaponProperties :scoreableInterface :relativeRelationship];
        return self->basicWeaponPart;
}

@end

