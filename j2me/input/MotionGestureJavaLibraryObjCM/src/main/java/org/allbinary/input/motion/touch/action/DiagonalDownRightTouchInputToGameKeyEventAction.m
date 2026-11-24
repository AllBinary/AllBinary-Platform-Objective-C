// Generated Code Do Not Modify
#include "org/allbinary/input/motion/touch/action/DiagonalDownRightTouchInputToGameKeyEventAction.h"
#include "org/allbinary/game/input/PlatformInputMappingFactory.h"
#include "org/allbinary/input/motion/gesture/TouchMotionGestureFactory.h"
#include "org/allbinary/logic/NullUtil.h"
#if __has_include("org/allbinary/logic/NullUtil.h")
#include "org/allbinary/logic/NullUtil.h"
#endif
#if __has_include("org/allbinary/logic/NullUtil.h")
#include "org/allbinary/logic/NullUtil.h"
#endif
#if __has_include("org/allbinary/input/motion/gesture/TouchMotionGestureFactory.h")
#include "org/allbinary/input/motion/gesture/TouchMotionGestureFactory.h"
#endif
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
#if __has_include("org/allbinary/game/input/PlatformInputMappingFactory.h")
#include "org/allbinary/game/input/PlatformInputMappingFactory.h"
#endif


static id DiagonalDownRightTouchInputToGameKeyEventAction_instance;

void DiagonalDownRightTouchInputToGameKeyEventAction_staticInit(void) {
    static bool initialized = false;
    if (initialized) {
        return;
    }
    initialized = true;
    DiagonalDownRightTouchInputToGameKeyEventAction_instance = [NullUtil getInstance]->NULL_OBJECT;
}

@implementation DiagonalDownRightTouchInputToGameKeyEventAction


+ (GameKeyCompleteMotionGestureInputEvent*) getInstance {
        if ((DiagonalDownRightTouchInputToGameKeyEventAction_staticInit(), DiagonalDownRightTouchInputToGameKeyEventAction_instance) == [NullUtil getInstance]->NULL_OBJECT) {
            DiagonalDownRightTouchInputToGameKeyEventAction_instance = ((DiagonalDownRightTouchInputToGameKeyEventAction*) [((DiagonalDownRightTouchInputToGameKeyEventAction*) [DiagonalDownRightTouchInputToGameKeyEventAction alloc]) init]);
        }
        return ((GameKeyCompleteMotionGestureInputEvent*) (DiagonalDownRightTouchInputToGameKeyEventAction_staticInit(), DiagonalDownRightTouchInputToGameKeyEventAction_instance));
}


- (instancetype) init {
        self = [super init:"Diagonal Down Right Action" :[TouchMotionGestureFactory getInstance]->DIAGONAL_DOWN_RIGHT :[[[PlatformInputMappingFactory getInstance] getPersistentInputMappingInstance] getInputMapping]];
    return self;
}

@end

