// Generated Code Do Not Modify
#include "org/allbinary/game/input/event/GameKeyEventFactory.h"
#include "org/allbinary/game/input/GameKeyEventSourceInterface.h"
#include "org/allbinary/game/input/Input.h"
#include "org/allbinary/game/input/InputFactory.h"
#include "org/allbinary/logic/NullUtil.h"
#include "org/allbinary/logic/communication/log/LogUtil.h"
#include "org/allbinary/game/input/event/GameKeyEvent.h"


static id GameKeyEventFactory_instance;

void GameKeyEventFactory_staticInit(void) {
    static bool initialized = false;
    if (initialized) {
        return;
    }
    initialized = true;
    GameKeyEventFactory_instance = [NullUtil getInstance]->NULL_OBJECT;
}

@implementation GameKeyEventFactory

- (void) initFields {
    self->logUtil = [LogUtil getInstance];
    self->TOUCH_BUTTON_SOURCE_ID = 2;
    self->MOTION_GESTURE_SOURCE_ID = 3;
    self->MAX_SOURCES = 4;
    self->ARRAY = ((GameKeyEvent***) java_array_new2(sizeof(GameKeyEvent*), self->MAX_SOURCES, [InputFactory getInstance]->MAX));
}


+ (GameKeyEventFactory*) getInstance {
        if ((GameKeyEventFactory_staticInit(), GameKeyEventFactory_instance) == [NullUtil getInstance]->NULL_OBJECT) {
            GameKeyEventFactory_instance = [((GameKeyEventFactory*) [GameKeyEventFactory alloc]) init];
        }
        return ((GameKeyEventFactory*) (GameKeyEventFactory_staticInit(), GameKeyEventFactory_instance));
}


- (instancetype) init {
    self = [super init];
    [self initFields];
    return self;
}


- (void) init_ {
        NullUtil* nullUtil = [NullUtil getInstance];
        int32_t size = [InputFactory getInstance]->MAX;
        for (int32_t index = self->MAX_SOURCES; --index >= 0; ) {
            for (int32_t index2 = size; --index2 >= 0; ) {
                self->ARRAY[index][index2] = [GameKeyEvent createEvent:nullUtil->NULL_OBJECT :index :index2];
            }
        }
}


// throws Exception
- (GameKeyEvent*) getInstanceForKey:(GameKeyEventSourceInterface*)anyType :(int32_t)key {
        GameKeyEvent* gameKeyEvent = self->ARRAY[[anyType getSourceId]][key];
        return gameKeyEvent;
}


// throws Exception
- (GameKeyEvent*) getInstanceForInput:(GameKeyEventSourceInterface*)anyType :(Input*)input {
        GameKeyEvent* gameKeyEvent = self->ARRAY[[anyType getSourceId]][[input getId]];
        return gameKeyEvent;
}

@end

