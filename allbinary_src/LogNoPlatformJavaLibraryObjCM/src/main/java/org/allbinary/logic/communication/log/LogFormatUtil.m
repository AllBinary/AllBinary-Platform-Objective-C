// Generated Code Do Not Modify
#include "org/allbinary/logic/communication/log/LogFormatUtil.h"


static LogFormatUtil* LogFormatUtil_instance;

void LogFormatUtil_staticInit(void) {
    static bool initialized = false;
    if (initialized) {
        return;
    }
    initialized = true;
    LogFormatUtil_instance = [((LogFormatUtil*) [LogFormatUtil alloc]) init];
}

@implementation LogFormatUtil


+ (LogFormatUtil*) getInstance {
        return (LogFormatUtil_staticInit(), LogFormatUtil_instance);
}


- (instancetype) init {
    self = [super init];
    return self;
}


- (const char*) get:(const char*)className :(const char*)functionName :(const char*)specialMessage :(id)exception {
        java_throw(java_exception_new("RuntimeException", ""));
}


- (const char*) getS:(const char*)className :(const char*)functionName :(const char*)specialMessage {
        java_throw(java_exception_new("RuntimeException", ""));
}


- (const char*) getO:(id)exception {
        java_throw(java_exception_new("RuntimeException", ""));
}

@end

