// Generated Code Do Not Modify
#include "org/allbinary/graphics/displayable/BaseScalable.h"
#include "org/allbinary/graphics/displayable/ScalableListener.h"



void BaseScalable_staticInit(void) {
    static bool initialized = false;
    if (initialized) {
        return;
    }
    initialized = true;
}

@implementation BaseScalable

- (instancetype) init {
    self = [super init];
    return self;
}


- (float) getRatio:(float)ratio {
        return 1.0f;
}


- (int32_t) getLeft:(int32_t)xOffset {
        return -1;
}


- (int32_t) getTop:(int32_t)yOffset {
        return -1;
}


- (void) scale:(float)ratio {
}

@end

