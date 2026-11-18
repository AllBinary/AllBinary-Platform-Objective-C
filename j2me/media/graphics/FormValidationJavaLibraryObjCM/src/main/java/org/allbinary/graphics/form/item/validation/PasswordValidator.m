// Generated Code Do Not Modify
#include "org/allbinary/graphics/form/item/validation/PasswordValidator.h"
#include "org/allbinary/graphics/form/item/ABTextFieldItem.h"
#include "org/allbinary/graphics/form/item/validation/TextFieldItemValidator.h"



void PasswordValidator_staticInit(void) {
    static bool initialized = false;
    if (initialized) {
        return;
    }
    initialized = true;
}

@implementation PasswordValidator


- (instancetype) init:(ABTextFieldItem*)textFieldItem :(int32_t)min :(int32_t)max :(bool)allowOnEmpty {
        self = [super init:textFieldItem :min :max :allowOnEmpty];
    return self;
}

@end

