// Generated Code Do Not Modify
#include "org/allbinary/view/ViewPosition.h"
#include "org/allbinary/layer/AllBinaryLayer.h"
#include "org/allbinary/view/ViewPositionBase.h"



void ViewPosition_staticInit(void) {
    static bool initialized = false;
    if (initialized) {
        return;
    }
    initialized = true;
}

@implementation ViewPosition

- (void) initFields {
    self->allbinaryLayer = (AllBinaryLayer_staticInit(), AllBinaryLayer_NULL_ALLBINARY_LAYER);
}


+ (ViewPosition*) getInstanceD {
        return ((ViewPosition*) [((ViewPosition*) [ViewPosition alloc]) init:0 :0 :0]);
}


- (instancetype) init:(int32_t)x :(int32_t)y :(int32_t)z {
        self = [super init:x :y :z];
        [self initFields];
    return self;
}


- (int32_t) getX {
        return [self->allbinaryLayer getXP];
}


- (int32_t) getY {
        return [self->allbinaryLayer getYP];
}


- (int32_t) getZ {
        return [self->allbinaryLayer getZP];
}


- (int32_t) getX2 {
        return [self getX] + [self->allbinaryLayer getWidth];
}


- (int32_t) getY2 {
        return [self getY] + [self->allbinaryLayer getHeight];
}


- (int32_t) getZ2 {
        return ((int32_t) (((int64_t) [self getZ]) + [self->allbinaryLayer getDepth]));
}


- (void) setAllbinaryLayer:(id)allbinaryLayer {
        self->allbinaryLayer = ((AllBinaryLayer*) allbinaryLayer);
}

@end

