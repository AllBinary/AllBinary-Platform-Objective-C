// Generated Code Do Not Modify
#include "org/allbinary/logic/string/tokens/Tokenizer.h"
#include "org/allbinary/TsUtil.h"
#include "org/allbinary/logic/StdUtil.h"
#include "org/allbinary/logic/string/StringUtil.h"
#include "org/allbinary/util/ABHashtable.h"
#include "org/allbinary/util/BasicArrayList.h"
#include "org/allbinary/util/BasicArrayListD.h"
#if __has_include("org/allbinary/logic/string/StringUtil.h")
#include "org/allbinary/logic/string/StringUtil.h"
#endif
#if __has_include("org/allbinary/TsUtil.h")
#include "org/allbinary/TsUtil.h"
#endif
#if __has_include("org/allbinary/logic/string/StringUtil.h")
#include "org/allbinary/logic/string/StringUtil.h"
#endif
#if __has_include("org/allbinary/logic/StdUtil.h")
#include "org/allbinary/logic/StdUtil.h"
#endif
#if __has_include("org/allbinary/logic/string/StringUtil.h")
#include "org/allbinary/logic/string/StringUtil.h"
#endif



void Tokenizer_staticInit(void) {
    static bool initialized = false;
    if (initialized) {
        return;
    }
    initialized = true;
}

@implementation Tokenizer

- (void) initFields {
    
    self->endSep = [StringUtil getInstance]->EMPTY_STRING;
}


- (instancetype) init:(const char*)sep {
    self = [super init];
    [self initFields];
        if ([[TsUtil getInstance] compareTo:sep :[StringUtil getInstance]->EMPTY_STRING] == 0) {
            java_throw(java_exception_new("Exception", "Sep provided is not valid"));
        }
        self->sep = sep;
    return self;
}


- (void) setSep:(const char*)sep {
        self->sep = sep;
}


- (void) setEndSep:(const char*)endSep {
        self->endSep = endSep;
}


- (BasicArrayList*) getInsideSep:(const char*)string {
        BasicArrayList* tokenList = ((BasicArrayListD*) [((BasicArrayListD*) [BasicArrayListD alloc]) init]);
        int32_t index = 0;
        int32_t size = ((int32_t) strlen(string));
        while (index < size) {
            index = java_string_indexOf(string, self->sep, index);
            if (index != -1) {
                int32_t end = java_string_indexOf(string, self->endSep, index + ((int32_t) strlen(self->sep)));
                if (end != -1) {
                    [tokenList add:java_substring(string, index + ((int32_t) strlen(self->sep)), end - (((int32_t) strlen(self->endSep)) - 1))];
                    index = end + ((int32_t) strlen(self->endSep));
                } else {
                }
            } else {
                break;
            }
        }
        return tokenList;
}


- (BasicArrayList*) getTokensFromString:(const char*)string :(BasicArrayList*)tokenVector {
        int32_t index = 0;
        int32_t end = 0;
        while (index < ((int32_t) strlen(string))) {
            end = java_string_indexOf(string, self->sep, index);
            if (end != -1) {
                [tokenVector add:java_substring(string, index, end)];
                index = end + ((int32_t) strlen(self->sep));
            } else {
                [tokenVector add:java_substring(string, index, ((int32_t) strlen(string)))];
                break;
            }
        }
        return tokenVector;
}


- (ABHashtable*) getTokens:(BasicArrayList*)stringVector {
        ABHashtable* tokenHashtable = [[StdUtil getInstance] createHashtable];
        const char* string = [StringUtil getInstance]->EMPTY_STRING;
        int32_t end = 0;
        int32_t size = [stringVector size];
        for (int32_t index = 0; index < size; index++) {
            string = ((const char*) stringVector->objectArray[index]);
            end = java_string_indexOf(string, self->sep);
            if (end >= 0) {
                [tokenHashtable put:JAVA_BOX(java_substring(string, 0, end)) :JAVA_BOX(java_substring(string, end + 1, ((int32_t) strlen(string))))];
            }
        }
        return tokenHashtable;
}

@end

