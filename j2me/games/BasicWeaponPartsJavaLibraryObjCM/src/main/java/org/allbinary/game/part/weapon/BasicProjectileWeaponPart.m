// Generated Code Do Not Modify
#include "org/allbinary/game/part/weapon/BasicProjectileWeaponPart.h"
#include "org/allbinary/animation/Animation.h"
#include "org/allbinary/game/combat/weapon/WeaponProperties.h"
#include "org/allbinary/game/layer/weapon/WeaponLayer.h"
#include "org/allbinary/game/layer/weapon/WeaponLayerCircularPool.h"
#include "org/allbinary/game/score/NoScoreable.h"
#include "org/allbinary/game/score/ScoreableInterface.h"
#include "org/allbinary/graphics/RelativeRelationship.h"
#include "org/allbinary/layer/AllBinaryLayer.h"
#include "org/allbinary/layer/AllBinaryLayerManager.h"
#include "org/allbinary/game/part/weapon/BasicWeaponPart.h"



void BasicProjectileWeaponPart_staticInit(void) {
    static bool initialized = false;
    if (initialized) {
        return;
    }
    initialized = true;
}

@implementation BasicProjectileWeaponPart

- (void) initFields {
    
}


+ (BasicProjectileWeaponPart*) createBasicProjectileWeaponPart:(Animation*)animationInterface :(WeaponLayerCircularPool*)weaponLayerCircularStaticPool {
        return ((BasicProjectileWeaponPart*) [((BasicProjectileWeaponPart*) [BasicProjectileWeaponPart alloc]) init:animationInterface :(AllBinaryLayer_staticInit(), AllBinaryLayer_NULL_ALLBINARY_LAYER) :weaponLayerCircularStaticPool :(WeaponProperties_staticInit(), WeaponProperties_NULL_WEAPON_PROPERTIES) :[NoScoreable getInstance] :(RelativeRelationship_staticInit(), RelativeRelationship_NULL_RELATIVE_RELATIONSHIP)]);
}


- (instancetype) init:(Animation*)animationInterface :(AllBinaryLayer*)sourceLayerInterface :(WeaponLayerCircularPool*)weaponLayerCircularStaticPool :(WeaponProperties*)weaponProperties :(ScoreableInterface*)scoreableInterface :(RelativeRelationship*)relativeRelationship {
        self = [super init:animationInterface :sourceLayerInterface :weaponProperties :scoreableInterface :relativeRelationship];
        [self initFields];
        self->weaponLayerCircularStaticPool = weaponLayerCircularStaticPool;
    return self;
}


// throws Exception
- (void) processScore:(AllBinaryLayerManager*)allbinaryLayerManager :(int16_t)angle :(int16_t)otherAngle :(WeaponProperties*)weaponProperties :(ScoreableInterface*)scoreableInterface {
        WeaponLayer* weaponLayer = [self->weaponLayerCircularStaticPool getInstanceWeaponLayer:[self getOwnerLayerInterface] :[self->relativeRelationship getX] :[self->relativeRelationship getY] :[self->relativeRelationship getZ] :((int32_t) angle) :((int32_t) otherAngle) :weaponProperties :scoreableInterface];
        [allbinaryLayerManager append:weaponLayer];
}

@end

