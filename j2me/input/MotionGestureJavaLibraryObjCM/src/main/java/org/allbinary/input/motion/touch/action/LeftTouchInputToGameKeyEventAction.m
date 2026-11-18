// Generated Code Do Not Modify
#include "org/allbinary/input/motion/touch/action/LeftTouchInputToGameKeyEventAction.h"
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


static id LeftTouchInputToGameKeyEventAction_instance;

void LeftTouchInputToGameKeyEventAction_staticInit(void) {
    static bool initialized = false;
    if (initialized) {
        return;
    }
    initialized = true;
    LeftTouchInputToGameKeyEventAction_instance = [NullUtil getInstance]->NULL_OBJECT;
}

@implementation LeftTouchInputToGameKeyEventAction


+ (GameKeyCompleteMotionGestureInputEvent*) getInstance {
        if ((LeftTouchInputToGameKeyEventAction_staticInit(), LeftTouchInputToGameKeyEventAction_instance) == [NullUtil getInstance]->NULL_OBJECT) {
            LeftTouchInputToGameKeyEventAction_instance = [((LeftTouchInputToGameKeyEventAction*) [LeftTouchInputToGameKeyEventAction alloc]) init];
        }
        return ((GameKeyCompleteMotionGestureInputEvent*) (LeftTouchInputToGameKeyEventAction_staticInit(), LeftTouchInputToGameKeyEventAction_instance));
}


- (instancetype) init {
        self = [super init:"Left Action" :[TouchMotionGestureFactory getInstance]->LEFT :[[[PlatformInputMappingFactory getInstance] getPersistentInputMappingInstance] getInputMapping]];
    return self;
}

@end

