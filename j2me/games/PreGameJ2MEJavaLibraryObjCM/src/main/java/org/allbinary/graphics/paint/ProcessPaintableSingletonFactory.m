// Generated Code Do Not Modify
#include "org/allbinary/graphics/paint/ProcessPaintableSingletonFactory.h"
#include "org/allbinary/graphics/paint/ProcessPaintable.h"


static ProcessPaintable* ProcessPaintableSingletonFactory_SINGLETON;

void ProcessPaintableSingletonFactory_staticInit(void) {
    static bool initialized = false;
    if (initialized) {
        return;
    }
    initialized = true;
    ProcessPaintableSingletonFactory_SINGLETON = ((ProcessPaintable*) [((ProcessPaintable*) [ProcessPaintable alloc]) init]);
}

@implementation ProcessPaintableSingletonFactory


- (instancetype) init {
    self = [super init];
    return self;
}


+ (ProcessPaintable*) getInstance {
        return (ProcessPaintableSingletonFactory_staticInit(), ProcessPaintableSingletonFactory_SINGLETON);
}

@end

