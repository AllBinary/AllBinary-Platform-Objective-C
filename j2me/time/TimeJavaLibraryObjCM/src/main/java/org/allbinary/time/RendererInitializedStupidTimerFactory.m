// Generated Code Do Not Modify
#include "org/allbinary/time/RendererInitializedStupidTimerFactory.h"
#include "org/allbinary/time/StupidTimer.h"


static StupidTimer* RendererInitializedStupidTimerFactory_instance;

void RendererInitializedStupidTimerFactory_staticInit(void) {
    static bool initialized = false;
    if (initialized) {
        return;
    }
    initialized = true;
    RendererInitializedStupidTimerFactory_instance = [((StupidTimer*) [StupidTimer alloc]) init];
}

@implementation RendererInitializedStupidTimerFactory

- (instancetype) init {
    self = [super init];
    return self;
}


+ (StupidTimer*) getInstance {
        return (RendererInitializedStupidTimerFactory_staticInit(), RendererInitializedStupidTimerFactory_instance);
}

@end

