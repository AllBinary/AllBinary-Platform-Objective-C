// Generated Code Do Not Modify
#include "org/allbinary/game/ag/layer/hud/basic/notification/NoGameGameNotificationHud.h"
#include "org/allbinary/game/graphics/hud/BasicHudFactory.h"
#include "org/allbinary/graphics/color/BasicColorFactory.h"
#include "org/allbinary/game/ag/layer/hud/basic/notification/GameNotificationHud.h"



void NoGameGameNotificationHud_staticInit(void) {
    static bool initialized = false;
    if (initialized) {
        return;
    }
    initialized = true;
}

@implementation NoGameGameNotificationHud


- (instancetype) init {
        self = [super init:[BasicHudFactory getInstance]->TOPCENTER :[BasicHudFactory getInstance]->HORIZONTAL :2 :[BasicColorFactory getInstance]->RED];
        self->updateMaxWidth = 40;
        self->updateMaxHeight = 14;
    return self;
}

@end

