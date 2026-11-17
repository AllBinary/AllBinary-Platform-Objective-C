// Generated Code Do Not Modify
#include "org/allbinary/logic/util/visitor/Visitor.h"
#include "org/allbinary/logic/NullUtil.h"
#include "org/allbinary/logic/util/visitor/VisitorInterface.h"


static Visitor* Visitor_instance;

void Visitor_staticInit(void) {
    static bool initialized = false;
    if (initialized) {
        return;
    }
    initialized = true;
    Visitor_instance = [((Visitor*) [Visitor alloc]) init];
}

@implementation Visitor

- (void) initFields {
    self->nullUtil = [NullUtil getInstance];
}

- (instancetype) init {
    self = [super init];
    [self initFields];
    return self;
}


- (id) visit:(id)anyType {
        return self->nullUtil->NULL_OBJECT;
}


+ (Visitor*) getInstance {
        return (Visitor_staticInit(), Visitor_instance);
}

@end

