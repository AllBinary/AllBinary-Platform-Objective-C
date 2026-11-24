// Generated Code Do Not Modify
#include "org/allbinary/input/motion/gyro/action/UpOrientationInputToGameKeyEventAction.h"
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


static id UpOrientationInputToGameKeyEventAction_instance;

void UpOrientationInputToGameKeyEventAction_staticInit(void) {
    static bool initialized = false;
    if (initialized) {
        return;
    }
    initialized = true;
    UpOrientationInputToGameKeyEventAction_instance = [NullUtil getInstance]->NULL_OBJECT;
}

@implementation UpOrientationInputToGameKeyEventAction


+ (GameKeyCompleteMotionGestureInputEvent*) getInstance {
        if ((UpOrientationInputToGameKeyEventAction_staticInit(), UpOrientationInputToGameKeyEventAction_instance) == [NullUtil getInstance]->NULL_OBJECT) {
            UpOrientationInputToGameKeyEventAction_instance = ((UpOrientationInputToGameKeyEventAction*) [((UpOrientationInputToGameKeyEventAction*) [UpOrientationInputToGameKeyEventAction alloc]) init]);
        }
        return ((GameKeyCompleteMotionGestureInputEvent*) (UpOrientationInputToGameKeyEventAction_staticInit(), UpOrientationInputToGameKeyEventAction_instance));
}


- (instancetype) init {
        self = [super init:"Up Action" :[OrientationMotionGestureFactory getInstance]->UP :[[[PlatformInputMappingFactory getInstance] getPersistentInputMappingInstance] getInputMapping]];
    return self;
}

@end

