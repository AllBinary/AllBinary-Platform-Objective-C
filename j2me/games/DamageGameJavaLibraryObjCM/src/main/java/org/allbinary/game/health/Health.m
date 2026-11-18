// Generated Code Do Not Modify
#include "org/allbinary/game/health/Health.h"
#include "org/allbinary/logic/communication/log/ForcedLogUtil.h"
#include "org/allbinary/logic/string/StringMaker.h"
#include "org/allbinary/string/CommonSeps.h"
#include "org/allbinary/game/health/HealthInterface.h"
#include "org/allbinary/game/health/NullHealthListener.h"
#include "org/allbinary/game/health/HealthListenerInterface.h"


Health* Health_NULL_HEALTH;
const char* Health_NAME = "Health Resource";
static const char* Health_HEALTH_LABEL = "Health: ";
static const char* Health_MAX_HEALTH_LABEL = " Max: ";

void Health_staticInit(void) {
    static bool initialized = false;
    if (initialized) {
        return;
    }
    initialized = true;
    Health_NULL_HEALTH = [((Health*) [Health alloc]) init:0];
}

@implementation Health

- (void) initFields {
    self->health = 0;
    self->maxHealth = 0;
    self->healthListenerInterface = (NullHealthListener_staticInit(), NullHealthListener_NULL_HEALTH_LISTENER);
}


- (instancetype) init:(int32_t)maxHealth {
    self = [super init];
    [self initFields];
        [self setMaxHealth:maxHealth];
        [self setHealth:maxHealth];
    return self;
}


- (void) heal:(int32_t)ahealth {
        int32_t newHealth = [self getHealth] + ahealth;
        if (newHealth > [self getMaxHealth]) {
            [self setHealth:[self getMaxHealth]];
        } else {
            [self setHealth:newHealth];
        }
}


- (void) healMax {
        [self setHealth:[self getMaxHealth]];
}


- (bool) isDamaged {
        if ([self getHealth] != [self getMaxHealth]) {
            return true;
        } else {
            return false;
        }
}


- (void) damage:(int32_t)ahealth {
        if (ahealth < 0) {
            StringMaker* stringBuffer = [((StringMaker*) [StringMaker alloc]) init];
            [stringBuffer append:"******* Trying to heal when damaging. Damage: "];
            [stringBuffer appendint:ahealth];
            [stringBuffer append:[CommonSeps getInstance]->SPACE];
            [stringBuffer append:[self toString]];
            [ForcedLogUtil log:[stringBuffer toString] :self];
            return;
        }
        int32_t health = [self getHealth] - ahealth;
        [self setHealth:health];
}


- (bool) isAlive {
        if ([self getHealth] <= 0) {
            return false;
        } else {
            return true;
        }
}


- (int32_t) getMaxHealth {
        return self->maxHealth;
}


- (void) setMaxHealth:(int32_t)maxHealth {
        self->maxHealth = maxHealth;
}


- (void) setHealth:(int32_t)health {
        if (health > [self getMaxHealth]) {
            self->health = [self getMaxHealth];
        } else if (health < 0) {
            self->health = 0;
        } else {
            self->health = health;
        }
        if (self->healthListenerInterface != nil) {
            [self->healthListenerInterface onHealthChange];
        }
}


- (int32_t) getHealth {
        return self->health;
}


- (void) addListener:(HealthListenerInterface*)healthGraphic {
        self->healthListenerInterface = healthGraphic;
}


- (const char*) toString {
        StringMaker* stringBuffer = [((StringMaker*) [StringMaker alloc]) init];
        [stringBuffer append:Health_HEALTH_LABEL];
        [stringBuffer appendint:self->health];
        [stringBuffer append:Health_MAX_HEALTH_LABEL];
        [stringBuffer appendint:self->maxHealth];
        return [stringBuffer toString];
}

@end

