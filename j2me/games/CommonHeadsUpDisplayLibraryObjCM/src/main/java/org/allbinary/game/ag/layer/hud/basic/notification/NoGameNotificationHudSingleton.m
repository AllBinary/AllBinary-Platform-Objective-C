// Generated Code Do Not Modify
#include "org/allbinary/game/ag/layer/hud/basic/notification/NoGameNotificationHudSingleton.h"
#include "org/allbinary/game/graphics/hud/BasicHudFactory.h"
#include "org/allbinary/logic/communication/log/LogUtil.h"
#include "org/allbinary/string/CommonStrings.h"
#include "org/allbinary/game/ag/layer/hud/basic/notification/GameNotificationHud.h"
#include "org/allbinary/game/ag/layer/hud/basic/notification/NoGameGameNotificationHud.h"


static NoGameNotificationHudSingleton* NoGameNotificationHudSingleton_instance;

void NoGameNotificationHudSingleton_staticInit(void) {
    static bool initialized = false;
    if (initialized) {
        return;
    }
    initialized = true;
    NoGameNotificationHudSingleton_instance = [((NoGameNotificationHudSingleton*) [NoGameNotificationHudSingleton alloc]) init];
}

@implementation NoGameNotificationHudSingleton

- (void) initFields {
    self->logUtil = [LogUtil getInstance];
    self->gameNotificationHud = (GameNotificationHud_staticInit(), GameNotificationHud_NULL_GAME_NOTIFICATION);
}


+ (NoGameNotificationHudSingleton*) getInstance {
        return (NoGameNotificationHudSingleton_staticInit(), NoGameNotificationHudSingleton_instance);
}


- (instancetype) init {
    self = [super init];
    [self initFields];
        JAVA_TRY {
            BasicHudFactory* basicHudFactory = [BasicHudFactory getInstance];
            self->gameNotificationHud = [((NoGameGameNotificationHud*) [NoGameGameNotificationHud alloc]) init];
        } JAVA_CATCH(Exception, e) {
            CommonStrings* commonStrings = [CommonStrings getInstance];
            [self->logUtil put:commonStrings->EXCEPTION :self :commonStrings->CONSTRUCTOR :e];
        } JAVA_END_TRY;
    return self;
}


- (GameNotificationHud*) getGameNotificationHud {
        return self->gameNotificationHud;
}

@end

