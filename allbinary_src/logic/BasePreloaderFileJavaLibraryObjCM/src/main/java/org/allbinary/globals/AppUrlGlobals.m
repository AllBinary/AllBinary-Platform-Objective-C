// Generated Code Do Not Modify
#include "org/allbinary/globals/AppUrlGlobals.h"
#include "org/allbinary/logic/string/StringUtil.h"
#include "org/allbinary/globals/UrlGlobalsInterface.h"


AppUrlGlobals* AppUrlGlobals_NULL_APP_URL_GLOBALS;

void AppUrlGlobals_staticInit(void) {
    static bool initialized = false;
    if (initialized) {
        return;
    }
    initialized = true;
    AppUrlGlobals_NULL_APP_URL_GLOBALS = [((AppUrlGlobals*) [AppUrlGlobals alloc]) init];
}

@implementation AppUrlGlobals

- (void) initFields {
    self->path = [StringUtil getInstance]->EMPTY_STRING;
}

- (instancetype) init {
    self = [super init];
    [self initFields];
    return self;
}


- (bool) isTestingMode {
        return false;
}


- (const char*) getWebappPath {
        return self->path;
}


// synchronized
- (void) setWebappPath:(const char*)path {
        self->path = path;
        if (!(java_string_endsWith(self->path, "\\") || java_string_endsWith(self->path, "/"))) {
            self->path = java_concat(self->path, "\\");
        }
}


- (const char*) getTestHtmlPath {
        return [StringUtil getInstance]->EMPTY_STRING;
}


// throws Exception
- (const char*) getMainPath {
        return self->path;
}

@end

