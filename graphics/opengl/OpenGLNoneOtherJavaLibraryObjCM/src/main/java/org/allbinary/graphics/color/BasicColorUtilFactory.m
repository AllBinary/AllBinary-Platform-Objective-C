// Generated Code Do Not Modify
#include "org/allbinary/graphics/color/BasicColorUtilFactory.h"
#include "org/allbinary/graphics/color/BasicColorUtil.h"



void BasicColorUtilFactory_staticInit(void) {
    static bool initialized = false;
    if (initialized) {
        return;
    }
    initialized = true;
}

@implementation BasicColorUtilFactory

- (instancetype) init {
    self = [super init];
    return self;
}


+ (BasicColorUtil*) getInstance {
        return [BasicColorUtil getInstance];
}

@end

