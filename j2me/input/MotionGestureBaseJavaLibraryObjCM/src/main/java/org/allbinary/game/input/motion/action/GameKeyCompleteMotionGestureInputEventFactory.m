// Generated Code Do Not Modify
#include "org/allbinary/game/input/motion/action/GameKeyCompleteMotionGestureInputEventFactory.h"
#include "org/allbinary/logic/communication/log/LogUtil.h"
#include "org/allbinary/logic/string/StringMaker.h"
#include "org/allbinary/string/CommonLabels.h"
#include "org/allbinary/util/BasicArrayList.h"
#include "org/allbinary/util/BasicArrayListD.h"
#include "org/allbinary/game/input/motion/action/GameKeyCompleteMotionGestureInputEvent.h"


static GameKeyCompleteMotionGestureInputEventFactory* GameKeyCompleteMotionGestureInputEventFactory_SINGLETON;

void GameKeyCompleteMotionGestureInputEventFactory_staticInit(void) {
    static bool initialized = false;
    if (initialized) {
        return;
    }
    initialized = true;
    GameKeyCompleteMotionGestureInputEventFactory_SINGLETON = [((GameKeyCompleteMotionGestureInputEventFactory*) [GameKeyCompleteMotionGestureInputEventFactory alloc]) init];
}

@implementation GameKeyCompleteMotionGestureInputEventFactory

- (void) initFields {
    self->logUtil = [LogUtil getInstance];
    self->eventList = [((BasicArrayListD*) [BasicArrayListD alloc]) init];
}

- (instancetype) init {
    self = [super init];
    [self initFields];
    return self;
}


+ (GameKeyCompleteMotionGestureInputEventFactory*) getInstance {
        return (GameKeyCompleteMotionGestureInputEventFactory_staticInit(), GameKeyCompleteMotionGestureInputEventFactory_SINGLETON);
}


- (void) add:(GameKeyCompleteMotionGestureInputEvent*)gameKeyCompleteMotionGestureInputEvent {
        [self->eventList add:gameKeyCompleteMotionGestureInputEvent];
}


- (void) updateAll {
        [self->logUtil putF:[[[[((StringMaker*) [StringMaker alloc]) init] append:[CommonLabels getInstance]->START_LABEL] appendint:[self->eventList size]] toString] :self :"updateAll"];
        for (int32_t index = [self->eventList size] - 1; index >= 0; index--) {
            GameKeyCompleteMotionGestureInputEvent* gameKeyCompleteMotionGestureInputEvent = ((GameKeyCompleteMotionGestureInputEvent*) self->eventList->objectArray[index]);
            [gameKeyCompleteMotionGestureInputEvent update];
        }
}

@end

