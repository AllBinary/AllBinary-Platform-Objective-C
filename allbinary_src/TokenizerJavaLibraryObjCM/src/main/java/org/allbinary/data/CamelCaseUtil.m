// Generated Code Do Not Modify
#include "org/allbinary/data/CamelCaseUtil.h"
#include "org/allbinary/logic/string/StringMaker.h"
#include "org/allbinary/logic/string/StringValidationUtil.h"
#include "org/allbinary/logic/string/tokens/Tokenizer.h"
#include "org/allbinary/string/CommonSeps.h"
#include "org/allbinary/util/BasicArrayList.h"
#include "org/allbinary/util/BasicArrayListD.h"


static CamelCaseUtil* CamelCaseUtil_instance;

void CamelCaseUtil_staticInit(void) {
    static bool initialized = false;
    if (initialized) {
        return;
    }
    initialized = true;
    CamelCaseUtil_instance = [((CamelCaseUtil*) [CamelCaseUtil alloc]) init];
}

@implementation CamelCaseUtil

- (void) initFields {
    self->commonSeps = [CommonSeps getInstance];
}

- (instancetype) init {
    self = [super init];
    [self initFields];
    return self;
}


+ (CamelCaseUtil*) getInstance {
        return (CamelCaseUtil_staticInit(), CamelCaseUtil_instance);
}


// throws Exception
- (const char*) getAsCamelCase:(const char*)string :(StringMaker*)stringBuilder {
        StringValidationUtil* stringValidationUtil = [StringValidationUtil getInstance];
        [stringBuilder delete:0 :[stringBuilder length]];
        BasicArrayList* list = [((BasicArrayListD*) [BasicArrayListD alloc]) init];
        Tokenizer* tokenizer = [((Tokenizer*) [Tokenizer alloc]) init:self->commonSeps->UNDERSCORE];
        [tokenizer getTokensFromString:string :list];
        int32_t size = [list size];
        const char* word = nullptr;
        for (int32_t i = 0; i < size; i++) {
            word = ((const char*) [list get:i]);
            word = ([stringValidationUtil isEmpty:word] ? word : [[[[((StringMaker*) [StringMaker alloc]) init] appendchar:((uint16_t) toupper(((uint16_t) word[0])))] append:java_string_toLowerCase(java_substring(word, 1, (int32_t) strlen(word)))] toString]);
            [stringBuilder append:word];
        }
        return [stringBuilder toString];
}

@end

