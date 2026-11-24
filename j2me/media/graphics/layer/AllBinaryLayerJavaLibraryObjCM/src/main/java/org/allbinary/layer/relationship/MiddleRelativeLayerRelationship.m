// Generated Code Do Not Modify
#include "org/allbinary/layer/relationship/MiddleRelativeLayerRelationship.h"
#include "org/allbinary/graphics/PointFactory.h"
#include "org/allbinary/layer/AllBinaryLayer.h"
#include "org/allbinary/util/BasicArrayListUtil.h"
#include "org/allbinary/layer/relationship/RelativeLayerRelationship.h"
#if __has_include("org/allbinary/graphics/PointFactory.h")
#include "org/allbinary/graphics/PointFactory.h"
#endif
#if __has_include("org/allbinary/util/BasicArrayListUtil.h")
#include "org/allbinary/util/BasicArrayListUtil.h"
#endif



void MiddleRelativeLayerRelationship_staticInit(void) {
    static bool initialized = false;
    if (initialized) {
        return;
    }
    initialized = true;
}

@implementation MiddleRelativeLayerRelationship


- (instancetype) init:(AllBinaryLayer*)layer {
        self = [super init:layer :[[PointFactory getInstance] createXY:[layer getHalfWidth] :[layer getHalfHeight]] :[[BasicArrayListUtil getInstance] getImmutableInstance]];
    return self;
}

@end

