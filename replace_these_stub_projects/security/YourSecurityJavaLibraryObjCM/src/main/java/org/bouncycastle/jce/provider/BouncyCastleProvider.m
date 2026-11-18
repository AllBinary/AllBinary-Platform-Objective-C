// Generated Code Do Not Modify
#include "org/bouncycastle/jce/provider/BouncyCastleProvider.h"


static const char* BouncyCastleProvider_info = "BouncyCastle Security Provider v1.41";
const char* BouncyCastleProvider_PROVIDER_NAME = "BC";

void BouncyCastleProvider_staticInit(void) {
    static bool initialized = false;
    if (initialized) {
        return;
    }
    initialized = true;
}

@implementation BouncyCastleProvider


- (instancetype) init {
        self = [super init:BouncyCastleProvider_PROVIDER_NAME :1.41 :BouncyCastleProvider_info];
    return self;
}


- (void) setParameter:(const char*)parameterName :(id)parameter {
}

@end

