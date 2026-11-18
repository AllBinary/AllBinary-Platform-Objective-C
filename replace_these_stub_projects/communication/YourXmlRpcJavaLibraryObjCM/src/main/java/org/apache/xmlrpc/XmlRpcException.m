// Generated Code Do Not Modify
#include "org/apache/xmlrpc/XmlRpcException.h"



void XmlRpcException_staticInit(void) {
    static bool initialized = false;
    if (initialized) {
        return;
    }
    initialized = true;
}

@implementation XmlRpcException


- (instancetype) init:(int32_t)code :(const char*)message {
        self = [super init:message];
    return self;
}

@end

