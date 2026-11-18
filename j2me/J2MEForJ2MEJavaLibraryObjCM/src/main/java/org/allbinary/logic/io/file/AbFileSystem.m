// Generated Code Do Not Modify
#include "org/allbinary/logic/io/file/AbFileSystem.h"
#include "org/allbinary/logic/communication/log/LogUtil.h"
#include "org/allbinary/logic/string/StringUtil.h"
#include "org/allbinary/string/CommonStrings.h"


static AbFileSystem* AbFileSystem_instance;

void AbFileSystem_staticInit(void) {
    static bool initialized = false;
    if (initialized) {
        return;
    }
    initialized = true;
    AbFileSystem_instance = [((AbFileSystem*) [AbFileSystem alloc]) init];
}

@implementation AbFileSystem

- (void) initFields {
    self->logUtil = [LogUtil getInstance];
    self->commonStrings = [CommonStrings getInstance];
}

- (instancetype) init {
    self = [super init];
    [self initFields];
    return self;
}


+ (AbFileSystem*) getInstance {
        return (AbFileSystem_staticInit(), AbFileSystem_instance);
}


- (bool) isDirectoryOrFile:(const char*)path {
        return false;
}


- (bool) isDirectory:(const char*)path {
        return false;
}


- (const char**) getFilesAsStringArrayForPath:(const char*)currentDirPath {
        return [[StringUtil getInstance] getArrayInstance];
}


- (const char*) readAsString:(const char*)fileName {
        int8_t* bytes = ((int8_t*) java_array_new(sizeof(int8_t), 1000000));
        return [self readAsString:fileName :bytes];
}


- (const char*) readAsString:(const char*)fileName :(int8_t*)bytes {
        return [StringUtil getInstance]->EMPTY_STRING;
}


- (bool) close:(id)closeable {
        JAVA_TRY {
            if (closeable != nil) {
                InputStream* inputStream = (((InputStream*) closeable));
                [inputStream close];
            }
            return true;
        } JAVA_CATCH(Exception, e) {
            [self->logUtil put:self->commonStrings->EXCEPTION :self :self->commonStrings->CLOSE :e];
            return false;
        } JAVA_END_TRY;
}

@end

