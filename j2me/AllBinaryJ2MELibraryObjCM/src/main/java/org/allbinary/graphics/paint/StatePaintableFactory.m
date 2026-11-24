// Generated Code Do Not Modify
#include "org/allbinary/graphics/paint/StatePaintableFactory.h"
#include "org/allbinary/graphics/paint/StatePaintable.h"


static StatePaintable* StatePaintableFactory_instance;

void StatePaintableFactory_staticInit(void) {
    static bool initialized = false;
    if (initialized) {
        return;
    }
    initialized = true;
    StatePaintableFactory_instance = ((StatePaintable*) [((StatePaintable*) [StatePaintable alloc]) init]);
}

@implementation StatePaintableFactory

- (instancetype) init {
    self = [super init];
    return self;
}


+ (StatePaintable*) getInstance {
        return (StatePaintableFactory_staticInit(), StatePaintableFactory_instance);
}

@end

