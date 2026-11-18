// Generated Code Do Not Modify
#include "org/allbinary/resources/KeyValueFactory.h"
#include "org/allbinary/logic/StdUtil.h"
#include "org/allbinary/util/ABHashtable.h"


static KeyValueFactory* KeyValueFactory_instance;

void KeyValueFactory_staticInit(void) {
    static bool initialized = false;
    if (initialized) {
        return;
    }
    initialized = true;
    KeyValueFactory_instance = [((KeyValueFactory*) [KeyValueFactory alloc]) init];
}

@implementation KeyValueFactory

- (void) initFields {
    self->MAP = [[StdUtil getInstance] createHashtable];
}

- (instancetype) init {
    self = [super init];
    [self initFields];
    return self;
}


+ (KeyValueFactory*) getInstance {
        return (KeyValueFactory_staticInit(), KeyValueFactory_instance);
}


- (const char*) get:(const char*)key {
        if (![self->MAP containsKey:JAVA_BOX(((id) key))]) {
            return key;
        }
        return ((const char*) [self->MAP get:JAVA_BOX(((id) key))]);
}

@end

