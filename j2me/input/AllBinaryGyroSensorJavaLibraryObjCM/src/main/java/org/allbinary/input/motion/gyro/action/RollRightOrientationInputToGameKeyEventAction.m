// Generated Code Do Not Modify
#include "org/allbinary/input/motion/gyro/action/RollRightOrientationInputToGameKeyEventAction.h"
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


static id RollRightOrientationInputToGameKeyEventAction_instance;

void RollRightOrientationInputToGameKeyEventAction_staticInit(void) {
    static bool initialized = false;
    if (initialized) {
        return;
    }
    initialized = true;
    RollRightOrientationInputToGameKeyEventAction_instance = [NullUtil getInstance]->NULL_OBJECT;
}

@implementation RollRightOrientationInputToGameKeyEventAction


+ (GameKeyCompleteMotionGestureInputEvent*) getInstance {
        if ((RollRightOrientationInputToGameKeyEventAction_staticInit(), RollRightOrientationInputToGameKeyEventAction_instance) == [NullUtil getInstance]->NULL_OBJECT) {
            RollRightOrientationInputToGameKeyEventAction_instance = [((RollRightOrientationInputToGameKeyEventAction*) [RollRightOrientationInputToGameKeyEventAction alloc]) init];
        }
        return ((GameKeyCompleteMotionGestureInputEvent*) (RollRightOrientationInputToGameKeyEventAction_staticInit(), RollRightOrientationInputToGameKeyEventAction_instance));
}


- (instancetype) init {
        self = [super init:"Roll Right Action" :[OrientationMotionGestureFactory getInstance]->ROLL_RIGHT :[[[PlatformInputMappingFactory getInstance] getPersistentInputMappingInstance] getInputMapping]];
    return self;
}

@end

