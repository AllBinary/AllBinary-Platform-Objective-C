// Generated Code Do Not Modify
#include "org/allbinary/logic/system/security/crypt/jcehelper/KeySpecFactory.h"
#include "org/allbinary/TsUtil.h"
#include "org/allbinary/logic/communication/log/PreLogUtil.h"
#include "org/allbinary/string/CommonStrings.h"


static KeySpecFactory* KeySpecFactory_instance;

void KeySpecFactory_staticInit(void) {
    static bool initialized = false;
    if (initialized) {
        return;
    }
    initialized = true;
    KeySpecFactory_instance = [((KeySpecFactory*) [KeySpecFactory alloc]) init];
}

@implementation KeySpecFactory

- (void) initFields {
    self->DES = "DES";
    self->DESEDE = "DESede";
    self->BLOWFISH = "Blowfish";
}


+ (KeySpecFactory*) getInstance {
        return (KeySpecFactory_staticInit(), KeySpecFactory_instance);
}


- (instancetype) init {
    self = [super init];
    [self initFields];
    return self;
}


- (KeySpec*) getInstance:(const char*)algorithm :(int8_t*)keyData {
        JAVA_TRY {
            TsUtil* tsUtil = [TsUtil getInstance];
            if ([tsUtil compareTo:algorithm :self->DES] == 0) {
                return [((DESKeySpec*) [DESKeySpec alloc]) init:keyData];
            } else if ([tsUtil compareTo:algorithm :self->DESEDE] == 0) {
                return [((DESedeKeySpec*) [DESedeKeySpec alloc]) init:keyData];
            } else {
                java_throw(java_exception_new("RuntimeException", ""));
            }
        } JAVA_CATCH(Exception, e) {
            CommonStrings* commonStrings = [CommonStrings getInstance];
            [PreLogUtil putOE:commonStrings->EXCEPTION :self :commonStrings->GET_INSTANCE :e];
            java_throw(java_exception_new("RuntimeException", ""));
        } JAVA_END_TRY;
}

@end

