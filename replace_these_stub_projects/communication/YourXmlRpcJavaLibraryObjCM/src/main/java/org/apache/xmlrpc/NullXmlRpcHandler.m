// Generated Code Do Not Modify
#include "org/apache/xmlrpc/NullXmlRpcHandler.h"
#include "org/allbinary/util/BasicArrayList.h"
#include "org/allbinary/logic/NullUtil.h"
#include "org/apache/xmlrpc/XmlRpcHandler.h"
#if __has_include("org/allbinary/logic/NullUtil.h")
#include "org/allbinary/logic/NullUtil.h"
#endif


NullXmlRpcHandler* NullXmlRpcHandler_NULL_XML_RPC_HANDLER;

void NullXmlRpcHandler_staticInit(void) {
    static bool initialized = false;
    if (initialized) {
        return;
    }
    initialized = true;
    NullXmlRpcHandler_NULL_XML_RPC_HANDLER = ((NullXmlRpcHandler*) [((NullXmlRpcHandler*) [NullXmlRpcHandler alloc]) init]);
}

@implementation NullXmlRpcHandler

- (instancetype) init {
    self = [super init];
    return self;
}


// throws Exception
- (id) execute:(const char*)method :(BasicArrayList*)params {
        return [NullUtil getInstance]->NULL_OBJECT;
}

@end

