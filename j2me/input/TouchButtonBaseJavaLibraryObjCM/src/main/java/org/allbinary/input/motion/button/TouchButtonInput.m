// Generated Code Do Not Modify
#include "org/allbinary/input/motion/button/TouchButtonInput.h"
#include "org/allbinary/game/input/GameKey.h"
#include "org/allbinary/game/input/InputFactory.h"
#include "org/allbinary/game/input/event/GameKeyEvent.h"
#include "org/allbinary/game/input/event/GameKeyEventFactory.h"
#include "org/allbinary/game/input/mapping/InputToGameKeyMapping.h"
#include "org/allbinary/logic/communication/log/LogUtil.h"
#include "org/allbinary/string/CommonStrings.h"



void TouchButtonInput_staticInit(void) {
    static bool initialized = false;
    if (initialized) {
        return;
    }
    initialized = true;
}

@implementation TouchButtonInput

- (void) initFields {
    self->logUtil = [LogUtil getInstance];
    self->gameKeyEventFactory = [GameKeyEventFactory getInstance];
    self->TOUCH_BUTTON_SOURCE_ID = self->gameKeyEventFactory->TOUCH_BUTTON_SOURCE_ID;
    self->gameKeyEvent = (GameKeyEvent_staticInit(), GameKeyEvent_NONE);
}


- (instancetype) init:(int32_t)id_ :(const char*)name {
        self = [super init:id_ :name];
        [self initFields];
        InputFactory* inputFactory = [InputFactory getInstance];
        [inputFactory add:[self getId] :self];
    return self;
}


- (void) update:(InputToGameKeyMapping*)inputToGameKeyMapping {
        JAVA_TRY {
            GameKey* gameKey = [inputToGameKeyMapping getInstance:[self getId]];
            self->gameKeyEvent = [self->gameKeyEventFactory getInstanceForInput:self :gameKey];
        } JAVA_CATCH(Exception, e) {
            CommonStrings* commonStrings = [CommonStrings getInstance];
            [self->logUtil put:commonStrings->EXCEPTION :self :commonStrings->UPDATE :e];
        } JAVA_END_TRY;
}


- (int32_t) getSourceId {
        return self->TOUCH_BUTTON_SOURCE_ID;
}


- (GameKeyEvent*) getGameKeyEvent {
        return self->gameKeyEvent;
}

@end

