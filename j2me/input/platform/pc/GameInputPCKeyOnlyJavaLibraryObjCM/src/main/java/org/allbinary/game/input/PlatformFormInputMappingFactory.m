// Generated Code Do Not Modify
#include "org/allbinary/game/input/PlatformFormInputMappingFactory.h"
#include "org/allbinary/game/input/mapping/InputToGameKeyMapping.h"
#include "org/allbinary/logic/NullUtil.h"
#include "org/allbinary/logic/communication/log/LogUtil.h"
#include "org/allbinary/string/CommonStrings.h"
#include "org/allbinary/game/input/PCKeyFactory.h"
#include "org/allbinary/game/input/GameKeyFactory.h"
#if __has_include("org/allbinary/logic/NullUtil.h")
#include "org/allbinary/logic/NullUtil.h"
#endif
#if __has_include("org/allbinary/logic/NullUtil.h")
#include "org/allbinary/logic/NullUtil.h"
#endif


static id PlatformFormInputMappingFactory_instance;

void PlatformFormInputMappingFactory_staticInit(void) {
    static bool initialized = false;
    if (initialized) {
        return;
    }
    initialized = true;
    PlatformFormInputMappingFactory_instance = [NullUtil getInstance]->NULL_OBJECT;
}

@implementation PlatformFormInputMappingFactory

- (void) initFields {
    self->logUtil = [LogUtil getInstance];
    self->inputToGameKeyMapping = [InputToGameKeyMapping getNullInstance];
}

- (instancetype) init {
    self = [super init];
    [self initFields];
    return self;
}


+ (PlatformFormInputMappingFactory*) getInstance {
        if ((PlatformFormInputMappingFactory_staticInit(), PlatformFormInputMappingFactory_instance) == [NullUtil getInstance]->NULL_OBJECT) {
            PlatformFormInputMappingFactory_instance = ((PlatformFormInputMappingFactory*) [((PlatformFormInputMappingFactory*) [PlatformFormInputMappingFactory alloc]) init]);
        }
        return ((PlatformFormInputMappingFactory*) (PlatformFormInputMappingFactory_staticInit(), PlatformFormInputMappingFactory_instance));
}


- (InputToGameKeyMapping*) getOrCreate {
        JAVA_TRY {
            if (self->inputToGameKeyMapping == [InputToGameKeyMapping getNullInstance]) {
                PCKeyFactory* pcKeyFactory = [PCKeyFactory getInstance];
                InputToGameKeyMapping* inputToGameKeyMapping = ((InputToGameKeyMapping*) [((InputToGameKeyMapping*) [InputToGameKeyMapping alloc]) init]);
                GameKeyFactory* gameKeyFactory = [GameKeyFactory getInstance];
                [inputToGameKeyMapping add:gameKeyFactory->UP :pcKeyFactory->DPAD_UP];
                [inputToGameKeyMapping add:gameKeyFactory->DOWN :pcKeyFactory->DPAD_DOWN];
                [inputToGameKeyMapping add:gameKeyFactory->LEFT :pcKeyFactory->DPAD_LEFT];
                [inputToGameKeyMapping add:gameKeyFactory->RIGHT :pcKeyFactory->DPAD_RIGHT];
                [inputToGameKeyMapping add:gameKeyFactory->KEY_NUM1 :pcKeyFactory->ENTER];
                self->inputToGameKeyMapping = inputToGameKeyMapping;
            }
        } JAVA_CATCH(Exception, e) {
            CommonStrings* commonStrings = [CommonStrings getInstance];
            [self->logUtil put:commonStrings->EXCEPTION :self :commonStrings->GET_INSTANCE :e];
        } JAVA_END_TRY;
        return self->inputToGameKeyMapping;
}

@end

