// Generated Code Do Not Modify
#include "org/allbinary/game/combat/weapon/SimpleWeaponProperties.h"



void SimpleWeaponProperties_staticInit(void) {
    static bool initialized = false;
    if (initialized) {
        return;
    }
    initialized = true;
}

@implementation SimpleWeaponProperties

- (void) initFields {
    self->damage = 0;
    self->dissipation = 0;
    self->range = 0;
}

- (instancetype) init {
    self = [super init];
    [self initFields];
    return self;
}


- (void) set:(SimpleWeaponProperties*)simpleWeaponProperties {
        [self setDamage:[simpleWeaponProperties getDamage]];
        [self setDissipation:[simpleWeaponProperties getDissipation]];
        [self setRange:[simpleWeaponProperties getRange]];
}


- (void) setDamage:(int32_t)damage {
        self->damage = damage;
}


- (int32_t) getDamage {
        return self->damage;
}


- (void) setDissipation:(int16_t)dissipation {
        self->dissipation = dissipation;
}


- (int16_t) getDissipation {
        return self->dissipation;
}


- (int32_t) getRange {
        return self->range;
}


- (void) setRange:(int32_t)range {
        self->range = range;
}

@end

