// Generated Code Do Not Modify
#include "org/allbinary/AppletUtil.h"


static bool AppletUtil_applet = false;

void AppletUtil_staticInit(void) {
    static bool initialized = false;
    if (initialized) {
        return;
    }
    initialized = true;
}

@implementation AppletUtil


- (instancetype) init {
    self = [super init];
    return self;
}


+ (void) setApplet {
        AppletUtil_applet = true;
}


+ (bool) isAppletLoader:(id)anyType {
        return AppletUtil_applet;
}

@end

