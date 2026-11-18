// Generated Code Do Not Modify
#include "org/allbinary/logic/system/security/crypt/jcehelper/SecretComposite.h"
#include "org/allbinary/logic/java/byteutil/ByteUtil.h"
#include "org/allbinary/logic/system/security/crypt/jcehelper/BaseSecretComposite.h"



void SecretComposite_staticInit(void) {
    static bool initialized = false;
    if (initialized) {
        return;
    }
    initialized = true;
}

@implementation SecretComposite

- (void) initFields {
    self->byteUtil = [ByteUtil getInstance];
    
    
    
}


- (instancetype) init:(SecretKey*)secretKey :(Cipher*)cipher :(int8_t*)key {
    self = [super init];
    [self initFields];
        self->secretKey = secretKey;
        self->cipher = cipher;
        self->key = key;
    return self;
}


// throws Exception
- (int8_t*) encrypt:(int8_t*)array {
        array = [self mutilate:array];
        [self->cipher init_:(Cipher_staticInit(), Cipher_ENCRYPT_MODE) :self->secretKey];
        return [self->cipher doFinal:array];
}


// throws Exception
- (int8_t*) decrypt:(int8_t*)array {
        [self->cipher init_:(Cipher_staticInit(), Cipher_DECRYPT_MODE) :self->secretKey];
        return [self mutilate:[self->cipher doFinal:array]];
}


- (int8_t*) mutilate:(int8_t*)array {
        for (int32_t index = 0; index < java_array_length(self->key); index++) {
            int8_t value = self->key[index];
            if (((int32_t) value) < 8 && ((int32_t) value) > 0) {
                array = [self->byteUtil xorByte:array :((int32_t) value)];
            }
        }
        return array;
}

@end

