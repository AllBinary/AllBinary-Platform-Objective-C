// Generated Code Do Not Modify
#include "org/allbinary/graphics/form/item/validation/TextItemVisitor.h"
#include "org/allbinary/logic/java/bool/BooleanFactory.h"



void TextItemVisitor_staticInit(void) {
    static bool initialized = false;
    if (initialized) {
        return;
    }
    initialized = true;
}

@implementation TextItemVisitor


- (instancetype) init {
    self = [super init];
    return self;
}


- (id) visit:(id)anyType {
        const char* value = ((const char*) anyType);
        if (((int32_t) strlen(value)) < 2) {
            return [BooleanFactory getInstance]->TRUE;
        } else {
            return [BooleanFactory getInstance]->FALSE;
        }
}

@end

