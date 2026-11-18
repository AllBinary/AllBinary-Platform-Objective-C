// Generated Code Do Not Modify
#include "org/allbinary/init/crypt/jcehelper/BasicCryptUtil.h"
#include "org/allbinary/TsUtil.h"
#include "org/allbinary/logic/communication/log/LogUtil.h"
#include "org/allbinary/init/crypt/jcehelper/CryptInterface.h"


static BasicCryptUtil* BasicCryptUtil_instance;

void BasicCryptUtil_staticInit(void) {
    static bool initialized = false;
    if (initialized) {
        return;
    }
    initialized = true;
    BasicCryptUtil_instance = [((BasicCryptUtil*) [BasicCryptUtil alloc]) init];
}

@implementation BasicCryptUtil

- (void) initFields {
    self->logUtil = [LogUtil getInstance];
    self->tsUtil = [TsUtil getInstance];
    self->XML_START = "<?xml";
}

- (instancetype) init {
    self = [super init];
    [self initFields];
    return self;
}


+ (BasicCryptUtil*) getInstance {
        return (BasicCryptUtil_staticInit(), BasicCryptUtil_instance);
}


// throws Exception
- (InputStream*) getDecryptedInputStream:(InputStream*)inputStream :(CryptInterface*)cryptInterface {
        ByteArrayOutputStream* buffer = [((ByteArrayOutputStream*) [ByteArrayOutputStream alloc]) init];
        int32_t ch = 0;
        while (true) {
            ch = [inputStream read];
            if (ch == -1) {
                break;
            }
            [buffer write:ch];
        }
        int8_t* decrypted = [cryptInterface decrypt:[buffer toByteArray]];
        const char* decryptedString = java_string_new(decrypted);
        int32_t index = java_string_indexOf(decryptedString, self->XML_START);
        if (index > 0) {
            decryptedString = java_substring(decryptedString, index, (int32_t) strlen(decryptedString));
        }
        return [((ByteArrayInputStream*) [ByteArrayInputStream alloc]) init:[self->tsUtil getByteArray:decryptedString]];
}

@end

