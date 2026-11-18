// Generated Code Do Not Modify
#include "org/allbinary/game/input/PlatformKeyFactory.h"
#include "org/allbinary/logic/NullUtil.h"
#include "org/allbinary/game/input/PCGameKey.h"
#include "org/allbinary/game/input/PCKeyFactory.h"
#include "org/allbinary/game/input/Input.h"


static id PlatformKeyFactory_instance;

void PlatformKeyFactory_staticInit(void) {
    static bool initialized = false;
    if (initialized) {
        return;
    }
    initialized = true;
    PlatformKeyFactory_instance = [NullUtil getInstance]->NULL_OBJECT;
}

@implementation PlatformKeyFactory

- (instancetype) init {
    self = [super init];
    return self;
}


+ (PlatformKeyFactory*) getInstance {
        if ((PlatformKeyFactory_staticInit(), PlatformKeyFactory_instance) == [NullUtil getInstance]->NULL_OBJECT) {
            PlatformKeyFactory_instance = [((PlatformKeyFactory*) [PlatformKeyFactory alloc]) init];
        }
        return ((PlatformKeyFactory*) (PlatformKeyFactory_staticInit(), PlatformKeyFactory_instance));
}


- (const char*) getString:(int32_t)keyCode {
        return [PCGameKey getString:keyCode];
}


- (bool) isSubmission:(Input*)input {
        return [[PCKeyFactory getInstance] isSubmission:input];
}


- (bool) isDelete:(Input*)input {
        return [[PCKeyFactory getInstance] isDelete:input];
}


- (bool) isBackSpace:(Input*)input {
        return [[PCKeyFactory getInstance] isBackSpace:input];
}


- (bool) isUp:(Input*)input {
        return [[PCKeyFactory getInstance] isUp:input];
}


- (bool) isDown:(Input*)input {
        return [[PCKeyFactory getInstance] isDown:input];
}


- (bool) isEnter:(Input*)input {
        return [[PCKeyFactory getInstance] isEnter:input];
}


- (bool) isLeft:(Input*)input {
        return [[PCKeyFactory getInstance] isLeft:input];
}


- (bool) isRight:(Input*)input {
        return [[PCKeyFactory getInstance] isRight:input];
}

@end

