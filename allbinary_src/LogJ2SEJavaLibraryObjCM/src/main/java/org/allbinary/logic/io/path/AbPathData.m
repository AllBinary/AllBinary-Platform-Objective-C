// Generated Code Do Not Modify
#include "org/allbinary/logic/io/path/AbPathData.h"
#include "org/allbinary/logic/io/file/FilePathData.h"
#include "org/allbinary/logic/string/StringUtil.h"
#include "org/allbinary/string/CommonSeps.h"
#if __has_include("org/allbinary/string/CommonSeps.h")
#include "org/allbinary/string/CommonSeps.h"
#endif
#if __has_include("org/allbinary/string/CommonSeps.h")
#include "org/allbinary/string/CommonSeps.h"
#endif
#if __has_include("org/allbinary/logic/string/StringUtil.h")
#include "org/allbinary/logic/string/StringUtil.h"
#endif
#if __has_include("org/allbinary/logic/string/StringUtil.h")
#include "org/allbinary/logic/string/StringUtil.h"
#endif
#if __has_include("org/allbinary/logic/io/file/FilePathData.h")
#include "org/allbinary/logic/io/file/FilePathData.h"
#endif
#if __has_include("org/allbinary/logic/io/file/FilePathData.h")
#include "org/allbinary/logic/io/file/FilePathData.h"
#endif
#if __has_include("org/allbinary/logic/string/StringUtil.h")
#include "org/allbinary/logic/string/StringUtil.h"
#endif


static AbPathData* AbPathData_instance;

void AbPathData_staticInit(void) {
    static bool initialized = false;
    if (initialized) {
        return;
    }
    initialized = true;
    AbPathData_instance = ((AbPathData*) [((AbPathData*) [AbPathData alloc]) init]);
}

@implementation AbPathData

- (void) initFields {
    self->EXTENSION_SEP = [CommonSeps getInstance]->PERIOD;
    self->SEPARATORCHAR = u'/';
    self->SEPARATOR = [CommonSeps getInstance]->FORWARD_SLASH;
}


+ (AbPathData*) getInstance {
        return (AbPathData_staticInit(), AbPathData_instance);
}


- (instancetype) init {
    self = [super init];
    [self initFields];
    return self;
}


- (int32_t) getExtensionIndex:(const char*)filePath {
        int32_t indexOfFileExtensionDelmiter = java_string_lastIndexOf(filePath, self->EXTENSION_SEP);
        int32_t indexOfLatDelimiter = java_string_lastIndexOf(filePath, self->SEPARATORCHAR);
        if (indexOfFileExtensionDelmiter < 0) {
            return -1;
        }
        if (indexOfFileExtensionDelmiter < indexOfLatDelimiter) {
            return -1;
        }
        return indexOfFileExtensionDelmiter;
}


- (const char*) getExtensionWithDot:(const char*)filePath {
        int32_t indexOfFileExtensionDelmiter = [self getExtensionIndex:filePath];
        const char* extension = [StringUtil getInstance]->EMPTY_STRING;
        if (indexOfFileExtensionDelmiter >= 0) {
            extension = java_substring(filePath, indexOfFileExtensionDelmiter, (int32_t) strlen(filePath));
        }
        return extension;
}


- (const char*) getExtension:(const char*)filePath {
        int32_t indexOfFileExtensionDelmiter = [self getExtensionIndex:filePath];
        const char* extension = [StringUtil getInstance]->EMPTY_STRING;
        if (indexOfFileExtensionDelmiter >= 0) {
            extension = java_substring(filePath, indexOfFileExtensionDelmiter + 1, (int32_t) strlen(filePath));
        }
        return extension;
}


- (const char*) getNameFromPath:(const char*)path {
        int32_t endIndex = java_string_lastIndexOf(path, self->SEPARATORCHAR);
        if (endIndex < 0) {
            endIndex = java_string_lastIndexOf(path, [FilePathData getInstance]->SEPARATORCHAR);
        }
        if (endIndex < 0) {
            return path;
        }
        if (((int32_t) strlen(path)) == endIndex + 1) {
            const char* categoryName = java_substring(path, 0, endIndex);
            return [self getNameFromPath:categoryName];
        } else {
            const char* categoryName = java_substring(path, endIndex + 1, (int32_t) strlen(path));
            return categoryName;
        }
}


- (const char*) removeNameFromPath:(const char*)path {
        int32_t endIndex = java_string_lastIndexOf(path, self->SEPARATORCHAR);
        if (endIndex < 0) {
            endIndex = java_string_lastIndexOf(path, [FilePathData getInstance]->SEPARATORCHAR);
        }
        if (endIndex < 0) {
            return [StringUtil getInstance]->EMPTY_STRING;
        }
        if (((int32_t) strlen(path)) == endIndex + 1) {
            return [self removeNameFromPath:java_substring(path, 0, endIndex - 1)];
        } else {
            const char* pathWithoutName = java_substring(path, 0, endIndex);
            return pathWithoutName;
        }
}

@end

