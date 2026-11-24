// Generated Code Do Not Modify
#include "org/allbinary/logic/system/security/licensing/LockedFeatureNotificationUtil.h"
#include "org/allbinary/game/layer/hud/event/GameNotificationEvent.h"
#include "org/allbinary/game/layer/hud/event/GameNotificationEventHandler.h"
#include "org/allbinary/graphics/color/BasicColor.h"
#include "org/allbinary/graphics/color/BasicColorFactory.h"
#include "org/allbinary/logic/java/bool/BooleanFactory.h"
#include "org/allbinary/logic/math/SmallIntegerSingletonFactory.h"
#include "org/allbinary/media/audio/ErrorSound.h"
#include "org/allbinary/media/audio/PrimaryPlayerQueueFactory.h"
#include "org/allbinary/logic/system/security/licensing/LicenseStrings.h"
#if __has_include("org/allbinary/logic/math/SmallIntegerSingletonFactory.h")
#include "org/allbinary/logic/math/SmallIntegerSingletonFactory.h"
#endif
#if __has_include("org/allbinary/graphics/color/BasicColorFactory.h")
#include "org/allbinary/graphics/color/BasicColorFactory.h"
#endif
#if __has_include("org/allbinary/logic/java/bool/BooleanFactory.h")
#include "org/allbinary/logic/java/bool/BooleanFactory.h"
#endif
#if __has_include("org/allbinary/logic/system/security/licensing/PlayerQueue.h")
#include "org/allbinary/logic/system/security/licensing/PlayerQueue.h"
#endif
#if __has_include("org/allbinary/game/layer/hud/event/PlayerQueue.h")
#include "org/allbinary/game/layer/hud/event/PlayerQueue.h"
#endif
#if __has_include("org/allbinary/game/layer/hud/event/PlayerQueue.h")
#include "org/allbinary/game/layer/hud/event/PlayerQueue.h"
#endif
#if __has_include("org/allbinary/graphics/color/PlayerQueue.h")
#include "org/allbinary/graphics/color/PlayerQueue.h"
#endif
#if __has_include("org/allbinary/graphics/color/PlayerQueue.h")
#include "org/allbinary/graphics/color/PlayerQueue.h"
#endif
#if __has_include("org/allbinary/logic/java/bool/PlayerQueue.h")
#include "org/allbinary/logic/java/bool/PlayerQueue.h"
#endif
#if __has_include("org/allbinary/logic/math/PlayerQueue.h")
#include "org/allbinary/logic/math/PlayerQueue.h"
#endif
#if __has_include("org/allbinary/media/audio/PlayerQueue.h")
#include "org/allbinary/media/audio/PlayerQueue.h"
#endif
#if __has_include("org/allbinary/media/audio/PlayerQueue.h")
#include "org/allbinary/media/audio/PlayerQueue.h"
#endif
#if __has_include("org/allbinary/game/layer/hud/event/GameNotificationEventHandler.h")
#include "org/allbinary/game/layer/hud/event/GameNotificationEventHandler.h"
#endif
#if __has_include("org/allbinary/logic/system/security/licensing/PlayerQueue.h")
#include "org/allbinary/logic/system/security/licensing/PlayerQueue.h"
#endif
#if __has_include("org/allbinary/game/layer/hud/event/PlayerQueue.h")
#include "org/allbinary/game/layer/hud/event/PlayerQueue.h"
#endif
#if __has_include("org/allbinary/game/layer/hud/event/PlayerQueue.h")
#include "org/allbinary/game/layer/hud/event/PlayerQueue.h"
#endif
#if __has_include("org/allbinary/graphics/color/PlayerQueue.h")
#include "org/allbinary/graphics/color/PlayerQueue.h"
#endif
#if __has_include("org/allbinary/graphics/color/PlayerQueue.h")
#include "org/allbinary/graphics/color/PlayerQueue.h"
#endif
#if __has_include("org/allbinary/logic/java/bool/PlayerQueue.h")
#include "org/allbinary/logic/java/bool/PlayerQueue.h"
#endif
#if __has_include("org/allbinary/logic/math/PlayerQueue.h")
#include "org/allbinary/logic/math/PlayerQueue.h"
#endif
#if __has_include("org/allbinary/media/audio/PlayerQueue.h")
#include "org/allbinary/media/audio/PlayerQueue.h"
#endif
#if __has_include("org/allbinary/media/audio/PlayerQueue.h")
#include "org/allbinary/media/audio/PlayerQueue.h"
#endif
#if __has_include("org/allbinary/game/layer/hud/event/GameNotificationEventHandler.h")
#include "org/allbinary/game/layer/hud/event/GameNotificationEventHandler.h"
#endif


static LockedFeatureNotificationUtil* LockedFeatureNotificationUtil_instance;

void LockedFeatureNotificationUtil_staticInit(void) {
    static bool initialized = false;
    if (initialized) {
        return;
    }
    initialized = true;
    LockedFeatureNotificationUtil_instance = ((LockedFeatureNotificationUtil*) [((LockedFeatureNotificationUtil*) [LockedFeatureNotificationUtil alloc]) init]);
}

@implementation LockedFeatureNotificationUtil

- (void) initFields {
    self->gameNotificationEvent = ((GameNotificationEvent*) [((GameNotificationEvent*) [GameNotificationEvent alloc]) init:self :[LicenseStrings getInstance]->LOCKED :[[SmallIntegerSingletonFactory getInstance] getAt:3] :[BasicColorFactory getInstance]->RED :[BooleanFactory getInstance]->FALSE]);
}

- (instancetype) init {
    self = [super init];
    [self initFields];
    return self;
}


+ (LockedFeatureNotificationUtil*) getInstance {
        return (LockedFeatureNotificationUtil_staticInit(), LockedFeatureNotificationUtil_instance);
}


// throws Exception
- (void) fire {
        [[PrimaryPlayerQueueFactory getInstance] add:[ErrorSound getInstance]];
        [[GameNotificationEventHandler getInstance] fireEvent:self->gameNotificationEvent];
}


// throws Exception
- (void) fireWithColor:(BasicColor*)basicColor {
        [[PrimaryPlayerQueueFactory getInstance] add:[ErrorSound getInstance]];
        [self->gameNotificationEvent setBasicColorP:basicColor];
        [[GameNotificationEventHandler getInstance] fireEvent:self->gameNotificationEvent];
}

@end

