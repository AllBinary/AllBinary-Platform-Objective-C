// Generated Code Do Not Modify
#include "org/allbinary/game/displayable/canvas/NoMenuInputProcessor.h"
#include "javax/microedition/lcdui/NullCanvas.h"
#include "org/allbinary/game/input/event/GameKeyEvent.h"
#include "org/allbinary/input/motion/gesture/observer/MotionGestureEvent.h"
#include "org/allbinary/util/BasicArrayListUtil.h"
#include "org/allbinary/game/displayable/canvas/BasicMenuInputProcessor.h"


static NoMenuInputProcessor* NoMenuInputProcessor_SINGLETON;

void NoMenuInputProcessor_staticInit(void) {
    static bool initialized = false;
    if (initialized) {
        return;
    }
    initialized = true;
    NoMenuInputProcessor_SINGLETON = [((NoMenuInputProcessor*) [NoMenuInputProcessor alloc]) init];
}

@implementation NoMenuInputProcessor


+ (NoMenuInputProcessor*) getInstance {
        return (NoMenuInputProcessor_staticInit(), NoMenuInputProcessor_SINGLETON);
}


- (instancetype) init {
        self = [super init:[[BasicArrayListUtil getInstance] getImmutableInstance] :-1 :(NullCanvas_staticInit(), NullCanvas_NULL_CANVAS)];
    return self;
}


// synchronized
- (void) onDownGameKeyEvent:(GameKeyEvent*)gameKeyEvent {
}


// synchronized
- (void) onUpGameKeyEvent:(GameKeyEvent*)gameKeyEvent {
}


- (void) onMotionGestureEvent:(MotionGestureEvent*)motionGestureEvent {
}

@end

