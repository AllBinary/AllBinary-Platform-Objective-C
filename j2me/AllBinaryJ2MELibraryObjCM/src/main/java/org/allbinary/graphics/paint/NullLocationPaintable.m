// Generated Code Do Not Modify
#include "org/allbinary/graphics/paint/NullLocationPaintable.h"
#include "org/allbinary/graphics/paint/LocationPaintable.h"


static NullLocationPaintable* NullLocationPaintable_instanceC;

void NullLocationPaintable_staticInit(void) {
    static bool initialized = false;
    if (initialized) {
        return;
    }
    initialized = true;
    NullLocationPaintable_instanceC = ((NullLocationPaintable*) [((NullLocationPaintable*) [NullLocationPaintable alloc]) init]);
}

@implementation NullLocationPaintable

- (instancetype) init {
    self = [super init];
    return self;
}


+ (NullLocationPaintable*) getInstance {
        return (NullLocationPaintable_staticInit(), NullLocationPaintable_instanceC);
}

@end

