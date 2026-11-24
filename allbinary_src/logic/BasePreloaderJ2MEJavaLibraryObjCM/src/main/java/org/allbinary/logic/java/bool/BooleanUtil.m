// Generated Code Do Not Modify
#include "org/allbinary/logic/java/bool/BooleanUtil.h"
#include "org/allbinary/TsUtil.h"
#include "org/allbinary/logic/string/StringMaker.h"
#include "org/allbinary/logic/string/StringValidationUtil.h"
#include "org/allbinary/logic/java/bool/BooleanFactory.h"


static BooleanUtil* BooleanUtil_instance;

void BooleanUtil_staticInit(void) {
    static bool initialized = false;
    if (initialized) {
        return;
    }
    initialized = true;
    BooleanUtil_instance = ((BooleanUtil*) [((BooleanUtil*) [BooleanUtil alloc]) init]);
}

@implementation BooleanUtil

- (void) initFields {
    self->tsUtil = [TsUtil getInstance];
}


+ (BooleanUtil*) getInstance {
        return (BooleanUtil_staticInit(), BooleanUtil_instance);
}


- (instancetype) init {
    self = [super init];
    [self initFields];
    return self;
}


// throws Exception
- (bool) getFromString:(const char*)booleanString {
        StringValidationUtil* stringValidationUtil = [StringValidationUtil getInstance];
        BooleanFactory* booleanFactory = [BooleanFactory getInstance];
        if ([stringValidationUtil isEmpty:booleanString]) {
            return false;
        }
        const char* booleanStringLowerCase = java_string_toLowerCase(booleanString);
        if ([self->tsUtil compareTo:booleanStringLowerCase :booleanFactory->TRUE_STRING] == 0) {
            return true;
        } else if ([self->tsUtil compareTo:booleanStringLowerCase :booleanFactory->FALSE_STRING] == 0) {
            return false;
        } else {
            java_throw(java_exception_new("Exception", "Invalid booleanString - Must be true or false"));
        }
}


// throws Exception
- (bool) isStringBoolean:(const char*)booleanString {
        BooleanFactory* booleanFactory = [BooleanFactory getInstance];
        const char* booleanStringLowerCase = java_string_toLowerCase(booleanString);
        if (strcmp(booleanStringLowerCase, booleanFactory->TRUE_STRING) == 0 || strcmp(booleanStringLowerCase, booleanFactory->FALSE_STRING) == 0) {
            return true;
        }
        return false;
}


- (const char*) toStringFromBooleanArray:(bool*)booleanArray {
        StringMaker* stringMaker = ((StringMaker*) [((StringMaker*) [StringMaker alloc]) init]);
        int32_t size = java_array_length(booleanArray);
        for (int32_t index = 0; index < size; index++) {
            [stringMaker appendboolean:booleanArray[index]];
        }
        return [stringMaker toString];
}

@end

