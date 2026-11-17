// Generated Code Do Not Modify
#include "org/allbinary/logic/java/bool/BooleanFactory.h"


static BooleanFactory* BooleanFactory_instance;

void BooleanFactory_staticInit(void) {
    static bool initialized = false;
    if (initialized) {
        return;
    }
    initialized = true;
    BooleanFactory_instance = [((BooleanFactory*) [BooleanFactory alloc]) init];
}

@implementation BooleanFactory

- (void) initFields {
    self->TRUE = true;
    self->FALSE = false;
    self->TRUE_STRING = [self->TRUE toString];
    self->FALSE_STRING = [self->FALSE toString];
    self->YES_ = "yes";
    self->NO_ = "no";
}

- (instancetype) init {
    self = [super init];
    [self initFields];
    return self;
}


+ (BooleanFactory*) getInstance {
        return (BooleanFactory_staticInit(), BooleanFactory_instance);
}


- (const char*) toStringb:(bool)bool_ {
        if (bool_) {
            return self->TRUE_STRING;
        } else {
            return self->FALSE_STRING;
        }
}

@end

