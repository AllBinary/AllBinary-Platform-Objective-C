// Generated Code Do Not Modify
#include "org/allbinary/game/displayable/canvas/NullGameCanvas.h"
#include "javax/microedition/lcdui/CommandListener.h"
#include "javax/microedition/lcdui/Graphics.h"
#include "javax/microedition/lcdui/NullCommandListener.h"
#include "org/allbinary/game/init/BasicBuildGameInitializerFactory.h"
#include "org/allbinary/game/layer/AllBinaryGameLayerManager.h"
#include "org/allbinary/game/score/NoHighScoresFactory.h"
#include "org/allbinary/logic/NullUtil.h"
#include "org/allbinary/logic/communication/log/LogUtil.h"
#include "org/allbinary/string/CommonStrings.h"
#include "org/allbinary/game/displayable/canvas/AllBinaryGameCanvas.h"
#if __has_include("org/allbinary/logic/communication/log/LogUtil.h")
#include "org/allbinary/logic/communication/log/LogUtil.h"
#endif
#if __has_include("org/allbinary/string/CommonStrings.h")
#include "org/allbinary/string/CommonStrings.h"
#endif
#if __has_include("org/allbinary/string/CommonStrings.h")
#include "org/allbinary/string/CommonStrings.h"
#endif
#if __has_include("org/allbinary/logic/NullUtil.h")
#include "org/allbinary/logic/NullUtil.h"
#endif
#if __has_include("org/allbinary/logic/NullUtil.h")
#include "org/allbinary/logic/NullUtil.h"
#endif


static id NullGameCanvas_instance;
const char* NullGameCanvas_NO_GAME = "No Background Game";


void NullGameCanvas_staticInit(void) {
    static bool initialized = false;
    if (initialized) {
        return;
    }
    initialized = true;
    NullGameCanvas_instance = [NullUtil getInstance]->NULL_OBJECT;
}

@implementation NullGameCanvas

- (void) initFields {
    self->runningNull = true;
}


+ (NullGameCanvas*) createNull {
        JAVA_TRY {
            return ((NullGameCanvas*) [((NullGameCanvas*) [NullGameCanvas alloc]) init:[AllBinaryGameLayerManager getNullInstance]]);
        } JAVA_CATCH(Exception, e) {
            [[LogUtil getInstance] put:[CommonStrings getInstance]->EXCEPTION :"NullGameCanvas" :[CommonStrings getInstance]->GET_INSTANCE :e];
            java_throw(java_exception_new("RuntimeException", ""));
        } JAVA_END_TRY;
}


+ (NullGameCanvas*) getInstance {
        if ((NullGameCanvas_staticInit(), NullGameCanvas_instance) == [NullUtil getInstance]->NULL_OBJECT) {
            NullGameCanvas_instance = [NullGameCanvas createNull];
        }
        return ((NullGameCanvas*) (NullGameCanvas_staticInit(), NullGameCanvas_instance));
}


// throws Exception
+ (NullGameCanvas*) createCanvas:(AllBinaryGameLayerManager*)gameLayerManager {
        NullGameCanvas* nullGameCanvas = ((NullGameCanvas*) [((NullGameCanvas*) [NullGameCanvas alloc]) init:gameLayerManager]);
        [nullGameCanvas setInitialized:true];
        [nullGameCanvas setTitle:NullGameCanvas_NO_GAME];
        return nullGameCanvas;
}


- (instancetype) init:(AllBinaryGameLayerManager*)gameLayerManager {
        self = [super init:(NullCommandListener_staticInit(), NullCommandListener_NULL_COMMAND_LISTENER) :gameLayerManager :[NoHighScoresFactory getInstance] :(BasicBuildGameInitializerFactory_staticInit(), BasicBuildGameInitializerFactory_NULL_BASE_BUILD_GMAE_INITIALIZER_FACTORY) :false];
        [self initFields];
        [super setWait:1200];
    return self;
}


// synchronized
- (bool) isGameOver {
        return false;
}


- (void) setRunning:(bool)running {
        self->runningNull = running;
}


// synchronized
- (bool) isRunning {
        return self->runningNull;
}


// synchronized
- (void) pause {
        [self setPaused:true];
}


// synchronized
- (void) unPause {
        [self setPaused:false];
}


- (void) initCommands:(CommandListener*)cmdListener {
        [self removeAllCommands];
        [self setCommandListener:cmdListener];
}


// throws Exception
- (void) buildGameInit:(bool)isProgress {
}


- (void) draw:(Graphics*)graphics {
}


- (void) run {
        JAVA_TRY {
            [self->logUtil putF:self->commonStrings->START_RUNNABLE :self :self->commonStrings->RUN];
            [self->logUtil putF:self->commonStrings->END_RUNNABLE :self :self->commonStrings->RUN];
        } JAVA_CATCH(Exception, e) {
            [self->logUtil put:self->commonStrings->EXCEPTION :self :self->commonStrings->RUN :e];
        } JAVA_END_TRY;
}


- (int32_t) getType {
        return NullGameCanvas_TYPE;
}

@end

