// Generated Code Do Not Modify
#include "org/allbinary/input/motion/button/BaseTouchInput.h"
#include "org/allbinary/string/CommonStrings.h"
#include "org/allbinary/util/BasicArrayList.h"
#include "org/allbinary/util/BasicArrayListUtil.h"



void BaseTouchInput_staticInit(void) {
    static bool initialized = false;
    if (initialized) {
        return;
    }
    initialized = true;
}

@implementation BaseTouchInput

- (void) initFields {
    self->commonStrings = [CommonStrings getInstance];
    self->basicArrayListUtil = [BasicArrayListUtil getInstance];
}


- (instancetype) init {
    self = [super init];
    [self initFields];
    return self;
}


- (BasicArrayList*) getList {
        return [self->basicArrayListUtil getImmutableInstance];
}


- (const char*) toString {
        return java_objc_class_name(self);
}

@end

