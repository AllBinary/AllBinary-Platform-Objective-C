// Generated Code Do Not Modify
#include "org/allbinary/game/input/J2MEGameInputMapping.h"
#include "org/allbinary/game/configuration/persistance/GamePersistanceStrings.h"
#include "org/allbinary/logic/system/security/licensing/AbeClientInformationInterface.h"
#include "org/allbinary/game/input/J2MEKeyFactory.h"
#include "org/allbinary/game/input/GameKeyFactory.h"
#include "org/allbinary/game/input/Input.h"
#if __has_include("org/allbinary/game/configuration/persistance/GamePersistanceStrings.h")
#include "org/allbinary/game/configuration/persistance/GamePersistanceStrings.h"
#endif
#if __has_include("org/allbinary/game/input/InputToGameKeyMapping.h")
#include "org/allbinary/game/input/InputToGameKeyMapping.h"
#endif
#if __has_include("org/allbinary/game/configuration/persistance/InputToGameKeyMapping.h")
#include "org/allbinary/game/configuration/persistance/InputToGameKeyMapping.h"
#endif
#if __has_include("org/allbinary/game/input/mapping/InputToGameKeyMapping.h")
#include "org/allbinary/game/input/mapping/InputToGameKeyMapping.h"
#endif
#if __has_include("org/allbinary/logic/system/security/licensing/InputToGameKeyMapping.h")
#include "org/allbinary/logic/system/security/licensing/InputToGameKeyMapping.h"
#endif



void J2MEGameInputMapping_staticInit(void) {
    static bool initialized = false;
    if (initialized) {
        return;
    }
    initialized = true;
}

@implementation J2MEGameInputMapping


- (instancetype) init {
        self = [super init:[GamePersistanceStrings getInstance]->SAVED_INPUT_CONFIGURATION_RECORD_ID];
    return self;
}


// throws Exception
- (void) initMethod:(AbeClientInformationInterface*)abeClientInformation {
        [self->logUtil putF:self->commonStrings->START :self :self->commonStrings->INIT];
        [[J2MEKeyFactory getInstance] initMethod];
        [super initMethod:abeClientInformation];
        if ([self getTotalMapped] == 0 || [self isDefaultNew]) {
            [[self getInputMapping] addMapping:[self getDefault]];
            [self save:abeClientInformation];
        }
}


- (bool) isDelete:(Input*)input {
        if (input == [GameKeyFactory getInstance]->GAME_D) {
            return true;
        } else {
            return false;
        }
}


- (bool) isSystemInput:(Input*)input {
        return false;
}

@end

