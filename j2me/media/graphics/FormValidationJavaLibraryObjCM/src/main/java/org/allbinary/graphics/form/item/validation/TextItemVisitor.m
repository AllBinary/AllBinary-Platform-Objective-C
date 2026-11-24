// Generated Code Do Not Modify
#include "org/allbinary/graphics/form/item/validation/TextItemVisitor.h"
#include "org/allbinary/logic/java/bool/BooleanFactory.h"
#if __has_include("org/allbinary/logic/java/bool/BooleanFactory.h")
#include "org/allbinary/logic/java/bool/BooleanFactory.h"
#endif
#if __has_include("org/allbinary/logic/java/bool/BooleanFactory.h")
#include "org/allbinary/logic/java/bool/BooleanFactory.h"
#endif



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
            return JAVA_BOX([BooleanFactory getInstance]->TRUE);
        } else {
            return JAVA_BOX([BooleanFactory getInstance]->FALSE);
        }
}

@end

