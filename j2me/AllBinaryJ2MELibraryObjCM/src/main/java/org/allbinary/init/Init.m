// Generated Code Do Not Modify
#include "org/allbinary/init/Init.h"
#include "org/allbinary/string/CommonStrings.h"
#include "org/allbinary/init/InitInterface.h"



void Init_staticInit(void) {
    static bool initialized = false;
    if (initialized) {
        return;
    }
    initialized = true;
}

@implementation Init

- (void) initFields {
    self->commonStrings = [CommonStrings getInstance];
}

- (instancetype) init {
    self = [super init];
    [self initFields];
    return self;
}


// throws Exception
- (void) init_ {
}

@end

