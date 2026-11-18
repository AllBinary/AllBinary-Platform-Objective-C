// Generated Code Do Not Modify
#include "org/allbinary/game/tick/NullTickable.h"
#include "org/allbinary/layer/AllBinaryLayerManager.h"
#include "org/allbinary/game/tick/TickableInterface.h"


static NullTickable* NullTickable_SINGLETON;

void NullTickable_staticInit(void) {
    static bool initialized = false;
    if (initialized) {
        return;
    }
    initialized = true;
    NullTickable_SINGLETON = [((NullTickable*) [NullTickable alloc]) init];
}

@implementation NullTickable

- (void) initFields {
    self->NAME = "NulLTickable";
}

- (instancetype) init {
    self = [super init];
    [self initFields];
    return self;
}


+ (NullTickable*) getInstance {
        return (NullTickable_staticInit(), NullTickable_SINGLETON);
}


// throws Exception
- (void) processTick:(AllBinaryLayerManager*)allBinaryLayerManager {
}


- (const char*) getName {
        return self->NAME;
}

@end

