// Generated Code Do Not Modify
#include "org/allbinary/game/combat/damage/DamageableBaseBehavior.h"
#include "org/allbinary/game/combat/damage/DamageableInterface.h"


static DamageableBaseBehavior* DamageableBaseBehavior_instance;

void DamageableBaseBehavior_staticInit(void) {
    static bool initialized = false;
    if (initialized) {
        return;
    }
    initialized = true;
    DamageableBaseBehavior_instance = [((DamageableBaseBehavior*) [DamageableBaseBehavior alloc]) init];
}

@implementation DamageableBaseBehavior

- (instancetype) init {
    self = [super init];
    return self;
}


+ (DamageableBaseBehavior*) getInstance {
        return (DamageableBaseBehavior_staticInit(), DamageableBaseBehavior_instance);
}


- (const char*) getName {
        return java_objc_class_name(self);
}


// throws Exception
- (void) damage:(int32_t)damage :(int32_t)damageType {
}


// throws Exception
- (int32_t) getDamage:(int32_t)damageType {
        return 6000;
}

@end

