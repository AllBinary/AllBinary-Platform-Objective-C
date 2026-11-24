// Generated Code Do Not Modify
#include "org/allbinary/input/motion/trackball/action/DownTrackballInputToGameKeyEventAction.h"
#include "org/allbinary/game/input/PlatformInputMappingFactory.h"
#include "org/allbinary/input/motion/gesture/TrackballMotionGestureFactory.h"
#include "org/allbinary/logic/NullUtil.h"
#if __has_include("org/allbinary/logic/NullUtil.h")
#include "org/allbinary/logic/NullUtil.h"
#endif
#if __has_include("org/allbinary/logic/NullUtil.h")
#include "org/allbinary/logic/NullUtil.h"
#endif
#if __has_include("org/allbinary/input/motion/gesture/TrackballMotionGestureFactory.h")
#include "org/allbinary/input/motion/gesture/TrackballMotionGestureFactory.h"
#endif
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
#if __has_include("org/allbinary/game/input/PlatformInputMappingFactory.h")
#include "org/allbinary/game/input/PlatformInputMappingFactory.h"
#endif


static id DownTrackballInputToGameKeyEventAction_instance;

void DownTrackballInputToGameKeyEventAction_staticInit(void) {
    static bool initialized = false;
    if (initialized) {
        return;
    }
    initialized = true;
    DownTrackballInputToGameKeyEventAction_instance = [NullUtil getInstance]->NULL_OBJECT;
}

@implementation DownTrackballInputToGameKeyEventAction


+ (GameKeyCompleteMotionGestureInputEvent*) getInstance {
        if ((DownTrackballInputToGameKeyEventAction_staticInit(), DownTrackballInputToGameKeyEventAction_instance) == [NullUtil getInstance]->NULL_OBJECT) {
            DownTrackballInputToGameKeyEventAction_instance = ((DownTrackballInputToGameKeyEventAction*) [((DownTrackballInputToGameKeyEventAction*) [DownTrackballInputToGameKeyEventAction alloc]) init]);
        }
        return ((GameKeyCompleteMotionGestureInputEvent*) (DownTrackballInputToGameKeyEventAction_staticInit(), DownTrackballInputToGameKeyEventAction_instance));
}


- (instancetype) init {
        self = [super init:"Down Action" :[TrackballMotionGestureFactory getInstance]->DOWN :[[[PlatformInputMappingFactory getInstance] getPersistentInputMappingInstance] getInputMapping]];
    return self;
}

@end

