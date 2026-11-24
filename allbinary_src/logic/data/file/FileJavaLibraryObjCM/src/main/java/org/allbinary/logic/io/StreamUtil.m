// Generated Code Do Not Modify
#include "org/allbinary/logic/io/StreamUtil.h"
#include "org/allbinary/logic/communication/log/LogUtil.h"
#include "org/allbinary/string/CommonStrings.h"


static StreamUtil* StreamUtil_instance;

void StreamUtil_staticInit(void) {
    static bool initialized = false;
    if (initialized) {
        return;
    }
    initialized = true;
    StreamUtil_instance = ((StreamUtil*) [((StreamUtil*) [StreamUtil alloc]) init]);
}

@implementation StreamUtil

- (void) initFields {
    self->logUtil = [LogUtil getInstance];
}


+ (StreamUtil*) getInstance {
        return (StreamUtil_staticInit(), StreamUtil_instance);
}


- (instancetype) init {
    self = [super init];
    [self initFields];
    return self;
}


// throws Exception
- (OutputStream*) get:(InputStream*)inputStream :(OutputStream*)outputStream :(int8_t*)buffer {
        int32_t len = 0;
        while (true) {
            len = [inputStream read:buffer :0 :java_array_length(buffer)];
            if (len != -1) {
            } else {
                break;
            }
            [outputStream write:buffer :0 :len];
        }
        return outputStream;
}


// throws Exception
- (int8_t*) getByteArray:(InputStream*)inputStream :(ByteArrayOutputStream*)outputStream2 :(int8_t*)byteArray {
        ByteArrayOutputStream* outputStream = outputStream2;
        JAVA_TRY {
            [self get:inputStream :outputStream :byteArray];
            return [outputStream toByteArray];
        } JAVA_CATCH(Exception, e) {
            java_throw(e);
        } JAVA_FINALLY {
            [self close:outputStream];
        } JAVA_END_TRY;
}


- (bool) close:(Closeable*)closeable {
        JAVA_TRY {
            if (closeable != nil) {
                [closeable close];
            }
            return true;
        } JAVA_CATCH(Exception, e) {
            CommonStrings* commonStrings = [CommonStrings getInstance];
            [self->logUtil put:commonStrings->EXCEPTION :self :commonStrings->CLOSE :e];
            return false;
        } JAVA_END_TRY;
}

@end

