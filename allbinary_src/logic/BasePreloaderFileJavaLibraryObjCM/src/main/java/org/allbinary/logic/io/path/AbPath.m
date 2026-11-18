// Generated Code Do Not Modify
#include "org/allbinary/logic/io/path/AbPath.h"
#include "org/allbinary/logic/io/file/FilePathData.h"
#include "org/allbinary/logic/io/file/FilePathUtil.h"
#include "org/allbinary/logic/string/StringMaker.h"
#include "org/allbinary/logic/string/StringUtil.h"
#include "org/allbinary/logic/string/StringValidationUtil.h"
#include "org/allbinary/string/CommonSeps.h"
#include "org/allbinary/logic/io/path/AbPathData.h"
#include "org/allbinary/logic/io/path/PathUtil.h"


static const char* AbPath_NETWORK_SEP = ":/";

void AbPath_staticInit(void) {
    static bool initialized = false;
    if (initialized) {
        return;
    }
    initialized = true;
}

@implementation AbPath

- (void) initFields {
    self->commonSeps = [CommonSeps getInstance];
    self->abPathData = [AbPathData getInstance];
    self->abPathUtil = [PathUtil getInstance];
    self->EMPTY_STRING = [StringUtil getInstance]->EMPTY_STRING;
    self->schema = self->EMPTY_STRING;
    self->path = self->EMPTY_STRING;
    self->nameP = self->EMPTY_STRING;
    self->hasSchemaP = false;
    self->numberOfSeps = 0;
}


+ (AbPath*) createAbPath {
        JAVA_TRY {
            const char* EMPTY_STRING = [StringUtil getInstance]->EMPTY_STRING;
            return [((AbPath*) [AbPath alloc]) init:EMPTY_STRING :EMPTY_STRING];
        } JAVA_CATCH(Exception, ex) {
            java_throw(java_exception_new("RuntimeException", ""));
        } JAVA_END_TRY;
}


- (instancetype) init:(const char*)aPath :(const char*)name {
    self = [super init];
    [self initFields];
        StringValidationUtil* stringValidationUtil = [StringValidationUtil getInstance];
        if (![stringValidationUtil isEmpty:aPath]) {
            self->schema = [self getSchema:aPath];
            self->nameP = name;
            self->path = [self->abPathUtil adjustEnd:[self->abPathUtil adjust:[self getPathFromPath:aPath]]];
        } else {
            [self init_];
            if (![stringValidationUtil isEmpty:name]) {
                self->nameP = name;
            }
        }
    return self;
}


- (void) init_ {
        self->schema = self->EMPTY_STRING;
        [self setPath:self->abPathData->SEPARATOR];
        self->nameP = self->EMPTY_STRING;
}


- (const char*) getSchema:(const char*)aPath {
        int32_t beginIndex = java_string_indexOf(aPath, self->commonSeps->COLON);
        if (beginIndex >= 0) {
            self->hasSchemaP = true;
            return java_substring(aPath, 0, beginIndex);
        }
        self->hasSchemaP = false;
        return self->EMPTY_STRING;
}


- (bool) hasSchema {
        return self->hasSchemaP;
}


// throws Exception
- (const char*) getPathFromPath:(const char*)aPath {
        FilePathData* filePathData = [FilePathData getInstance];
        const char* tempPath = aPath;
        if (![self hasSchema]) {
            tempPath = [self->abPathUtil adjustStart:tempPath];
        } else {
            int32_t beginIndex = java_string_indexOf(tempPath, self->commonSeps->COLON);
            if (beginIndex >= 0) {
                beginIndex++;
                while (((uint16_t) tempPath[beginIndex]) == self->abPathData->SEPARATORCHAR || ((uint16_t) tempPath[beginIndex]) == filePathData->SEPARATORCHAR) {
                    beginIndex++;
                    self->numberOfSeps++;
                    if (self->numberOfSeps > 2) {
                        java_throw(java_exception_new("Exception", "Should Not Have More Than Two Seps"));
                    }
                }
                tempPath = java_substring(tempPath, beginIndex, ((int32_t) strlen(tempPath)));
            }
        }
        return tempPath;
}


- (void) setName:(const char*)name {
        self->nameP = name;
}


- (const char*) getName {
        return self->nameP;
}


- (const char*) toString {
        StringMaker* stringBuffer = [((StringMaker*) [StringMaker alloc]) init];
        if ([self hasSchema]) {
            [stringBuffer append:self->schema];
            [stringBuffer append:AbPath_NETWORK_SEP];
        }
        [stringBuffer append:[self getPath]];
        [stringBuffer append:self->nameP];
        return [stringBuffer toString];
}


- (const char*) toFileSystemString {
        if ([self hasSchema]) {
            FilePathData* filePathData = [FilePathData getInstance];
            StringMaker* stringBuffer = [((StringMaker*) [StringMaker alloc]) init];
            [stringBuffer append:self->schema];
            [stringBuffer append:self->commonSeps->COLON];
            [stringBuffer append:filePathData->PATH_START];
            [stringBuffer append:[FilePathUtil adjust:[self getPath]]];
            [stringBuffer append:self->nameP];
            return [stringBuffer toString];
        } else {
            return java_concat([FilePathUtil adjust:[self getPath]], self->nameP);
        }
}


- (const char*) getPath {
        return self->path;
}


- (void) setPath:(const char*)path {
        self->path = path;
}

@end

