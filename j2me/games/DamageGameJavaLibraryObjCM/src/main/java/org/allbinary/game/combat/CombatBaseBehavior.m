// Generated Code Do Not Modify
#include "org/allbinary/game/combat/CombatBaseBehavior.h"
#include "org/allbinary/game/combat/damage/DamageableBaseBehavior.h"
#include "org/allbinary/game/combat/destroy/DestroyableBaseBehavior.h"


CombatBaseBehavior* CombatBaseBehavior_NULL_COMBAT_BEHAVIOR;

void CombatBaseBehavior_staticInit(void) {
    static bool initialized = false;
    if (initialized) {
        return;
    }
    initialized = true;
    CombatBaseBehavior_NULL_COMBAT_BEHAVIOR = [((CombatBaseBehavior*) [CombatBaseBehavior alloc]) init:[DamageableBaseBehavior getInstance] :[DestroyableBaseBehavior getInstance]];
}

@implementation CombatBaseBehavior

- (void) initFields {
    
    
    self->readyForExplosion = false;
}


- (instancetype) init:(DamageableBaseBehavior*)damageableBaseBehavior :(DestroyableBaseBehavior*)destroyableBaseBehavior {
    self = [super init];
    [self initFields];
        self->damageableBaseBehavior = damageableBaseBehavior;
        self->destroyableBaseBehavior = destroyableBaseBehavior;
    return self;
}


- (DamageableBaseBehavior*) getDamageableBaseBehavior {
        return self->damageableBaseBehavior;
}


- (DestroyableBaseBehavior*) getDestroyableBaseBehavior {
        return self->destroyableBaseBehavior;
}


- (bool) isReadyForExplosion {
        return self->readyForExplosion;
}


- (void) setReadyForExplosion:(bool)readyForExplosion {
        self->readyForExplosion = readyForExplosion;
}

@end

