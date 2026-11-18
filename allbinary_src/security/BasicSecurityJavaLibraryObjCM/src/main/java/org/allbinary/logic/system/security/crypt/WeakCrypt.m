// Generated Code Do Not Modify
#include "org/allbinary/logic/system/security/crypt/WeakCrypt.h"
#include "org/allbinary/TsUtil.h"
#include "org/allbinary/logic/communication/log/PreLogUtil.h"
#include "org/allbinary/logic/string/StringUtil.h"
#include "org/allbinary/logic/system/security/crypt/jcehelper/AbCrypt.h"
#include "org/allbinary/logic/system/security/crypt/jcehelper/KeySpecFactory.h"
#include "org/allbinary/string/CommonStrings.h"
#include "org/allbinary/logic/system/security/crypt/DatabaseEncoder.h"


static const char** WeakCrypt_keys;
int32_t WeakCrypt_KEYMAX;

void WeakCrypt_staticInit(void) {
    static bool initialized = false;
    if (initialized) {
        return;
    }
    initialized = true;
    WeakCrypt_keys = ((const char**) java_array_from(sizeof(const char*), sizeof((const char*[]){ "qwres6qewrupoi1132790jfahleavi89398", "143uk32lngf8675gt1tv9214uvt924ut9u9", "12kvjlvlkv11445v12951v512v9m51295v1", "gampipoiupg4g43y5u238tu2485u20u0932", "a93u5uu02s2d2g3259u4395u409u093u9vu", "nlkxzj90je3mln9l8l89qjf0j3v50j23r9j", "2lk5fn5j23nr8f0233vq35n23jn58vhy843", "9q24334m598t092tkn2iv0982456n425j9g", "5m9uvmt9436243m5v34g09d43i52ki35g99", "n123lr1iubiu2br32lv32rbu23b32ub2rlb", "va0u0iovji2ojpvj2oij22poiu4ov2uv28v", "bkk80gn2v9uc902340ut209pcup0u09utc9", "mn32m32neee23c42fn32nf3mf2n3fn2m3fm", "zcxpozo3423voizupovsijevnv3n33o33n3", "v0345324thv93h03893893vh893v8h3vhzz", "v8na898v8wyef9ty39yv98yaw39yeeyf8ye", "45zd36d34jg09434hfshp8uj9sy8s7cyr78", "b098yy0908vdvh983b2lb327980a76s5e5e", "v90y9v9p8y3r98pagsdgsagyr6y3985yhfh", "vblkzhhzp8yvzi8u4t9856456zy3rv8a388", "da7696023rgf28dssfa98asd879hg32hewe", "afo7d6ffkjb3jr3i34gb24ytuvu3jr3uryf", "4gijvqo8vq984hv984hj5j3511h832hf833" }) / sizeof(const char*), (const char*[]){ "qwres6qewrupoi1132790jfahleavi89398", "143uk32lngf8675gt1tv9214uvt924ut9u9", "12kvjlvlkv11445v12951v512v9m51295v1", "gampipoiupg4g43y5u238tu2485u20u0932", "a93u5uu02s2d2g3259u4395u409u093u9vu", "nlkxzj90je3mln9l8l89qjf0j3v50j23r9j", "2lk5fn5j23nr8f0233vq35n23jn58vhy843", "9q24334m598t092tkn2iv0982456n425j9g", "5m9uvmt9436243m5v34g09d43i52ki35g99", "n123lr1iubiu2br32lv32rbu23b32ub2rlb", "va0u0iovji2ojpvj2oij22poiu4ov2uv28v", "bkk80gn2v9uc902340ut209pcup0u09utc9", "mn32m32neee23c42fn32nf3mf2n3fn2m3fm", "zcxpozo3423voizupovsijevnv3n33o33n3", "v0345324thv93h03893893vh893v8h3vhzz", "v8na898v8wyef9ty39yv98yaw39yeeyf8ye", "45zd36d34jg09434hfshp8uj9sy8s7cyr78", "b098yy0908vdvh983b2lb327980a76s5e5e", "v90y9v9p8y3r98pagsdgsagyr6y3985yhfh", "vblkzhhzp8yvzi8u4t9856456zy3rv8a388", "da7696023rgf28dssfa98asd879hg32hewe", "afo7d6ffkjb3jr3i34gb24ytuvu3jr3uryf", "4gijvqo8vq984hv984hj5j3511h832hf833" }));
    WeakCrypt_KEYMAX = java_array_length((WeakCrypt_staticInit(), WeakCrypt_keys));
}

@implementation WeakCrypt

- (void) initFields {
    self->tsUtil = [TsUtil getInstance];
    self->abCrypt = [((AbCrypt*) [AbCrypt alloc]) init:[KeySpecFactory getInstance]->DES];
}


- (instancetype) init:(int32_t)key {
    self = [super init];
    [self initFields];
        JAVA_TRY {
            [self->abCrypt init_:(WeakCrypt_staticInit(), WeakCrypt_keys)[key]];
        } JAVA_CATCH(Exception, e) {
            CommonStrings* commonStrings = [CommonStrings getInstance];
            [PreLogUtil putOE:commonStrings->EXCEPTION :self :"SuperCrypt(key)" :e];
        } JAVA_END_TRY;
    return self;
}


- (const char*) encrypt:(const char*)value {
        JAVA_TRY {
            int8_t* crypted = [self->abCrypt encrypt:[self->tsUtil getByteArray:value]];
            return [DatabaseEncoder encode:crypted];
        } JAVA_CATCH(Exception, e) {
            [PreLogUtil putOE:"Encrypt Failed" :self :"encrypt" :e];
            return [StringUtil getInstance]->EMPTY_STRING;
        } JAVA_END_TRY;
}


- (const char*) decrypt:(const char*)value {
        JAVA_TRY {
            int8_t* decrypted = [self->abCrypt decrypt:[DatabaseEncoder decode:value]];
            return java_string_new(decrypted);
        } JAVA_CATCH(Exception, e) {
            [PreLogUtil putOE:"decrypt Failed" :self :"decrypt" :e];
            return [StringUtil getInstance]->EMPTY_STRING;
        } JAVA_END_TRY;
}

@end

