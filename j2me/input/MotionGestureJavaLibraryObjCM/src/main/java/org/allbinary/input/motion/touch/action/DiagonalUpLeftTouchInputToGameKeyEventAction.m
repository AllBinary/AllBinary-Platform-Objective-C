// Generated Code Do Not Modify
#include "org/allbinary/input/motion/touch/action/DiagonalUpLeftTouchInputToGameKeyEventAction.h"
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


static id DiagonalUpLeftTouchInputToGameKeyEventAction_instance;

void DiagonalUpLeftTouchInputToGameKeyEventAction_staticInit(void) {
    static bool initialized = false;
    if (initialized) {
        return;
    }
    initialized = true;
    DiagonalUpLeftTouchInputToGameKeyEventAction_instance = [NullUtil getInstance]->NULL_OBJECT;
}

@implementation DiagonalUpLeftTouchInputToGameKeyEventAction


+ (GameKeyCompleteMotionGestureInputEvent*) getInstance {
        if ((DiagonalUpLeftTouchInputToGameKeyEventAction_staticInit(), DiagonalUpLeftTouchInputToGameKeyEventAction_instance) == [NullUtil getInstance]->NULL_OBJECT) {
            DiagonalUpLeftTouchInputToGameKeyEventAction_instance = [((DiagonalUpLeftTouchInputToGameKeyEventAction*) [DiagonalUpLeftTouchInputToGameKeyEventAction alloc]) init];
        }
        return ((GameKeyCompleteMotionGestureInputEvent*) (DiagonalUpLeftTouchInputToGameKeyEventAction_staticInit(), DiagonalUpLeftTouchInputToGameKeyEventAction_instance));
}


- (instancetype) init {
        self = [super init:"Diagonal Up Left Action" :[TouchMotionGestureFactory getInstance]->DIAGONAL_UP_LEFT :[[[PlatformInputMappingFactory getInstance] getPersistentInputMappingInstance] getInputMapping]];
    return self;
}

@end

