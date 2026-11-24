// Generated Code Do Not Modify
#include "org/allbinary/logic/java/exception/ExceptionUtil.h"


static ExceptionUtil* ExceptionUtil_instance;
JavaException* ExceptionUtil_PRETEND_EXCEPTION;

void ExceptionUtil_staticInit(void) {
    static bool initialized = false;
    if (initialized) {
        return;
    }
    initialized = true;
    ExceptionUtil_instance = ((ExceptionUtil*) [((ExceptionUtil*) [ExceptionUtil alloc]) init]);
    ExceptionUtil_PRETEND_EXCEPTION = java_exception_new("Exception", "Not Really An Exception");
}

@implementation ExceptionUtil

- (void) initFields {
    self->NONE = "No Stack Trace";
}


+ (ExceptionUtil*) getInstance {
        return (ExceptionUtil_staticInit(), ExceptionUtil_instance);
}


- (instancetype) init {
    self = [super init];
    [self initFields];
    return self;
}


- (const char*) getStackTrace:(JavaException*)e {
        java_print_exception(e);
        return self->NONE;
}

@end

