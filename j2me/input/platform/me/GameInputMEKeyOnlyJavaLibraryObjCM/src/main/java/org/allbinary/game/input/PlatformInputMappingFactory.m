// Generated Code Do Not Modify
#include "org/allbinary/game/input/PlatformInputMappingFactory.h"
#include "org/allbinary/game/input/mapping/PersistentInputMapping.h"
#include "org/allbinary/logic/communication/log/LogUtil.h"
#include "org/allbinary/string/CommonStrings.h"
#include "org/allbinary/game/input/NormalJ2MEGameInputMapping.h"


static PlatformInputMappingFactory* PlatformInputMappingFactory_instance;

void PlatformInputMappingFactory_staticInit(void) {
    static bool initialized = false;
    if (initialized) {
        return;
    }
    initialized = true;
    PlatformInputMappingFactory_instance = [((PlatformInputMappingFactory*) [PlatformInputMappingFactory alloc]) init];
}

@implementation PlatformInputMappingFactory

- (void) initFields {
    self->logUtil = [LogUtil getInstance];
    self->inputToGameKeyMapping = [PersistentInputMapping getNullInstance];
}

- (instancetype) init {
    self = [super init];
    [self initFields];
    return self;
}


+ (PlatformInputMappingFactory*) getInstance {
        return (PlatformInputMappingFactory_staticInit(), PlatformInputMappingFactory_instance);
}


- (PersistentInputMapping*) getPersistentInputMappingInstance {
        JAVA_TRY {
            if (self->inputToGameKeyMapping == [PersistentInputMapping getNullInstance]) {
                self->inputToGameKeyMapping = [((NormalJ2MEGameInputMapping*) [NormalJ2MEGameInputMapping alloc]) init];
            }
        } JAVA_CATCH(Exception, e) {
            CommonStrings* commonStrings = [CommonStrings getInstance];
            [self->logUtil put:commonStrings->EXCEPTION :self :commonStrings->GET_INSTANCE :e];
        } JAVA_END_TRY;
        return self->inputToGameKeyMapping;
}

@end

