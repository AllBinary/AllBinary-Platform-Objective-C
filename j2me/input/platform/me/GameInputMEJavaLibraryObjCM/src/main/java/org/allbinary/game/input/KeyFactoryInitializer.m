// Generated Code Do Not Modify
#include "org/allbinary/game/input/KeyFactoryInitializer.h"
#include "org/allbinary/logic/communication/log/LogUtil.h"



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
}

@end

