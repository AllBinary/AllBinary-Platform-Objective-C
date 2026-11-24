// Generated Code Do Not Modify
#include "org/allbinary/game/input/KeyFactoryInitializer.h"
#include "org/allbinary/logic/communication/log/LogUtil.h"
#include "org/allbinary/logic/math/SmallIntegerSingletonFactory.h"
#if __has_include("org/allbinary/logic/math/SmallIntegerSingletonFactory.h")
#include "org/allbinary/logic/math/SmallIntegerSingletonFactory.h"
#endif



void KeyFactoryInitializer_staticInit(void) {
    static bool initialized = false;
    if (initialized) {
        return;
    }
    initialized = true;
}

@implementation KeyFactoryInitializer

- (void) initFields {
    self->logUtil = [LogUtil getInstance];
}

- (instancetype) init {
    self = [super init];
    [self initFields];
    return self;
}


- (void) initMethod {
        [self->logUtil putF:self->commonStrings->START :self :self->commonStrings->INIT];
        [[SmallIntegerSingletonFactory getInstance] initWithRange:0x2D0 :6];
}

@end

