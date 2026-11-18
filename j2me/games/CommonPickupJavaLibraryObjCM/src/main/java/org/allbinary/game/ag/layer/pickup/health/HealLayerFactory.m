// Generated Code Do Not Modify
#include "org/allbinary/game/ag/layer/pickup/health/HealLayerFactory.h"
#include "org/allbinary/layer/AllBinaryLayer.h"
#include "org/allbinary/game/ag/layer/pickup/health/HealLayer.h"



void HealLayerFactory_staticInit(void) {
    static bool initialized = false;
    if (initialized) {
        return;
    }
    initialized = true;
}

@implementation HealLayerFactory

- (instancetype) init {
    self = [super init];
    return self;
}


// throws Exception
- (AllBinaryLayer*) getInstance {
        return [((HealLayer*) [HealLayer alloc]) init];
}

@end

