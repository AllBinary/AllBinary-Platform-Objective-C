// Generated Code Do Not Modify
#include "org/allbinary/game/layer/weapon/WeaponLayerCircularPool.h"
#include "org/allbinary/game/combat/weapon/WeaponProperties.h"
#include "org/allbinary/game/score/ScoreableInterface.h"
#include "org/allbinary/layer/AllBinaryLayer.h"
#include "org/allbinary/game/layer/weapon/WeaponLayer.h"



void WeaponLayerCircularPool_staticInit(void) {
    static bool initialized = false;
    if (initialized) {
        return;
    }
    initialized = true;
}

@implementation WeaponLayerCircularPool


- (instancetype) init {
    self = [super init];
    return self;
}


// throws Exception
- (WeaponLayer*) getInstanceWeaponLayer:(AllBinaryLayer*)sourceLayerInterface :(int32_t)x :(int32_t)y :(int32_t)z :(int32_t)angle :(int32_t)otherAngle :(WeaponProperties*)weaponProperties :(ScoreableInterface*)scoreable {
        WeaponLayer* weaponLayer = ((WeaponLayer*) [super getNextInstance]);
        [weaponLayer initXYZ:x :y :z];
        [weaponLayer initMethod:sourceLayerInterface :angle :otherAngle :weaponProperties :scoreable];
        return weaponLayer;
}

@end

