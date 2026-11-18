// Generated Code Do Not Modify
#include "org/allbinary/game/collision/LayerCollisionUtil.h"
#include "org/allbinary/game/configuration/feature/Features.h"
#include "org/allbinary/game/configuration/feature/GameFeatureFactory.h"
#include "org/allbinary/graphics/opengles/OpenGLFeatureUtil.h"
#include "org/allbinary/layer/AllBinaryLayer.h"
#include "org/allbinary/game/collision/CollisionProcessor.h"
#include "org/allbinary/game/collision/Collision2DProcessor.h"
#include "org/allbinary/game/collision/CollisionThreedProcessor.h"


static LayerCollisionUtil* LayerCollisionUtil_instance;

void LayerCollisionUtil_staticInit(void) {
    static bool initialized = false;
    if (initialized) {
        return;
    }
    initialized = true;
    LayerCollisionUtil_instance = [((LayerCollisionUtil*) [LayerCollisionUtil alloc]) init];
}

@implementation LayerCollisionUtil

- (void) initFields {
    self->collisionProcessor = nullptr;
}


+ (LayerCollisionUtil*) getInstance {
        return (LayerCollisionUtil_staticInit(), LayerCollisionUtil_instance);
}


- (instancetype) init {
    self = [super init];
    [self initFields];
        Features* features = [Features getInstance];
        GameFeatureFactory* gameFeatureFactory = [GameFeatureFactory getInstance];
        if ([[OpenGLFeatureUtil getInstance] isAnyThreed] && ![features isFeature:gameFeatureFactory->COLLISIONS_FORCED_TWO_DIMENSIONAL]) {
            self->collisionProcessor = [((CollisionThreedProcessor*) [CollisionThreedProcessor alloc]) init];
        } else {
            self->collisionProcessor = [((Collision2DProcessor*) [Collision2DProcessor alloc]) init];
        }
    return self;
}


- (bool) isCollision:(AllBinaryLayer*)myLayer :(AllBinaryLayer*)myLayer2 {
        return [self->collisionProcessor isCollision:myLayer :myLayer2];
}

@end

