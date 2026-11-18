// Generated Code Do Not Modify
#include "org/allbinary/game/collision/OptimizedAllBinaryCollisionLayerProcessorForCollidableLayer.h"
#include "org/allbinary/game/layer/CollidableCompositeLayer.h"
#include "org/allbinary/layer/AllBinaryLayer.h"
#include "org/allbinary/layer/AllBinaryLayerManager.h"
#include "org/allbinary/layer/LayerManager.h"
#include "org/allbinary/game/collision/OptimizedAllBinaryCollisionLayerManager.h"
#include "org/allbinary/game/collision/CollidableBaseBehavior.h"



void OptimizedAllBinaryCollisionLayerProcessorForCollidableLayer_staticInit(void) {
    static bool initialized = false;
    if (initialized) {
        return;
    }
    initialized = true;
}

@implementation OptimizedAllBinaryCollisionLayerProcessorForCollidableLayer


- (instancetype) init {
        self = [super init:[((OptimizedAllBinaryCollisionLayerManager*) [OptimizedAllBinaryCollisionLayerManager alloc]) init]];
    return self;
}


// throws Exception
- (void) processAt:(AllBinaryLayerManager*)allBinaryLayerManager :(AllBinaryLayer*)layerInterface :(int32_t)startIndex {
        CollidableCompositeLayer* collidableInterfaceCompositeInterface = ((CollidableCompositeLayer*) layerInterface);
        CollidableBaseBehavior* collidableBase = [collidableInterfaceCompositeInterface getCollidableInferface];
        if ([collidableBase isCollidable:collidableInterfaceCompositeInterface]) {
            LayerManager* layerManager = [self getLayerManager];
            int32_t size = [layerManager getSize];
            CollidableCompositeLayer* collidableInterfaceCompositeInterface2 = nullptr;
            CollidableBaseBehavior* collidableBase2 = nullptr;
            for (int32_t index = startIndex + 1; index < size; index++) {
                collidableInterfaceCompositeInterface2 = ((CollidableCompositeLayer*) [layerManager getLayerAt:index]);
                collidableBase2 = [collidableInterfaceCompositeInterface2 getCollidableInferface];
                if ([collidableBase2 isCollidable:collidableInterfaceCompositeInterface] && [collidableBase isCollision:collidableInterfaceCompositeInterface :collidableInterfaceCompositeInterface2]) {
                    [collidableBase collide:collidableInterfaceCompositeInterface :collidableInterfaceCompositeInterface2];
                    [collidableBase2 collide:collidableInterfaceCompositeInterface2 :collidableInterfaceCompositeInterface];
                }
            }
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

