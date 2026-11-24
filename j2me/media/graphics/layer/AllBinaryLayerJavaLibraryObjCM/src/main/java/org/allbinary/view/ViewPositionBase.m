// Generated Code Do Not Modify
#include "org/allbinary/view/ViewPositionBase.h"


ViewPositionBase* ViewPositionBase_NULL_VIEW_POSITION;

void ViewPositionBase_staticInit(void) {
    static bool initialized = false;
    if (initialized) {
        return;
    }
    initialized = true;
    ViewPositionBase_NULL_VIEW_POSITION = ((ViewPositionBase*) [((ViewPositionBase*) [ViewPositionBase alloc]) init:0 :0 :0]);
}

@implementation ViewPositionBase


- (instancetype) init:(int32_t)x :(int32_t)y :(int32_t)z {
        self = [super init:x :y :z];
    return self;
}


- (int32_t) getX2 {
        return [self getX];
}


- (int32_t) getY2 {
        return [self getY];
}


- (int32_t) getZ2 {
        return [self getZ];
}


- (void) setAllbinaryLayer:(id)allbinaryLayer {
}

@end

