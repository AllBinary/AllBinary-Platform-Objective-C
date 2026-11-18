// Generated Code Do Not Modify
#include "org/allbinary/game/displayable/canvas/NullDemoPaintable.h"
#include "org/allbinary/game/displayable/canvas/DemoPaintableInterface.h"


NullDemoPaintable* NullDemoPaintable_NULL_DEMO_PAINTABLE;

void NullDemoPaintable_staticInit(void) {
    static bool initialized = false;
    if (initialized) {
        return;
    }
    initialized = true;
    NullDemoPaintable_NULL_DEMO_PAINTABLE = [((NullDemoPaintable*) [NullDemoPaintable alloc]) init];
}

@implementation NullDemoPaintable

- (instancetype) init {
    self = [super init];
    return self;
}


- (void) showGamePaintable {
}

@end

