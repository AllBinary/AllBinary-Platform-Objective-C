// Generated Code Do Not Modify
#include "org/allbinary/media/audio/AllBinaryMediaManager.h"
#include "javax/microedition/media/Player.h"
#include "org/allbinary/TsUtil.h"
#include "org/allbinary/graphics/canvas/transition/progress/ProgressCanvasFactory.h"
#include "org/allbinary/logic/communication/log/LogUtil.h"
#include "org/allbinary/logic/string/StringUtil.h"
#include "org/allbinary/string/CommonStrings.h"
#include "org/allbinary/media/audio/Sounds.h"
#include "org/allbinary/media/audio/SoundsFactoryInterface.h"
#include "org/allbinary/media/audio/NoPlayer.h"
#if __has_include("org/allbinary/media/audio/ProgressCanvas.h")
#include "org/allbinary/media/audio/ProgressCanvas.h"
#endif
#if __has_include("javax/microedition/media/ProgressCanvas.h")
#include "javax/microedition/media/ProgressCanvas.h"
#endif
#if __has_include("org/allbinary/ProgressCanvas.h")
#include "org/allbinary/ProgressCanvas.h"
#endif
#if __has_include("org/allbinary/graphics/canvas/transition/progress/ProgressCanvas.h")
#include "org/allbinary/graphics/canvas/transition/progress/ProgressCanvas.h"
#endif
#if __has_include("org/allbinary/logic/communication/log/ProgressCanvas.h")
#include "org/allbinary/logic/communication/log/ProgressCanvas.h"
#endif
#if __has_include("org/allbinary/logic/string/ProgressCanvas.h")
#include "org/allbinary/logic/string/ProgressCanvas.h"
#endif
#if __has_include("org/allbinary/string/ProgressCanvas.h")
#include "org/allbinary/string/ProgressCanvas.h"
#endif
#if __has_include("org/allbinary/TsUtil.h")
#include "org/allbinary/TsUtil.h"
#endif
#if __has_include("org/allbinary/logic/string/StringUtil.h")
#include "org/allbinary/logic/string/StringUtil.h"
#endif
#if __has_include("org/allbinary/logic/string/StringUtil.h")
#include "org/allbinary/logic/string/StringUtil.h"
#endif


static const char* AllBinaryMediaManager_THIS = "AllBinaryMediaManagerNoMediaMIDP1";

void AllBinaryMediaManager_staticInit(void) {
    static bool initialized = false;
    if (initialized) {
        return;
    }
    initialized = true;
}

@implementation AllBinaryMediaManager


- (instancetype) init {
    self = [super init];
    return self;
}


+ (bool) isMuted {
        return false;
}


+ (void) setMuted:(bool)aMuted {
}


+ (bool) update {
        return true;
}


// throws Exception
+ (void) initMethod:(SoundsFactoryInterface*)soundsFactoryInterface {
        LogUtil* logUtil = [LogUtil getInstance];
        CommonStrings* commonString = [CommonStrings getInstance];
        [logUtil putF:commonString->START :AllBinaryMediaManager_THIS :commonString->INIT];
        [[ProgressCanvasFactory getInstance] addNormalPortion:50 :"Media Manager"];
        [((Sounds*) [((Sounds*) [Sounds alloc]) init:soundsFactoryInterface]) initMethod];
}


// throws Exception
+ (void) shutdown:(SoundsFactoryInterface*)soundsFactoryInterface {
        [((Sounds*) [((Sounds*) [Sounds alloc]) init:soundsFactoryInterface]) stopAll];
        [((Sounds*) [((Sounds*) [Sounds alloc]) init:soundsFactoryInterface]) closeAll];
        [[TsUtil getInstance] gc];
}


+ (Player*) createPlayerFromInputStream:(InputStream*)stream :(const char*)type {
        LogUtil* logUtil = [LogUtil getInstance];
        CommonStrings* commonString = [CommonStrings getInstance];
        [logUtil putF:commonString->START :AllBinaryMediaManager_THIS :"creatPlayer(InputStream)"];
        return ((Player*) (NoPlayer_staticInit(), NoPlayer_NO_PLAYER));
}


+ (Player*) createPlayer:(const char*)locator {
        LogUtil* logUtil = [LogUtil getInstance];
        CommonStrings* commonString = [CommonStrings getInstance];
        [logUtil putF:commonString->START :AllBinaryMediaManager_THIS :"creatPlayer(locator)"];
        return ((Player*) (NoPlayer_staticInit(), NoPlayer_NO_PLAYER));
}


// synchronized
+ (void) playTone:(int32_t)frequency :(int32_t)time :(int32_t)volume {
}


+ (const char**) getSupportedContentTypes:(const char*)protocol {
        return [[StringUtil getInstance] getArrayInstance];
}


+ (const char**) getSupportedProtocols:(const char*)content_type {
        return [[StringUtil getInstance] getArrayInstance];
}

@end

