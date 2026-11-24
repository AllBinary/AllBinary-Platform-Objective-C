// Generated Code Do Not Modify
#include "org/allbinary/logic/string/StringUtil.h"


static StringUtil* StringUtil_instance;

void StringUtil_staticInit(void) {
    static bool initialized = false;
    if (initialized) {
        return;
    }
    initialized = true;
    StringUtil_instance = ((StringUtil*) [((StringUtil*) [StringUtil alloc]) init]);
}

@implementation StringUtil

- (void) initFields {
    self->INIT_STRING = java_string_new("");
    self->NULL_STRING = "null";
    self->EMPTY_STRING = "";
    self->ONE_EMPTY_STRING_ARRAY = ((const char**) java_array_from(sizeof(const char*), sizeof((const char*[]){ self->EMPTY_STRING }) / sizeof(const char*), (const char*[]){ self->EMPTY_STRING }));
    self->ONE_EMPTY_STRING_ARRAY_OF_ARRAYS = ((const char***) java_array_new2(sizeof(const char*), 0, 0));
    self->stringArray = ((const char**) java_array_new(sizeof(const char*), 0));
}


+ (StringUtil*) getInstance {
        return (StringUtil_staticInit(), StringUtil_instance);
}


- (instancetype) init {
    self = [super init];
    [self initFields];
    return self;
}


- (const char*) getNonNull:(const char*)string {
        return string;
}


- (const char**) getArrayInstance {
        return self->stringArray;
}


- (int32_t) count:(const char*)string :(uint16_t)aChar {
        int32_t count = 0;
        int32_t size = ((int32_t) strlen(string));
        for (int32_t index = 0; index < size; index++) {
            if (((uint16_t) string[index]) == aChar) {
                count++;
            }
        }
        return count;
}


- (const char*) toString:(id)anyType {
        if (anyType != nil) {
            return [anyType toString];
        } else {
            return self->NULL_STRING;
        }
}

@end

