// Generated Code Do Not Modify
#include "org/allbinary/thirdparty/store/ThirdPartyStore.h"
#include "org/allbinary/logic/system/security/licensing/AbeClientInformationInterface.h"



void ThirdPartyStore_staticInit(void) {
    static bool initialized = false;
    if (initialized) {
        return;
    }
    initialized = true;
}

@implementation ThirdPartyStore

- (void) initFields {
    self->authorized = false;
    
}


- (instancetype) init:(const char*)name {
    self = [super init];
    [self initFields];
        self->name = name;
    return self;
}


- (void) authorize:(AbeClientInformationInterface*)clientInformationInterface {
}


- (bool) isAuthorized {
        return self->authorized;
}


- (void) setAuthorized:(bool)authorized {
        self->authorized = authorized;
}


- (const char*) getName {
        return self->name;
}

@end

