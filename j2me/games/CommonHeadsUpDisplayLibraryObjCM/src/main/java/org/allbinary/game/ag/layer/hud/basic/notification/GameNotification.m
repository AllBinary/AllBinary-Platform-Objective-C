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
#if __has_include("org/allbinary/logic/NullUtil.h")
#include "org/allbinary/logic/NullUtil.h"
#endif
#if __has_include("org/allbinary/logic/string/StringUtil.h")
#include "org/allbinary/logic/string/StringUtil.h"
#endif
#if __has_include("org/allbinary/graphics/color/BasicColorFactory.h")
#include "org/allbinary/graphics/color/BasicColorFactory.h"
#endif
#if __has_include("org/allbinary/logic/java/bool/BooleanFactory.h")
#include "org/allbinary/logic/java/bool/BooleanFactory.h"
#endif


GameNotificationEvent* GameNotification_NULL_GAME_NOTIFICATION_EVENT;

void GameNotification_staticInit(void) {
    static bool initialized = false;
    if (initialized) {
        return;
    }
    initialized = true;
    GameNotification_NULL_GAME_NOTIFICATION_EVENT = ((GameNotificationEvent*) [((GameNotificationEvent*) [GameNotificationEvent alloc]) init:[NullUtil getInstance]->NULL_OBJECT :[StringUtil getInstance]->EMPTY_STRING :0 :[BasicColorFactory getInstance]->RED :[BooleanFactory getInstance]->FALSE]);
}

@implementation GameNotification

- (void) initFields {
    self->stringList = ((BasicArrayListD*) [((BasicArrayListD*) [BasicArrayListD alloc]) init]);
    self->timeList = ((BasicArrayListD*) [((BasicArrayListD*) [BasicArrayListD alloc]) init]);
    self->colorList = ((BasicArrayListD*) [((BasicArrayListD*) [BasicArrayListD alloc]) init]);
}

- (instancetype) init {
    self = [super init];
    [self initFields];
    return self;
}


- (void) add:(const char*)string :(int32_t)seconds :(BasicColor*)basicColor {
        if (![self->stringList contains:string]) {
            [self->stringList add:string];
            [self->timeList add:JAVA_BOX(seconds)];
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

