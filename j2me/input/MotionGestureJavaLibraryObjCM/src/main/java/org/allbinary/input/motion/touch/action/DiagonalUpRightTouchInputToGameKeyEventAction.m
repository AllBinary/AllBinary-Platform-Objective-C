// Generated Code Do Not Modify
#include "org/allbinary/input/motion/touch/action/DiagonalUpRightTouchInputToGameKeyEventAction.h"
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


static id DiagonalUpRightTouchInputToGameKeyEventAction_instance;

void DiagonalUpRightTouchInputToGameKeyEventAction_staticInit(void) {
    static bool initialized = false;
    if (initialized) {
        return;
    }
    initialized = true;
    DiagonalUpRightTouchInputToGameKeyEventAction_instance = [NullUtil getInstance]->NULL_OBJECT;
}

@implementation DiagonalUpRightTouchInputToGameKeyEventAction


+ (GameKeyCompleteMotionGestureInputEvent*) getInstance {
        if ((DiagonalUpRightTouchInputToGameKeyEventAction_staticInit(), DiagonalUpRightTouchInputToGameKeyEventAction_instance) == [NullUtil getInstance]->NULL_OBJECT) {
            DiagonalUpRightTouchInputToGameKeyEventAction_instance = [((DiagonalUpRightTouchInputToGameKeyEventAction*) [DiagonalUpRightTouchInputToGameKeyEventAction alloc]) init];
        }
        return ((GameKeyCompleteMotionGestureInputEvent*) (DiagonalUpRightTouchInputToGameKeyEventAction_staticInit(), DiagonalUpRightTouchInputToGameKeyEventAction_instance));
}


- (instancetype) init {
        self = [super init:"Diagonal Up Right Action" :[TouchMotionGestureFactory getInstance]->DIAGONAL_UP_RIGHT :[[[PlatformInputMappingFactory getInstance] getPersistentInputMappingInstance] getInputMapping]];
    return self;
}

@end

