// Generated Code Do Not Modify
#include "org/allbinary/game/combat/damage/DamageUtil.h"
#include "org/allbinary/game/layer/CollidableCompositeLayer.h"
#include "org/allbinary/game/layer/special/CollidableDestroyableDamageableLayer.h"
#include "org/allbinary/logic/communication/log/LogUtil.h"
#include "org/allbinary/logic/string/StringMaker.h"
#include "org/allbinary/game/combat/damage/DamageableInterface.h"


static DamageUtil* DamageUtil_instance;

void DamageUtil_staticInit(void) {
    static bool initialized = false;
    if (initialized) {
        return;
    }
    initialized = true;
    DamageUtil_instance = [((DamageUtil*) [DamageUtil alloc]) init];
}

@implementation DamageUtil

- (void) initFields {
    self->logUtil = [LogUtil getInstance];
    self->COLLIDE = "collide";
}


+ (DamageUtil*) getInstance {
        return (DamageUtil_staticInit(), DamageUtil_instance);
}


- (instancetype) init {
    self = [super init];
    [self initFields];
    return self;
}


// throws Exception
- (void) process:(DamageableInterface*)damageableInterface :(DamageableInterface*)damageableInterface2 {
        [damageableInterface damage:[damageableInterface2 getDamage:0] :0];
}


// throws Exception
- (void) debugDamage:(CollidableCompositeLayer*)collidableInterfaceCompositeInterface1 :(CollidableCompositeLayer*)collidableInterfaceCompositeInterface {
        CollidableDestroyableDamageableLayer* collidableDestroyableDamageableLayer = ((CollidableDestroyableDamageableLayer*) collidableInterfaceCompositeInterface);
        int32_t damage = [collidableDestroyableDamageableLayer getDamage:0];
        if (damage > 20000) {
            StringMaker* stringBuffer = [((StringMaker*) [StringMaker alloc]) init];
            [stringBuffer append:"Collision "];
            [stringBuffer append:[collidableInterfaceCompositeInterface1 toString]];
            [stringBuffer append:" with: "];
            [stringBuffer append:[collidableInterfaceCompositeInterface toString]];
            [stringBuffer append:" damage: "];
            [stringBuffer appendint:damage];
            [self->logUtil putF:[stringBuffer toString] :collidableInterfaceCompositeInterface1 :self->COLLIDE];
        }
}

@end

