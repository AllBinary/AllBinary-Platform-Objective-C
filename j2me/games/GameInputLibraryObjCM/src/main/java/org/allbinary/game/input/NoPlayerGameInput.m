// Generated Code Do Not Modify
#include "org/allbinary/game/input/NoPlayerGameInput.h"
#include "org/allbinary/game/input/event/GameKeyEvent.h"
#include "org/allbinary/util/BasicArrayListD.h"
#include "org/allbinary/game/input/PlayerGameInput.h"


static NoPlayerGameInput* NoPlayerGameInput_SINGLETON;

void NoPlayerGameInput_staticInit(void) {
    static bool initialized = false;
    if (initialized) {
        return;
    }
    initialized = true;
    NoPlayerGameInput_SINGLETON = ((NoPlayerGameInput*) [((NoPlayerGameInput*) [NoPlayerGameInput alloc]) init]);
}

@implementation NoPlayerGameInput


+ (NoPlayerGameInput*) getInstance {
        return (NoPlayerGameInput_staticInit(), NoPlayerGameInput_SINGLETON);
}


- (instancetype) init {
        self = [super init:((BasicArrayListD*) [((BasicArrayListD*) [BasicArrayListD alloc]) init]) :((BasicArrayListD*) [((BasicArrayListD*) [BasicArrayListD alloc]) init]) :-1];
    return self;
}


// synchronized
- (void) onDownGameKeyEvent:(GameKeyEvent*)gameKeyEvent {
}


// synchronized
- (void) onUpGameKeyEvent:(GameKeyEvent*)gameKeyEvent {
}

@end

