// Generated Code Do Not Modify
#include "org/allbinary/input/motion/trackball/action/RightTrackballInputToGameKeyEventAction.h"
#include "org/allbinary/game/input/PlatformInputMappingFactory.h"
#include "org/allbinary/input/motion/gesture/TrackballMotionGestureFactory.h"
#include "org/allbinary/logic/NullUtil.h"
#if __has_include("org/allbinary/input/motion/trackball/action/PersistentInputMapping.h")
#include "org/allbinary/input/motion/trackball/action/PersistentInputMapping.h"
#endif
#if __has_include("org/allbinary/game/input/PersistentInputMapping.h")
#include "org/allbinary/game/input/PersistentInputMapping.h"
#endif
#if __has_include("org/allbinary/game/input/motion/action/PersistentInputMapping.h")
#include "org/allbinary/game/input/motion/action/PersistentInputMapping.h"
#endif
#if __has_include("org/allbinary/input/motion/gesture/PersistentInputMapping.h")
#include "org/allbinary/input/motion/gesture/PersistentInputMapping.h"
#endif
#if __has_include("org/allbinary/logic/PersistentInputMapping.h")
#include "org/allbinary/logic/PersistentInputMapping.h"
#endif


static id RightTrackballInputToGameKeyEventAction_instance;

void RightTrackballInputToGameKeyEventAction_staticInit(void) {
    static bool initialized = false;
    if (initialized) {
        return;
    }
    initialized = true;
    RightTrackballInputToGameKeyEventAction_instance = [NullUtil getInstance]->NULL_OBJECT;
}

@implementation RightTrackballInputToGameKeyEventAction


+ (GameKeyCompleteMotionGestureInputEvent*) getInstance {
        if ((RightTrackballInputToGameKeyEventAction_staticInit(), RightTrackballInputToGameKeyEventAction_instance) == [NullUtil getInstance]->NULL_OBJECT) {
            RightTrackballInputToGameKeyEventAction_instance = [((RightTrackballInputToGameKeyEventAction*) [RightTrackballInputToGameKeyEventAction alloc]) init];
        }
        return ((GameKeyCompleteMotionGestureInputEvent*) (RightTrackballInputToGameKeyEventAction_staticInit(), RightTrackballInputToGameKeyEventAction_instance));
}


- (instancetype) init {
        self = [super init:"Right Action" :[TrackballMotionGestureFactory getInstance]->RIGHT :[[[PlatformInputMappingFactory getInstance] getPersistentInputMappingInstance] getInputMapping]];
    return self;
}

@end

