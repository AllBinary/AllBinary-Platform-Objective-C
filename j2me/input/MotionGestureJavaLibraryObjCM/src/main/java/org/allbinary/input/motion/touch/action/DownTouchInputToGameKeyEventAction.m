// Generated Code Do Not Modify
#include "org/allbinary/input/motion/touch/action/DownTouchInputToGameKeyEventAction.h"
#include "org/allbinary/game/input/PlatformInputMappingFactory.h"
#include "org/allbinary/input/motion/gesture/TouchMotionGestureFactory.h"
#include "org/allbinary/logic/NullUtil.h"
#if __has_include("org/allbinary/input/motion/touch/action/PersistentInputMapping.h")
#include "org/allbinary/input/motion/touch/action/PersistentInputMapping.h"
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


static id DownTouchInputToGameKeyEventAction_instance;

void DownTouchInputToGameKeyEventAction_staticInit(void) {
    static bool initialized = false;
    if (initialized) {
        return;
    }
    initialized = true;
    DownTouchInputToGameKeyEventAction_instance = [NullUtil getInstance]->NULL_OBJECT;
}

@implementation DownTouchInputToGameKeyEventAction


+ (GameKeyCompleteMotionGestureInputEvent*) getInstance {
        if ((DownTouchInputToGameKeyEventAction_staticInit(), DownTouchInputToGameKeyEventAction_instance) == [NullUtil getInstance]->NULL_OBJECT) {
            DownTouchInputToGameKeyEventAction_instance = [((DownTouchInputToGameKeyEventAction*) [DownTouchInputToGameKeyEventAction alloc]) init];
        }
        return ((GameKeyCompleteMotionGestureInputEvent*) (DownTouchInputToGameKeyEventAction_staticInit(), DownTouchInputToGameKeyEventAction_instance));
}


- (instancetype) init {
        self = [super init:"Down Action" :[TouchMotionGestureFactory getInstance]->DOWN :[[[PlatformInputMappingFactory getInstance] getPersistentInputMappingInstance] getInputMapping]];
    return self;
}

@end

