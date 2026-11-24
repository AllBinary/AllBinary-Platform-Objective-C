// Generated Code Do Not Modify
#include "org/allbinary/media/audio/Sounds.h"
#include "javax/microedition/media/Player.h"
#include "org/allbinary/graphics/canvas/transition/progress/ProgressCanvas.h"
#include "org/allbinary/graphics/canvas/transition/progress/ProgressCanvasFactory.h"
#include "org/allbinary/logic/communication/log/LogUtil.h"
#include "org/allbinary/logic/math/SmallIntegerSingletonFactory.h"
#include "org/allbinary/logic/string/StringMaker.h"
#include "org/allbinary/string/CommonLabels.h"
#include "org/allbinary/string/CommonStrings.h"
#include "org/allbinary/media/audio/SoundStrings.h"
#include "org/allbinary/media/audio/SoundsFactoryInterface.h"
#include "org/allbinary/media/audio/Sound.h"
#if __has_include("org/allbinary/logic/string/StringMaker.h")
#include "org/allbinary/logic/string/StringMaker.h"
#endif
#if __has_include("org/allbinary/logic/string/StringMaker.h")
#include "org/allbinary/logic/string/StringMaker.h"
#endif



void Sounds_staticInit(void) {
    static bool initialized = false;
    if (initialized) {
        return;
    }
    initialized = true;
}

@implementation Sounds

- (void) initFields {
    self->logUtil = [LogUtil getInstance];
    self->commonStrings = [CommonStrings getInstance];
    self->soundStrings = [SoundStrings getInstance];
    
}


- (instancetype) init:(SoundsFactoryInterface*)soundsFactoryInterface {
    self = [super init];
    [self initFields];
        self->soundsFactoryInterface = soundsFactoryInterface;
    return self;
}


// throws Exception
- (void) initMethod {
        [self->logUtil putF:self->commonStrings->START :self :self->commonStrings->INIT];
        CommonLabels* commonLabels = [CommonLabels getInstance];
        ProgressCanvas* progressCanvas = [ProgressCanvasFactory getInstance];
        [((id<SoundsFactoryInterface>) self->soundsFactoryInterface) initMethod];
        Sound** soundInterfaceArray = [((id<SoundsFactoryInterface>) self->soundsFactoryInterface) getSoundInterfaceArray];
        SmallIntegerSingletonFactory* smallIntegerSingletonFactory = [SmallIntegerSingletonFactory getInstance];
        int32_t indexInteger = 0;
        const char* indexString = nullptr;
        StringMaker* stringBuffer = ((StringMaker*) [((StringMaker*) [StringMaker alloc]) init]);
        for (int32_t i = 0; i < java_array_length(soundInterfaceArray); i++) {
            Sound* soundInterface = soundInterfaceArray[i];
            if (soundInterface != nil) {
                indexInteger = [smallIntegerSingletonFactory getAt:i];
                indexString = [indexInteger toString];
                [stringBuffer delete:0 :[stringBuffer length]];
                [stringBuffer append:commonLabels->INDEX_LABEL];
                [stringBuffer append:indexString];
                [stringBuffer append:self->soundStrings->SOUND];
                [stringBuffer append:java_objc_class_name(soundInterface)];
                [self->logUtil putF:[stringBuffer toString] :self :self->commonStrings->INIT];
                [soundInterface initMethod];
                [progressCanvas addNormalPortion:100 :[[[((StringMaker*) [((StringMaker*) [StringMaker alloc]) init]) append:self->soundStrings->INIT_SOUND] append:indexString] toString]];
            }
        }
        [((id<SoundsFactoryInterface>) self->soundsFactoryInterface) setInitialized:true];
        [self->logUtil putF:self->commonStrings->END :self :self->commonStrings->INIT];
}


// throws Exception
- (void) stopAll {
        [self->logUtil putF:self->commonStrings->START :self :self->soundStrings->STOP_ALL];
        Sound** soundInterfaceArray = [((id<SoundsFactoryInterface>) self->soundsFactoryInterface) getSoundInterfaceArray];
        ProgressCanvas* progressCanvas = [ProgressCanvasFactory getInstance];
        Player* player = nullptr;
        for (int32_t index = 0; index < java_array_length(soundInterfaceArray); index++) {
            if (soundInterfaceArray[index] != nil) {
                player = [soundInterfaceArray[index] getPlayerP];
                if (player != nil) {
                    [((id<Player>) player) stop];
                    [progressCanvas addPortion:100 :self->soundStrings->STOPPING_SOUND :index];
                }
            }
        }
}


// throws Exception
- (void) closeAll {
        [self->logUtil putF:self->commonStrings->START :self :self->soundStrings->CLOSE_ALL];
        Sound** soundInterfaceArray = [((id<SoundsFactoryInterface>) self->soundsFactoryInterface) getSoundInterfaceArray];
        ProgressCanvas* progressCanvas = [ProgressCanvasFactory getInstance];
        Player* player = nullptr;
        for (int32_t index = 0; index < java_array_length(soundInterfaceArray); index++) {
            if (soundInterfaceArray[index] != nil) {
                player = [soundInterfaceArray[index] getPlayerP];
                if (player != nil) {
                    [((id<Player>) player) close];
                    [progressCanvas addPortion:100 :self->soundStrings->CLOSING_SOUND :index];
                }
            }
        }
}

@end

