// Generated Code Do Not Modify
#include "org/allbinary/logic/system/security/crypt/jcehelper/BasicCrypt.h"
#include "org/allbinary/TsUtil.h"
#include "org/allbinary/logic/NullUtil.h"
#include "org/allbinary/logic/communication/log/PreLogUtil.h"
#include "org/allbinary/logic/java/byteutil/ByteUtil.h"
#include "org/allbinary/string/CommonStrings.h"
#if __has_include("org/allbinary/logic/NullUtil.h")
#include "org/allbinary/logic/NullUtil.h"
#endif
#if __has_include("org/allbinary/TsUtil.h")
#include "org/allbinary/TsUtil.h"
#endif
#if __has_include("org/allbinary/logic/NullUtil.h")
#include "org/allbinary/logic/NullUtil.h"
#endif
#if __has_include("org/allbinary/logic/NullUtil.h")
#include "org/allbinary/logic/NullUtil.h"
#endif



void BasicCrypt_staticInit(void) {
    static bool initialized = false;
    if (initialized) {
        return;
    }
    initialized = true;
}

@implementation BasicCrypt

- (void) initFields {
    self->byteUtil = [ByteUtil getInstance];
    
}


- (instancetype) init:(const char*)keyAsString {
    self = [super init];
    [self initFields];
        int8_t* key = [NullUtil getInstance]->NULL_BYTE_ARRAY;
        JAVA_TRY {
            key = [[TsUtil getInstance] getByteArray:keyAsString];
        } JAVA_CATCH(Exception, e) {
            CommonStrings* commonStrings = [CommonStrings getInstance];
            [PreLogUtil putOE:commonStrings->EXCEPTION :self :"AbCrypt(alg,key)" :e];
        } JAVA_END_TRY;
        self->key = key;
    return self;
}


- (int8_t*) encrypt:(int8_t*)array {
        JAVA_TRY {
            return [self mutilate:array];
        } JAVA_CATCH(Exception, e) {
            [PreLogUtil putOE:"Encrypt Failed" :self :"encrypt" :e];
            return [NullUtil getInstance]->NULL_BYTE_ARRAY;
        } JAVA_END_TRY;
}


- (int8_t*) decrypt:(int8_t*)array {
        JAVA_TRY {
            return [self mutilate:array];
        } JAVA_CATCH(Exception, e) {
            [PreLogUtil putOE:"decrypt Failed" :self :"decrypt" :e];
            return [NullUtil getInstance]->NULL_BYTE_ARRAY;
        } JAVA_END_TRY;
}


- (int8_t*) mutilate:(int8_t*)array {
        int8_t value = 0;
        for (int32_t index = 0; index < java_array_length(self->key); index++) {
            value = self->key[index];
            array = [self->byteUtil xor:array :value];
        }
        return array;
}

@end

