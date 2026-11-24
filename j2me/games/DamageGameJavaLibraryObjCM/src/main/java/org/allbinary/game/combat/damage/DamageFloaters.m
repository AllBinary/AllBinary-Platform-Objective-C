// Generated Code Do Not Modify
#include "org/allbinary/game/combat/damage/DamageFloaters.h"


static DamageFloaters* DamageFloaters_SINGLETON;

void DamageFloaters_staticInit(void) {
    static bool initialized = false;
    if (initialized) {
        return;
    }
    initialized = true;
    DamageFloaters_SINGLETON = ((DamageFloaters*) [((DamageFloaters*) [DamageFloaters alloc]) init]);
}

@implementation DamageFloaters

- (instancetype) init {
    self = [super init];
    return self;
}


+ (DamageFloaters*) getInstance {
        return (DamageFloaters_staticInit(), DamageFloaters_SINGLETON);
}


- (void) add:(int32_t)damage {
}

@end

