// Generated Code Do Not Modify
#include "org/allbinary/graphics/paint/NullInitUpdatePaintable.h"
#include "org/allbinary/graphics/paint/InitUpdatePaintable.h"


static NullInitUpdatePaintable* NullInitUpdatePaintable_SINGLETON;

void NullInitUpdatePaintable_staticInit(void) {
    static bool initialized = false;
    if (initialized) {
        return;
    }
    initialized = true;
    NullInitUpdatePaintable_SINGLETON = ((NullInitUpdatePaintable*) [((NullInitUpdatePaintable*) [NullInitUpdatePaintable alloc]) init]);
}

@implementation NullInitUpdatePaintable


- (instancetype) init {
    self = [super init];
    return self;
}


+ (InitUpdatePaintable*) getInstance {
        return (NullInitUpdatePaintable_staticInit(), NullInitUpdatePaintable_SINGLETON);
}

@end

