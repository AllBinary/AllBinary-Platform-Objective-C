// Generated Code Do Not Modify
#include "org/allbinary/game/ag/layer/pickup/life/LifeLayerCircularStaticPool.h"
#include "org/allbinary/game/ag/life/Life.h"
#include "org/allbinary/game/ag/life/LifeInterfaceCompositeInterface.h"
#include "org/allbinary/layer/AllBinaryLayer.h"
#include "org/allbinary/layer/AllBinaryLayerFactoryInterface.h"
#include "org/allbinary/game/ag/layer/pickup/life/LifeLayer.h"



void LifeLayerCircularStaticPool_staticInit(void) {
    static bool initialized = false;
    if (initialized) {
        return;
    }
    initialized = true;
}

@implementation LifeLayerCircularStaticPool


- (instancetype) init:(AllBinaryLayerFactoryInterface*)allbinaryLayerFactoryInterface :(int32_t)total {
    self = [super init];
        [super initAllBinaryLayerCircularPool:allbinaryLayerFactoryInterface :total];
    return self;
}


// throws Exception
- (void) visit:(AllBinaryLayer*)sourceLayerInterface {
        LifeLayer* lifeLayer = ((LifeLayer*) [self getNextInstance]);
        LifeInterfaceCompositeInterface* lifeInterfaceCompositeInterface = ((LifeInterfaceCompositeInterface*) sourceLayerInterface);
        Life* lifeInterface = [lifeInterfaceCompositeInterface getLifeInterface];
        [lifeLayer visit:lifeInterface];
}

@end

