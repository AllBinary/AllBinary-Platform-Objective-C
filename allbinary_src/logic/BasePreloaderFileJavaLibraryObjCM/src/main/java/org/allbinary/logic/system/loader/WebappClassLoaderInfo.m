// Generated Code Do Not Modify
#include "org/allbinary/logic/system/loader/WebappClassLoaderInfo.h"
#include "org/allbinary/logic/NullUtil.h"


static id WebappClassLoaderInfo_classLoader;

void WebappClassLoaderInfo_staticInit(void) {
    static bool initialized = false;
    if (initialized) {
        return;
    }
    initialized = true;
    WebappClassLoaderInfo_classLoader = [NullUtil getInstance]->NULL_OBJECT;
}

@implementation WebappClassLoaderInfo


- (instancetype) init {
    self = [super init];
    return self;
}


// synchronized
+ (void) setLoader:(ClassLoader*)classLoader {
        WebappClassLoaderInfo_classLoader = classLoader;
}


// synchronized
+ (ClassLoader*) getLoader {
        return ((ClassLoader*) (WebappClassLoaderInfo_staticInit(), WebappClassLoaderInfo_classLoader));
}

@end

