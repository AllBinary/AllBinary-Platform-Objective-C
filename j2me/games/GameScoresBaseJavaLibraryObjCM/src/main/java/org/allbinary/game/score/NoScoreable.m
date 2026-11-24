// Generated Code Do Not Modify
#include "org/allbinary/game/score/NoScoreable.h"
#include "org/allbinary/game/score/Scoreable.h"


static NoScoreable* NoScoreable_SINGLETON;

void NoScoreable_staticInit(void) {
    static bool initialized = false;
    if (initialized) {
        return;
    }
    initialized = true;
    NoScoreable_SINGLETON = ((NoScoreable*) [((NoScoreable*) [NoScoreable alloc]) init]);
}

@implementation NoScoreable


+ (NoScoreable*) getInstance {
        return (NoScoreable_staticInit(), NoScoreable_SINGLETON);
}


- (instancetype) init {
        self = [super init:0];
    return self;
}


- (void) addPoints:(int32_t)points {
}


- (void) removePoints:(int32_t)points {
}

@end

