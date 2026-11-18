// Generated Code Do Not Modify
#include "org/allbinary/media/audio/AllBinaryMediaManager.h"
#include "javax/microedition/media/Manager.h"
#include "javax/microedition/media/MediaException.h"
#include "javax/microedition/media/Player.h"
#include "org/allbinary/MIDPUtil.h"
#include "org/allbinary/TsUtil.h"
#include "org/allbinary/audio/AudioContentTypeDataFactory.h"
#include "org/allbinary/data/resource/ResourceUtil.h"
#include "org/allbinary/game/configuration/feature/Features.h"
#include "org/allbinary/game/configuration/feature/GameFeatureFactory.h"
#include "org/allbinary/graphics/canvas/transition/progress/ProgressCanvasFactory.h"
#include "org/allbinary/logic/communication/log/LogUtil.h"
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
#if __has_include("javax/microedition/media/ProgressCanvas.h")
#include "javax/microedition/media/ProgressCanvas.h"
#endif
#if __has_include("javax/microedition/media/ProgressCanvas.h")
#include "javax/microedition/media/ProgressCanvas.h"
#endif
#if __has_include("org/allbinary/ProgressCanvas.h")
#include "org/allbinary/ProgressCanvas.h"
#endif
#if __has_include("org/allbinary/ProgressCanvas.h")
#include "org/allbinary/ProgressCanvas.h"
#endif
#if __has_include("org/allbinary/audio/ProgressCanvas.h")
#include "org/allbinary/audio/ProgressCanvas.h"
#endif
#if __has_include("org/allbinary/data/resource/ProgressCanvas.h")
#include "org/allbinary/data/resource/ProgressCanvas.h"
#endif
#if __has_include("org/allbinary/game/configuration/feature/ProgressCanvas.h")
#include "org/allbinary/game/configuration/feature/ProgressCanvas.h"
#endif
#if __has_include("org/allbinary/game/configuration/feature/ProgressCanvas.h")
#include "org/allbinary/game/configuration/feature/ProgressCanvas.h"
#endif
#if __has_include("org/allbinary/graphics/canvas/transition/progress/ProgressCanvas.h")
#include "org/allbinary/graphics/canvas/transition/progress/ProgressCanvas.h"
#endif
#if __has_include("org/allbinary/logic/communication/log/ProgressCanvas.h")
#include "org/allbinary/logic/communication/log/ProgressCanvas.h"
#endif
#if __has_include("org/allbinary/string/ProgressCanvas.h")
#include "org/allbinary/string/ProgressCanvas.h"
#endif


static const char* AllBinaryMediaManager_THIS = "AllBinaryMediaManagerNoMIPD2";

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
+ (void) init_:(SoundsFactoryInterface*)soundsFactoryInterface {
        LogUtil* logUtil = [LogUtil getInstance];
        CommonStrings* commonString = [CommonStrings getInstance];
        [logUtil putF:commonString->START :AllBinaryMediaManager_THIS :commonString->INIT];
        [[ProgressCanvasFactory getInstance] addNormalPortion:50 :"Media Manager"];
        [[((Sounds*) [Sounds alloc]) init:soundsFactoryInterface] init_];
}


// throws Exception
+ (void) shutdown:(SoundsFactoryInterface*)soundsFactoryInterface {
        [[((Sounds*) [Sounds alloc]) init:soundsFactoryInterface] stopAll];
        [[((Sounds*) [Sounds alloc]) init:soundsFactoryInterface] closeAll];
        [[TsUtil getInstance] gc];
}


// throws Exception
+ (Player*) createPlayer:(const char*)resource {
        if ([[Features getInstance] isFeature:[GameFeatureFactory getInstance]->SOUND]) {
            if ([[TsUtil getInstance] compareTo:resource :(Manager_staticInit(), Manager_TONE_DEVICE_LOCATOR)] == 0) {
                return [Manager createPlayer:resource];
            } else {
                InputStream* inputStream = [[ResourceUtil getInstance] getResourceAsStream:resource];
                return [[MIDPUtil getInstance] createPlayerFromInputStream:inputStream :[[AudioContentTypeDataFactory getInstance]->MIME_AUDIO_WAV getName]];
            }
        } else {
            return (NoPlayer_staticInit(), NoPlayer_NO_PLAYER);
        }
}


// throws MediaException
// synchronized
+ (void) playTone:(int32_t)frequency :(int32_t)time :(int32_t)volume {
        if ([[Features getInstance] isFeature:[GameFeatureFactory getInstance]->SOUND]) {
            [Manager playTone:frequency :time :volume];
        }
}

@end

