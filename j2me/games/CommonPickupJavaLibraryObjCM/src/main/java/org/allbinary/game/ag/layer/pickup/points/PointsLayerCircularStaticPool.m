// Generated Code Do Not Modify
#include "org/allbinary/game/ag/layer/pickup/points/PointsLayerCircularStaticPool.h"
#include "org/allbinary/game/score/ScoreableInterface.h"
#include "org/allbinary/layer/AllBinaryLayer.h"
#include "org/allbinary/layer/AllBinaryLayerFactoryInterface.h"
#include "org/allbinary/game/ag/layer/pickup/points/PointsLayer.h"



void PointsLayerCircularStaticPool_staticInit(void) {
    static bool initialized = false;
    if (initialized) {
        return;
    }
    initialized = true;
}

@implementation PointsLayerCircularStaticPool


- (instancetype) init:(AllBinaryLayerFactoryInterface*)allbinaryLayerFactoryInterface :(int32_t)total {
    self = [super init];
        [super initAllBinaryLayerCircularPool:allbinaryLayerFactoryInterface :total];
    return self;
}


// throws Exception
- (void) visit:(AllBinaryLayer*)sourceLayerInterface {
        PointsLayer* pointsLayer = ((PointsLayer*) [self getNextInstance]);
        ScoreableInterface* scoreableInterface = ((ScoreableInterface*) sourceLayerInterface);
        [pointsLayer visit:scoreableInterface];
}

@end

