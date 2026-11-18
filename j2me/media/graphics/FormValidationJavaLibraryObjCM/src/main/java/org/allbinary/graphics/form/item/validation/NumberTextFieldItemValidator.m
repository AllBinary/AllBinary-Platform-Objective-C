// Generated Code Do Not Modify
#include "org/allbinary/graphics/form/item/validation/NumberTextFieldItemValidator.h"
#include "org/allbinary/graphics/form/item/ABTextFieldItem.h"
#include "org/allbinary/logic/java/bool/BooleanFactory.h"
#include "org/allbinary/logic/math/SmallIntegerSingletonFactory.h"
#include "org/allbinary/logic/string/StringMaker.h"
#include "org/allbinary/util/BasicArrayList.h"
#include "org/allbinary/util/BasicArrayListD.h"



void NumberTextFieldItemValidator_staticInit(void) {
    static bool initialized = false;
    if (initialized) {
        return;
    }
    initialized = true;
}

@implementation NumberTextFieldItemValidator

- (void) initFields {
    
    
    
    
}


- (instancetype) init:(ABTextFieldItem*)textFieldItem :(int32_t)maxChars :(int32_t)min :(int32_t)max {
    self = [super init];
    [self initFields];
        self->textFieldItem = textFieldItem;
        self->min = min;
        self->max = max;
        self->maxChars = maxChars;
    return self;
}


- (bool) isNumberValid:(int32_t)value {
        return [BooleanFactory getInstance]->TRUE;
}


- (BasicArrayList*) toNumberVector:(int32_t)value {
        return [((BasicArrayListD*) [BasicArrayListD alloc]) init];
}


- (bool) isValid {
        bool result = [BooleanFactory getInstance]->TRUE;
        const char* string = [self->textFieldItem getString];
        int32_t textLength = ((int32_t) strlen(string));
        if (textLength > 0 && textLength < self->maxChars) {
            JAVA_TRY {
                ((int32_t) strtol([self->textFieldItem getString], nullptr, 10));
            } JAVA_CATCH(NumberFormatException, e) {
                result = [BooleanFactory getInstance]->FALSE;
            } JAVA_END_TRY;
        } else {
            if (textLength < 1) {
                result = [BooleanFactory getInstance]->FALSE;
            } else if (textLength > self->maxChars) {
                result = [BooleanFactory getInstance]->FALSE;
            }
        }
        return result;
}


- (BasicArrayList*) toList {
        BasicArrayList* list = [((BasicArrayListD*) [BasicArrayListD alloc]) init];
        const char* string = [self->textFieldItem getString];
        int32_t textLength = ((int32_t) strlen(string));
        const char* label = [self->textFieldItem getLabel];
        const char* name = java_substring(label, 0, ((int32_t) strlen(label)) - 2);
        SmallIntegerSingletonFactory* smallIntegerSingletonFactory = [SmallIntegerSingletonFactory getInstance];
        StringMaker* stringMaker = [((StringMaker*) [StringMaker alloc]) init];
        if (textLength > 0 && textLength < self->maxChars) {
            JAVA_TRY {
                int32_t number = [smallIntegerSingletonFactory createInstance:((int32_t) strtol([self->textFieldItem getString], nullptr, 10))];
                if (((int32_t) (number)) > self->min) {
                    [stringMaker delete:0 :[stringMaker length]];
                    [list add:[[[stringMaker append:name] append:" is to small"] toString]];
                } else if (((int32_t) (number)) > self->max) {
                    [stringMaker delete:0 :[stringMaker length]];
                    [list add:[[[stringMaker append:name] append:" is to large"] toString]];
                }
            } JAVA_CATCH(NumberFormatException, e) {
                [stringMaker delete:0 :[stringMaker length]];
                [list add:[[[stringMaker append:name] append:" is not a number"] toString]];
            } JAVA_END_TRY;
        } else {
            if (textLength < 1) {
                [stringMaker delete:0 :[stringMaker length]];
                [list add:[[[stringMaker append:name] append:" is to short"] toString]];
            } else if (textLength > self->maxChars) {
                [stringMaker delete:0 :[stringMaker length]];
                [list add:[[[stringMaker append:name] append:" is to long"] toString]];
            }
        }
        return list;
}

@end

