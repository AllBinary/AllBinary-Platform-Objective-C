// Generated Code Do Not Modify
#include "org/apache/xmlrpc/XmlRpcClient.h"
#include "org/allbinary/util/BasicArrayList.h"
#include "org/allbinary/init/crypt/jcehelper/CryptInterface.h"
#include "org/allbinary/logic/NullUtil.h"
#include "org/apache/xmlrpc/XmlRpcHandler.h"
#include "org/apache/xmlrpc/XmlRpcException.h"
#if __has_include("org/allbinary/logic/NullUtil.h")
#include "org/allbinary/logic/NullUtil.h"
#endif
#if __has_include("org/allbinary/logic/NullUtil.h")
#include "org/allbinary/logic/NullUtil.h"
#endif



void XmlRpcClient_staticInit(void) {
    static bool initialized = false;
    if (initialized) {
        return;
    }
    initialized = true;
}

@implementation XmlRpcClient

- (void) initFields {
    
}


- (instancetype) init:(const char*)url {
    self = [super init];
    [self initFields];
        self->url = ((URL*) [((URL*) [URL alloc]) init:url]);
    return self;
}


- (URL*) getURL {
        return self->url;
}


- (void) setBasicAuthentication:(const char*)user :(const char*)password {
}


// throws XmlRpcException, IOException
- (id) execute:(const char*)method :(BasicArrayList*)params {
        return [NullUtil getInstance]->NULL_OBJECT;
}


// throws XmlRpcException, IOException
- (id) executeWithCrypt:(const char*)method :(BasicArrayList*)params :(CryptInterface*)cryptInterface {
        return [NullUtil getInstance]->NULL_OBJECT;
}

@end

