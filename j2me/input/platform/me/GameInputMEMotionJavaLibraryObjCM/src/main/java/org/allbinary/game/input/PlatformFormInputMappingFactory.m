// Generated Code Do Not Modify
#include "org/allbinary/game/input/PlatformFormInputMappingFactory.h"
#include "org/allbinary/game/input/mapping/InputToGameKeyMapping.h"
#include "org/allbinary/logic/NullUtil.h"
#include "org/allbinary/logic/communication/log/LogUtil.h"
#include "org/allbinary/string/CommonStrings.h"
#include "org/allbinary/game/input/GameKeyFactory.h"


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
            PlatformFormInputMappingFactory_instance = [((PlatformFormInputMappingFactory*) [PlatformFormInputMappingFactory alloc]) init];
        }
        return ((PlatformFormInputMappingFactory*) (PlatformFormInputMappingFactory_staticInit(), PlatformFormInputMappingFactory_instance));
}


- (InputToGameKeyMapping*) getOrCreate {
        JAVA_TRY {
            if (self->inputToGameKeyMapping == [InputToGameKeyMapping getNullInstance]) {
                InputToGameKeyMapping* inputToGameKeyMapping = [((InputToGameKeyMapping*) [InputToGameKeyMapping alloc]) init];
                GameKeyFactory* gameKeyFactory = [GameKeyFactory getInstance];
                [inputToGameKeyMapping add:gameKeyFactory->UP :gameKeyFactory->UP];
                [inputToGameKeyMapping add:gameKeyFactory->DOWN :gameKeyFactory->DOWN];
                [inputToGameKeyMapping add:gameKeyFactory->LEFT :gameKeyFactory->LEFT];
                [inputToGameKeyMapping add:gameKeyFactory->RIGHT :gameKeyFactory->RIGHT];
                [inputToGameKeyMapping add:gameKeyFactory->KEY_NUM1 :gameKeyFactory->GAME_A];
                self->inputToGameKeyMapping = inputToGameKeyMapping;
            }
        } JAVA_CATCH(Exception, e) {
            CommonStrings* commonStrings = [CommonStrings getInstance];
            [self->logUtil put:commonStrings->EXCEPTION :self :commonStrings->GET_INSTANCE :e];
        } JAVA_END_TRY;
        return self->inputToGameKeyMapping;
}

@end

