// Generated Code Do Not Modify
#include "org/allbinary/game/ag/layer/pickup/life/LifeLayerFactory.h"
#include "org/allbinary/layer/AllBinaryLayer.h"
#include "org/allbinary/game/ag/layer/pickup/life/LifeLayer.h"



void LifeLayerFactory_staticInit(void) {
    static bool initialized = false;
    if (initialized) {
        return;
    }
    initialized = true;
}

@implementation LifeLayerFactory

- (instancetype) init {
    self = [super init];
    return self;
}


// throws Exception
- (AllBinaryLayer*) getInstance {
        return ((LifeLayer*) [((LifeLayer*) [LifeLayer alloc]) init]);
}

@end

