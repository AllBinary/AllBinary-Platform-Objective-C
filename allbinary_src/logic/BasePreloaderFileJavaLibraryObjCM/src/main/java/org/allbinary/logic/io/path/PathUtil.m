// Generated Code Do Not Modify
#include "org/allbinary/logic/io/path/PathUtil.h"
#include "org/allbinary/logic/io/file/FilePathData.h"
#include "org/allbinary/logic/string/StringUtil.h"
#include "org/allbinary/logic/string/StringValidationUtil.h"
#include "org/allbinary/logic/io/path/AbPathData.h"
#include "org/allbinary/logic/io/path/AbFilePath.h"
#include "org/allbinary/logic/io/path/AbPath.h"


static PathUtil* PathUtil_instance;

void PathUtil_staticInit(void) {
    static bool initialized = false;
    if (initialized) {
        return;
    }
    initialized = true;
    PathUtil_instance = [((PathUtil*) [PathUtil alloc]) init];
}

@implementation PathUtil

- (void) initFields {
    self->abPathData = [AbPathData getInstance];
    self->filePathData = [FilePathData getInstance];
}


+ (PathUtil*) getInstance {
        return (PathUtil_staticInit(), PathUtil_instance);
}


- (instancetype) init {
    self = [super init];
    [self initFields];
    return self;
}


- (const char*) getExtensionWithAbFilePath:(AbFilePath*)abFilePath {
        return [self->abPathData getExtension:[abFilePath toString]];
}


- (const char*) getExtensionWithAbPath:(AbPath*)abPath {
        return [self->abPathData getExtension:[abPath toString]];
}


// throws Exception
- (const char*) getWithoutExtensionWithAbFilePath:(AbFilePath*)abFilePath {
        return [self getWithoutExtension:[abFilePath toString]];
}


// throws Exception
- (const char*) getWithoutExtensionWithAbPath:(AbPath*)abPath {
        return [self getWithoutExtension:[abPath toString]];
}


// throws Exception
- (const char*) getWithoutExtension:(const char*)filePath {
        int32_t indexOfFileExtensionDelmiter = [self->abPathData getExtensionIndex:filePath];
        const char* pathWithoutExtension = filePath;
        if (indexOfFileExtensionDelmiter >= 0) {
            pathWithoutExtension = java_substring(filePath, 0, indexOfFileExtensionDelmiter);
        }
        return pathWithoutExtension;
}


- (bool) isValid:(const char*)path {
        if ([self isValidStart:path]) {
            if ([self isValidEnd:path]) {
                return true;
            }
        }
        return false;
}


- (bool) isValidStart:(const char*)path {
        if (((uint16_t) path[0]) == self->abPathData->SEPARATORCHAR || ((uint16_t) path[0]) == u'.') {
            return true;
        } else {
            return false;
        }
}


- (bool) isValidEnd:(const char*)path {
        StringValidationUtil* stringValidationUtil = [StringValidationUtil getInstance];
        if ([stringValidationUtil isEmpty:path]) {
            return false;
        }
        if (((uint16_t) path[((int32_t) strlen(path)) - 1]) == self->abPathData->SEPARATORCHAR) {
            return true;
        } else {
            return false;
        }
}


- (const char*) adjustStart:(const char*)path {
        if (![self isValidStart:path]) {
            path = java_concat(self->abPathData->SEPARATOR, path);
        }
        return path;
}


- (const char*) adjustEnd:(const char*)path {
        if (![self isValidEnd:path]) {
            path = java_concat(path, self->abPathData->SEPARATOR);
        }
        return path;
}


- (const char*) adjust:(const char*)path {
        StringValidationUtil* stringValidationUtil = [StringValidationUtil getInstance];
        if ([stringValidationUtil isEmpty:path]) {
            return self->abPathData->SEPARATOR;
        }
        if (java_string_indexOf(path, "\\") >= 0) {
            path = java_string_replace(path, u'\\', self->abPathData->SEPARATORCHAR);
        }
        return path;
}


// throws Exception
- (AbPath*) removeNameFromPath:(const char*)path {
        int32_t endIndex = java_string_lastIndexOf(path, self->abPathData->SEPARATOR);
        if (endIndex < 0) {
            endIndex = java_string_lastIndexOf(path, self->filePathData->SEPARATORCHAR);
        }
        if (endIndex < 0) {
            return [AbPath createAbPath];
        }
        if (((int32_t) strlen(path)) == endIndex + 1) {
            return [self removeNameFromPath:java_substring(path, 0, endIndex - 1)];
        } else {
            const char* pathWithoutName = java_substring(path, 0, endIndex);
            return [((AbPath*) [AbPath alloc]) init:pathWithoutName :[StringUtil getInstance]->EMPTY_STRING];
        }
}

@end

