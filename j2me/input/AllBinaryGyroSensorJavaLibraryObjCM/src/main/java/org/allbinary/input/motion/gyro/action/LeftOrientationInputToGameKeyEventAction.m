// Generated Code Do Not Modify
#include "org/allbinary/input/motion/gyro/action/LeftOrientationInputToGameKeyEventAction.h"
#include "org/allbinary/game/input/PlatformInputMappingFactory.h"
#include "org/allbinary/input/gyro/OrientationMotionGestureFactory.h"
#include "org/allbinary/logic/NullUtil.h"
#if __has_include("org/allbinary/logic/NullUtil.h")
#include "org/allbinary/logic/NullUtil.h"
#endif
#if __has_include("org/allbinary/logic/NullUtil.h")
#include "org/allbinary/logic/NullUtil.h"
#endif
#if __has_include("org/allbinary/input/gyro/OrientationMotionGestureFactory.h")
#include "org/allbinary/input/gyro/OrientationMotionGestureFactory.h"
#endif
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
#if __has_include("org/allbinary/game/input/PlatformInputMappingFactory.h")
#include "org/allbinary/game/input/PlatformInputMappingFactory.h"
#endif


static id LeftOrientationInputToGameKeyEventAction_instance;

void LeftOrientationInputToGameKeyEventAction_staticInit(void) {
    static bool initialized = false;
    if (initialized) {
        return;
    }
    initialized = true;
    LeftOrientationInputToGameKeyEventAction_instance = [NullUtil getInstance]->NULL_OBJECT;
}

@implementation LeftOrientationInputToGameKeyEventAction


+ (GameKeyCompleteMotionGestureInputEvent*) getInstance {
        if ((LeftOrientationInputToGameKeyEventAction_staticInit(), LeftOrientationInputToGameKeyEventAction_instance) == [NullUtil getInstance]->NULL_OBJECT) {
            LeftOrientationInputToGameKeyEventAction_instance = ((LeftOrientationInputToGameKeyEventAction*) [((LeftOrientationInputToGameKeyEventAction*) [LeftOrientationInputToGameKeyEventAction alloc]) init]);
        }
        return ((GameKeyCompleteMotionGestureInputEvent*) (LeftOrientationInputToGameKeyEventAction_staticInit(), LeftOrientationInputToGameKeyEventAction_instance));
}


- (instancetype) init {
        self = [super init:"Left Action" :[OrientationMotionGestureFactory getInstance]->LEFT :[[[PlatformInputMappingFactory getInstance] getPersistentInputMappingInstance] getInputMapping]];
    return self;
}

@end

