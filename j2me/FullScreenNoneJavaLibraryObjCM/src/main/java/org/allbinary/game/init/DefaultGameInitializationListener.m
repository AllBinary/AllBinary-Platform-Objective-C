// Generated Code Do Not Modify
#include "org/allbinary/game/init/DefaultGameInitializationListener.h"
#include "org/allbinary/game/configuration/event/GameInitializedEvent.h"
#include "org/allbinary/game/configuration/event/GameInitializedEventHandler.h"
#include "org/allbinary/game/resource/FeatureResourceInitializationUtil.h"
#include "org/allbinary/graphics/threed/SWTJOGLProcessor.h"
#include "org/allbinary/logic/communication/log/ForcedLogUtil.h"
#include "org/allbinary/logic/communication/log/LogUtil.h"
#include "org/allbinary/logic/util/event/AllBinaryEventObject.h"
#include "org/allbinary/logic/util/event/EventStrings.h"
#include "org/allbinary/string/CommonStrings.h"
#if __has_include("org/allbinary/logic/util/event/EventStrings.h")
#include "org/allbinary/logic/util/event/EventStrings.h"
#endif
#if __has_include("org/allbinary/game/resource/FeatureResourceInitializationUtil.h")
#include "org/allbinary/game/resource/FeatureResourceInitializationUtil.h"
#endif



void DefaultGameInitializationListener_staticInit(void) {
    static bool initialized = false;
    if (initialized) {
        return;
    }
    initialized = true;
}

@implementation DefaultGameInitializationListener

- (void) initFields {
    self->logUtil = [LogUtil getInstance];
    self->swtJOGLProcessor = [SWTJOGLProcessor getInstance];
    self->firstTime = true;
}


- (instancetype) init {
    self = [super init];
    [self initFields];
        GameInitializedEventHandler* gameInitializedEventHandler = [GameInitializedEventHandler getInstance];
        [gameInitializedEventHandler removeAllListeners];
        [gameInitializedEventHandler addListenerInterface:((GameInitializedListenerInterface*) self)];
    return self;
}


- (void) onEvent:(AllBinaryEventObject*)eventObject {
        [ForcedLogUtil log:[EventStrings getInstance]->PERFORMANCE_MESSAGE :self];
}


- (void) onGameInitialized:(GameInitializedEvent*)gameInitializedEvent {
        const char* ON_GAME_INITIALIZED = "onGameInitialized";
        CommonStrings* commonStrings = [CommonStrings getInstance];
        JAVA_TRY {
            [self->logUtil putF:commonStrings->START :self :ON_GAME_INITIALIZED];
            while (![self->swtJOGLProcessor isHolderCreated]) {
                [self->logUtil putF:commonStrings->UPDATE :self :ON_GAME_INITIALIZED];
                java_sleep(20);
            }
            [[FeatureResourceInitializationUtil getInstance] initMethod:[gameInitializedEvent getLevel]];
            if (self->firstTime) {
                self->firstTime = false;
            } else {
                [self->swtJOGLProcessor onSurfaceChanged];
            }
        } JAVA_CATCH(Exception, e) {
            [self->logUtil put:commonStrings->EXCEPTION :self :ON_GAME_INITIALIZED :e];
        } JAVA_END_TRY;
}

@end

