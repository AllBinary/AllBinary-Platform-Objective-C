// Generated Code Do Not Modify
#include "org/allbinary/game/collision/layer/AllBinaryCollisionManager.h"
#include "org/allbinary/game/collision/CollidableBaseBehavior.h"
#include "org/allbinary/game/collision/CollidableInterfaceCompositeInterface.h"
#include "org/allbinary/game/layer/CollidableCompositeLayer.h"
#include "org/allbinary/layer/LayerManager.h"


static AllBinaryCollisionManager* AllBinaryCollisionManager_allBinaryCollisionManager;

void AllBinaryCollisionManager_staticInit(void) {
    static bool initialized = false;
    if (initialized) {
        return;
    }
    initialized = true;
    AllBinaryCollisionManager_allBinaryCollisionManager = [((AllBinaryCollisionManager*) [AllBinaryCollisionManager alloc]) init];
}

@implementation AllBinaryCollisionManager


- (instancetype) init {
    self = [super init];
    return self;
}


+ (AllBinaryCollisionManager*) getInstance {
        return (AllBinaryCollisionManager_staticInit(), AllBinaryCollisionManager_allBinaryCollisionManager);
}


// throws Exception
- (void) process:(LayerManager*)layerManager :(CollidableInterfaceCompositeInterface*)collidableInterfaceCompositeInterface :(int32_t)startIndex {
        int32_t size = [layerManager getSize];
        for (int32_t index = startIndex + 1; index < size; index++) {
            CollidableInterfaceCompositeInterface* collidableInterfaceCompositeInterface2 = ((CollidableInterfaceCompositeInterface*) [layerManager getLayerAt:index]);
            [self collide:layerManager :collidableInterfaceCompositeInterface :collidableInterfaceCompositeInterface2];
        }
}


// throws Exception
- (void) collide:(LayerManager*)layerManager :(CollidableInterfaceCompositeInterface*)collidableInterfaceCompositeInterface :(CollidableInterfaceCompositeInterface*)collidableInterfaceCompositeInterface2 {
        CollidableBaseBehavior* collidableBase2 = [collidableInterfaceCompositeInterface2 getCollidableInferface];
        CollidableBaseBehavior* collidableBase = [collidableInterfaceCompositeInterface getCollidableInferface];
        if ([collidableBase2 isCollidable:((CollidableCompositeLayer*) collidableInterfaceCompositeInterface)]) {
            if ([collidableBase isCollisionInterface:((CollidableCompositeLayer*) collidableInterfaceCompositeInterface) :collidableInterfaceCompositeInterface2]) {
                [collidableBase collideInterface:((CollidableCompositeLayer*) collidableInterfaceCompositeInterface) :collidableInterfaceCompositeInterface2];
                [collidableBase2 collideInterface:((CollidableCompositeLayer*) collidableInterfaceCompositeInterface) :collidableInterfaceCompositeInterface];
            }
        }
}

@end

