// Generated Code Do Not Modify
#include "org/allbinary/logic/system/security/licensing/StoreAppClientInformation.h"
#include "org/allbinary/logic/system/security/licensing/AbeClientInformation.h"



void StoreAppClientInformation_staticInit(void) {
    static bool initialized = false;
    if (initialized) {
        return;
    }
    initialized = true;
}

@implementation StoreAppClientInformation

- (void) initFields {
    
}


- (instancetype) init:(const char*)name :(const char*)version :(const char*)specialName :(const char*)shortName :(int64_t*)longArrayIdentifier {
        self = [super init:name :version :specialName :shortName];
        [self initFields];
        self->longArrayIdentifier = longArrayIdentifier;
    return self;
}


- (int64_t*) getLongArrayIdentifier {
        return self->longArrayIdentifier;
}

@end

