// Generated Code Do Not Modify
#include "org/allbinary/input/motion/trackball/action/UpTrackballInputToGameKeyEventAction.h"
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


static id UpTrackballInputToGameKeyEventAction_instance;

void UpTrackballInputToGameKeyEventAction_staticInit(void) {
    static bool initialized = false;
    if (initialized) {
        return;
    }
    initialized = true;
    UpTrackballInputToGameKeyEventAction_instance = [NullUtil getInstance]->NULL_OBJECT;
}

@implementation UpTrackballInputToGameKeyEventAction


+ (GameKeyCompleteMotionGestureInputEvent*) getInstance {
        if ((UpTrackballInputToGameKeyEventAction_staticInit(), UpTrackballInputToGameKeyEventAction_instance) == [NullUtil getInstance]->NULL_OBJECT) {
            UpTrackballInputToGameKeyEventAction_instance = [((UpTrackballInputToGameKeyEventAction*) [UpTrackballInputToGameKeyEventAction alloc]) init];
        }
        return ((GameKeyCompleteMotionGestureInputEvent*) (UpTrackballInputToGameKeyEventAction_staticInit(), UpTrackballInputToGameKeyEventAction_instance));
}


- (instancetype) init {
        self = [super init:"Up Action" :[TrackballMotionGestureFactory getInstance]->UP :[[[PlatformInputMappingFactory getInstance] getPersistentInputMappingInstance] getInputMapping]];
    return self;
}

@end

