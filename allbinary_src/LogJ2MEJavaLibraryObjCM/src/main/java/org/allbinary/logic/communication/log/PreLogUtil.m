// Generated Code Do Not Modify
#include "org/allbinary/logic/communication/log/PreLogUtil.h"
#include "org/allbinary/logic/NullUtil.h"
#include "org/allbinary/string/CommonStrings.h"
#include "org/allbinary/logic/communication/log/LogFormatUtil.h"


static const char* PreLogUtil_LOG_SUCCESS = "org.allbinary: ";

void PreLogUtil_staticInit(void) {
    static bool initialized = false;
    if (initialized) {
        return;
    }
    initialized = true;
}

@implementation PreLogUtil


- (instancetype) init {
    self = [super init];
    return self;
}


+ (void) put:(const char*)specialMessage :(id)anyType :(const char*)functionName {
        [PreLogUtil putOE:specialMessage :anyType :functionName :[NullUtil getInstance]->NULL_OBJECT];
}


+ (void) putOE:(const char*)specialMessage :(id)anyType :(const char*)functionName :(id)exception {
        const char* className = [CommonStrings getInstance]->EMPTY;
        if (java_objc_class_name(anyType) != nil) {
            className = java_string_new(java_objc_class_name(anyType));
        }
        const char* message = [[LogFormatUtil getInstance] get:className :functionName :specialMessage :exception];
        fputs(java_string_of(PreLogUtil_LOG_SUCCESS), stdout);
        puts(java_string_of(message));
}


+ (void) putS:(const char*)specialMessage :(const char*)className :(const char*)functionName {
        [PreLogUtil putSE:specialMessage :className :functionName :[NullUtil getInstance]->NULL_OBJECT];
}


+ (void) putSE:(const char*)specialMessage :(const char*)className :(const char*)functionName :(id)exception {
        const char* message = [[LogFormatUtil getInstance] get:className :functionName :specialMessage :exception];
        fputs(java_string_of(PreLogUtil_LOG_SUCCESS), stdout);
        puts(java_string_of(message));
}


+ (const char*) getClassName:(id)anyType {
        return java_objc_class_name(anyType);
}

@end

