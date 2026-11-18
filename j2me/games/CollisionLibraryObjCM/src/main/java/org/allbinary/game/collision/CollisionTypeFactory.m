// Generated Code Do Not Modify
#include "org/allbinary/game/collision/CollisionTypeFactory.h"
#include "org/allbinary/game/collision/CollisionType.h"


static CollisionTypeFactory* CollisionTypeFactory_SINGLETON;

void CollisionTypeFactory_staticInit(void) {
    static bool initialized = false;
    if (initialized) {
        return;
    }
    initialized = true;
    CollisionTypeFactory_SINGLETON = [((CollisionTypeFactory*) [CollisionTypeFactory alloc]) init];
}

@implementation CollisionTypeFactory

- (void) initFields {
    self->NONE = [((CollisionType*) [CollisionType alloc]) init:"None"];
    self->DAMAGE = [((CollisionType*) [CollisionType alloc]) init:"Damage"];
    self->PICKUP = [((CollisionType*) [CollisionType alloc]) init:"Pickup"];
    self->COLLISION = [((CollisionType*) [CollisionType alloc]) init:"Collision"];
}

- (instancetype) init {
    self = [super init];
    [self initFields];
    return self;
}


+ (CollisionTypeFactory*) getInstance {
        return (CollisionTypeFactory_staticInit(), CollisionTypeFactory_SINGLETON);
}

@end

