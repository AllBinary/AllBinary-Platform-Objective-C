// Generated Code Do Not Modify
#include "org/allbinary/game/layer/weapon/CollidableDamageWeaponBehavior.h"
#include "org/allbinary/game/collision/CollidableHelperFactory.h"
#include "org/allbinary/game/collision/CollidableInterfaceCompositeInterface.h"
#include "org/allbinary/game/collision/CollisionHelper.h"
#include "org/allbinary/game/collision/CollisionType.h"
#include "org/allbinary/game/collision/CollisionTypeFactory.h"
#include "org/allbinary/game/combat/damage/DamageableInterface.h"
#include "org/allbinary/game/layer/CollidableCompositeLayer.h"
#include "org/allbinary/layer/AllBinaryLayer.h"



void CollidableDamageWeaponBehavior_staticInit(void) {
    static bool initialized = false;
    if (initialized) {
        return;
    }
    initialized = true;
}

@implementation CollidableDamageWeaponBehavior

- (void) initFields {
    self->collided = false;
    
}


- (instancetype) init:(bool)collidable {
        self = [super init:collidable];
        [self initFields];
        [self setCollided:false];
        [self setCollidable:true];
        self->collisionHelper = [CollidableHelperFactory getInstance];
    return self;
}


- (void) init_:(AllBinaryLayer*)sourceLayerInterface {
        [self setCollided:false];
        [self->collisionHelper setOwnerLayerInterface:sourceLayerInterface];
}


- (bool) isCollision:(CollidableCompositeLayer*)ownerLayer :(CollidableCompositeLayer*)collisionLayer {
        if ([self->collisionHelper isCollidable:collisionLayer]) {
            if ([ownerLayer getGroupInterface][0] != [collisionLayer getGroupInterface][0]) {
                return [super isCollision:ownerLayer :collisionLayer];
            }
        }
        return false;
}


// throws Exception
- (void) collide:(CollidableCompositeLayer*)ownerLayer :(CollidableCompositeLayer*)collisionLayer {
        [super collide:ownerLayer :collisionLayer];
        self->collided = true;
}


- (bool) isCollisionInterface:(CollidableCompositeLayer*)ownerLayer :(CollidableInterfaceCompositeInterface*)collidableInterfaceCompositeInterface {
        if ([self->collisionHelper isCollidable:((CollidableCompositeLayer*) collidableInterfaceCompositeInterface)]) {
            AllBinaryLayer* layerInterface = ((AllBinaryLayer*) collidableInterfaceCompositeInterface);
            if ([ownerLayer getGroupInterface][0] != [layerInterface getGroupInterface][0]) {
                if ([self->layerCollisionUtil isCollision:ownerLayer :layerInterface]) {
                    return true;
                }
            }
        }
        return false;
}


// throws Exception
- (void) collideInterface:(CollidableCompositeLayer*)ownerLayer :(CollidableInterfaceCompositeInterface*)collidableInterfaceCompositeInterface {
        [self->damageUtil process:((DamageableInterface*) ownerLayer) :((DamageableInterface*) collidableInterfaceCompositeInterface)];
        self->collided = true;
}


- (CollisionType*) getCollisionTypeWith:(AllBinaryLayer*)layerInterface {
        return [CollisionTypeFactory getInstance]->COLLISION;
}


- (bool) isCollided {
        return self->collided;
}


- (void) setCollided:(bool)collided {
        self->collided = collided;
}

@end

