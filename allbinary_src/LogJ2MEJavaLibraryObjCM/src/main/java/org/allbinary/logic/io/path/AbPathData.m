// Generated Code Do Not Modify
#include "org/allbinary/logic/io/path/AbPathData.h"
#include "org/allbinary/string/CommonSeps.h"
#if __has_include("org/allbinary/string/CommonSeps.h")
#include "org/allbinary/string/CommonSeps.h"
#endif
#if __has_include("org/allbinary/string/CommonSeps.h")
#include "org/allbinary/string/CommonSeps.h"
#endif


static AbPathData* AbPathData_instance;

void AbPathData_staticInit(void) {
    static bool initialized = false;
    if (initialized) {
        return;
    }
    initialized = true;
    AbPathData_instance = ((AbPathData*) [((AbPathData*) [AbPathData alloc]) init]);
}

@implementation AbPathData

- (void) initFields {
    self->EXTENSION_SEP = [CommonSeps getInstance]->PERIOD;
    self->SEPARATORCHAR = u'/';
    self->SEPARATOR = [CommonSeps getInstance]->FORWARD_SLASH;
}


+ (AbPathData*) getInstance {
        return (AbPathData_staticInit(), AbPathData_instance);
}


- (instancetype) init {
    self = [super init];
    [self initFields];
    return self;
}

@end

