// Generated Code Do Not Modify
#include "org/allbinary/game/ag/layer/hud/basic/notification/GameNotificationHud.h"
#include "javax/microedition/lcdui/Graphics.h"
#include "org/allbinary/game/graphics/hud/BasicHudFactory.h"
#include "org/allbinary/game/layer/hud/event/GameNotificationEvent.h"
#include "org/allbinary/graphics/color/BasicColor.h"
#include "org/allbinary/graphics/color/BasicColorFactory.h"
#include "org/allbinary/logic/communication/log/ForcedLogUtil.h"
#include "org/allbinary/logic/util/event/AllBinaryEventObject.h"
#include "org/allbinary/logic/util/event/EventStrings.h"
#include "org/allbinary/game/ag/layer/hud/basic/notification/GameNotification.h"


GameNotificationHud* GameNotificationHud_NULL_GAME_NOTIFICATION;

void GameNotificationHud_staticInit(void) {
    static bool initialized = false;
    if (initialized) {
        return;
    }
    initialized = true;
    GameNotificationHud_NULL_GAME_NOTIFICATION = [((GameNotificationHud*) [GameNotificationHud alloc]) init:[BasicHudFactory getInstance]->TOPCENTER :[BasicHudFactory getInstance]->HORIZONTAL :0 :[BasicColorFactory getInstance]->RED];
}

@implementation GameNotificationHud

- (void) initFields {
    self->METHOD_NAME = "onGameNotificationEvent";
    self->lastGameNotificationEvent = (GameNotification_staticInit(), GameNotification_NULL_GAME_NOTIFICATION_EVENT);
}


- (instancetype) init:(int32_t)location :(int32_t)direction :(int32_t)bufferZone :(BasicColor*)basicColor {
        self = [super init:location :direction :bufferZone :basicColor];
        [self initFields];
    return self;
}


- (void) onEvent:(AllBinaryEventObject*)eventObject {
        [ForcedLogUtil log:[EventStrings getInstance]->PERFORMANCE_MESSAGE :self];
}


// throws Exception
- (void) onGameNotificationEvent:(GameNotificationEvent*)gameNotificationEvent {
        if (self->lastGameNotificationEvent != gameNotificationEvent) {
            self->lastGameNotificationEvent = gameNotificationEvent;
            [self->logUtil putF:[gameNotificationEvent getString] :self :self->METHOD_NAME];
        }
        [self add:[gameNotificationEvent getString] :[gameNotificationEvent getSeconds] :[gameNotificationEvent getBasicColorP] :[gameNotificationEvent getPermanent]];
}


- (void) add:(const char*)string :(int32_t)seconds :(BasicColor*)basicColor :(bool)permanent {
}


// throws Exception
- (void) processTick {
}


- (void) paint:(Graphics*)graphics {
}


- (void) clear {
}

@end

