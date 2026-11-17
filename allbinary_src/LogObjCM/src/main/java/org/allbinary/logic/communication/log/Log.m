// Generated Code Do Not Modify
#include "org/allbinary/logic/communication/log/Log.h"
#include "org/allbinary/string/CommonStrings.h"
#include "org/allbinary/logic/communication/log/LogFormatUtil.h"



void Log_staticInit(void) {
    static bool initialized = false;
    if (initialized) {
        return;
    }
    initialized = true;
}

@implementation Log

- (void) initFields {
    self->logFormatUtil = [LogFormatUtil getInstance];
    
    
    
    
}


- (instancetype) init:(const char*)specialMessage :(id)anyType :(const char*)functionName :(id)exception {
    self = [super init];
    [self initFields];
        self->specialMessage = specialMessage;
        self->anyType = anyType;
        self->functionName = functionName;
        self->exception = exception;
    return self;
}


- (const char*) getSpecialMessage {
        return self->specialMessage;
}


- (id) getObject {
        return self->anyType;
}


- (const char*) getFunctionName {
        return self->functionName;
}


- (id) getThrowable {
        return self->exception;
}


- (const char*) toString {
        const char* className = [CommonStrings getInstance]->EMPTY;
        const char* clazz = java_objc_class_name(self->anyType);
        if ([clazz getName] != nil) {
            className = [clazz getName];
        }
        return [self->logFormatUtil get:className :self->functionName :self->specialMessage :self->exception];
}

@end

