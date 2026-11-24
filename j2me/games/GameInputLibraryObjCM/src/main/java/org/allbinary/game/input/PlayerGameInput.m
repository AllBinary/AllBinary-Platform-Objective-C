// Generated Code Do Not Modify
#include "org/allbinary/game/input/PlayerGameInput.h"
#include "org/allbinary/game/input/event/GameKeyEvent.h"
#include "org/allbinary/logic/communication/log/ForcedLogUtil.h"
#include "org/allbinary/logic/communication/log/PreLogUtil.h"
#include "org/allbinary/logic/string/StringMaker.h"
#include "org/allbinary/logic/util/event/AllBinaryEventObject.h"
#include "org/allbinary/logic/util/event/EventStrings.h"
#include "org/allbinary/string/CommonLabels.h"
#include "org/allbinary/util/BasicArrayList.h"
#include "org/allbinary/game/input/GameInput.h"
#include "org/allbinary/game/input/GameInputStrings.h"
#if __has_include("org/allbinary/logic/string/StringMaker.h")
#include "org/allbinary/logic/string/StringMaker.h"
#endif
#if __has_include("org/allbinary/logic/string/StringMaker.h")
#include "org/allbinary/logic/string/StringMaker.h"
#endif
#if __has_include("org/allbinary/string/CommonLabels.h")
#include "org/allbinary/string/CommonLabels.h"
#endif
#if __has_include("org/allbinary/logic/util/event/EventStrings.h")
#include "org/allbinary/logic/util/event/EventStrings.h"
#endif



void PlayerGameInput_staticInit(void) {
    static bool initialized = false;
    if (initialized) {
        return;
    }
    initialized = true;
}

@implementation PlayerGameInput

- (void) initFields {
    self->gameInputStrings = [GameInputStrings getInstance];
    
}


- (instancetype) init:(BasicArrayList*)gameKeyEventList :(BasicArrayList*)removalGameKeyEventList :(int32_t)playerInputId {
        self = [super init:gameKeyEventList :removalGameKeyEventList];
        [self initFields];
        self->playerInputId = playerInputId;
    return self;
}


// synchronized
- (void) onPressGameKeyEvent:(GameKeyEvent*)gameKeyEvent {
        [self add:gameKeyEvent];
        [self addForRemoval:gameKeyEvent];
}


// synchronized
- (void) onDownGameKeyEvent:(GameKeyEvent*)gameKeyEvent {
        [self add:gameKeyEvent];
}


// synchronized
- (void) onDownKeyEvent:(GameKeyEvent*)gameKeyEvent {
        [self add:gameKeyEvent];
        [self addForRemoval:gameKeyEvent];
}


// synchronized
- (void) onDownKey:(int32_t)gameKeyEvent {
        [PreLogUtil put:[[[((StringMaker*) [((StringMaker*) [StringMaker alloc]) init]) append:[CommonLabels getInstance]->START_LABEL] append:[gameKeyEvent toString]] toString] :self :self->gameInputStrings->ON_DOWN_GAME_KEY];
}


// synchronized
- (void) onUpGameKeyEvent:(GameKeyEvent*)gameKeyEvent {
        [self addForRemoval:gameKeyEvent];
}


// synchronized
- (void) onUpKeyEvent:(int32_t)gameKeyEvent {
}


- (void) onEvent:(AllBinaryEventObject*)eventObject {
        [ForcedLogUtil log:[EventStrings getInstance]->PERFORMANCE_MESSAGE :self];
}


- (int32_t) getPlayerInputId {
        return self->playerInputId;
}

@end

