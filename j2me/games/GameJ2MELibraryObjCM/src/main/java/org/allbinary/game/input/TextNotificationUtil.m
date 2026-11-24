// Generated Code Do Not Modify
#include "org/allbinary/game/input/TextNotificationUtil.h"
#include "org/allbinary/game/layer/hud/event/GameNotificationEvent.h"
#include "org/allbinary/game/layer/hud/event/GameNotificationEventHandler.h"
#include "org/allbinary/graphics/color/BasicColorFactory.h"
#include "org/allbinary/logic/java/bool/BooleanFactory.h"
#include "org/allbinary/logic/math/SmallIntegerSingletonFactory.h"
#include "org/allbinary/media/audio/ErrorSound.h"
#include "org/allbinary/media/audio/PrimaryPlayerQueueFactory.h"
#include "org/allbinary/media/audio/SelectSound.h"
#if __has_include("org/allbinary/game/input/PlayerQueue.h")
#include "org/allbinary/game/input/PlayerQueue.h"
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
#if __has_include("org/allbinary/media/audio/PlayerQueue.h")
#include "org/allbinary/media/audio/PlayerQueue.h"
#endif
#if __has_include("org/allbinary/game/input/PlayerQueue.h")
#include "org/allbinary/game/input/PlayerQueue.h"
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
#if __has_include("org/allbinary/media/audio/PlayerQueue.h")
#include "org/allbinary/media/audio/PlayerQueue.h"
#endif
#if __has_include("org/allbinary/game/input/PlayerQueue.h")
#include "org/allbinary/game/input/PlayerQueue.h"
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
#if __has_include("org/allbinary/media/audio/PlayerQueue.h")
#include "org/allbinary/media/audio/PlayerQueue.h"
#endif
#if __has_include("org/allbinary/logic/math/SmallIntegerSingletonFactory.h")
#include "org/allbinary/logic/math/SmallIntegerSingletonFactory.h"
#endif
#if __has_include("org/allbinary/logic/java/bool/BooleanFactory.h")
#include "org/allbinary/logic/java/bool/BooleanFactory.h"
#endif
#if __has_include("org/allbinary/graphics/color/BasicColorFactory.h")
#include "org/allbinary/graphics/color/BasicColorFactory.h"
#endif


static TextNotificationUtil* TextNotificationUtil_instance;

void TextNotificationUtil_staticInit(void) {
    static bool initialized = false;
    if (initialized) {
        return;
    }
    initialized = true;
    TextNotificationUtil_instance = ((TextNotificationUtil*) [((TextNotificationUtil*) [TextNotificationUtil alloc]) init]);
}

@implementation TextNotificationUtil

- (void) initFields {
    self->TWO = [[SmallIntegerSingletonFactory getInstance] getAt:2];
    self->FALSE = [BooleanFactory getInstance]->FALSE;
    self->gameNotificationEventHandler = [GameNotificationEventHandler getInstance];
}

- (instancetype) init {
    self = [super init];
    [self initFields];
    return self;
}


+ (TextNotificationUtil*) getInstance {
        return (TextNotificationUtil_staticInit(), TextNotificationUtil_instance);
}


// throws Exception
- (void) fireError:(const char*)message {
        [[PrimaryPlayerQueueFactory getInstance] add:[ErrorSound getInstance]];
        [self fire:message];
}


// throws Exception
- (void) fireNew:(const char*)message {
        [[PrimaryPlayerQueueFactory getInstance] add:[SelectSound getInstance]];
        [self fire:message];
}


// throws Exception
- (void) fireSuccess:(const char*)message {
        [[PrimaryPlayerQueueFactory getInstance] add:[SelectSound getInstance]];
        [self fire:message];
}


// throws Exception
- (void) fire:(const char*)message {
        GameNotificationEvent* gameNotificationEvent = ((GameNotificationEvent*) [((GameNotificationEvent*) [GameNotificationEvent alloc]) init:self :message :self->TWO :[BasicColorFactory getInstance]->RED :self->FALSE]);
        [self->gameNotificationEventHandler fireEvent:gameNotificationEvent];
}

@end

