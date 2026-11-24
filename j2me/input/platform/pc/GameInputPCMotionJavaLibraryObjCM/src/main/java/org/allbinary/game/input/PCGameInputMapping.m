// Generated Code Do Not Modify
#include "org/allbinary/game/input/PCGameInputMapping.h"
#include "org/allbinary/game/configuration/persistance/GamePersistanceStrings.h"
#include "org/allbinary/input/motion/button/BasicTouchInputFactory.h"
#include "org/allbinary/input/motion/gesture/TouchMotionGestureFactory.h"
#include "org/allbinary/input/motion/gesture/TrackballMotionGestureFactory.h"
#include "org/allbinary/logic/system/security/licensing/AbeClientInformationInterface.h"
#include "org/allbinary/game/input/PCKeyFactory.h"
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
#if __has_include("org/allbinary/input/motion/button/InputToGameKeyMapping.h")
#include "org/allbinary/input/motion/button/InputToGameKeyMapping.h"
#endif
#if __has_include("org/allbinary/input/motion/gesture/InputToGameKeyMapping.h")
#include "org/allbinary/input/motion/gesture/InputToGameKeyMapping.h"
#endif
#if __has_include("org/allbinary/input/motion/gesture/InputToGameKeyMapping.h")
#include "org/allbinary/input/motion/gesture/InputToGameKeyMapping.h"
#endif
#if __has_include("org/allbinary/logic/system/security/licensing/InputToGameKeyMapping.h")
#include "org/allbinary/logic/system/security/licensing/InputToGameKeyMapping.h"
#endif



void PCGameInputMapping_staticInit(void) {
    static bool initialized = false;
    if (initialized) {
        return;
    }
    initialized = true;
}

@implementation PCGameInputMapping


- (instancetype) init {
        self = [super init:[GamePersistanceStrings getInstance]->SAVED_INPUT_CONFIGURATION_RECORD_ID];
    return self;
}


// throws Exception
- (void) initMethod:(AbeClientInformationInterface*)abeClientInformation {
        [self->logUtil putF:self->commonStrings->START :self :self->commonStrings->INIT];
        [PCKeyFactory getInstance];
        [TouchMotionGestureFactory getInstance];
        [TrackballMotionGestureFactory getInstance];
        [BasicTouchInputFactory getInstance];
        [super initMethod:abeClientInformation];
        if ([self getTotalMapped] == 0 || [self isDefaultNew]) {
            [[self getInputMapping] addMapping:[self getDefault]];
            [self save:abeClientInformation];
        }
}


- (bool) isDelete:(Input*)input {
        if (input == [PCKeyFactory getInstance]->DEL) {
            return true;
        } else {
            return false;
        }
}


- (bool) isSystemInput:(Input*)input {
        return false;
}

@end

