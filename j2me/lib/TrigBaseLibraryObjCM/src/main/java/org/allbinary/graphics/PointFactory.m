// Generated Code Do Not Modify
#include "org/allbinary/graphics/PointFactory.h"
#include "org/allbinary/graphics/GPoint.h"


static PointFactory* PointFactory_instance;

void PointFactory_staticInit(void) {
    static bool initialized = false;
    if (initialized) {
        return;
    }
    initialized = true;
    PointFactory_instance = [((PointFactory*) [PointFactory alloc]) init];
}

@implementation PointFactory

- (void) initFields {
    self->ZERO_ZERO = [self createXYZ:0 :0 :0];
}


+ (PointFactory*) getInstance {
        return (PointFactory_staticInit(), PointFactory_instance);
}


- (void) init_ {
}


- (instancetype) init {
    self = [super init];
    [self initFields];
    return self;
}


- (GPoint*) createXY:(int32_t)x :(int32_t)y {
        return [((GPoint*) [GPoint alloc]) init:x :y :0];
}


- (GPoint*) createXYZ:(int32_t)x :(int32_t)y :(int32_t)z {
        return [((GPoint*) [GPoint alloc]) init:x :y :z];
}

@end

