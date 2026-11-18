// Generated Code Do Not Modify
#include "org/allbinary/view/StaticViewPosition.h"
#include "org/allbinary/view/ViewPosition.h"



void StaticViewPosition_staticInit(void) {
    static bool initialized = false;
    if (initialized) {
        return;
    }
    initialized = true;
}

@implementation StaticViewPosition


- (instancetype) init:(int32_t)x :(int32_t)y :(int32_t)z {
        self = [super init:x :y :z];
    return self;
}


- (int32_t) getX {
        return [self getRawX];
}


- (int32_t) getY {
        return [self getRawY];
}


- (int32_t) getZ {
        return [self getRawZ];
}

@end

