// Generated Code Do Not Modify
#include "org/allbinary/game/part/weapon/ArcedMultiBeamWeaponPart.h"
#include "org/allbinary/animation/Animation.h"
#include "org/allbinary/game/combat/weapon/WeaponProperties.h"
#include "org/allbinary/game/layer/weapon/WeaponLayer.h"
#include "org/allbinary/game/layer/weapon/WeaponLayerCircularPool.h"
#include "org/allbinary/game/score/ScoreableInterface.h"
#include "org/allbinary/graphics/RelativeRelationship.h"
#include "org/allbinary/layer/AllBinaryLayer.h"
#include "org/allbinary/layer/AllBinaryLayerManager.h"
#include "org/allbinary/math/AngleFactory.h"
#include "org/allbinary/game/part/weapon/BasicWeaponPart.h"



void ArcedMultiBeamWeaponPart_staticInit(void) {
    static bool initialized = false;
    if (initialized) {
        return;
    }
    initialized = true;
}

@implementation ArcedMultiBeamWeaponPart

- (void) initFields {
    
    
    self->TOTAL_ANGLE = ((int32_t) [AngleFactory getInstance]->TOTAL_ANGLE);
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
        int16_t increment = ((int16_t) ((self->total - 1) / self->TOTAL_ANGLE));
        int16_t minAngle = ((int16_t) (((int32_t) angle) - ((((int32_t) increment) * self->total) >> 1)));
        int32_t next = 0;
        WeaponLayer* weaponLayer = nullptr;
        for (int32_t index = 0; index < self->total; index++) {
            weaponLayer = [self->weaponLayerCircularStaticPool getInstanceWeaponLayer:[self getOwnerLayerInterface] :[self->relativeRelationship getX] :[self->relativeRelationship getY] :0 :(minAngle + increment) :((int32_t) otherAngle) :weaponProperties :scoreableInterface];
            [allbinaryLayerManager append:weaponLayer];
            next += ((int32_t) increment);
        }
}

@end

