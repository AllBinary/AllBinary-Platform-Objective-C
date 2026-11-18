// Generated Code Do Not Modify
#include "org/allbinary/game/layer/special/CollidableDestroyableDamageableBehavior.h"
#include "org/allbinary/game/collision/CollidableInterfaceCompositeInterface.h"
#include "org/allbinary/game/combat/damage/DamageUtil.h"
#include "org/allbinary/game/layer/CollidableCompositeLayer.h"
#include "org/allbinary/logic/communication/log/ForcedLogUtil.h"
#include "org/allbinary/game/layer/special/CollidableDestroyableDamageableLayer.h"



void CollidableDestroyableDamageableBehavior_staticInit(void) {
    static bool initialized = false;
    if (initialized) {
        return;
    }
    initialized = true;
}

@implementation CollidableDestroyableDamageableBehavior

- (void) initFields {
    self->damageUtil = [DamageUtil getInstance];
}


- (instancetype) init:(bool)collidable {
        self = [super init:collidable];
        [self initFields];
    return self;
}


- (bool) isCollision:(CollidableCompositeLayer*)ownerLayer :(CollidableCompositeLayer*)collisionLayer {
        if ([ownerLayer getGroupInterface][0] != [collisionLayer getGroupInterface][0]) {
            return [super isCollision:ownerLayer :collisionLayer];
        }
        return false;
}


// throws Exception
- (void) collide:(CollidableCompositeLayer*)ownerLayer :(CollidableCompositeLayer*)collidableInterfaceCompositeInterface {
        CollidableDestroyableDamageableLayer* ownerCollidableDestroyableDamageableLayer = ((CollidableDestroyableDamageableLayer*) ownerLayer);
        CollidableDestroyableDamageableLayer* collidableDestroyableDamageableLayer = ((CollidableDestroyableDamageableLayer*) collidableInterfaceCompositeInterface);
        [ownerCollidableDestroyableDamageableLayer damage:[collidableDestroyableDamageableLayer getDamage:0] :0];
}


- (bool) isCollisionInterface:(CollidableCompositeLayer*)ownerLayer :(CollidableInterfaceCompositeInterface*)collidableInterfaceCompositeInterface {
        [ForcedLogUtil log:"No Longer Used" :self];
        return false;
}


// throws Exception
- (void) collideInterface:(CollidableCompositeLayer*)ownerLayer :(CollidableInterfaceCompositeInterface*)collidableInterfaceCompositeInterface {
        [ForcedLogUtil log:"No Longer Used" :self];
}

@end

