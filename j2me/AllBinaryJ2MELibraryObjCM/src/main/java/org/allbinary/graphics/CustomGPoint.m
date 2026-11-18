// Generated Code Do Not Modify
#include "org/allbinary/graphics/CustomGPoint.h"
#include "org/allbinary/graphics/GPoint.h"


CustomGPoint* CustomGPoint_NULL_CUSTOM_POINT;

void CustomGPoint_staticInit(void) {
    static bool initialized = false;
    if (initialized) {
        return;
    }
    initialized = true;
    CustomGPoint_NULL_CUSTOM_POINT = [((CustomGPoint*) [CustomGPoint alloc]) init:0 :0 :0];
}

@implementation CustomGPoint

- (void) initFields {
    self->cx = 0;
    self->cy = 0;
    self->cz = 0;
}


+ (CustomGPoint*) getInstance:(GPoint*)point {
        return [((CustomGPoint*) [CustomGPoint alloc]) init:[point getX] :[point getY] :[point getZ]];
}


+ (CustomGPoint*) getInstance3:(int32_t)x :(int32_t)y {
        return [((CustomGPoint*) [CustomGPoint alloc]) init:x :y :3];
}


- (instancetype) init:(int32_t)x :(int32_t)y :(int32_t)z {
        self = [super init:x :y :z];
        [self initFields];
    return self;
}


- (void) setX:(int32_t)x {
        self->cx = x;
}


- (int32_t) getX {
        return self->cx;
}


- (void) setY:(int32_t)y {
        self->cy = y;
}


- (int32_t) getY {
        return self->cy;
}


- (void) setZ:(int32_t)z {
        self->cz = z;
}


- (int32_t) getZ {
        return self->cz;
}

@end

