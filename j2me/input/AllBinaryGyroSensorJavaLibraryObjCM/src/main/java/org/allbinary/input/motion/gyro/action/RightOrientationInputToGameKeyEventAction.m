// Generated Code Do Not Modify
#include "org/allbinary/input/motion/gyro/action/RightOrientationInputToGameKeyEventAction.h"
#include "org/allbinary/game/input/PlatformInputMappingFactory.h"
#include "org/allbinary/input/gyro/OrientationMotionGestureFactory.h"
#include "org/allbinary/logic/NullUtil.h"
#if __has_include("org/allbinary/input/motion/gyro/action/PersistentInputMapping.h")
#include "org/allbinary/input/motion/gyro/action/PersistentInputMapping.h"
#endif
#if __has_include("org/allbinary/game/input/PersistentInputMapping.h")
#include "org/allbinary/game/input/PersistentInputMapping.h"
#endif
#if __has_include("org/allbinary/game/input/motion/action/PersistentInputMapping.h")
#include "org/allbinary/game/input/motion/action/PersistentInputMapping.h"
#endif
#if __has_include("org/allbinary/input/gyro/PersistentInputMapping.h")
#include "org/allbinary/input/gyro/PersistentInputMapping.h"
#endif
#if __has_include("org/allbinary/logic/PersistentInputMapping.h")
#include "org/allbinary/logic/PersistentInputMapping.h"
#endif


static id RightOrientationInputToGameKeyEventAction_instance;

void RightOrientationInputToGameKeyEventAction_staticInit(void) {
    static bool initialized = false;
    if (initialized) {
        return;
    }
    initialized = true;
    RightOrientationInputToGameKeyEventAction_instance = [NullUtil getInstance]->NULL_OBJECT;
}

@implementation RightOrientationInputToGameKeyEventAction


+ (GameKeyCompleteMotionGestureInputEvent*) getInstance {
        if ((RightOrientationInputToGameKeyEventAction_staticInit(), RightOrientationInputToGameKeyEventAction_instance) == [NullUtil getInstance]->NULL_OBJECT) {
            RightOrientationInputToGameKeyEventAction_instance = [((RightOrientationInputToGameKeyEventAction*) [RightOrientationInputToGameKeyEventAction alloc]) init];
        }
        return ((GameKeyCompleteMotionGestureInputEvent*) (RightOrientationInputToGameKeyEventAction_staticInit(), RightOrientationInputToGameKeyEventAction_instance));
}


- (instancetype) init {
        self = [super init:"Right Action" :[OrientationMotionGestureFactory getInstance]->RIGHT :[[[PlatformInputMappingFactory getInstance] getPersistentInputMappingInstance] getInputMapping]];
    return self;
}

@end

