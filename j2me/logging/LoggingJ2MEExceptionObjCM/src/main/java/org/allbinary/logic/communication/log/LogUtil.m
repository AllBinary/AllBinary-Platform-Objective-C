// Generated Code Do Not Modify
#include "org/allbinary/logic/communication/log/LogUtil.h"
#include "org/allbinary/string/CommonStrings.h"
#include "org/allbinary/logic/communication/log/LogFormatUtil.h"
#include "org/allbinary/logic/communication/log/LogFactory.h"
#include "org/allbinary/logic/communication/log/Log.h"


static LogUtil* LogUtil_instance;

void LogUtil_staticInit(void) {
    static bool initialized = false;
    if (initialized) {
        return;
    }
    initialized = true;
    LogUtil_instance = [((LogUtil*) [LogUtil alloc]) init];
}

@implementation LogUtil

- (void) initFields {
    self->logFormatUtil = [LogFormatUtil getInstance];
    self->LOG_SUCCESS = "org.allbinary: ";
}


+ (LogUtil*) getInstance {
        return (LogUtil_staticInit(), LogUtil_instance);
}


- (instancetype) init {
    self = [super init];
    [self initFields];
    return self;
}


- (void) putL:(Log*)log {
        if (log == (LogFactory_staticInit(), LogFactory_LOG)) {
            return;
        }
        id exception = [log getThrowable];
        if (exception == nil) {
            return;
        }
        const char* specialMessage = [log getSpecialMessage];
        id anyType = [log getObject];
        const char* functionName = [log getFunctionName];
        [self put:specialMessage :anyType :functionName :exception];
}


- (void) putF:(const char*)specialMessage :(id)anyType :(const char*)functionName {
}


- (void) putFS:(const char*)specialMessage :(const char*)className :(const char*)functionName {
}


- (void) put:(const char*)specialMessage :(id)anyType :(const char*)functionName :(id)exception {
        const char* className = [CommonStrings getInstance]->EMPTY;
        if (java_objc_class_name(anyType) != nil) {
            className = java_string_new(java_objc_class_name(anyType));
        }
        const char* message = [self->logFormatUtil get:className :functionName :specialMessage :exception];
        fputs(java_string_of(self->LOG_SUCCESS), stdout);
        puts(java_string_of(message));
}

@end

