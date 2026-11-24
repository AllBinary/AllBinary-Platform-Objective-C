// Generated Code Do Not Modify
#include "org/allbinary/game/ag/layer/pickup/health/HealLayerCircularStaticPool.h"
#include "org/allbinary/game/health/HealthInterface.h"
#include "org/allbinary/game/health/HealthInterfaceCompositeInterface.h"
#include "org/allbinary/layer/AllBinaryLayer.h"
#include "org/allbinary/layer/AllBinaryLayerFactoryInterface.h"
#include "org/allbinary/game/ag/layer/pickup/health/HealLayer.h"



void HealLayerCircularStaticPool_staticInit(void) {
    static bool initialized = false;
    if (initialized) {
        return;
    }
    initialized = true;
}

@implementation HealLayerCircularStaticPool


- (instancetype) init:(AllBinaryLayerFactoryInterface*)allbinaryLayerFactoryInterface :(int32_t)total {
    self = [super init];
        [super initAllBinaryLayerCircularPool:allbinaryLayerFactoryInterface :total];
    return self;
}


// throws Exception
- (void) visit:(AllBinaryLayer*)sourceLayerInterface {
        HealLayer* healLayer = ((HealLayer*) [self getNextInstance]);
        HealthInterfaceCompositeInterface* healthInterfaceCompositeInterface = ((HealthInterfaceCompositeInterface*) sourceLayerInterface);
        HealthInterface* healthInterface = [((id<HealthInterfaceCompositeInterface>) healthInterfaceCompositeInterface) getHealthInterface];
        [healLayer visit:healthInterface];
}

@end

