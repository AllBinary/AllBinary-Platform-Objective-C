// Generated Code Do Not Modify
#include "org/allbinary/logic/java/exception/ExceptionUtil.h"


static ExceptionUtil* ExceptionUtil_instance;

void ExceptionUtil_staticInit(void) {
    static bool initialized = false;
    if (initialized) {
        return;
    }
    initialized = true;
    ExceptionUtil_instance = [((ExceptionUtil*) [ExceptionUtil alloc]) init];
}

@implementation ExceptionUtil

- (void) initFields {
    self->PRETEND_EXCEPTION = java_exception_new("Exception", "Not Really An Exception");
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
        ByteArrayOutputStream* bs = [((ByteArrayOutputStream*) [ByteArrayOutputStream alloc]) init];
        java_print_exception(e);
        const char* output = [bs toString];
        return java_string_new(output);
}

@end

