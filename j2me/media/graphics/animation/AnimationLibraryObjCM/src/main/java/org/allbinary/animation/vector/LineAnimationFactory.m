// Generated Code Do Not Modify
#include "org/allbinary/animation/vector/LineAnimationFactory.h"
#include "org/allbinary/animation/Animation.h"
#include "org/allbinary/graphics/color/BasicColor.h"
#include "org/allbinary/media/ScaleProperties.h"
#include "org/allbinary/animation/vector/LineAnimation.h"



void LineAnimationFactory_staticInit(void) {
    static bool initialized = false;
    if (initialized) {
        return;
    }
    initialized = true;
}

@implementation LineAnimationFactory

- (void) initFields {
    
}


- (instancetype) init:(BasicColor*)basicColor {
    self = [super init];
    [self initFields];
        self->basicColor = basicColor;
    return self;
}


// throws Exception
- (Animation*) getInstance:(int32_t)instanceId {
        return ((LineAnimation*) [((LineAnimation*) [LineAnimation alloc]) init:self->basicColor]);
}


- (void) setInitialScale:(ScaleProperties*)scaleProperties {
}

@end

