// Generated Code Do Not Modify
#include "org/allbinary/game/part/weapon/StraightMultiProjectileWeaponPart.h"
#include "org/allbinary/animation/Animation.h"
#include "org/allbinary/game/combat/weapon/WeaponProperties.h"
#include "org/allbinary/game/layer/weapon/WeaponLayer.h"
#include "org/allbinary/game/layer/weapon/WeaponLayerCircularPool.h"
#include "org/allbinary/game/score/NoScoreable.h"
#include "org/allbinary/game/score/ScoreableInterface.h"
#include "org/allbinary/graphics/RelativeRelationship.h"
#include "org/allbinary/layer/AllBinaryLayer.h"
#include "org/allbinary/layer/AllBinaryLayerManager.h"
#include "org/allbinary/math/NoDecimalTrigTable.h"
#include "org/allbinary/game/part/weapon/BasicWeaponPart.h"



void StraightMultiProjectileWeaponPart_staticInit(void) {
    static bool initialized = false;
    if (initialized) {
        return;
    }
    initialized = true;
}

@implementation StraightMultiProjectileWeaponPart

- (void) initFields {
    
    
    self->noDecimalTrigTable = [NoDecimalTrigTable getInstance];
}


+ (StraightMultiProjectileWeaponPart*) createStraightMultiProjectileWeaponPart:(Animation*)animationInterface :(WeaponLayerCircularPool*)weaponLayerCircularStaticPool {
        return [((StraightMultiProjectileWeaponPart*) [StraightMultiProjectileWeaponPart alloc]) init:animationInterface :(AllBinaryLayer_staticInit(), AllBinaryLayer_NULL_ALLBINARY_LAYER) :weaponLayerCircularStaticPool :2 :(WeaponProperties_staticInit(), WeaponProperties_NULL_WEAPON_PROPERTIES) :[NoScoreable getInstance] :(RelativeRelationship_staticInit(), RelativeRelationship_NULL_RELATIVE_RELATIONSHIP)];
}


- (instancetype) init:(Animation*)animationInterface :(AllBinaryLayer*)sourceLayerInterface :(WeaponLayerCircularPool*)weaponLayerCircularStaticPool :(int32_t)total :(WeaponProperties*)weaponProperties :(ScoreableInterface*)scoreableInterface :(RelativeRelationship*)relativeRelationship {
        self = [super init:animationInterface :sourceLayerInterface :weaponProperties :scoreableInterface :relativeRelationship];
        [self initFields];
        self->total = total;
        self->weaponLayerCircularStaticPool = weaponLayerCircularStaticPool;
    return self;
}


// throws Exception
- (void) processScore:(AllBinaryLayerManager*)allbinaryLayerManager :(int16_t)angle :(int16_t)otherAngle :(WeaponProperties*)weaponProperties :(ScoreableInterface*)scoreableInterface {
        AllBinaryLayer* sourceLayerInterface = [self getOwnerLayerInterface];
        int32_t reducedWidth = ([sourceLayerInterface getWidth] * 8 / 10);
        int32_t halfWidth = (reducedWidth >> 1);
        int32_t x = [self->relativeRelationship getX];
        int32_t y = [self->relativeRelationship getY];
        int64_t sine = 0;
        int32_t beamX = 0;
        int64_t cosine = 0;
        int32_t beamY = 0;
        WeaponLayer* weaponLayer = nullptr;
        int32_t increment = reducedWidth / (self->total - 1);
        int32_t next = -halfWidth;
        for (int32_t index = 0; index < self->total; index++) {
            sine = (((int64_t) next) * [self->noDecimalTrigTable sin:((int32_t) angle)]);
            beamX = ((int32_t) (sine / ((int64_t) self->noDecimalTrigTable->SCALE)));
            cosine = (((int64_t) next) * [self->noDecimalTrigTable cos:((int32_t) angle)]);
            beamY = -((int32_t) (cosine / ((int64_t) self->noDecimalTrigTable->SCALE)));
            weaponLayer = [self->weaponLayerCircularStaticPool getInstanceWeaponLayer:sourceLayerInterface :x + beamX :y + beamY :0 :((int32_t) angle) :((int32_t) otherAngle) :weaponProperties :scoreableInterface];
            [allbinaryLayerManager append:weaponLayer];
            next += increment;
        }
}

@end

