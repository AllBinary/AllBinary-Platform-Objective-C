// Generated Code Do Not Modify
#include "org/allbinary/game/ag/layer/hud/basic/notification/GameNotification.h"
#include "org/allbinary/game/layer/hud/event/GameNotificationEvent.h"
#include "org/allbinary/graphics/color/BasicColor.h"
#include "org/allbinary/graphics/color/BasicColorFactory.h"
#include "org/allbinary/logic/NullUtil.h"
#include "org/allbinary/logic/java/bool/BooleanFactory.h"
#include "org/allbinary/logic/string/StringUtil.h"
#include "org/allbinary/util/BasicArrayList.h"
#include "org/allbinary/util/BasicArrayListD.h"


GameNotificationEvent* GameNotification_NULL_GAME_NOTIFICATION_EVENT;

void GameNotification_staticInit(void) {
    static bool initialized = false;
    if (initialized) {
        return;
    }
    initialized = true;
    GameNotification_NULL_GAME_NOTIFICATION_EVENT = [((GameNotificationEvent*) [GameNotificationEvent alloc]) init:[NullUtil getInstance]->NULL_OBJECT :[StringUtil getInstance]->EMPTY_STRING :0 :[BasicColorFactory getInstance]->RED :[BooleanFactory getInstance]->FALSE];
}

@implementation GameNotification

- (void) initFields {
    self->stringList = [((BasicArrayListD*) [BasicArrayListD alloc]) init];
    self->timeList = [((BasicArrayListD*) [BasicArrayListD alloc]) init];
    self->colorList = [((BasicArrayListD*) [BasicArrayListD alloc]) init];
}

- (instancetype) init {
    self = [super init];
    [self initFields];
    return self;
}


- (void) add:(const char*)string :(int32_t)seconds :(BasicColor*)basicColor {
        if (![self->stringList contains:string]) {
            [self->stringList add:string];
            [self->timeList add:seconds];
            [self->colorList add:basicColor];
        }
}


- (void) clear {
        [self->stringList clear];
        [self->timeList clear];
        [self->colorList clear];
}


- (int32_t) getSize {
        return [self->stringList size];
}

@end

