// Generated Code Do Not Modify
#include "org/allbinary/logic/util/event/AllBinaryEventObject.h"
#include "org/allbinary/logic/NullUtil.h"
#if __has_include("org/allbinary/logic/NullUtil.h")
#include "org/allbinary/logic/NullUtil.h"
#endif


AllBinaryEventObject* AllBinaryEventObject_NULL_EVENT;

void AllBinaryEventObject_staticInit(void) {
    static bool initialized = false;
    if (initialized) {
        return;
    }
    initialized = true;
    AllBinaryEventObject_NULL_EVENT = ((AllBinaryEventObject*) [((AllBinaryEventObject*) [AllBinaryEventObject alloc]) init:[NullUtil getInstance]->NULL_OBJECT]);
}

@implementation AllBinaryEventObject

- (void) initFields {
    
}


- (instancetype) init:(id)anyType {
    self = [super init];
    [self initFields];
        self->source = anyType;
    return self;
}


- (id) getSource {
        return self->source;
}


- (void) setSource:(id)source {
        self->source = source;
}

@end

