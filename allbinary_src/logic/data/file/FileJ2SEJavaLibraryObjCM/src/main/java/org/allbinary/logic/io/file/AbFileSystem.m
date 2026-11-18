// Generated Code Do Not Modify
#include "org/allbinary/logic/io/file/AbFileSystem.h"
#include "org/allbinary/logic/NullUtil.h"
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
        File* file = [((File*) [File alloc]) init:path];
        return [file isDirectory] || [file isFile];
}


- (bool) isDirectory:(const char*)path {
        return [[((File*) [File alloc]) init:path] isDirectory];
}


- (const char**) getFilesAsStringArrayForPath:(const char*)currentDirPath {
        File* file = [((File*) [File alloc]) init:currentDirPath];
        if ([file exists]) {
            return [file list];
        } else {
            return [[StringUtil getInstance] getArrayInstance];
        }
}


- (const char*) readAsString:(const char*)fileName {
        int8_t* bytes = ((int8_t*) java_array_new(sizeof(int8_t), 1000000));
        return [self readAsString:fileName :bytes];
}


- (const char*) readAsString:(const char*)fileName :(int8_t*)bytes {
        id closeable = [NullUtil getInstance]->NULL_OBJECT;
        JAVA_TRY {
            InputStream* idFile = [((FileInputStream*) [FileInputStream alloc]) init:fileName];
            closeable = idFile;
            int32_t size = [idFile read:bytes];
            if (size > 0) {
                return java_string_new(bytes, 0, size);
            }
        } JAVA_CATCH(Exception, e) {
            [self->logUtil put:self->commonStrings->EXCEPTION :self :"readAsString" :e];
        } JAVA_FINALLY {
            [self close:closeable];
        } JAVA_END_TRY;
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

