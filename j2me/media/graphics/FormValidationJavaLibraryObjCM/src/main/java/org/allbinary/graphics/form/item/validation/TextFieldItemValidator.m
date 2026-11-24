// Generated Code Do Not Modify
#include "org/allbinary/graphics/form/item/validation/TextFieldItemValidator.h"
#include "org/allbinary/graphics/form/item/ABTextFieldItem.h"
#include "org/allbinary/logic/java/bool/BooleanFactory.h"
#include "org/allbinary/logic/string/StringMaker.h"
#include "org/allbinary/util/BasicArrayList.h"
#include "org/allbinary/util/BasicArrayListD.h"
#if __has_include("org/allbinary/logic/string/StringMaker.h")
#include "org/allbinary/logic/string/StringMaker.h"
#endif
#if __has_include("org/allbinary/logic/string/StringMaker.h")
#include "org/allbinary/logic/string/StringMaker.h"
#endif
#if __has_include("org/allbinary/logic/string/StringMaker.h")
#include "org/allbinary/logic/string/StringMaker.h"
#endif
#if __has_include("org/allbinary/logic/string/StringMaker.h")
#include "org/allbinary/logic/string/StringMaker.h"
#endif



void TextFieldItemValidator_staticInit(void) {
    static bool initialized = false;
    if (initialized) {
        return;
    }
    initialized = true;
}

@implementation TextFieldItemValidator

- (void) initFields {
    
    
    
    
}


- (instancetype) init:(ABTextFieldItem*)textFieldItem :(int32_t)min :(int32_t)max :(bool)allowOnEmpty {
    self = [super init];
    [self initFields];
        self->textFieldItem = textFieldItem;
        self->min = min;
        self->max = max;
        self->allowOnEmpty = allowOnEmpty;
    return self;
}


- (bool) isValid {
        BooleanFactory* booleanFactory = [BooleanFactory getInstance];
        bool result = booleanFactory->TRUE;
        const char* string = [self->textFieldItem getString];
        int32_t textLength = ((int32_t) strlen(string));
        if ((textLength == 0 && self->allowOnEmpty) || textLength > self->min && textLength < self->max) {
        } else {
            if (textLength < self->min) {
                result = booleanFactory->FALSE;
            } else if (textLength > self->max) {
                result = booleanFactory->FALSE;
            }
        }
        return result;
}


- (BasicArrayList*) toList {
        BasicArrayList* list = ((BasicArrayListD*) [((BasicArrayListD*) [BasicArrayListD alloc]) init]);
        const char* string = [self->textFieldItem getString];
        int32_t textLength = ((int32_t) strlen(string));
        if (textLength > self->min && textLength < self->max) {
        } else {
            const char* label = [self->textFieldItem getLabel];
            const char* name = java_substring(label, 0, ((int32_t) strlen(label)) - 2);
            if (textLength < self->min) {
                [list add:[[[((StringMaker*) [((StringMaker*) [StringMaker alloc]) init]) append:name] append:" is to short"] toString]];
            } else if (textLength > self->max) {
                [list add:[[[((StringMaker*) [((StringMaker*) [StringMaker alloc]) init]) append:name] append:" is to long"] toString]];
            }
        }
        return list;
}

@end

