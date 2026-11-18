// Generated Code Do Not Modify
#include "org/allbinary/game/layer/special/CollidableCharacterNoDamageBehavior.h"
#include "org/allbinary/game/collision/CollidableInterfaceCompositeInterface.h"
#include "org/allbinary/game/collision/CollisionType.h"
#include "org/allbinary/game/collision/CollisionTypeFactory.h"
#include "org/allbinary/game/layer/CollidableCompositeLayer.h"
#include "org/allbinary/game/layer/pickup/PickedUpLayerInterface.h"
#include "org/allbinary/logic/communication/log/ForcedLogUtil.h"
#include "org/allbinary/game/layer/special/CollidableDestroyableDamageableBehavior.h"
#include "org/allbinary/game/layer/special/CollidableDestroyableDamageableLayer.h"
#if __has_include("org/allbinary/game/layer/special/CollidableBaseBehavior.h")
#include "org/allbinary/game/layer/special/CollidableBaseBehavior.h"
#endif
#if __has_include("org/allbinary/game/collision/CollidableBaseBehavior.h")
#include "org/allbinary/game/collision/CollidableBaseBehavior.h"
#endif
#if __has_include("org/allbinary/game/collision/CollidableBaseBehavior.h")
#include "org/allbinary/game/collision/CollidableBaseBehavior.h"
#endif
#if __has_include("org/allbinary/game/collision/CollidableBaseBehavior.h")
#include "org/allbinary/game/collision/CollidableBaseBehavior.h"
#endif
#if __has_include("org/allbinary/game/layer/CollidableBaseBehavior.h")
#include "org/allbinary/game/layer/CollidableBaseBehavior.h"
#endif
#if __has_include("org/allbinary/game/layer/pickup/CollidableBaseBehavior.h")
#include "org/allbinary/game/layer/pickup/CollidableBaseBehavior.h"
#endif
#if __has_include("org/allbinary/logic/communication/log/CollidableBaseBehavior.h")
#include "org/allbinary/logic/communication/log/CollidableBaseBehavior.h"
#endif
#if __has_include("org/allbinary/game/layer/special/PickupBehavior.h")
#include "org/allbinary/game/layer/special/PickupBehavior.h"
#endif
#if __has_include("org/allbinary/game/collision/PickupBehavior.h")
#include "org/allbinary/game/collision/PickupBehavior.h"
#endif
#if __has_include("org/allbinary/game/collision/PickupBehavior.h")
#include "org/allbinary/game/collision/PickupBehavior.h"
#endif
#if __has_include("org/allbinary/game/collision/PickupBehavior.h")
#include "org/allbinary/game/collision/PickupBehavior.h"
#endif
#if __has_include("org/allbinary/game/layer/PickupBehavior.h")
#include "org/allbinary/game/layer/PickupBehavior.h"
#endif
#if __has_include("org/allbinary/game/layer/pickup/PickupBehavior.h")
#include "org/allbinary/game/layer/pickup/PickupBehavior.h"
#endif
#if __has_include("org/allbinary/logic/communication/log/PickupBehavior.h")
#include "org/allbinary/logic/communication/log/PickupBehavior.h"
#endif



void CollidableCharacterNoDamageBehavior_staticInit(void) {
    static bool initialized = false;
    if (initialized) {
        return;
    }
    initialized = true;
}

@implementation CollidableCharacterNoDamageBehavior


- (instancetype) init:(bool)collidable {
        self = [super init:collidable];
    return self;
}


// throws Exception
- (void) collide:(CollidableCompositeLayer*)ownerLayer :(CollidableCompositeLayer*)collidableInterfaceCompositeInterface {
        CollisionTypeFactory* collisionTypeFactory = [CollisionTypeFactory getInstance];
        CollisionType* collisionType = [[collidableInterfaceCompositeInterface getCollidableInferface] getCollisionTypeWith:ownerLayer];
        if (collisionType == collisionTypeFactory->PICKUP) {
            CollidableDestroyableDamageableLayer* collidableDestroyableDamageableLayer = ((CollidableDestroyableDamageableLayer*) ownerLayer);
            [[collidableDestroyableDamageableLayer getPickupBehavior] doPickupLayer:((PickedUpLayerInterface*) collidableInterfaceCompositeInterface)];
        } else {
        }
}


// throws Exception
- (void) collideInterface:(CollidableCompositeLayer*)ownerLayer :(CollidableInterfaceCompositeInterface*)collidableInterfaceCompositeInterface {
        [ForcedLogUtil log:self->commonStrings->NOT_IMPLEMENTED :self];
}

@end

