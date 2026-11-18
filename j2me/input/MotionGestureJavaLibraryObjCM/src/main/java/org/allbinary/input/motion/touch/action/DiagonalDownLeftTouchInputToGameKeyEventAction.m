// Generated Code Do Not Modify
#include "org/allbinary/input/motion/touch/action/DiagonalDownLeftTouchInputToGameKeyEventAction.h"
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


static id DiagonalDownLeftTouchInputToGameKeyEventAction_instance;

void DiagonalDownLeftTouchInputToGameKeyEventAction_staticInit(void) {
    static bool initialized = false;
    if (initialized) {
        return;
    }
    initialized = true;
    DiagonalDownLeftTouchInputToGameKeyEventAction_instance = [NullUtil getInstance]->NULL_OBJECT;
}

@implementation DiagonalDownLeftTouchInputToGameKeyEventAction


+ (GameKeyCompleteMotionGestureInputEvent*) getInstance {
        if ((DiagonalDownLeftTouchInputToGameKeyEventAction_staticInit(), DiagonalDownLeftTouchInputToGameKeyEventAction_instance) == [NullUtil getInstance]->NULL_OBJECT) {
            DiagonalDownLeftTouchInputToGameKeyEventAction_instance = [((DiagonalDownLeftTouchInputToGameKeyEventAction*) [DiagonalDownLeftTouchInputToGameKeyEventAction alloc]) init];
        }
        return ((GameKeyCompleteMotionGestureInputEvent*) (DiagonalDownLeftTouchInputToGameKeyEventAction_staticInit(), DiagonalDownLeftTouchInputToGameKeyEventAction_instance));
}


- (instancetype) init {
        self = [super init:"Diagonal Down Left Action" :[TouchMotionGestureFactory getInstance]->DIAGONAL_DOWN_LEFT :[[[PlatformInputMappingFactory getInstance] getPersistentInputMappingInstance] getInputMapping]];
    return self;
}

@end

