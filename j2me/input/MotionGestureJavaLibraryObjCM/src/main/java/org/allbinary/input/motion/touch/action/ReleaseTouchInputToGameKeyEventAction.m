// Generated Code Do Not Modify
#include "org/allbinary/input/motion/touch/action/ReleaseTouchInputToGameKeyEventAction.h"
#include "org/allbinary/game/input/GameKey.h"
#include "org/allbinary/game/input/GameKeyFactory.h"
#include "org/allbinary/game/input/PlatformInputMappingFactory.h"
#include "org/allbinary/game/input/event/GameKeyEventFactory.h"
#include "org/allbinary/input/motion/gesture/TouchMotionGestureFactory.h"
#include "org/allbinary/logic/NullUtil.h"
#include "org/allbinary/string/CommonStrings.h"
#if __has_include("org/allbinary/logic/NullUtil.h")
#include "org/allbinary/logic/NullUtil.h"
#endif
#if __has_include("org/allbinary/logic/NullUtil.h")
#include "org/allbinary/logic/NullUtil.h"
#endif
#if __has_include("org/allbinary/game/input/GameKeyFactory.h")
#include "org/allbinary/game/input/GameKeyFactory.h"
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
#if __has_include("org/allbinary/game/input/PersistentInputMapping.h")
#include "org/allbinary/game/input/PersistentInputMapping.h"
#endif
#if __has_include("org/allbinary/game/input/PersistentInputMapping.h")
#include "org/allbinary/game/input/PersistentInputMapping.h"
#endif
#if __has_include("org/allbinary/game/input/event/PersistentInputMapping.h")
#include "org/allbinary/game/input/event/PersistentInputMapping.h"
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
#if __has_include("org/allbinary/string/PersistentInputMapping.h")
#include "org/allbinary/string/PersistentInputMapping.h"
#endif
#if __has_include("org/allbinary/game/input/PlatformInputMappingFactory.h")
#include "org/allbinary/game/input/PlatformInputMappingFactory.h"
#endif
#if __has_include("org/allbinary/game/input/event/GameKeyEventFactory.h")
#include "org/allbinary/game/input/event/GameKeyEventFactory.h"
#endif


static id ReleaseTouchInputToGameKeyEventAction_instance;

void ReleaseTouchInputToGameKeyEventAction_staticInit(void) {
    static bool initialized = false;
    if (initialized) {
        return;
    }
    initialized = true;
    ReleaseTouchInputToGameKeyEventAction_instance = [NullUtil getInstance]->NULL_OBJECT;
}

@implementation ReleaseTouchInputToGameKeyEventAction

- (void) initFields {
    self->NONE = [GameKeyFactory getInstance]->NONE;
}


+ (GameKeyCompleteMotionGestureInputEvent*) getInstance {
        if ((ReleaseTouchInputToGameKeyEventAction_staticInit(), ReleaseTouchInputToGameKeyEventAction_instance) == [NullUtil getInstance]->NULL_OBJECT) {
            ReleaseTouchInputToGameKeyEventAction_instance = ((ReleaseTouchInputToGameKeyEventAction*) [((ReleaseTouchInputToGameKeyEventAction*) [ReleaseTouchInputToGameKeyEventAction alloc]) init]);
        }
        return ((GameKeyCompleteMotionGestureInputEvent*) (ReleaseTouchInputToGameKeyEventAction_staticInit(), ReleaseTouchInputToGameKeyEventAction_instance));
}


- (instancetype) init {
        self = [super init:"Release Action" :[TouchMotionGestureFactory getInstance]->RELEASED :[[[PlatformInputMappingFactory getInstance] getPersistentInputMappingInstance] getInputMapping]];
        [self initFields];
        JAVA_TRY {
            [self setGameKey:self->NONE];
            [self setGameKeyEvent:[[GameKeyEventFactory getInstance] getInstanceForInput:self :self->NONE]];
        } JAVA_CATCH(Exception, e) {
            CommonStrings* commonStrings = [CommonStrings getInstance];
            [self->logUtil put:commonStrings->EXCEPTION :self :commonStrings->CONSTRUCTOR :e];
        } JAVA_END_TRY;
    return self;
}


- (void) update {
}

@end

