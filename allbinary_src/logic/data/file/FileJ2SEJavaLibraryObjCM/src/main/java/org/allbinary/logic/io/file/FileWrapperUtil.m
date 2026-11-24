// Generated Code Do Not Modify
#include "org/allbinary/logic/io/file/FileWrapperUtil.h"
#include "org/allbinary/logic/communication/log/PreLogUtil.h"
#include "org/allbinary/logic/io/file/AbFile.h"



void FileWrapperUtil_staticInit(void) {
    static bool initialized = false;
    if (initialized) {
        return;
    }
    initialized = true;
}

@implementation FileWrapperUtil

- (instancetype) init {
    self = [super init];
    return self;
}


+ (AbFile**) wrapFiles:(id*)files {
        JAVA_TRY {
            AbFile** abFileArray = ((AbFile**) java_array_new(sizeof(AbFile*), java_array_length(files)));
            for (int32_t index = java_array_length(files) - 1; index >= 0; index--) {
                abFileArray[index] = ((AbFile*) [((AbFile*) [AbFile alloc]) init:((File*) files[index])]);
            }
            return abFileArray;
        } JAVA_CATCH(Exception, e) {
            [PreLogUtil putSE:"Exception Wrapping Files" :"FileWrapperUtil" :"wrapFiles" :e];
            return ((AbFile**) java_array_new(sizeof(AbFile*), 0));
        } JAVA_END_TRY;
}


+ (AbFile*) wrapFile:(File*)file {
        JAVA_TRY {
            return ((AbFile*) [((AbFile*) [AbFile alloc]) init:file]);
        } JAVA_CATCH(Exception, e) {
            [PreLogUtil putSE:"Exception Wrapping File" :"FileWrapperUtil" :"wrapFile" :e];
            return (AbFile_staticInit(), AbFile_NULL_FILE);
        } JAVA_END_TRY;
}

@end

