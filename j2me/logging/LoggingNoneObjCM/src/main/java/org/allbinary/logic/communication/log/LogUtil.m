// Generated Code Do Not Modify
#include "org/allbinary/logic/communication/log/LogUtil.h"
#include "org/allbinary/logic/communication/log/Log.h"


static LogUtil* LogUtil_instance;

void LogUtil_staticInit(void) {
    static bool initialized = false;
    if (initialized) {
        return;
    }
    initialized = true;
    LogUtil_instance = ((LogUtil*) [((LogUtil*) [LogUtil alloc]) init]);
}

@implementation LogUtil


+ (LogUtil*) getInstance {
        return (LogUtil_staticInit(), LogUtil_instance);
}


- (instancetype) init {
    self = [super init];
    return self;
}


- (void) putP:(Log*)log {
}


- (void) putF:(const char*)specialMessage :(id)anyType :(const char*)functionName {
}


- (void) putFS:(const char*)specialMessage :(const char*)className :(const char*)functionName {
}


- (void) put:(const char*)specialMessage :(id)anyType :(const char*)functionName :(id)exception {
}

@end

