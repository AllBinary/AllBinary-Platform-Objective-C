// Generated Code Do Not Modify
#include "org/allbinary/logic/communication/log/PreLogUtil.h"
#include "org/allbinary/logic/NullUtil.h"



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
        java_throw(java_exception_new("RuntimeException", ""));
}


+ (void) putSE:(const char*)specialMessage :(const char*)className :(const char*)functionName :(id)exception {
        java_throw(java_exception_new("RuntimeException", ""));
}

@end

