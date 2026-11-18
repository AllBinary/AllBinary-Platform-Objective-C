// Generated Code Do Not Modify
#include "org/allbinary/graphics/paint/NullPaintable.h"
#include "org/allbinary/graphics/paint/Paintable.h"


static NullPaintable* NullPaintable_SINGLETON;

void NullPaintable_staticInit(void) {
    static bool initialized = false;
    if (initialized) {
        return;
    }
    initialized = true;
    NullPaintable_SINGLETON = [((NullPaintable*) [NullPaintable alloc]) init];
}

@implementation NullPaintable


- (instancetype) init {
    self = [super init];
    return self;
}


+ (Paintable*) getInstance {
        return (NullPaintable_staticInit(), NullPaintable_SINGLETON);
}

@end

