// Generated Code Do Not Modify
#include "org/allbinary/logic/communication/http/HttpData.h"
#include "org/allbinary/string/CommonSeps.h"


static HttpData* HttpData_instance;

void HttpData_staticInit(void) {
    static bool initialized = false;
    if (initialized) {
        return;
    }
    initialized = true;
    HttpData_instance = [((HttpData*) [HttpData alloc]) init];
}

@implementation HttpData

- (void) initFields {
    
    
    
    self->URL_LABEL = "Url: ";
}


+ (HttpData*) getInstance {
        return (HttpData_staticInit(), HttpData_instance);
}


- (instancetype) init {
    self = [super init];
    [self initFields];
        CommonSeps* commonSeps = [CommonSeps getInstance];
        self->EQUALS = commonSeps->EQUALS;
        self->PARAM_SEP = commonSeps->AMPERSAND;
        self->URL_PARAM_SEP = commonSeps->QUESTION;
    return self;
}

@end

