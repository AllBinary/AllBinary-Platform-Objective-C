// Generated Code Do Not Modify
#include "org/allbinary/game/layer/pickup/IconLayerFactory.h"
#include "org/allbinary/animation/Animation.h"
#include "org/allbinary/game/layer/pickup/IconLayer.h"



void IconLayerFactory_staticInit(void) {
    static bool initialized = false;
    if (initialized) {
        return;
    }
    initialized = true;
}

@implementation IconLayerFactory

- (instancetype) init {
    self = [super init];
    return self;
}


// throws Exception
+ (IconLayer*) getInstance:(Animation*)animationInterface :(int32_t)width :(int32_t)height {
        return ((IconLayer*) [((IconLayer*) [IconLayer alloc]) init:animationInterface :width :height]);
}

@end

