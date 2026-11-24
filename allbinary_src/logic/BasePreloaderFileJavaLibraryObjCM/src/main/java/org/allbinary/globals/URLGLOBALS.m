// Generated Code Do Not Modify
#include "org/allbinary/globals/URLGLOBALS.h"
#include "org/allbinary/globals/AppUrlGlobals.h"
#include "org/allbinary/globals/UrlGlobalsInterface.h"


static UrlGlobalsInterface* URLGLOBALS_urlGlobalsInterface;

void URLGLOBALS_staticInit(void) {
    static bool initialized = false;
    if (initialized) {
        return;
    }
    initialized = true;
    URLGLOBALS_urlGlobalsInterface = (AppUrlGlobals_staticInit(), AppUrlGlobals_NULL_APP_URL_GLOBALS);
}

@implementation URLGLOBALS

- (instancetype) init {
    self = [super init];
    return self;
}


+ (void) initMethod:(UrlGlobalsInterface*)urlGlobalsInterface {
        URLGLOBALS_urlGlobalsInterface = urlGlobalsInterface;
}


+ (bool) isTestingMode {
        return [(URLGLOBALS_staticInit(), URLGLOBALS_urlGlobalsInterface) isTestingMode];
}


+ (const char*) getWebappPath {
        return [(URLGLOBALS_staticInit(), URLGLOBALS_urlGlobalsInterface) getWebappPath];
}


+ (const char*) getTestHtmlPath {
        return [(URLGLOBALS_staticInit(), URLGLOBALS_urlGlobalsInterface) getTestHtmlPath];
}


// throws Exception
+ (const char*) getMainPath {
        return [(URLGLOBALS_staticInit(), URLGLOBALS_urlGlobalsInterface) getMainPath];
}

@end

