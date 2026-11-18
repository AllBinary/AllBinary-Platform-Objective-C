// Generated Code Do Not Modify
#include "org/allbinary/game/layer/special/SpecialGameInputProcessor.h"
#include "org/allbinary/game/layer/special/CollidableDestroyableDamageableLayer.h"



void SpecialGameInputProcessor_staticInit(void) {
    static bool initialized = false;
    if (initialized) {
        return;
    }
    initialized = true;
}

@implementation SpecialGameInputProcessor

- (void) initFields {
    
}


- (instancetype) init:(CollidableDestroyableDamageableLayer*)collidableDestroyableDamageableLayer {
    self = [super init];
    [self initFields];
        self->collidableDestroyableDamageableLayer = collidableDestroyableDamageableLayer;
    return self;
}

@end

