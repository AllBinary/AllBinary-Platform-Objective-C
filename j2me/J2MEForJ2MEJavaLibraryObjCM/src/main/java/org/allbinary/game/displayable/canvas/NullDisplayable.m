// Generated Code Do Not Modify
#include "org/allbinary/game/displayable/canvas/NullDisplayable.h"
#include "javax/microedition/lcdui/Graphics.h"
#include "org/allbinary/canvas/BaseGameStatistics.h"
#include "org/allbinary/canvas/GameStatisticsFactory.h"


static NullDisplayable* NullDisplayable_SINGLETON;

void NullDisplayable_staticInit(void) {
    static bool initialized = false;
    if (initialized) {
        return;
    }
    initialized = true;
    NullDisplayable_SINGLETON = ((NullDisplayable*) [((NullDisplayable*) [NullDisplayable alloc]) init]);
}

@implementation NullDisplayable

- (void) initFields {
    self->baseGameStatistics = [GameStatisticsFactory getInstance];
}


+ (NullDisplayable*) getInstance {
        return (NullDisplayable_staticInit(), NullDisplayable_SINGLETON);
}


- (instancetype) init {
    self = [super init];
    [self initFields];
    return self;
}


- (void) paint:(Graphics*)graphics {
        [self->baseGameStatistics nextRefresh];
}

@end

