// Generated Code Do Not Modify
#include "org/allbinary/graphics/form/item/validation/AllCommandsVisitor.h"
#include "org/allbinary/logic/java/bool/BooleanFactory.h"



void AllCommandsVisitor_staticInit(void) {
    static bool initialized = false;
    if (initialized) {
        return;
    }
    initialized = true;
}

@implementation AllCommandsVisitor


- (instancetype) init {
    self = [super init];
    return self;
}


- (id) visit:(id)anyType {
        return [BooleanFactory getInstance]->TRUE;
}

@end

