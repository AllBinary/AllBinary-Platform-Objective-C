// Generated Code Do Not Modify
#include "org/allbinary/game/collision/layer/CollidableInterfaceLayerProcessor.h"
#include "org/allbinary/game/collision/CollidableInterfaceCompositeInterface.h"
#include "org/allbinary/game/layer/CollidableCompositeLayer.h"
#include "org/allbinary/layer/AllBinaryLayer.h"
#include "org/allbinary/layer/AllBinaryLayerManager.h"
#include "org/allbinary/game/collision/layer/CollidableInterfaceLayerManager.h"
#include "org/allbinary/game/collision/layer/AllBinaryCollisionManager.h"
#if __has_include("org/allbinary/game/collision/layer/CollidableBaseBehavior.h")
#include "org/allbinary/game/collision/layer/CollidableBaseBehavior.h"
#endif
#if __has_include("org/allbinary/game/collision/CollidableBaseBehavior.h")
#include "org/allbinary/game/collision/CollidableBaseBehavior.h"
#endif
#if __has_include("org/allbinary/game/layer/CollidableBaseBehavior.h")
#include "org/allbinary/game/layer/CollidableBaseBehavior.h"
#endif
#if __has_include("org/allbinary/layer/CollidableBaseBehavior.h")
#include "org/allbinary/layer/CollidableBaseBehavior.h"
#endif
#if __has_include("org/allbinary/layer/CollidableBaseBehavior.h")
#include "org/allbinary/layer/CollidableBaseBehavior.h"
#endif
#if __has_include("org/allbinary/layer/CollidableBaseBehavior.h")
#include "org/allbinary/layer/CollidableBaseBehavior.h"
#endif



void CollidableInterfaceLayerProcessor_staticInit(void) {
    static bool initialized = false;
    if (initialized) {
        return;
    }
    initialized = true;
}

@implementation CollidableInterfaceLayerProcessor


- (instancetype) init {
        self = [super init:((CollidableInterfaceLayerManager*) [((CollidableInterfaceLayerManager*) [CollidableInterfaceLayerManager alloc]) init])];
    return self;
}


// throws Exception
- (void) processAt:(AllBinaryLayerManager*)allBinaryLayerManager :(AllBinaryLayer*)layerInterface :(int32_t)index {
        CollidableInterfaceCompositeInterface* collidableInterfaceCompositeInterface = ((CollidableInterfaceCompositeInterface*) layerInterface);
        if ([[((id<CollidableInterfaceCompositeInterface>) collidableInterfaceCompositeInterface) getCollidableInferface] isCollidable:((CollidableCompositeLayer*) collidableInterfaceCompositeInterface)]) {
            [[AllBinaryCollisionManager getInstance] process:[self getLayerManager] :collidableInterfaceCompositeInterface :index];
        }
}


- (bool) isProcessorLayer:(AllBinaryLayer*)layerInterface {
        if ([layerInterface implmentsCollidableInterface]) {
            return true;
        } else {
            return false;
        }
}

@end

