// Generated Code Do Not Modify
#include "org/allbinary/game/combat/destroy/DestroyableSimpleBehavior.h"
#include "org/allbinary/game/layer/CollidableCompositeLayer.h"
#include "org/allbinary/game/combat/destroy/DestroyableBaseBehavior.h"
#include "org/allbinary/game/combat/destroy/DestroyedLayerProcessor.h"
#if __has_include("org/allbinary/game/combat/destroy/BasicLayerProcessor.h")
#include "org/allbinary/game/combat/destroy/BasicLayerProcessor.h"
#endif
#if __has_include("org/allbinary/game/layer/BasicLayerProcessor.h")
#include "org/allbinary/game/layer/BasicLayerProcessor.h"
#endif



void DestroyableSimpleBehavior_staticInit(void) {
    static bool initialized = false;
    if (initialized) {
        return;
    }
    initialized = true;
}

@implementation DestroyableSimpleBehavior

- (void) initFields {
    
    self->destroyed = false;
}


- (instancetype) init:(CollidableCompositeLayer*)ownerLayer {
    self = [super init];
    [self initFields];
        self->ownerLayer = ownerLayer;
    return self;
}


- (bool) isDestroyed {
        return self->destroyed;
}


- (void) setDestroyed:(bool)destroyed {
        self->destroyed = destroyed;
        if ([self isDestroyed]) {
            [[DestroyedLayerProcessor getInstance] add:self->ownerLayer];
        }
}

@end

