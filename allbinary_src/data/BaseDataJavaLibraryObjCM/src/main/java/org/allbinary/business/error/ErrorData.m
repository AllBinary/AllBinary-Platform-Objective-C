// Generated Code Do Not Modify
#include "org/allbinary/business/error/ErrorData.h"


static ErrorData* ErrorData_instance;

void ErrorData_staticInit(void) {
    static bool initialized = false;
    if (initialized) {
        return;
    }
    initialized = true;
    ErrorData_instance = [((ErrorData*) [ErrorData alloc]) init];
}

@implementation ErrorData

- (void) initFields {
    self->NAME = "ERROR_NAME";
    self->TEXT = "ERROR_TEXT";
}


+ (ErrorData*) getInstance {
        return (ErrorData_staticInit(), ErrorData_instance);
}


- (instancetype) init {
    self = [super init];
    [self initFields];
    return self;
}

@end

