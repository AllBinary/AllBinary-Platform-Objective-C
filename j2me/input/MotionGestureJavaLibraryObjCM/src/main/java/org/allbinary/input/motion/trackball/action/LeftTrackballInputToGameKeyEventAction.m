// Generated Code Do Not Modify
#include "org/allbinary/input/motion/trackball/action/LeftTrackballInputToGameKeyEventAction.h"
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


static id LeftTrackballInputToGameKeyEventAction_instance;

void LeftTrackballInputToGameKeyEventAction_staticInit(void) {
    static bool initialized = false;
    if (initialized) {
        return;
    }
    initialized = true;
    LeftTrackballInputToGameKeyEventAction_instance = [NullUtil getInstance]->NULL_OBJECT;
}

@implementation LeftTrackballInputToGameKeyEventAction


+ (GameKeyCompleteMotionGestureInputEvent*) getInstance {
        if ((LeftTrackballInputToGameKeyEventAction_staticInit(), LeftTrackballInputToGameKeyEventAction_instance) == [NullUtil getInstance]->NULL_OBJECT) {
            LeftTrackballInputToGameKeyEventAction_instance = [((LeftTrackballInputToGameKeyEventAction*) [LeftTrackballInputToGameKeyEventAction alloc]) init];
        }
        return ((GameKeyCompleteMotionGestureInputEvent*) (LeftTrackballInputToGameKeyEventAction_staticInit(), LeftTrackballInputToGameKeyEventAction_instance));
}


- (instancetype) init {
        self = [super init:"Left Action" :[TrackballMotionGestureFactory getInstance]->LEFT :[[[PlatformInputMappingFactory getInstance] getPersistentInputMappingInstance] getInputMapping]];
    return self;
}

@end

