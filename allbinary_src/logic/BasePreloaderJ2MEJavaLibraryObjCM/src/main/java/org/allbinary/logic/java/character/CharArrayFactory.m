// Generated Code Do Not Modify
#include "org/allbinary/logic/java/character/CharArrayFactory.h"


static CharArrayFactory* CharArrayFactory_instance;

void CharArrayFactory_staticInit(void) {
    static bool initialized = false;
    if (initialized) {
        return;
    }
    initialized = true;
    CharArrayFactory_instance = [((CharArrayFactory*) [CharArrayFactory alloc]) init];
}

@implementation CharArrayFactory

- (void) initFields {
    self->zeroCharArray = ((uint16_t*) java_array_new(sizeof(uint16_t), 0));
}

- (instancetype) init {
    self = [super init];
    [self initFields];
    return self;
}


+ (CharArrayFactory*) getInstance {
        return (CharArrayFactory_staticInit(), CharArrayFactory_instance);
}


- (uint16_t*) getZeroCharArray {
        return self->zeroCharArray;
}

@end

