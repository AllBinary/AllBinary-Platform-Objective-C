// Generated Code Do Not Modify
#include "org/allbinary/game/input/PlatformKeyFactory.h"
#include "org/allbinary/logic/NullUtil.h"
#include "org/allbinary/game/input/J2MEGameKey.h"
#include "org/allbinary/game/input/J2MEKeyFactory.h"
#include "org/allbinary/game/input/Input.h"
#if __has_include("org/allbinary/logic/NullUtil.h")
#include "org/allbinary/logic/NullUtil.h"
#endif
#if __has_include("org/allbinary/logic/NullUtil.h")
#include "org/allbinary/logic/NullUtil.h"
#endif


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
            PlatformKeyFactory_instance = ((PlatformKeyFactory*) [((PlatformKeyFactory*) [PlatformKeyFactory alloc]) init]);
        }
        return ((PlatformKeyFactory*) (PlatformKeyFactory_staticInit(), PlatformKeyFactory_instance));
}


- (const char*) getString:(int32_t)keyCode {
        return [J2MEGameKey getString:keyCode];
}


- (bool) isSubmission:(Input*)input {
        return [[J2MEKeyFactory getInstance] isSubmission:input];
}


- (bool) isDelete:(Input*)input {
        return [[J2MEKeyFactory getInstance] isDelete:input];
}


- (bool) isBackSpace:(Input*)input {
        return [[J2MEKeyFactory getInstance] isBackSpace:input];
}


- (bool) isLeft:(Input*)input {
        return [[J2MEKeyFactory getInstance] isLeft:input];
}


- (bool) isRight:(Input*)input {
        return [[J2MEKeyFactory getInstance] isRight:input];
}


- (bool) isUp:(Input*)input {
        return [[J2MEKeyFactory getInstance] isUp:input];
}


- (bool) isDown:(Input*)input {
        return [[J2MEKeyFactory getInstance] isDown:input];
}


- (bool) isEnter:(Input*)input {
        return [[J2MEKeyFactory getInstance] isEnter:input];
}

@end

