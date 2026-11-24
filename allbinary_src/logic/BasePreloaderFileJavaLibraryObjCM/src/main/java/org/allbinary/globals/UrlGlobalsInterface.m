// Generated Code Do Not Modify
#include "org/allbinary/globals/UrlGlobalsInterface.h"
#include "org/allbinary/logic/string/StringUtil.h"
#if __has_include("org/allbinary/logic/string/StringUtil.h")
#include "org/allbinary/logic/string/StringUtil.h"
#endif
#if __has_include("org/allbinary/logic/string/StringUtil.h")
#include "org/allbinary/logic/string/StringUtil.h"
#endif
#if __has_include("org/allbinary/logic/string/StringUtil.h")
#include "org/allbinary/logic/string/StringUtil.h"
#endif



void UrlGlobalsInterface_staticInit(void) {
    static bool initialized = false;
    if (initialized) {
        return;
    }
    initialized = true;
}

@implementation UrlGlobalsInterface

- (instancetype) init {
    self = [super init];
    return self;
}


// throws Exception
- (const char*) getMainPath {
        return [StringUtil getInstance]->EMPTY_STRING;
}


- (const char*) getTestHtmlPath {
        return [StringUtil getInstance]->EMPTY_STRING;
}


- (const char*) getWebappPath {
        return [StringUtil getInstance]->EMPTY_STRING;
}


- (bool) isTestingMode {
        return false;
}

@end

