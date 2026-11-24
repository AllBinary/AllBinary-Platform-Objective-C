// Generated Code Do Not Modify
#include "org/allbinary/logic/system/security/crypt/jcehelper/AbCrypt.h"
#include "org/allbinary/TsUtil.h"
#include "org/allbinary/logic/NullUtil.h"
#include "org/allbinary/logic/communication/log/PreLogUtil.h"
#include "org/allbinary/string/CommonStrings.h"
#include "org/bouncycastle/jce/provider/BouncyCastleProvider.h"
#include "org/allbinary/logic/system/security/crypt/jcehelper/BaseSecretComposite.h"
#include "org/allbinary/logic/system/security/crypt/jcehelper/KeySpecFactory.h"
#include "org/allbinary/logic/system/security/crypt/jcehelper/SecretComposite.h"
#if __has_include("org/allbinary/logic/NullUtil.h")
#include "org/allbinary/logic/NullUtil.h"
#endif
#if __has_include("org/allbinary/logic/NullUtil.h")
#include "org/allbinary/logic/NullUtil.h"
#endif



void AbCrypt_staticInit(void) {
    static bool initialized = false;
    if (initialized) {
        return;
    }
    initialized = true;
}

@implementation AbCrypt

- (void) initFields {
    self->tsUtil = [TsUtil getInstance];
    self->secretComposite = (BaseSecretComposite_staticInit(), BaseSecretComposite_NULL_SECRET_COMPOSITE);
    
}


- (instancetype) init:(const char*)algorithm {
    self = [super init];
    [self initFields];
        self->algorithm = algorithm;
    return self;
}


- (void) initMethod:(const char*)keyAsString {
        CommonStrings* commonStrings = [CommonStrings getInstance];
        JAVA_TRY {
            JAVA_TRY {
                [Security addProvider:((BouncyCastleProvider*) [((BouncyCastleProvider*) [BouncyCastleProvider alloc]) init])];
            } JAVA_CATCH(Exception, e) {
                [PreLogUtil putOE:commonStrings->EXCEPTION :self :commonStrings->INIT :e];
            } JAVA_END_TRY;
            int8_t* key = [self->tsUtil getByteArray:keyAsString];
            KeySpec* keySpec = [[KeySpecFactory getInstance] getInstance:self->algorithm :key];
            SecretKeyFactory* keyFactory = [SecretKeyFactory getInstance:self->algorithm];
            SecretKey* secretKey = [keyFactory generateSecret:keySpec];
            Cipher* cipher = [Cipher getInstance:self->algorithm];
            self->secretComposite = ((SecretComposite*) [((SecretComposite*) [SecretComposite alloc]) init:secretKey :cipher :key]);
        } JAVA_CATCH(Exception, e) {
            [PreLogUtil putOE:"init Failed" :self :commonStrings->INIT :e];
        } JAVA_END_TRY;
}


- (int8_t*) encrypt:(int8_t*)array {
        JAVA_TRY {
            return [self->secretComposite encrypt:array];
        } JAVA_CATCH(Exception, e) {
            [PreLogUtil putOE:"Encrypt Failed" :self :"encrypt" :e];
            return [NullUtil getInstance]->NULL_BYTE_ARRAY;
        } JAVA_END_TRY;
}


- (int8_t*) decrypt:(int8_t*)array {
        JAVA_TRY {
            return [self->secretComposite decrypt:array];
        } JAVA_CATCH(Exception, e) {
            [PreLogUtil putOE:"decrypt Failed" :self :"decrypt" :e];
            return [NullUtil getInstance]->NULL_BYTE_ARRAY;
        } JAVA_END_TRY;
}

@end

