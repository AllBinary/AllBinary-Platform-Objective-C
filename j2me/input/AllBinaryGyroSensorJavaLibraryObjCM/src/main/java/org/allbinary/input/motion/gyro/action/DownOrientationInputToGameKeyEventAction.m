// Generated Code Do Not Modify
#include "org/allbinary/input/motion/gyro/action/DownOrientationInputToGameKeyEventAction.h"
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


static id DownOrientationInputToGameKeyEventAction_instance;

void DownOrientationInputToGameKeyEventAction_staticInit(void) {
    static bool initialized = false;
    if (initialized) {
        return;
    }
    initialized = true;
    DownOrientationInputToGameKeyEventAction_instance = [NullUtil getInstance]->NULL_OBJECT;
}

@implementation DownOrientationInputToGameKeyEventAction


+ (GameKeyCompleteMotionGestureInputEvent*) getInstance {
        if ((DownOrientationInputToGameKeyEventAction_staticInit(), DownOrientationInputToGameKeyEventAction_instance) == [NullUtil getInstance]->NULL_OBJECT) {
            DownOrientationInputToGameKeyEventAction_instance = [((DownOrientationInputToGameKeyEventAction*) [DownOrientationInputToGameKeyEventAction alloc]) init];
        }
        return ((GameKeyCompleteMotionGestureInputEvent*) (DownOrientationInputToGameKeyEventAction_staticInit(), DownOrientationInputToGameKeyEventAction_instance));
}


- (instancetype) init {
        self = [super init:"Down Action" :[OrientationMotionGestureFactory getInstance]->DOWN :[[[PlatformInputMappingFactory getInstance] getPersistentInputMappingInstance] getInputMapping]];
    return self;
}

@end

