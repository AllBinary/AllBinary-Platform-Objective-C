// Generated Code Do Not Modify
#include "org/allbinary/logic/system/security/crypt/DatabaseEncoder.h"
#include "org/allbinary/logic/NullUtil.h"
#include "org/allbinary/logic/communication/log/PreLogUtil.h"
#include "org/allbinary/logic/string/StringMaker.h"
#include "org/allbinary/logic/string/StringUtil.h"
#include "org/allbinary/logic/string/tokens/Tokenizer.h"
#include "org/allbinary/string/CommonSeps.h"
#include "org/allbinary/string/CommonStrings.h"
#include "org/allbinary/util/BasicArrayList.h"
#include "org/allbinary/util/BasicArrayListD.h"



void DatabaseEncoder_staticInit(void) {
    static bool initialized = false;
    if (initialized) {
        return;
    }
    initialized = true;
}

@implementation DatabaseEncoder


- (instancetype) init {
    self = [super init];
    return self;
}


+ (const char*) encode:(int8_t*)value {
        JAVA_TRY {
            int8_t* array = value;
            StringMaker* stringBuffer = [((StringMaker*) [StringMaker alloc]) init];
            for (int32_t index = 0; index < java_array_length(array); index++) {
                [stringBuffer append:[array[index] toString]];
                if (index < java_array_length(array) - 1) {
                    [stringBuffer append:[CommonSeps getInstance]->SPACE];
                }
            }
            return [stringBuffer toString];
        } JAVA_CATCH(Exception, e) {
            CommonStrings* commonStrings = [CommonStrings getInstance];
            [PreLogUtil putOE:commonStrings->EXCEPTION :"DatabaseEncoder" :"decode" :e];
            return [StringUtil getInstance]->EMPTY_STRING;
        } JAVA_END_TRY;
}


+ (int8_t*) decode:(const char*)value {
        JAVA_TRY {
            Tokenizer* tokenizer = [((Tokenizer*) [Tokenizer alloc]) init:[CommonSeps getInstance]->SPACE];
            BasicArrayList* vector = [tokenizer getTokensFromString:value :[((BasicArrayListD*) [BasicArrayListD alloc]) init]];
            int32_t size = [vector size];
            int8_t* decode = ((int8_t*) java_array_new(sizeof(int8_t), size));
            const char* byteOfData = nullptr;
            for (int32_t index = 0; index < size; index++) {
                byteOfData = ((const char*) vector->objectArray[index]);
                decode[index] = [Byte parseByte:byteOfData];
            }
            return decode;
        } JAVA_CATCH(Exception, e) {
            CommonStrings* commonStrings = [CommonStrings getInstance];
            [PreLogUtil putSE:commonStrings->EXCEPTION :"DatabaseEncoder" :"decode" :e];
            return [NullUtil getInstance]->NULL_BYTE_ARRAY;
        } JAVA_END_TRY;
}

@end

